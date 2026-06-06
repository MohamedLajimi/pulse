import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:pulse/core/constants/db_constants.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/shared/data/models/post_model.dart';
import 'package:pulse/shared/data/models/post_media_model.dart';
import 'package:pulse/shared/data/models/profile_model.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel?> getProfileById(String userId);

  Future<ProfileModel> createProfile({
    required String userId,
    required String username,
    required String displayName,
    String? bio,
    String? avatarUrl,
  });

  Future<ProfileModel> updateProfile(String userId, Map<String, dynamic> data);

  Future<String> uploadAvatar(String userId, File file, {String? oldUrl});

  Future<bool> isUsernameAvailable(String username);

  Future<PaginatedData<PostModel>> getProfilePosts({
    required String userId,
    required PaginationParams params,
  });

  Future<PaginatedData<PostMediaModel>> getProfileMedia({
    required String userId,
    required PaginationParams params,
  });
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  ProfileRemoteDataSourceImpl(this._client);

  final SupabaseClient _client;

  @override
  Future<ProfileModel?> getProfileById(String userId) async {
    try {
      final response = await _client
          .from(DbConstants.profiles)
          .select()
          .eq('id', userId)
          .maybeSingle();

      if (response == null) return null;
      return ProfileModel.fromJson(response);
    } on PostgrestException catch (e) {
      throw ServerException(
        'Failed to load profile.',
        statusCode: e.code != null ? int.tryParse(e.code!) : null,
      );
    } catch (_) {
      throw const ServerException('Failed to load profile.');
    }
  }

  @override
  Future<ProfileModel> createProfile({
    required String userId,
    required String username,
    required String displayName,
    String? bio,
    String? avatarUrl,
  }) async {
    try {
      debugPrint(
        {
          'id': userId,
          'username': username,
          'display_name': displayName,
          'bio': ?bio,
          'avatar_url': ?avatarUrl,
        }.toString(),
      );
      final response = await _client
          .from(DbConstants.profiles)
          .insert({
            'id': userId,
            'username': username,
            'display_name': displayName,
            'bio': ?bio,
            'avatar_url': ?avatarUrl,
          })
          .select()
          .single();

      return ProfileModel.fromJson(response);
    } on PostgrestException catch (e) {
      log(e.toString());
      if (e.code == '23505') {
        throw const ServerException('This username is already taken.');
      }
      throw const ServerException('Failed to create profile.');
    } catch (_) {
      throw const ServerException('Failed to create profile.');
    }
  }

  @override
  Future<ProfileModel> updateProfile(
    String userId,
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await _client
          .from(DbConstants.profiles)
          .update(data)
          .eq('id', userId)
          .select()
          .single();

      return ProfileModel.fromJson(response);
    } on PostgrestException catch (e) {
      log(e.toString());

      if (e.code == '23505') {
        throw const ServerException('This username is already taken.');
      }
      throw const ServerException('Failed to update profile.');
    } catch (e) {
      log(e.toString());

      throw const ServerException('Failed to update profile.');
    }
  }

  @override
  Future<String> uploadAvatar(
    String userId,
    File file, {
    String? oldUrl,
  }) async {
    try {
      if (oldUrl != null && oldUrl.isNotEmpty) {
        try {
          final oldPath = oldUrl.split('${DbConstants.avatarsBucket}/').last;
          if (oldPath.isNotEmpty) {
            await _client.storage.from(DbConstants.avatarsBucket).remove([
              oldPath,
            ]);
          }
        } catch (_) {}
      }

      final ext = file.path.split('.').last.toLowerCase();
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final path = '$userId/avatar_$timestamp.$ext';

      await _client.storage
          .from(DbConstants.avatarsBucket)
          .upload(path, file, fileOptions: const FileOptions(upsert: true));

      return _client.storage.from(DbConstants.avatarsBucket).getPublicUrl(path);
    } on StorageException catch (e) {
      debugPrint('StorageException: ${e.message}');
      throw const ServerException('Failed to upload avatar.');
    } catch (e) {
      debugPrint('Exception: $e');
      throw const ServerException('Failed to upload avatar.');
    }
  }

  @override
  Future<bool> isUsernameAvailable(String username) async {
    try {
      final response = await _client
          .from(DbConstants.profiles)
          .select('id')
          .eq('username', username.toLowerCase())
          .maybeSingle();

      return response == null;
    } on PostgrestException catch (_) {
      throw const ServerException('Failed to check username availability.');
    } catch (_) {
      throw const ServerException('Failed to check username availability.');
    }
  }

  @override
  Future<PaginatedData<PostModel>> getProfilePosts({
    required String userId,
    required PaginationParams params,
  }) async {
    try {
      final currentUserId = _client.auth.currentUser?.id;
      final response = await _client
          .from(DbConstants.posts)
          .select(
            '*, profiles!posts_user_id_fkey(*), post_media(*), post_mentions(*), post_hashtags(*), post_likes!left(user_id)',
          )
          .eq('user_id', userId)
          .eq('is_deleted', false)
          .eq('post_likes.user_id', currentUserId ?? '')
          .order('created_at', ascending: false)
          .range(params.from, params.to)
          .count(CountOption.exact);

      final data = response.data as List;
      log(data.toString());
      final count = response.count;
      final posts = data.map((json) => PostModel.fromJson(json)).toList();

      return PaginatedData(
        items: posts,
        hasMore: (params.to + 1) < count,
        totalCount: count,
      );
    } catch (e) {
      log(e.toString());
      throw const ServerException('Failed to load profile posts.');
    }
  }

  @override
  Future<PaginatedData<PostMediaModel>> getProfileMedia({
    required String userId,
    required PaginationParams params,
  }) async {
    try {
      final response = await _client
          .from(DbConstants.postMedia)
          .select('*, posts!inner(is_deleted)')
          .eq('uploader_id', userId)
          .eq('posts.is_deleted', false)
          .order('created_at', ascending: false)
          .range(params.from, params.to)
          .count(CountOption.exact);

      final data = response.data as List;
      final count = response.count;
      final media = data.map((json) {
        return PostMediaModel.fromJson(json);
      }).toList();

      return PaginatedData(
        items: media,
        hasMore: (params.to + 1) < count,
        totalCount: count,
      );
    } catch (_) {
      throw const ServerException('Failed to load profile media.');
    }
  }
}
