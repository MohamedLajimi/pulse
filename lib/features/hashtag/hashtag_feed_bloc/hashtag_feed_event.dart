part of 'hashtag_feed_bloc.dart';

@freezed
sealed class HashtagFeedEvent with _$HashtagFeedEvent {
  const factory HashtagFeedEvent.fetchInitial(String hashtag) = FetchInitial;
  const factory HashtagFeedEvent.fetchMore(String hashtag) = FetchMore;
  const factory HashtagFeedEvent.removePost(String postId) = RemovePost;
  const factory HashtagFeedEvent.editPost(PostEntity post) = EditPost;
}
