part of 'profile_setup_bloc.dart';

enum FormStatus { initial, submitting, success, error }

@freezed
sealed class ProfileSetupState with _$ProfileSetupState {
  const factory ProfileSetupState({
    @Default(FormStatus.initial) FormStatus status,

    File? avatar,
    @Default(false) bool isAvatarUploading,
    String? uploadedAvatarUrl,
    @Default('') String username,
    @Default(false) bool isCheckingUsername,
    @Default(false) bool isUsernameAvailable,

    String? errorMessage,
  }) = _ProfileSetupState;

  const ProfileSetupState._();

  bool get isFormValid =>
      username.length >= 3 &&
      isUsernameAvailable &&
      !isAvatarUploading &&
      !isCheckingUsername &&
      status != FormStatus.submitting;
}
