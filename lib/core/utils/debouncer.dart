import 'dart:async';

import 'package:flutter/foundation.dart';

class Debouncer {
  Debouncer({required this.duration});

  final Duration duration;
  Timer? _timer;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(duration, action);
  }

  void cancel() {
    _timer?.cancel();
    _timer = null;
  }

  bool get isActive => _timer?.isActive ?? false;

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}

class CountdownTimer {
  CountdownTimer({required this.seconds, required this.onTick, this.onDone});

  final int seconds;
  final ValueChanged<int> onTick;
  final VoidCallback? onDone;

  Timer? _timer;
  int _remaining = 0;

  int get remaining => _remaining;
  bool get isActive => _timer?.isActive ?? false;

  void start() {
    cancel();
    _remaining = seconds;
    onTick(_remaining);

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _remaining--;
      onTick(_remaining);

      if (_remaining <= 0) {
        cancel();
        onDone?.call();
      }
    });
  }

  void cancel() {
    _timer?.cancel();
    _timer = null;
  }

  void dispose() {
    cancel();
  }
}
