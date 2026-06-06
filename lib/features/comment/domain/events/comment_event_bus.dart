import 'dart:async';

import 'package:pulse/features/comment/domain/entities/comment_entity.dart';

abstract class CommentBusEvent {}

class CommentCreatedEvent extends CommentBusEvent {
  final CommentEntity comment;
  CommentCreatedEvent(this.comment);
}

class CommentUpdatedEvent extends CommentBusEvent {
  final CommentEntity comment;
  CommentUpdatedEvent(this.comment);
}

class CommentDeletedEvent extends CommentBusEvent {
  final String commentId;
  final String? parentId;
  CommentDeletedEvent(this.commentId, {this.parentId});
}

class CommentEventBus {
  final _controller = StreamController<CommentBusEvent>.broadcast();
  Stream<CommentBusEvent> get stream => _controller.stream;
  void publish(CommentBusEvent event) => _controller.add(event);
  void dispose() => _controller.close();
}
