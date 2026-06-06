import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:pulse/shared/domain/repositories/profile_repository.dart';

part 'profile_media_event.dart';
part 'profile_media_state.dart';
part 'profile_media_bloc.freezed.dart';

class ProfileMediaBloc extends Bloc<ProfileMediaEvent, ProfileMediaState> {
  final ProfileRepository _repository;

  ProfileMediaBloc(this._repository) : super(const ProfileMediaState()) {
    on<FetchInitial>(_onFetchInitial);
    on<FetchMore>(_onFetchMore);
    on<RemovePostMedia>(_onRemovePostMedia);
    on<UpdatePostMedia>(_onUpdatePostMedia);
  }

  Future<void> _onFetchInitial(
    FetchInitial event,
    Emitter<ProfileMediaState> emit,
  ) async {
    if (state.status == ProfileMediaStatus.loading) return;

    emit(
      state.copyWith(
        status: ProfileMediaStatus.loading,
        media: [],
        currentPage: 0,
        hasMore: true,
        errorMessage: null,
      ),
    );

    const params = PaginationParams(page: 0, limit: 15);
    final result = await _repository.getProfileMedia(
      userId: event.userId,
      params: params,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: ProfileMediaStatus.failure,
          errorMessage: failure.message,
        ),
      ),
      (paginatedData) => emit(
        state.copyWith(
          status: ProfileMediaStatus.success,
          media: paginatedData.items,
          hasMore: paginatedData.hasMore,
        ),
      ),
    );
  }

  Future<void> _onFetchMore(
    FetchMore event,
    Emitter<ProfileMediaState> emit,
  ) async {
    if (state.status == ProfileMediaStatus.loading ||
        state.status == ProfileMediaStatus.loadingMore ||
        !state.hasMore) {
      return;
    }

    emit(
      state.copyWith(
        status: ProfileMediaStatus.loadingMore,
        errorMessage: null,
      ),
    );

    final nextPage = state.currentPage + 1;
    final params = PaginationParams(page: nextPage, limit: 15);

    final result = await _repository.getProfileMedia(
      userId: event.userId,
      params: params,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: ProfileMediaStatus.paginationFailure,
          errorMessage: failure.message,
        ),
      ),
      (paginatedData) {
        final updatedMedia = List<PostMediaEntity>.from(state.media)
          ..addAll(paginatedData.items);

        emit(
          state.copyWith(
            status: ProfileMediaStatus.success,
            media: updatedMedia,
            currentPage: nextPage,
            hasMore: paginatedData.hasMore,
          ),
        );
      },
    );
  }

  void _onRemovePostMedia(
    RemovePostMedia event,
    Emitter<ProfileMediaState> emit,
  ) {
    final updatedMedia = List<PostMediaEntity>.from(state.media)
      ..removeWhere((m) => m.postId == event.postId);

    emit(state.copyWith(media: updatedMedia));
  }

  void _onUpdatePostMedia(
    UpdatePostMedia event,
    Emitter<ProfileMediaState> emit,
  ) {
    final updatedMedia = List<PostMediaEntity>.from(state.media);

    final startIndex = updatedMedia.indexWhere((m) => m.postId == event.postId);

    if (startIndex == -1) {
      return;
    }

    updatedMedia.removeWhere((m) => m.postId == event.postId);

    if (event.newMedia.isNotEmpty) {
      updatedMedia.insertAll(startIndex, event.newMedia);
    }

    emit(state.copyWith(media: updatedMedia));
  }
}
