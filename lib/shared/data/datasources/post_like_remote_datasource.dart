import 'dart:developer';

import 'package:pulse/shared/data/models/profile_model.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:pulse/core/constants/db_constants.dart';
import 'package:pulse/core/error/exceptions.dart';

abstract class PostLikeRemoteDataSource {
  Future<void> likePost(String postId);

  Future<void> unlikePost(String postId);

  Future<PaginatedData<ProfileModel>> getPostLikers({
    required String postId,
    required PaginationParams params,
  });
}

class PostLikeRemoteDataSourceImpl implements PostLikeRemoteDataSource {
  PostLikeRemoteDataSourceImpl(this._client);

  final SupabaseClient _client;

  @override
  Future<void> likePost(String postId) async {
    try {
      final userId = _client.auth.currentUser!.id;
      log('postId: $postId, userId: $userId');
      await _client
          .from(DbConstants.postLikes)
          .upsert(
            {'post_id': postId, 'user_id': userId},
            onConflict: 'user_id, post_id',
            ignoreDuplicates: true,
          );
    } catch (e) {
      log(e.toString());
      throw const ServerException('Failed to like post.');
    }
  }

  @override
  Future<void> unlikePost(String postId) async {
    try {
      final userId = _client.auth.currentUser!.id;
      log('postId: $postId, userId: $userId');
      await _client
          .from(DbConstants.postLikes)
          .delete()
          .eq('post_id', postId)
          .eq('user_id', userId);
    } catch (e) {
      log(e.toString());
      throw const ServerException('Failed to unlike post.');
    }
  }

  @override
  Future<PaginatedData<ProfileModel>> getPostLikers({
    required String postId,
    required PaginationParams params,
  }) async {
    try {
      final likers = await _client
          .from(DbConstants.postLikes)
          .select('created_at, profiles(*)')
          .eq('post_id', postId)
          .order('created_at', ascending: false)
          .range(params.from, params.to);

      final items = likers
          .map((e) => ProfileModel.fromJson(e['profiles']))
          .toList();

      return PaginatedData(items: items, hasMore: items.length == params.limit);
    } catch (_) {
      throw const ServerException('Failed to fetch users who liked this post');
    }
  }
}
