import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/features/search/domain/repositories/search_repository.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/events/post_event_bus.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

part 'hashtag_feed_event.dart';
part 'hashtag_feed_state.dart';
part 'hashtag_feed_bloc.freezed.dart';

class HashtagFeedBloc extends Bloc<HashtagFeedEvent, HashtagFeedState> {
  final SearchRepository _repository;
  final PostEventBus _postEventBus;

  late final StreamSubscription _postSubscription;

  HashtagFeedBloc(this._repository, this._postEventBus)
    : super(const HashtagFeedState()) {
    on<FetchInitial>(_onFetchInitial);
    on<FetchMore>(_onFetchMore);
    on<RemovePost>(_onRemovePost);
    on<EditPost>(_onEditPost);

    _postSubscription = _postEventBus.stream.listen((event) {
      if (event is PostUpdatedEvent) {
        add(EditPost(event.post));
      }
      if (event is PostDeletedEvent) {
        add(RemovePost(event.postId));
      }
    });
  }

  @override
  Future<void> close() {
    _postSubscription.cancel();
    return super.close();
  }

  Future<void> _onFetchInitial(
    FetchInitial event,
    Emitter<HashtagFeedState> emit,
  ) async {
    if (state.status == HashtagFeedStatus.loading) return;

    emit(
      state.copyWith(
        status: HashtagFeedStatus.loading,
        posts: [],
        currentPage: 0,
        hasMore: true,
        errorMessage: null,
      ),
    );

    final result = await _repository.getHashtagFeed(
      hashtag: event.hashtag,
      params: const PaginationParams(page: 0, limit: 15),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: HashtagFeedStatus.failure,
          errorMessage: failure.message,
        ),
      ),
      (data) => emit(
        state.copyWith(
          status: HashtagFeedStatus.success,
          posts: data.items,
          hasMore: data.hasMore,
        ),
      ),
    );
  }

  Future<void> _onFetchMore(
    FetchMore event,
    Emitter<HashtagFeedState> emit,
  ) async {
    if (state.status == HashtagFeedStatus.loading ||
        state.status == HashtagFeedStatus.loadingMore ||
        !state.hasMore) {
      return;
    }

    emit(
      state.copyWith(status: HashtagFeedStatus.loadingMore, errorMessage: null),
    );

    final nextPage = state.currentPage + 1;

    final result = await _repository.getHashtagFeed(
      hashtag: event.hashtag,
      params: PaginationParams(page: nextPage, limit: 15),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: HashtagFeedStatus.paginationFailure,
          errorMessage: failure.message,
        ),
      ),
      (data) => emit(
        state.copyWith(
          status: HashtagFeedStatus.success,
          posts: [...state.posts, ...data.items],
          currentPage: nextPage,
          hasMore: data.hasMore,
        ),
      ),
    );
  }

  Future<void> _onRemovePost(
    RemovePost event,
    Emitter<HashtagFeedState> emit,
  ) async {
    final updatedList = List<PostEntity>.from(state.posts)
      ..removeWhere((p) => p.id == event.postId);
    emit(state.copyWith(posts: updatedList));
  }

  Future<void> _onEditPost(
    EditPost event,
    Emitter<HashtagFeedState> emit,
  ) async {
    final updatedList = List<PostEntity>.from(state.posts);
    final index = updatedList.indexWhere((p) => p.id == event.post.id);
    if (index != -1) {
      updatedList[index] = event.post;
    }
    emit(state.copyWith(posts: updatedList));
  }
}
