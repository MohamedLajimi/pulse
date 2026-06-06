part of 'post_management_bloc.dart';

@freezed
sealed class PostManagementState with _$PostManagementState {
  const factory PostManagementState.initial() = PostManagementInitial;

  const factory PostManagementState.uploading() = PostManagementUploading;
  const factory PostManagementState.submitting() = PostManagementSubmitting;
  const factory PostManagementState.deleting() = PostManagementDeleting;
  const factory PostManagementState.fetchingSuggestions() =
      PostManagementFetchingSuggestions;
  const factory PostManagementState.fetchingPostFormData() =
      PostManagementFetchingPostFormData;

  const factory PostManagementState.uploadSuccess(
    List<MediaUploadResult> results,
  ) = PostManagementUploadSuccess;
  const factory PostManagementState.operationSuccess(PostEntity post) =
      PostManagementOperationSuccess;
  const factory PostManagementState.deleteSuccess(String postId) =
      PostManagementDeleteSuccess;
  const factory PostManagementState.suggestionResults(
    List<ProfileEntity> suggestions,
  ) = PostManagementSuggestions;
  const factory PostManagementState.postFormDataSuccess(PostEntity post) =
      PostManagementPostFormDataSuccess;

  const factory PostManagementState.fetchPostByIdError(String message) =
      PostManagementFetchPostByIdError;

  const factory PostManagementState.error({
    required String message,
    @Default([]) List<String> failedMediaIds,
  }) = PostManagementError;
}
