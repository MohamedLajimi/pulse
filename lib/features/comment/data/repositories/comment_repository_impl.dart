import 'package:fpdart/fpdart.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/core/error/failure.dart';
import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/features/comment/data/datasources/comment_remote_data_source.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/comment/domain/repositories/comment_repository.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

class CommentRepositoryImpl implements CommentRepository {
  final CommentRemoteDataSource _dataSource;

  CommentRepositoryImpl(this._dataSource);

  @override
  AsyncResult<PaginatedData<CommentEntity>> getComments({
    required String postId,
    required PaginationParams params,
    CommentSortOrder sortOrder = CommentSortOrder.newest,
  }) async {
    try {
      final result = await _dataSource.getComments(
        postId: postId,
        params: params,
        sortOrder: sortOrder,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  AsyncResult<PaginatedData<CommentEntity>> getReplies({
    required String parentId,
    required PaginationParams params,
  }) async {
    try {
      final result = await _dataSource.getReplies(
        parentId: parentId,
        params: params,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  AsyncResult<CommentEntity> createComment({
    required String postId,
    required String body,
    String? parentId,
    List<String> mentionedUserIds = const [],
  }) async {
    try {
      final result = await _dataSource.createComment(
        postId: postId,
        body: body,
        parentId: parentId,
        mentionedUserIds: mentionedUserIds,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  AsyncResult<CommentEntity> updateComment({
    required String commentId,
    required String body,
  }) async {
    try {
      final result = await _dataSource.updateComment(
        commentId: commentId,
        body: body,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  AsyncResult<void> deleteComment(String commentId) async {
    try {
      await _dataSource.deleteComment(commentId);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  AsyncResult<void> likeComment(String commentId) async {
    try {
      await _dataSource.likeComment(commentId);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  AsyncResult<void> unlikeComment(String commentId) async {
    try {
      await _dataSource.unlikeComment(commentId);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
