part of 'edit_profile_bloc.dart';

enum EditProfileSubmissionStatus { initial, submitting, success, failure }

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.loading() = _Loading;
  const factory EditProfileState.fetchError(String message) = _FetchError;
  const factory EditProfileState.editing({
    required ProfileEntity initialProfile,
    @Default('') String username,
    @Default('') String displayName,
    @Default('') String bio,
    File? newAvatarFile,
    @Default(false) bool removeAvatar,
    @Default(false) bool isCheckingUsername,
    @Default(true) bool isUsernameAvailable,
    @Default(false) bool isAvatarUploading,
    String? uploadedAvatarUrl,
    @Default(EditProfileSubmissionStatus.initial)
    EditProfileSubmissionStatus submissionStatus,
    String? submissionErrorMessage,
  }) = _Editing;

  const EditProfileState._();

  bool get canChangeUsername {
    return maybeMap(
      editing: (state) {
        final anchor =
            state.initialProfile.usernameChangedAt ??
            state.initialProfile.createdAt;
        return DateTime.now().difference(anchor).inDays >= 90;
      },
      orElse: () => false,
    );
  }

  bool get hasChanges {
    return maybeMap(
      editing: (state) {
        return state.username != state.initialProfile.username ||
            state.displayName != state.initialProfile.displayName ||
            state.bio != (state.initialProfile.bio ?? '') ||
            state.newAvatarFile != null ||
            state.uploadedAvatarUrl != null ||
            state.removeAvatar;
      },
      orElse: () => false,
    );
  }

  bool get isFormValid {
    return maybeMap(
      editing: (state) {
        return Validators.username(state.username) == null &&
            Validators.displayName(state.displayName) == null &&
            Validators.bio(state.bio) == null;
      },
      orElse: () => false,
    );
  }

  bool get canSubmit {
    return maybeMap(
      editing: (state) {
        return hasChanges &&
            isFormValid &&
            state.isUsernameAvailable &&
            !state.isAvatarUploading &&
            state.submissionStatus != EditProfileSubmissionStatus.submitting;
      },
      orElse: () => false,
    );
  }
}
