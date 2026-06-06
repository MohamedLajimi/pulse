import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

abstract class CommentRepository {
  AsyncResult<PaginatedData<CommentEntity>> getComments({
    required String postId,
    required PaginationParams params,
    CommentSortOrder sortOrder = CommentSortOrder.newest,
  });

  AsyncResult<PaginatedData<CommentEntity>> getReplies({
    required String parentId,
    required PaginationParams params,
  });

  AsyncResult<CommentEntity> createComment({
    required String postId,
    required String body,
    String? parentId,
    List<String> mentionedUserIds = const [],
  });

  AsyncResult<CommentEntity> updateComment({
    required String commentId,
    required String body,
  });

  AsyncResult<void> deleteComment(String commentId);
  AsyncResult<void> likeComment(String commentId);
  AsyncResult<void> unlikeComment(String commentId);
}
