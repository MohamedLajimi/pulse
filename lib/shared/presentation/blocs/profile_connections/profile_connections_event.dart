part of 'profile_connections_bloc.dart';

enum ConnectionType { followers, following }

@freezed
sealed class ProfileConnectionsEvent with _$ProfileConnectionsEvent {
  const factory ProfileConnectionsEvent.fetchInitial({
    required String userId,
    required ConnectionType connectionType,
  }) = FetchInitial;

  const factory ProfileConnectionsEvent.fetchMore({
    required String userId,
    required ConnectionType connectionType,
  }) = FetchMore;
}
