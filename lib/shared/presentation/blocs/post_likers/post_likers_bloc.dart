import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:pulse/shared/domain/repositories/post_like_repository.dart';

part 'post_likers_event.dart';
part 'post_likers_state.dart';
part 'post_likers_bloc.freezed.dart';

class PostLikersBloc extends Bloc<PostLikersEvent, PostLikersState> {
  final PostLikeRepository _repository;

  PostLikersBloc(this._repository) : super(const PostLikersState()) {
    on<FetchInitial>(_onFetchInitial);
    on<FetchMore>(_onFetchMore);
  }

  Future<void> _onFetchInitial(
    FetchInitial event,
    Emitter<PostLikersState> emit,
  ) async {
    if (state.status == PostLikersStatus.loading) return;

    emit(
      state.copyWith(
        status: PostLikersStatus.loading,
        likers: [],
        currentPage: 0,
        hasMore: true,
        errorMessage: null,
      ),
    );

    const params = PaginationParams(page: 0, limit: 20);
    final result = await _repository.getPostLikers(
      postId: event.postId,
      params: params,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: PostLikersStatus.failure,
          errorMessage: failure.message,
        ),
      ),
      (paginatedData) => emit(
        state.copyWith(
          status: PostLikersStatus.success,
          likers: paginatedData.items,
          hasMore: paginatedData.hasMore,
        ),
      ),
    );
  }

  Future<void> _onFetchMore(
    FetchMore event,
    Emitter<PostLikersState> emit,
  ) async {
    if (state.status == PostLikersStatus.loading ||
        state.status == PostLikersStatus.loadingMore ||
        !state.hasMore) {
      return;
    }

    emit(
      state.copyWith(
        status: PostLikersStatus.loadingMore,
        errorMessage: null,
      ),
    );

    final nextPage = state.currentPage + 1;
    final params = PaginationParams(page: nextPage, limit: 20);

    final result = await _repository.getPostLikers(
      postId: event.postId,
      params: params,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: PostLikersStatus.paginationFailure,
          errorMessage: failure.message,
        ),
      ),
      (paginatedData) {
        final updatedLikers = List<ProfileEntity>.from(state.likers)
          ..addAll(paginatedData.items);

        emit(
          state.copyWith(
            status: PostLikersStatus.success,
            likers: updatedLikers,
            currentPage: nextPage,
            hasMore: paginatedData.hasMore,
          ),
        );
      },
    );
  }
}
