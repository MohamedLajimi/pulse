part of 'profile_posts_bloc.dart';

enum ProfilePostsStatus {
  initial,
  loading,
  loadingMore,
  success,
  failure,
  paginationFailure,
}

@freezed
sealed class ProfilePostsState with _$ProfilePostsState {
  const factory ProfilePostsState({
    @Default([]) List<PostEntity> posts,
    @Default(ProfilePostsStatus.initial) ProfilePostsStatus status,
    @Default(0) int currentPage,
    @Default(true) bool hasMore,
    String? errorMessage,
  }) = _ProfilePostsState;
}
