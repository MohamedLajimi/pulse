import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/shared/domain/events/follow_event_bus.dart';
import 'package:pulse/shared/domain/repositories/follow_repository.dart';

part 'follow_action_state.dart';

class FollowActionCubit extends Cubit<FollowActionState> {
  FollowActionCubit({
    required FollowRepository followRepository,
    required FollowEventBus followEventBus,
  }) : _followRepository = followRepository,
       _followEventBus = followEventBus,
       super(const FollowActionState());

  final FollowRepository _followRepository;
  final FollowEventBus _followEventBus;

  void initialize({required bool isFollowing}) {
    emit(state.copyWith(isFollowing: isFollowing, isInitializing: false));
  }

  Future<void> checkStatus(String targetUserId) async {
    emit(state.copyWith(isInitializing: true));
    log('cheking ');
    final result = await _followRepository.checkFollowStatus(targetUserId);
    result.fold((_) => emit(state.copyWith(isInitializing: false)), (
      isFollowing,
    ) {
      log(isFollowing.toString());
      emit(state.copyWith(isFollowing: isFollowing, isInitializing: false));
    });
  }

  Future<void> toggleFollow({
    required String targetUserId,
    required String currentUserId,
  }) async {
    if (state.isLoading) return;

    final previousState = state;

    emit(
      FollowActionState(
        isFollowing: !state.isFollowing,
        isLoading: true,
        isInitializing: false,
      ),
    );

    final result = previousState.isFollowing
        ? await _followRepository.unfollowUser(targetUserId)
        : await _followRepository.followUser(targetUserId);

    result.fold((_) => emit(previousState), (_) {
      _followEventBus.publish(
        ProfileFollowToggled(
          isFollowing: !previousState.isFollowing,
          currentUserId: currentUserId,
        ),
      );
      emit(state.copyWith(isLoading: false));
    });
  }
}
