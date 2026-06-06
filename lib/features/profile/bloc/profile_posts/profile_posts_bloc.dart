import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';
import 'package:pulse/shared/domain/repositories/profile_repository.dart';
import 'package:pulse/shared/domain/events/post_event_bus.dart';

part 'profile_posts_event.dart';
part 'profile_posts_state.dart';
part 'profile_posts_bloc.freezed.dart';

class ProfilePostsBloc extends Bloc<ProfilePostsEvent, ProfilePostsState> {
  final ProfileRepository _repository;
  final PostEventBus _postEventBus;
  late final StreamSubscription _postEventSubscription;

  ProfilePostsBloc(this._repository, this._postEventBus)
    : super(const ProfilePostsState()) {
    on<FetchInitial>(_onFetchInitial);
    on<FetchMore>(_onFetchMore);
    on<RemovePost>(_onRemovePost);
    on<ReplacePost>(_onReplacePost);

    _postEventSubscription = _postEventBus.stream.listen((event) {
      if (event is PostDeletedEvent) {
        add(RemovePost(event.postId));
      } else if (event is PostUpdatedEvent) {
        add(ReplacePost(event.post));
      }
    });
  }

  @override
  Future<void> close() {
    _postEventSubscription.cancel();
    return super.close();
  }

  Future<void> _onFetchInitial(
    FetchInitial event,
    Emitter<ProfilePostsState> emit,
  ) async {
    if (state.status == ProfilePostsStatus.loading) return;

    emit(
      state.copyWith(
        status: ProfilePostsStatus.loading,
        posts: [],
        currentPage: 0,
        hasMore: true,
        errorMessage: null,
      ),
    );

    const params = PaginationParams(page: 0, limit: 15);
    final result = await _repository.getProfilePosts(
      userId: event.userId,
      params: params,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: ProfilePostsStatus.failure,
          errorMessage: failure.message,
        ),
      ),
      (paginatedData) => emit(
        state.copyWith(
          status: ProfilePostsStatus.success,
          posts: paginatedData.items,
          hasMore: paginatedData.hasMore,
        ),
      ),
    );
  }

  Future<void> _onFetchMore(
    FetchMore event,
    Emitter<ProfilePostsState> emit,
  ) async {
    if (state.status == ProfilePostsStatus.loading ||
        state.status == ProfilePostsStatus.loadingMore ||
        !state.hasMore) {
      return;
    }

    emit(
      state.copyWith(
        status: ProfilePostsStatus.loadingMore,
        errorMessage: null,
      ),
    );

    final nextPage = state.currentPage + 1;
    final params = PaginationParams(page: nextPage, limit: 15);

    final result = await _repository.getProfilePosts(
      userId: event.userId,
      params: params,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: ProfilePostsStatus.paginationFailure,
          errorMessage: failure.message,
        ),
      ),
      (paginatedData) {
        final updatedPosts = List<PostEntity>.from(state.posts)
          ..addAll(paginatedData.items);

        emit(
          state.copyWith(
            status: ProfilePostsStatus.success,
            posts: updatedPosts,
            currentPage: nextPage,
            hasMore: paginatedData.hasMore,
          ),
        );
      },
    );
  }

  void _onRemovePost(RemovePost event, Emitter<ProfilePostsState> emit) {
    final updatedPosts = List<PostEntity>.from(state.posts)
      ..removeWhere((post) => post.id == event.postId);
    emit(state.copyWith(posts: updatedPosts));
  }

  void _onReplacePost(ReplacePost event, Emitter<ProfilePostsState> emit) {
    final updatedPosts = List<PostEntity>.from(state.posts);
    final index = updatedPosts.indexWhere((p) => p.id == event.post.id);
    if (index != -1) {
      updatedPosts[index] = event.post;
      emit(state.copyWith(posts: updatedPosts));
    }
  }
}
