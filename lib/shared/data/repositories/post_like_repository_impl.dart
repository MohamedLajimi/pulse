import 'package:fpdart/fpdart.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/core/error/failure.dart';
import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/shared/data/datasources/post_like_remote_datasource.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:pulse/shared/domain/repositories/post_like_repository.dart';

class PostLikeRepositoryImpl implements PostLikeRepository {
  PostLikeRepositoryImpl(this._dataSource);

  final PostLikeRemoteDataSource _dataSource;

  @override
  AsyncResult<void> likePost(String postId) async {
    try {
      await _dataSource.likePost(postId);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<void> unlikePost(String postId) async {
    try {
      await _dataSource.unlikePost(postId);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<PaginatedData<ProfileEntity>> getPostLikers({
    required String postId,
    required PaginationParams params,
  }) async {
    try {
      final users = await _dataSource.getPostLikers(
        postId: postId,
        params: params,
      );
      return Right(users);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }
}
