part of 'post_management_bloc.dart';

@freezed
class PostManagementEvent with _$PostManagementEvent {
  const factory PostManagementEvent.getPostById(String postId) = GetPostById;
  const factory PostManagementEvent.uploadMedia({
    required String postId,
    required List<MediaUploadJob> jobs,
  }) = UploadMedia;

  const factory PostManagementEvent.createPost({
    required String id,
    required String userId,
    String? caption,
    String? location,
    required List<PostMediaEntity> media,
    required List<String> mentions,
    required List<String> hashtags,
  }) = CreatePost;

  const factory PostManagementEvent.updatePost({
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
  }) = UpdatePost;

  const factory PostManagementEvent.deletePost(String id) = DeletePost;

  const factory PostManagementEvent.getMentionSuggestions(String query) =
      GetMentionSuggestions;
}
