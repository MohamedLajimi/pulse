import 'dart:async';

abstract class FollowEvent {}

class ProfileFollowToggled extends FollowEvent {
  final bool isFollowing;
  final String currentUserId;

  ProfileFollowToggled({
    required this.isFollowing,
    required this.currentUserId,
  });
}

class FollowEventBus {
  final StreamController<FollowEvent> _controller =
      StreamController.broadcast();

  Stream<FollowEvent> get stream => _controller.stream;

  void publish(FollowEvent event) {
    _controller.add(event);
  }

  void dispose() {
    _controller.close();
  }
}
