part of 'profile_detail_bloc.dart';

@freezed
sealed class ProfileDetailEvent with _$ProfileDetailEvent {
  const factory ProfileDetailEvent.fetchProfile(String userId) = _FetchProfile;
  const factory ProfileDetailEvent.decrementPostCount(String postId) =
      _DecrementPostCount;
  const factory ProfileDetailEvent.followToggled({
    required bool isFollowing,
    required String currentUserId,
  }) = _FollowToggled;
}
