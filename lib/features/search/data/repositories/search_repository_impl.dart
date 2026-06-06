import 'package:fpdart/fpdart.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/core/error/failure.dart';
import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/features/search/data/datasources/search_local_datasource.dart';
import 'package:pulse/features/search/data/datasources/search_remote_datasource.dart';
import 'package:pulse/features/search/domain/repositories/search_repository.dart';
import 'package:pulse/shared/data/models/profile_model.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDataSource _remoteDataSource;
  final SearchLocalDataSource _localDataSource;

  SearchRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  AsyncResult<List<ProfileEntity>> searchUsers({required String query}) async {
    try {
      final results = await _remoteDataSource.searchUsers(query);
      return Right(results);
    } catch (e) {
      if (e is ServerException) {
        return Left(ServerFailure(e.message, statusCode: e.statusCode));
      }
      return const Left(
        UnknownFailure('An unexpected error occurred during search.'),
      );
    }
  }

  @override
  AsyncResult<List<ProfileEntity>> getSearchAccountsHistory() async {
    try {
      final history = await _localDataSource.getSearchAccountsHistory();
      return Right(history);
    } catch (_) {
      return const Left(UnknownFailure('Failed to load search history.'));
    }
  }

  @override
  AsyncResult<void> saveSearchAccountHistory({
    required ProfileEntity profile,
  }) async {
    try {
      await _localDataSource.saveSearchAccountHistory(
        ProfileModel.fromEntity(profile),
      );
      return const Right(null);
    } catch (_) {
      return const Left(UnknownFailure('Failed to save search history.'));
    }
  }

  @override
  AsyncResult<void> removeSearchAccountHistory({required String id}) async {
    try {
      await _localDataSource.removeSearchAccountHistoryItem(id);
      return const Right(null);
    } catch (_) {
      return const Left(
        UnknownFailure('Failed to remove search history item.'),
      );
    }
  }

  @override
  AsyncResult<void> clearSearchAccountHistory() async {
    try {
      await _localDataSource.clearSearchAccountHistory();
      return const Right(null);
    } catch (_) {
      return const Left(UnknownFailure('Failed to clear search history.'));
    }
  }

  @override
  AsyncResult<List<String>> searchHashtags({required String query}) async {
    try {
      final results = await _remoteDataSource.searchHashtags(query);
      return Right(results);
    } catch (e) {
      if (e is ServerException) {
        return Left(ServerFailure(e.message, statusCode: e.statusCode));
      }
      return const Left(
        UnknownFailure('An unexpected error occurred during hashtag search.'),
      );
    }
  }

  @override
  AsyncResult<List<String>> getHashtagSearchHistory() async {
    try {
      final history = await _localDataSource.getHashtagSearchHistory();
      return Right(history);
    } catch (_) {
      return const Left(
        UnknownFailure('Failed to load hashtag search history.'),
      );
    }
  }

  @override
  AsyncResult<void> saveHashtagSearchHistory({required String hashtag}) async {
    try {
      await _localDataSource.saveHashtagSearchHistory(hashtag);
      return const Right(null);
    } catch (_) {
      return const Left(
        UnknownFailure('Failed to save hashtag to search history.'),
      );
    }
  }

  @override
  AsyncResult<void> removeHashtagSearchHistoryItem({
    required String hashtag,
  }) async {
    try {
      await _localDataSource.removeHashtagSearchHistoryItem(hashtag);
      return const Right(null);
    } catch (_) {
      return const Left(
        UnknownFailure('Failed to remove hashtag search history item.'),
      );
    }
  }

  @override
  AsyncResult<void> clearHashtagSearchHistory() async {
    try {
      await _localDataSource.clearHashtagSearchHistory();
      return const Right(null);
    } catch (_) {
      return const Left(
        UnknownFailure('Failed to clear hashtag search history.'),
      );
    }
  }

  @override
  AsyncResult<PaginatedData<PostEntity>> getHashtagFeed({
    required String hashtag,
    required PaginationParams params,
  }) async {
    try {
      final hashtagFeed = await _remoteDataSource.getHashtagFeed(
        hashtag: hashtag,
        params: params,
      );
      return Right(hashtagFeed);
    } catch (e) {
      if (e is ServerException) {
        return Left(ServerFailure(e.message, statusCode: e.statusCode));
      }
      return const Left(UnknownFailure('Failed to load hashtag feed.'));
    }
  }
}
