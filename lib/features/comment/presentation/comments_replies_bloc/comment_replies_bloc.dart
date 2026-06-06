import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/comment/domain/events/comment_event_bus.dart';
import 'package:pulse/features/comment/domain/repositories/comment_repository.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

part 'comment_replies_event.dart';
part 'comment_replies_state.dart';
part 'comment_replies_bloc.freezed.dart';

class CommentRepliesBloc
    extends Bloc<CommentRepliesEvent, CommentRepliesState> {
  final CommentRepository _repository;

  final CommentEventBus _eventBus;

  late StreamSubscription _busSubscription;

  static const int _limit = 10;

  CommentRepliesBloc(this._repository, this._eventBus)
    : super(const CommentRepliesState.loading()) {
    on<FetchInitialReplies>(_onFetchInitial);
    on<FetchMoreReplies>(_onFetchMore);
    on<_ReplyAdded>(_onReplyAdded);
    on<_ReplyRemoved>(_onReplyRemoved);
    on<_ReplyReplaced>(_onReplyReplaced);
    _busSubscription = _eventBus.stream.listen((event) {
      if (event is CommentCreatedEvent &&
          event.comment.parentId ==
              state.maybeMap(success: (s) => s.parentId, orElse: () => null)) {
        add(CommentRepliesEvent.replyAdded(event.comment));
      } else if (event is CommentDeletedEvent && event.parentId != null) {
        add(CommentRepliesEvent.replyRemoved(event.commentId));
      } else if (event is CommentUpdatedEvent &&
          event.comment.parentId != null) {
        add(CommentRepliesEvent.replyReplaced(event.comment));
      }
    });
  }

  @override
  Future<void> close() {
    _busSubscription.cancel();
    return super.close();
  }

  Future<void> _onFetchInitial(
    FetchInitialReplies event,
    Emitter<CommentRepliesState> emit,
  ) async {
    emit(const CommentRepliesState.loading());

    final result = await _repository.getReplies(
      parentId: event.parentId,
      params: const PaginationParams(page: 0, limit: _limit),
    );

    result.fold(
      (failure) => emit(CommentRepliesState.failure(message: failure.message)),
      (data) => emit(
        CommentRepliesState.success(
          parentId: event.parentId,
          replies: data.items,
          hasMore: data.hasMore,
          currentPage: 0,
        ),
      ),
    );
  }

  Future<void> _onFetchMore(
    FetchMoreReplies event,
    Emitter<CommentRepliesState> emit,
  ) async {
    final current = state;
    if (current is! CommentRepliesSuccess) return;
    if (current.isLoadingMore || !current.hasMore) return;

    emit(current.copyWith(isLoadingMore: true, loadingMoreError: null));

    final nextPage = current.currentPage + 1;

    final result = await _repository.getReplies(
      parentId: current.parentId,
      params: PaginationParams(page: nextPage, limit: _limit),
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
          replies: [...current.replies, ...data.items],
          hasMore: data.hasMore,
          currentPage: nextPage,
          isLoadingMore: false,
          loadingMoreError: null,
        ),
      ),
    );
  }

  void _onReplyAdded(_ReplyAdded event, Emitter<CommentRepliesState> emit) {
    final current = state;
    if (current is! CommentRepliesSuccess) return;
    emit(current.copyWith(replies: [event.reply, ...current.replies]));
  }

  void _onReplyRemoved(_ReplyRemoved event, Emitter<CommentRepliesState> emit) {
    final current = state;
    if (current is! CommentRepliesSuccess) return;
    emit(
      current.copyWith(
        replies: current.replies.where((c) => c.id != event.replyId).toList(),
      ),
    );
  }

  void _onReplyReplaced(
    _ReplyReplaced event,
    Emitter<CommentRepliesState> emit,
  ) {
    final current = state;
    if (current is! CommentRepliesSuccess) return;
    final index = current.replies.indexWhere((c) => c.id == event.reply.id);
    if (index == -1) return;
    final updated = [...current.replies];
    updated[index] = event.reply;
    emit(current.copyWith(replies: updated));
  }
}
