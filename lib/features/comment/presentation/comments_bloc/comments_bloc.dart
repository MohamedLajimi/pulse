import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/comment/domain/events/comment_event_bus.dart';
import 'package:pulse/features/comment/domain/repositories/comment_repository.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

part 'comments_event.dart';
part 'comments_state.dart';
part 'comments_bloc.freezed.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final CommentRepository _repository;
  final CommentEventBus _eventBus;

  late final StreamSubscription _busSubscription;

  static const int _limit = 20;

  CommentsBloc(this._repository, this._eventBus)
    : super(const CommentsState.loading()) {
    on<FetchInitialComments>(_onFetchInitial);
    on<FetchMoreComments>(_onFetchMore);
    on<SortChanged>(_onSortChanged);
    on<_CommentAdded>(_onCommentAdded);
    on<_CommentRemoved>(_onCommentRemoved);
    on<_CommentReplaced>(_onCommentReplaced);

    _busSubscription = _eventBus.stream.listen((event) {
      if (event is CommentCreatedEvent && event.comment.parentId == null) {
        add(CommentsEvent.commentAdded(event.comment));
      } else if (event is CommentDeletedEvent && event.parentId == null) {
        add(CommentsEvent.commentRemoved(event.commentId));
      } else if (event is CommentUpdatedEvent &&
          event.comment.parentId == null) {
        add(CommentsEvent.commentReplaced(event.comment));
      }
    });
  }

  @override
  Future<void> close() {
    _busSubscription.cancel();
    return super.close();
  }

  Future<void> _onFetchInitial(
    FetchInitialComments event,
    Emitter<CommentsState> emit,
  ) async {
    emit(const CommentsState.loading());

    final result = await _repository.getComments(
      postId: event.postId,
      params: const PaginationParams(page: 0, limit: _limit),
      sortOrder: event.sortOrder
    );

    result.fold(
      (failure) => emit(
        CommentsState.failure(message: failure.message, sortOrder: event.sortOrder),
      ),
      (data) => emit(
        CommentsState.success(
          comments: data.items,
          sortOrder: event.sortOrder,
          hasMore: data.hasMore,
          currentPage: 0,
        ),
      ),
    );
  }

  Future<void> _onFetchMore(
    FetchMoreComments event,
    Emitter<CommentsState> emit,
  ) async {
    final current = state;
    if (current is! CommentsSuccess) return;
    if (current.isLoadingMore || !current.hasMore) return;

    emit(current.copyWith(isLoadingMore: true, loadingMoreError: null));

    final nextPage = current.currentPage + 1;

    final result = await _repository.getComments(
      postId: event.postId,
      params: PaginationParams(page: nextPage, limit: _limit),
      sortOrder: current.sortOrder,
    );

    result.fold(
      (failure) => emit(
        current.copyWith(
          isLoadingMore: false,
          loadingMoreError: failure.message,
        ),
      ),
      (data) => emit(
        current.copyWith(
          comments: [...current.comments, ...data.items],
          hasMore: data.hasMore,
          currentPage: nextPage,
          isLoadingMore: false,
          loadingMoreError: null,
        ),
      ),
    );
  }

  Future<void> _onSortChanged(
    SortChanged event,
    Emitter<CommentsState> emit,
  ) async {
    final current = state;
    if (current is CommentsSuccess && current.sortOrder == event.sortOrder) {
      return;
    }

    emit(const CommentsState.loading());

    final result = await _repository.getComments(
      postId: event.postId,
      params: const PaginationParams(page: 0, limit: _limit),
      sortOrder: event.sortOrder,
    );

    result.fold(
      (failure) => emit(
        CommentsState.failure(message: failure.message, sortOrder: event.sortOrder),
      ),
      (data) => emit(
        CommentsState.success(
          comments: data.items,
          sortOrder: event.sortOrder,
          hasMore: data.hasMore,
          currentPage: 0,
        ),
      ),
    );
  }

  void _onCommentAdded(_CommentAdded event, Emitter<CommentsState> emit) {
    final current = state;
    if (current is! CommentsSuccess) return;
    emit(current.copyWith(comments: [event.comment, ...current.comments]));
  }

  void _onCommentRemoved(_CommentRemoved event, Emitter<CommentsState> emit) {
    final current = state;
    if (current is! CommentsSuccess) return;
    emit(
      current.copyWith(
        comments: current.comments
            .where((c) => c.id != event.commentId)
            .toList(),
      ),
    );
  }

  void _onCommentReplaced(_CommentReplaced event, Emitter<CommentsState> emit) {
    final current = state;
    if (current is! CommentsSuccess) return;
    final index = current.comments.indexWhere((c) => c.id == event.comment.id);
    if (index == -1) return;
    final existing = [...current.comments][index];
    final updated = [...current.comments];

    updated[index] = existing.copyWith(
      body: event.comment.body.isEmpty ? existing.body : event.comment.body,
      isLiked: event.comment.isLiked,
      likeCount: event.comment.likeCount,
      isEdited: event.comment.isEdited,
    );
    emit(current.copyWith(comments: updated));
  }
}
