import 'package:fpdart/fpdart.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/core/error/failure.dart';
import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/shared/data/datasources/follow_remote_datasource.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:pulse/shared/domain/repositories/follow_repository.dart';

class FollowRepositoryImpl implements FollowRepository {
  FollowRepositoryImpl(this._dataSource);

  final FollowRemoteDataSource _dataSource;

  @override
  AsyncResult<void> followUser(String targetUserId) async {
    try {
      await _dataSource.followUser(targetUserId);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<void> unfollowUser(String targetUserId) async {
    try {
      await _dataSource.unfollowUser(targetUserId);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<bool> checkFollowStatus(String targetUserId) async {
    try {
      final result = await _dataSource.checkFollowStatus(targetUserId);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<PaginatedData<ProfileEntity>> getFollowers({
    required String userId,
    required PaginationParams params,
  }) async {
    try {
      final result = await _dataSource.getFollowers(
        userId: userId,
        params: params,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<PaginatedData<ProfileEntity>> getFollowing({
    required String userId,
    required PaginationParams params,
  }) async {
    try {
      final result = await _dataSource.getFollowing(
        userId: userId,
        params: params,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }
}
