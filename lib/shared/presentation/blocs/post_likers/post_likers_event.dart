part of 'post_likers_bloc.dart';

@freezed
sealed class PostLikersEvent with _$PostLikersEvent {
  const factory PostLikersEvent.fetchInitial(String postId) = FetchInitial;
  const factory PostLikersEvent.fetchMore(String postId) = FetchMore;
}
