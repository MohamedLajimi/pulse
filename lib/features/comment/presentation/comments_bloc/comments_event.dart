part of 'comments_bloc.dart';

@freezed
sealed class CommentsEvent with _$CommentsEvent {
  const factory CommentsEvent.fetchInitial({
    required String postId,
    @Default(CommentSortOrder.newest) CommentSortOrder sortOrder,
  }) = FetchInitialComments;

  const factory CommentsEvent.fetchMore({required String postId}) =
      FetchMoreComments;

  const factory CommentsEvent.sortChanged({
    required String postId,
    required CommentSortOrder sortOrder,
  }) = SortChanged;

  const factory CommentsEvent.commentAdded(CommentEntity comment) =
      _CommentAdded;

  const factory CommentsEvent.commentRemoved(String commentId) =
      _CommentRemoved;
      
  const factory CommentsEvent.commentReplaced(CommentEntity comment) =
      _CommentReplaced;
}
