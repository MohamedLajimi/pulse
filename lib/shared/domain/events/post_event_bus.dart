import 'dart:async';
import 'package:pulse/shared/domain/entities/post_entity.dart';

abstract class PostEvent {}

class PostCreatedEvent extends PostEvent {
  final PostEntity post;
  PostCreatedEvent(this.post);
}

class PostUpdatedEvent extends PostEvent {
  final PostEntity post;
  PostUpdatedEvent(this.post);
}

class PostDeletedEvent extends PostEvent {
  final String postId;
  PostDeletedEvent(this.postId);
}

class PostEventBus {
  final _controller = StreamController<PostEvent>.broadcast();

  Stream<PostEvent> get stream => _controller.stream;

  void publish(PostEvent event) {
    if (!_controller.isClosed) {
      _controller.add(event);
    }
  }

  void dispose() {
    _controller.close();
  }
}
