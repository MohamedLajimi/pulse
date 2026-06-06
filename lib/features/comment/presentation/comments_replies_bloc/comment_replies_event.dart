part of 'comment_replies_bloc.dart';

@freezed
class CommentRepliesEvent with _$CommentRepliesEvent {
  const factory CommentRepliesEvent.fetchInitial({required String parentId}) =
      FetchInitialReplies;

  const factory CommentRepliesEvent.fetchMore() = FetchMoreReplies;

  const factory CommentRepliesEvent.replyAdded(CommentEntity reply) =
      _ReplyAdded;

  const factory CommentRepliesEvent.replyRemoved(String replyId) =
      _ReplyRemoved;

  const factory CommentRepliesEvent.replyReplaced(CommentEntity reply) =
      _ReplyReplaced;
}
