part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.fetchProfile(String userId) = FetchProfile;
  const factory EditProfileEvent.usernameChanged(String username) =
      UsernameChanged;
  const factory EditProfileEvent.displayNameChanged(String displayName) =
      DisplayNameChanged;
  const factory EditProfileEvent.bioChanged(String bio) = BioChanged;
  const factory EditProfileEvent.avatarChanged(File? file) = AvatarChanged;
  const factory EditProfileEvent.removeAvatar() = RemoveAvatar;
  const factory EditProfileEvent.submit() = SubmitProfile;
}
