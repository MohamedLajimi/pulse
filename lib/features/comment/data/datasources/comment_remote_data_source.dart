import 'dart:developer';

import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/features/comment/data/models/comment_model.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class CommentRemoteDataSource {
  Future<PaginatedData<CommentModel>> getComments({
    required String postId,
    required PaginationParams params,
    CommentSortOrder sortOrder = CommentSortOrder.newest,
  });

  Future<PaginatedData<CommentModel>> getReplies({
    required String parentId,
    required PaginationParams params,
  });

  Future<CommentModel> createComment({
    required String postId,
    required String body,
    String? parentId,
    List<String> mentionedUserIds = const [],
  });

  Future<CommentModel> updateComment({
    required String commentId,
    required String body,
  });

  Future<void> deleteComment(String commentId);
  Future<void> likeComment(String commentId);
  Future<void> unlikeComment(String commentId);
}

class CommentRemoteDataSourceImpl implements CommentRemoteDataSource {
  final SupabaseClient _client;

  CommentRemoteDataSourceImpl(this._client);

  String get _currentUserId => _client.auth.currentUser!.id;

  static const _commentSelect = '''
  *,
  author:profiles!comments_user_id_fkey(*),
  comment_likes!left(user_id),
  replies_count,
  replies_count,
  mentions:comment_mentions(
    profile:profiles!comment_mentions_mentioned_user_id_fkey(*)
  )
''';

  @override
  Future<PaginatedData<CommentModel>> getComments({
    required String postId,
    required PaginationParams params,
    CommentSortOrder sortOrder = CommentSortOrder.newest,
  }) async {
    try {
      var query = _client
          .from('comments')
          .select(_commentSelect)
          .eq('post_id', postId)
          .isFilter('parent_id', null)
          .eq('comment_likes.user_id', _currentUserId)
          .range(params.from, params.to);

      query = switch (sortOrder) {
        CommentSortOrder.newest => query.order('created_at', ascending: true),
        CommentSortOrder.mostLiked =>
          query
              .order('like_count', ascending: false)
              .order('created_at', ascending: true),
      };

      final data = await query;
      log(data.toString());
      return PaginatedData(
        items: data.map((e) => CommentModel.fromJson(e)).toList(),
        hasMore: data.length == params.limit,
      );
    } catch (e) {
      throw const ServerException('Failed to load comments.');
    }
  }

  @override
  Future<PaginatedData<CommentModel>> getReplies({
    required String parentId,
    required PaginationParams params,
  }) async {
    try {
      final data = await _client
          .from('comments')
          .select(_commentSelect)
          .eq('parent_id', parentId)
          .eq('comment_likes.user_id', _currentUserId)
          .order('created_at', ascending: true)
          .range(params.from, params.to);

      return PaginatedData(
        items: data.map((e) => CommentModel.fromJson(e)).toList(),
        hasMore: data.length == params.limit,
      );
    } catch (e) {
      throw const ServerException('Failed to load replies.');
    }
  }

  @override
  Future<CommentModel> createComment({
    required String postId,
    required String body,
    String? parentId,
    List<String> mentionedUserIds = const [],
  }) async {
    try {
      final commentData = await _client
          .from('comments')
          .insert({
            'post_id': postId,
            'user_id': _currentUserId,
            'body': body,
            'parent_id': ?parentId,
          })
          .select(_commentSelect)
          .single();

      if (mentionedUserIds.isNotEmpty) {
        await _client
            .from('comment_mentions')
            .insert(
              mentionedUserIds
                  .map(
                    (uid) => {
                      'comment_id': commentData['id'],
                      'mentioned_user_id': uid,
                    },
                  )
                  .toList(),
            );
      }

      return CommentModel.fromJson(commentData);
    } catch (e) {
      throw const ServerException('Failed to create comment.');
    }
  }

  @override
  Future<CommentModel> updateComment({
    required String commentId,
    required String body,
  }) async {
    try {
      final data = await _client
          .from('comments')
          .update({'body': body})
          .eq('id', commentId)
          .select(_commentSelect)
          .single();

      return CommentModel.fromJson(data);
    } catch (e) {
      throw const ServerException('Failed to update comment.');
    }
  }

  @override
  Future<void> deleteComment(String commentId) async {
    try {
      await _client.from('comments').delete().eq('id', commentId);
    } catch (e) {
      throw const ServerException('Failed to delete comment.');
    }
  }

  @override
  Future<void> likeComment(String commentId) async {
    try {
      await _client
          .from('comment_likes')
          .upsert(
            {'user_id': _currentUserId, 'comment_id': commentId},
            onConflict: 'user_id, comment_id',
            ignoreDuplicates: true,
          );
    } catch (e) {
      throw const ServerException('Failed to like comment.');
    }
  }

  @override
  Future<void> unlikeComment(String commentId) async {
    try {
      await _client
          .from('comment_likes')
          .delete()
          .eq('user_id', _currentUserId)
          .eq('comment_id', commentId);
    } catch (e) {
      throw const ServerException('Failed to unlike comment.');
    }
  }
}
