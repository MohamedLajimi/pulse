import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/media_upload_models.dart';

abstract class PostManagementRepository {
  AsyncResult<PostEntity> getPostFormData(String postId);

  AsyncResult<List<MediaUploadResult>> uploadPostMedia({
    required String userId,
    required String postId,
    required List<MediaUploadJob> jobs,
  });

  AsyncResult<List<ProfileEntity>> getMentionSuggestions(String query);

  AsyncResult<PostEntity> createPost({
    required String id,
    required String userId,
    String? caption,
    String? location,
    required List<PostMediaEntity> media,
    required List<String> mentions,
    required List<String> hashtags,
  });

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
  });

  AsyncResult<void> deletePost(String id);
}
