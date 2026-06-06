import 'dart:io';
import 'package:fpdart/fpdart.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/core/error/failure.dart';
import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/shared/data/datasources/profile_remote_datasource.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:pulse/shared/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._dataSource);

  final ProfileRemoteDataSource _dataSource;

  @override
  AsyncResult<ProfileEntity?> getProfileById(String userId) async {
    try {
      final profile = await _dataSource.getProfileById(userId);
      return Right(profile);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<ProfileEntity> createProfile({
    required String userId,
    required String username,
    required String displayName,
    String? bio,
    String? avatarUrl,
  }) async {
    try {
      final profile = await _dataSource.createProfile(
        userId: userId,
        username: username,
        displayName: displayName,
        bio: bio,
        avatarUrl: avatarUrl,
      );
      return Right(profile);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<ProfileEntity> updateProfile(
    String userId,
    Map<String, dynamic> data,
  ) async {
    try {
      final profile = await _dataSource.updateProfile(userId, data);
      return Right(profile);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<String> uploadAvatar(
    String userId,
    File file, {
    String? oldUrl,
  }) async {
    try {
      final url = await _dataSource.uploadAvatar(userId, file, oldUrl: oldUrl);
      return Right(url);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<bool> isUsernameAvailable(String username) async {
    try {
      final available = await _dataSource.isUsernameAvailable(username);
      return Right(available);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<PaginatedData<PostEntity>> getProfilePosts({
    required String userId,
    required PaginationParams params,
  }) async {
    try {
      final result = await _dataSource.getProfilePosts(
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
  AsyncResult<PaginatedData<PostMediaEntity>> getProfileMedia({
    required String userId,
    required PaginationParams params,
  }) async {
    try {
      final result = await _dataSource.getProfileMedia(
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
