part of 'comment_replies_bloc.dart';

@freezed
class CommentRepliesState with _$CommentRepliesState {
  const factory CommentRepliesState.loading() = CommentRepliesLoading;

  const factory CommentRepliesState.success({
    required String parentId,
    required List<CommentEntity> replies,
    required bool hasMore,
    required int currentPage,
    @Default(false) bool isLoadingMore,
    String? loadingMoreError,
  }) = CommentRepliesSuccess;

  const factory CommentRepliesState.failure({
    required String message,
  }) = CommentRepliesFailure;
}
