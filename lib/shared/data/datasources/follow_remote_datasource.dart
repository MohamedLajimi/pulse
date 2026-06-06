import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:pulse/core/constants/db_constants.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/shared/data/models/profile_model.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

abstract class FollowRemoteDataSource {
  Future<void> followUser(String targetUserId);
  Future<void> unfollowUser(String targetUserId);
  Future<PaginatedData<ProfileModel>> getFollowers({
    required String userId,
    required PaginationParams params,
  });
  Future<PaginatedData<ProfileModel>> getFollowing({
    required String userId,
    required PaginationParams params,
  });
  Future<bool> checkFollowStatus(String targetUserId);
}

class FollowRemoteDataSourceImpl implements FollowRemoteDataSource {
  FollowRemoteDataSourceImpl(this._client);

  final SupabaseClient _client;

  @override
  Future<void> followUser(String targetUserId) async {
    try {
      final userId = _client.auth.currentUser!.id;
      await _client.from(DbConstants.follows).insert({
        'follower_id': userId,
        'following_id': targetUserId,
      });
    } catch (_) {
      throw const ServerException('Failed to follow user.');
    }
  }

  @override
  Future<void> unfollowUser(String targetUserId) async {
    try {
      final userId = _client.auth.currentUser!.id;
      await _client
          .from(DbConstants.follows)
          .delete()
          .eq('follower_id', userId)
          .eq('following_id', targetUserId);
    } catch (_) {
      throw const ServerException('Failed to unfollow user.');
    }
  }

  @override
  Future<bool> checkFollowStatus(String targetUserId) async {
    try {
      final userId = _client.auth.currentUser?.id;
      if (userId == null) {
        throw const ServerException('User not logged in.');
      }
      final response = await _client
          .from(DbConstants.follows)
          .select()
          .eq('follower_id', userId)
          .eq('following_id', targetUserId)
          .maybeSingle();
      return response != null;
    } catch (_) {
      throw const ServerException('Failed to check follow status.');
    }
  }

  @override
  Future<PaginatedData<ProfileModel>> getFollowers({
    required String userId,
    required PaginationParams params,
  }) async {
    try {
      final response = await _client
          .from(DbConstants.follows)
          .select('created_at, profiles!follows_follower_id_fkey(*)')
          .eq('following_id', userId)
          .order('created_at', ascending: false)
          .range(params.from, params.to);

      final items = response
          .map((e) => ProfileModel.fromJson(e['profiles']))
          .toList();

      return PaginatedData(items: items, hasMore: items.length == params.limit);
    } catch (_) {
      throw const ServerException('Failed to fetch followers.');
    }
  }

  @override
  Future<PaginatedData<ProfileModel>> getFollowing({
    required String userId,
    required PaginationParams params,
  }) async {
    try {
      final response = await _client
          .from(DbConstants.follows)
          .select('created_at, profiles!follows_following_id_fkey(*)')
          .eq('follower_id', userId)
          .order('created_at', ascending: false)
          .range(params.from, params.to);

      final items = response
          .map((e) => ProfileModel.fromJson(e['profiles']))
          .toList();

      return PaginatedData(items: items, hasMore: items.length == params.limit);
    } catch (_) {
      throw const ServerException('Failed to fetch following.');
    }
  }
}
