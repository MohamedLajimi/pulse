part of 'post_likers_bloc.dart';

enum PostLikersStatus {
  initial,
  loading,
  loadingMore,
  success,
  failure,
  paginationFailure,
}

@freezed
sealed class PostLikersState with _$PostLikersState {
  const factory PostLikersState({
    @Default(PostLikersStatus.initial) PostLikersStatus status,
    @Default([]) List<ProfileEntity> likers,
    @Default(0) int currentPage,
    @Default(true) bool hasMore,
    String? errorMessage,
  }) = _PostLikersState;
}
