part of 'comments_bloc.dart';

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState.loading() = CommentsLoading;

  const factory CommentsState.success({
    required List<CommentEntity> comments,
    required CommentSortOrder sortOrder,
    required bool hasMore,
    required int currentPage,
    @Default(false) bool isLoadingMore,
    String? loadingMoreError,
  }) = CommentsSuccess;

  const factory CommentsState.failure({
    required String message,
    required CommentSortOrder sortOrder,
  }) = CommentsFailure;
}
