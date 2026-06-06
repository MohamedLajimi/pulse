part of 'profile_connections_bloc.dart';

enum ProfileConnectionsStatus {
  initial,
  loading,
  loadingMore,
  success,
  failure,
  paginationFailure,
}

@freezed
sealed class ProfileConnectionsState with _$ProfileConnectionsState {
  const factory ProfileConnectionsState({
    @Default(ProfileConnectionsStatus.initial) ProfileConnectionsStatus status,
    @Default([]) List<ProfileEntity> profiles,
    @Default(0) int currentPage,
    @Default(true) bool hasMore,
    String? errorMessage,
  }) = _ProfileConnectionsState;
}
