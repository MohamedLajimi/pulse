part of 'profile_media_bloc.dart';

enum ProfileMediaStatus {
  initial,
  loading,
  loadingMore,
  success,
  failure,
  paginationFailure,
}

@freezed
sealed class ProfileMediaState with _$ProfileMediaState {
  const factory ProfileMediaState({
    @Default([]) List<PostMediaEntity> media,
    @Default(ProfileMediaStatus.initial) ProfileMediaStatus status,
    @Default(0) int currentPage,
    @Default(true) bool hasMore,
    String? errorMessage,
  }) = _ProfileMediaState;
}
