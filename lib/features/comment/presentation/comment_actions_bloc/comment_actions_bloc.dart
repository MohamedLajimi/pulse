import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/comment/domain/events/comment_event_bus.dart';
import 'package:pulse/features/comment/domain/repositories/comment_repository.dart';

part 'comment_actions_event.dart';
part 'comment_actions_state.dart';
part 'comment_actions_bloc.freezed.dart';

class CommentActionsBloc
    extends Bloc<CommentActionsEvent, CommentActionsState> {
  final CommentRepository _repository;

  final CommentEventBus _eventBus;

  CommentActionsBloc(this._repository, this._eventBus)
    : super(const CommentActionsState.idle()) {
    on<CreateComment>(_onCreateComment);
    on<UpdateComment>(_onUpdateComment);
    on<DeleteComment>(_onDeleteComment);
    on<LikeComment>(_onLikeComment);
  }

  Future<void> _onCreateComment(
    CreateComment event,
    Emitter<CommentActionsState> emit,
  ) async {
    emit(const CommentActionsState.submitting());

    final result = await _repository.createComment(
      postId: event.postId,
      body: event.body,
      parentId: event.parentId,
      mentionedUserIds: event.mentionedUserIds,
    );

    result.fold(
      (failure) => emit(CommentActionsState.failure(message: failure.message)),
      (comment) {
        _eventBus.publish(CommentCreatedEvent(comment));
        emit(CommentActionsState.submitted(comment));
        emit(const CommentActionsState.idle());
      },
    );
  }

  Future<void> _onUpdateComment(
    UpdateComment event,
    Emitter<CommentActionsState> emit,
  ) async {
    emit(CommentActionsState.mutating(commentId: event.commentId));

    final result = await _repository.updateComment(
      commentId: event.commentId,
      body: event.body,
    );

    result.fold(
      (failure) => emit(
        CommentActionsState.failure(
          message: failure.message,
          commentId: event.commentId,
        ),
      ),
      (comment) {
        _eventBus.publish(CommentUpdatedEvent(comment));
        emit(const CommentActionsState.mutationSuccess());
        emit(const CommentActionsState.idle());
      },
    );
  }

  Future<void> _onDeleteComment(
    DeleteComment event,
    Emitter<CommentActionsState> emit,
  ) async {
    emit(CommentActionsState.mutating(commentId: event.commentId));

    final result = await _repository.deleteComment(event.commentId);

    result.fold(
      (failure) => emit(
        CommentActionsState.failure(
          message: failure.message,
          commentId: event.commentId,
        ),
      ),
      (_) {
        _eventBus.publish(
          CommentDeletedEvent(event.commentId, parentId: event.parentId),
        );
        emit(const CommentActionsState.mutationSuccess());
        emit(const CommentActionsState.idle());
      },
    );
  }

  Future<void> _onLikeComment(
    LikeComment event,
    Emitter<CommentActionsState> emit,
  ) async {
    final optimisticComment = _buildOptimisticLike(event);
    _eventBus.publish(CommentUpdatedEvent(optimisticComment));

    final result = event.isLiked
        ? await _repository.unlikeComment(event.commentId)
        : await _repository.likeComment(event.commentId);

    result.fold((failure) {
      final revertedComment = _buildRevertedLike(event);
      _eventBus.publish(CommentUpdatedEvent(revertedComment));
      emit(
        CommentActionsState.failure(
          message: failure.message,
          commentId: event.commentId,
        ),
      );
      emit(const CommentActionsState.idle());
    }, (_) => null);
  }

  CommentEntity _buildOptimisticLike(LikeComment event) => _fakeComment(
    event,
    isLiked: !event.isLiked,
    likeCount: event.isLiked ? event.likeCount - 1 : event.likeCount + 1,
  );

  CommentEntity _buildRevertedLike(LikeComment event) =>
      _fakeComment(event, isLiked: event.isLiked, likeCount: event.likeCount);

  CommentEntity _fakeComment(
    LikeComment event, {
    required bool isLiked,
    required int likeCount,
  }) => CommentEntity(
    id: event.commentId,
    postId: '',
    userId: '',
    body: '',
    likeCount: likeCount,
    repliesCount: 0,
    mentions: [],
    isEdited: false,
    isLiked: isLiked,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );
}
