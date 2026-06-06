part of 'hashtag_feed_bloc.dart';

enum HashtagFeedStatus {
  initial,
  loading,
  loadingMore,
  success,
  failure,
  paginationFailure,
}

@freezed
sealed class HashtagFeedState with _$HashtagFeedState {
  const factory HashtagFeedState({
    @Default([]) List<PostEntity> posts,
    @Default(HashtagFeedStatus.initial) HashtagFeedStatus status,
    @Default(0) int currentPage,
    @Default(true) bool hasMore,
    String? errorMessage,
  }) = _HashtagFeedState;
}
