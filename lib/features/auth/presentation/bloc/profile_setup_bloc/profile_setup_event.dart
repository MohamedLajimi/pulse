part of 'profile_setup_bloc.dart';

@freezed
sealed class ProfileSetupEvent with _$ProfileSetupEvent {
  const factory ProfileSetupEvent.avatarChanged(File? file) = _AvatarChanged;
  const factory ProfileSetupEvent.usernameChanged(String username) = _UsernameChanged;
  const factory ProfileSetupEvent.submitProfileSetup({
    required String displayName,
    String? bio,
  }) = _SubmitProfileSetup;
}
