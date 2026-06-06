part of 'comment_actions_bloc.dart';

@freezed
class CommentActionsEvent with _$CommentActionsEvent {
  const factory CommentActionsEvent.createComment({
    required String postId,
    required String body,
    String? parentId,
    @Default([]) List<String> mentionedUserIds,
  }) = CreateComment;

  const factory CommentActionsEvent.updateComment({
    required String commentId,
    required String body,
  }) = UpdateComment;

  const factory CommentActionsEvent.deleteComment({
    required String commentId,
    String? parentId,
  }) = DeleteComment;

  const factory CommentActionsEvent.likeComment({
    required String commentId,
    required bool isLiked,
    required int likeCount,
  }) = LikeComment;
}
