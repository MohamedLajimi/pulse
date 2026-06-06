part of 'profile_media_bloc.dart';

@freezed
sealed class ProfileMediaEvent with _$ProfileMediaEvent {
  const factory ProfileMediaEvent.fetchInitial(String userId) = FetchInitial;
  const factory ProfileMediaEvent.fetchMore(String userId) = FetchMore;
  const factory ProfileMediaEvent.removePostMedia(String postId) =
      RemovePostMedia;
  const factory ProfileMediaEvent.updatePostMedia({
    required String postId,
    required List<PostMediaEntity> newMedia,
  }) = UpdatePostMedia;
}
