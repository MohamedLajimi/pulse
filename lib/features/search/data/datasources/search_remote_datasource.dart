import 'dart:developer';

import 'package:pulse/shared/data/models/post_model.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:pulse/core/constants/db_constants.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/shared/data/models/profile_model.dart';

abstract class SearchRemoteDataSource {
  Future<List<ProfileModel>> searchUsers(String query);
  Future<List<String>> searchHashtags(String query);
  Future<PaginatedData<PostModel>> getHashtagFeed({
    required String hashtag,
    required PaginationParams params,
  });
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final SupabaseClient _client;

  SearchRemoteDataSourceImpl(this._client);

  @override
  Future<List<ProfileModel>> searchUsers(String query) async {
    try {
      if (query.trim().isEmpty) return [];

      final response = await _client
          .from(DbConstants.profiles)
          .select()
          .or('username.ilike.%$query%,display_name.ilike.%$query%')
          .limit(20);

      final List<dynamic> data = response;
      return data.map((json) => ProfileModel.fromJson(json)).toList();
    } on PostgrestException catch (_) {
      throw const ServerException('Failed to search users.');
    } catch (_) {
      throw const ServerException('Failed to search users.');
    }
  }

  @override
  Future<List<String>> searchHashtags(String query) async {
    try {
      if (query.trim().isEmpty) return [];

      final safeQuery = query.trim().replaceAll('#', '');

      final response = await _client
          .from('post_hashtags')
          .select('hashtag')
          .ilike('hashtag', '%$safeQuery%')
          .limit(100);

      final List<dynamic> data = response;

      final uniqueTags = data
          .map((json) => json['hashtag'] as String)
          .toSet()
          .toList();

      return uniqueTags.take(20).toList();
    } on PostgrestException catch (_) {
      throw const ServerException('Failed to search hashtags.');
    } catch (_) {
      throw const ServerException('Failed to search hashtags.');
    }
  }

  @override
  Future<PaginatedData<PostModel>> getHashtagFeed({
    required String hashtag,
    required PaginationParams params,
  }) async {
    final currentUserId = _client.auth.currentUser?.id;
    try {
      final response = await _client
          .from('posts')
          .select('''
          *,
          profiles:profiles!posts_user_id_fkey (*),
          post_media (*),
          post_mentions (*),
          post_likes!left(user_id),
          post_hashtags!inner(*)
        ''')
          .eq('post_hashtags.hashtag', hashtag)
          .eq('post_likes.user_id', currentUserId ?? '')
          .order('created_at', ascending: false)
          .range(params.from, params.to);

      final List<dynamic> data = response;

      return PaginatedData(
        items: data.map((json) => PostModel.fromJson(json)).toList(),
        hasMore: data.length == params.limit,
      );
    } catch (e) {
      log(e.toString());
      throw const ServerException('Failed to load hashtag feed.');
    }
  }
}
