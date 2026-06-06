import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/events/follow_event_bus.dart';
import 'package:pulse/shared/domain/events/post_event_bus.dart';
import 'package:pulse/shared/domain/repositories/profile_repository.dart';

part 'profile_detail_event.dart';
part 'profile_detail_state.dart';
part 'profile_detail_bloc.freezed.dart';

class ProfileDetailBloc extends Bloc<ProfileDetailEvent, ProfileDetailState> {
  final ProfileRepository _repository;
  final FollowEventBus _followEventBus;
  final PostEventBus _postEventBus;
  late StreamSubscription<FollowEvent> _followSubscription;
  late StreamSubscription<PostEvent> _postSubscription;

  ProfileDetailBloc(this._repository, this._followEventBus, this._postEventBus)
    : super(const ProfileDetailState.initial()) {
    on<_FetchProfile>(_onFetchProfile);
    on<_DecrementPostCount>(_onDecrementPostCount);
    on<_FollowToggled>(_onFollowToggled);

    _followSubscription = _followEventBus.stream.listen((event) {
      if (event is ProfileFollowToggled) {
        add(
          _FollowToggled(
            isFollowing: event.isFollowing,
            currentUserId: event.currentUserId,
          ),
        );
      }
    });

    _postSubscription = _postEventBus.stream.listen((event) {
      if (event is PostDeletedEvent) {
        add(_DecrementPostCount(event.postId));
      }
    });
  }

  @override
  Future<void> close() {
    _followSubscription.cancel();
    _postSubscription.cancel();
    return super.close();
  }

  Future<void> _onFetchProfile(
    _FetchProfile event,
    Emitter<ProfileDetailState> emit,
  ) async {
    emit(const ProfileDetailState.loading());
    final result = await _repository.getProfileById(event.userId);

    result.fold((failure) => emit(ProfileDetailState.error(failure.message)), (
      profile,
    ) {
      if (profile == null) {
        emit(const ProfileDetailState.error('Profile not found.'));
      } else {
        emit(
          ProfileDetailState.profileLoaded(
            profile: profile,
            shouldTriggerPostFetching: true,
          ),
        );
      }
    });
  }

  void _onDecrementPostCount(
    _DecrementPostCount event,
    Emitter<ProfileDetailState> emit,
  ) {
    final profile = state.mapOrNull(profileLoaded: (state) => state.profile);

    if (profile == null) return;

    if (profile.postCount > 0) {
      final updatedProfile = profile.copyWith(postCount: profile.postCount - 1);
      emit(
        (state as _ProfileLoaded).copyWith(
          profile: updatedProfile,
          shouldTriggerPostFetching: false,
        ),
      );
    }
  }

  void _onFollowToggled(
    _FollowToggled event,
    Emitter<ProfileDetailState> emit,
  ) {
    if (state is! _ProfileLoaded) {
      return;
    }
    final currentState = state as _ProfileLoaded;
    ProfileEntity updatedProfile = currentState.profile;
    if (updatedProfile.id == event.currentUserId) {
      updatedProfile = updatedProfile.copyWith(
        followingCount: event.isFollowing
            ? currentState.profile.followingCount + 1
            : currentState.profile.followingCount - 1,
      );
    } else {
      updatedProfile = updatedProfile.copyWith(
        followerCount: event.isFollowing
            ? currentState.profile.followerCount + 1
            : currentState.profile.followerCount - 1,
      );
    }
    emit(
      currentState.copyWith(
        profile: updatedProfile,
        shouldTriggerPostFetching: false,
      ),
    );
  }
}
