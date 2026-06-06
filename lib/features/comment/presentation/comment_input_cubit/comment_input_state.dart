part of 'comment_input_cubit.dart';

enum CommentInputMode { create, reply, edit }

@freezed
sealed class CommentInputState with _$CommentInputState {
  const factory CommentInputState({
    @Default(CommentInputMode.create) CommentInputMode mode,
    CommentEntity? targetComment,
    @Default([]) List<ProfileEntity> mentionSuggestions,
    @Default(false) bool isSearchingMentions,
  }) = _CommentInputState;
}
