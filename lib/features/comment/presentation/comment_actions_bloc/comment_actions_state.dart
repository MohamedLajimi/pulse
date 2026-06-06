part of 'comment_actions_bloc.dart';

@freezed
class CommentActionsState with _$CommentActionsState {
  const factory CommentActionsState.idle() = CommentActionsIdle;

  const factory CommentActionsState.submitting() = CommentActionsSubmitting;

  const factory CommentActionsState.submitted(CommentEntity comment) =
      CommentActionsSubmitted;

  const factory CommentActionsState.mutating({required String commentId}) =
      CommentActionsMutating;

  const factory CommentActionsState.mutationSuccess() =
      CommentActionsMutationSuccess;

  const factory CommentActionsState.failure({
    required String message,
    String? commentId,
  }) = CommentActionsFailure;
}
