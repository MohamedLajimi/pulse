import 'package:fpdart/fpdart.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/core/error/failure.dart';
import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/shared/data/datasources/post_management_remote_datasource.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/media_upload_models.dart';
import 'package:pulse/shared/domain/repositories/post_management_repository.dart';

class PostManagementRepositoryImpl implements PostManagementRepository {
  PostManagementRepositoryImpl(this._dataSource);

  final PostManagementRemoteDataSource _dataSource;

  @override
  AsyncResult<List<MediaUploadResult>> uploadPostMedia({
    required String userId,
    required String postId,
    required List<MediaUploadJob> jobs,
  }) async {
    try {
      final results = await _dataSource.uploadPostMedia(
        userId: userId,
        postId: postId,
        jobs: jobs,
      );
      return Right(results);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<List<ProfileEntity>> getMentionSuggestions(String query) async {
    try {
      final suggestions = await _dataSource.getMentionSuggestions(query);
      return Right(suggestions);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<PostEntity> createPost({
    required String id,
    required String userId,
    String? caption,
    String? location,
    required List<PostMediaEntity> media,
    required List<String> mentions,
    required List<String> hashtags,
  }) async {
    try {
      final post = await _dataSource.createPost(
        id: id,
        userId: userId,
        caption: caption,
        location: location,
        media: media,
        mentions: mentions,
        hashtags: hashtags,
      );
      return Right(post);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<PostEntity> updatePost({
    required String id,
    String? caption,
    String? location,
    required List<PostMediaEntity> mediaToInsert,
    required List<String> mediaIdsToDelete,
    required List<PostMediaEntity> mediaToUpdateSortOrder,
    required List<String> mentionsToInsert,
    required List<String> mentionsToDelete,
    required List<String> hashtagsToInsert,
    required List<String> hashtagsToDelete,
  }) async {
    try {
      final post = await _dataSource.updatePost(
        id: id,
        caption: caption,
        location: location,
        mediaToInsert: mediaToInsert,
        mediaIdsToDelete: mediaIdsToDelete,
        mediaToUpdateSortOrder: mediaToUpdateSortOrder,
        mentionsToInsert: mentionsToInsert,
        mentionsToDelete: mentionsToDelete,
        hashtagsToInsert: hashtagsToInsert,
        hashtagsToDelete: hashtagsToDelete,
      );
      return Right(post);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<void> deletePost(String id) async {
    try {
      await _dataSource.deletePost(id);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<PostEntity> getPostFormData(String id) async {
    try {
      final post = await _dataSource.getPostFormData(id);
      return Right(post);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }
}
