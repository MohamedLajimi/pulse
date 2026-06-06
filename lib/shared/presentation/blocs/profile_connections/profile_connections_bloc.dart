import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:pulse/shared/domain/repositories/follow_repository.dart';

part 'profile_connections_event.dart';
part 'profile_connections_state.dart';
part 'profile_connections_bloc.freezed.dart';

class ProfileConnectionsBloc
    extends Bloc<ProfileConnectionsEvent, ProfileConnectionsState> {
  final FollowRepository _repository;

  ProfileConnectionsBloc(this._repository)
      : super(const ProfileConnectionsState()) {
    on<FetchInitial>(_onFetchInitial);
    on<FetchMore>(_onFetchMore);
  }

  Future<void> _onFetchInitial(
    FetchInitial event,
    Emitter<ProfileConnectionsState> emit,
  ) async {
    if (state.status == ProfileConnectionsStatus.loading) return;

    emit(
      state.copyWith(
        status: ProfileConnectionsStatus.loading,
        profiles: [],
        currentPage: 0,
        hasMore: true,
        errorMessage: null,
      ),
    );

    const params = PaginationParams(page: 0, limit: 20);
    final result = event.connectionType == ConnectionType.followers
        ? await _repository.getFollowers(userId: event.userId, params: params)
        : await _repository.getFollowing(userId: event.userId, params: params);

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: ProfileConnectionsStatus.failure,
          errorMessage: failure.message,
        ),
      ),
      (paginatedData) => emit(
        state.copyWith(
          status: ProfileConnectionsStatus.success,
          profiles: paginatedData.items,
          hasMore: paginatedData.hasMore,
        ),
      ),
    );
  }

  Future<void> _onFetchMore(
    FetchMore event,
    Emitter<ProfileConnectionsState> emit,
  ) async {
    if (state.status == ProfileConnectionsStatus.loading ||
        state.status == ProfileConnectionsStatus.loadingMore ||
        !state.hasMore) {
      return;
    }

    emit(
      state.copyWith(
        status: ProfileConnectionsStatus.loadingMore,
        errorMessage: null,
      ),
    );

    final nextPage = state.currentPage + 1;
    final params = PaginationParams(page: nextPage, limit: 20);

    final result = event.connectionType == ConnectionType.followers
        ? await _repository.getFollowers(userId: event.userId, params: params)
        : await _repository.getFollowing(userId: event.userId, params: params);

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: ProfileConnectionsStatus.paginationFailure,
          errorMessage: failure.message,
        ),
      ),
      (paginatedData) {
        final updatedProfiles = List<ProfileEntity>.from(state.profiles)
          ..addAll(paginatedData.items);

        emit(
          state.copyWith(
            status: ProfileConnectionsStatus.success,
            profiles: updatedProfiles,
            currentPage: nextPage,
            hasMore: paginatedData.hasMore,
          ),
        );
      },
    );
  }
}
