import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/core/utils/validators.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/repositories/profile_repository.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final ProfileRepository _repository;

  EditProfileBloc(this._repository) : super(const EditProfileState.loading()) {
    on<FetchProfile>(_onFetchProfile);
    on<UsernameChanged>(_onUsernameChanged);
    on<DisplayNameChanged>(_onDisplayNameChanged);
    on<BioChanged>(_onBioChanged);
    on<AvatarChanged>(_onAvatarChanged);
    on<RemoveAvatar>(_onRemoveAvatar);
    on<SubmitProfile>(_onSubmitProfile);
  }

  Future<void> _onFetchProfile(
    FetchProfile event,
    Emitter<EditProfileState> emit,
  ) async {
    emit(const EditProfileState.loading());
    final result = await _repository.getProfileById(event.userId);

    result.fold(
      (failure) => emit(EditProfileState.fetchError(failure.message)),
      (profile) {
        if (profile == null) {
          emit(const EditProfileState.fetchError('Profile not found'));
          return;
        }
        emit(
          EditProfileState.editing(
            initialProfile: profile,
            username: profile.username,
            displayName: profile.displayName,
            bio: profile.bio ?? '',
          ),
        );
      },
    );
  }

  Future<void> _onUsernameChanged(
    UsernameChanged event,
    Emitter<EditProfileState> emit,
  ) async {
    final activeState = state.mapOrNull(editing: (s) => s);
    if (activeState == null || !state.canChangeUsername) return;

    final trimmed = event.username.trim();
    emit(
      activeState.copyWith(
        username: trimmed,
        isUsernameAvailable: true,
        submissionErrorMessage: null,
      ),
    );

    if (trimmed == activeState.initialProfile.username) return;
    if (Validators.username(trimmed) != null) return;

    emit(activeState.copyWith(isCheckingUsername: true));
    final result = await _repository.isUsernameAvailable(trimmed);

    final currentState = state.mapOrNull(editing: (s) => s);
    if (currentState == null || currentState.username != trimmed) return;

    result.fold(
      (failure) => emit(currentState.copyWith(isCheckingUsername: false)),
      (isAvailable) => emit(
        currentState.copyWith(
          isCheckingUsername: false,
          isUsernameAvailable: isAvailable,
        ),
      ),
    );
  }

  void _onDisplayNameChanged(
    DisplayNameChanged event,
    Emitter<EditProfileState> emit,
  ) {
    state.mapOrNull(
      editing: (activeState) {
        emit(activeState.copyWith(displayName: event.displayName.trimLeft()));
      },
    );
  }

  void _onBioChanged(BioChanged event, Emitter<EditProfileState> emit) {
    state.mapOrNull(
      editing: (activeState) {
        emit(activeState.copyWith(bio: event.bio.trimLeft()));
      },
    );
  }

  Future<void> _onAvatarChanged(AvatarChanged event, Emitter<EditProfileState> emit) async {
    final activeState = state.mapOrNull(editing: (s) => s);
    if (activeState == null) return;

    final file = event.file;
    if (file == null) {
      emit(activeState.copyWith(
        newAvatarFile: null, removeAvatar: true, uploadedAvatarUrl: null
      ));
      return;
    }

    emit(activeState.copyWith(
      newAvatarFile: file, isAvatarUploading: true, removeAvatar: false, submissionErrorMessage: null
    ));

    final uploadResult = await _repository.uploadAvatar(
      activeState.initialProfile.id,
      file,
      oldUrl: activeState.initialProfile.avatarUrl,
    );

    final currentState = state.mapOrNull(editing: (s) => s);
    if (currentState == null) return;

    uploadResult.fold(
      (failure) => emit(currentState.copyWith(
        isAvatarUploading: false,
        submissionErrorMessage: failure.message,
      )),
      (url) => emit(currentState.copyWith(
        isAvatarUploading: false,
        uploadedAvatarUrl: url,
      )),
    );
  }

  void _onRemoveAvatar(RemoveAvatar event, Emitter<EditProfileState> emit) {
    state.mapOrNull(
      editing: (activeState) {
        emit(activeState.copyWith(newAvatarFile: null, removeAvatar: true, uploadedAvatarUrl: null));
      },
    );
  }

  Future<void> _onSubmitProfile(
    SubmitProfile event,
    Emitter<EditProfileState> emit,
  ) async {
    final activeState = state.mapOrNull(editing: (s) => s);
    if (activeState == null || !state.canSubmit) return;

    emit(
      activeState.copyWith(
        submissionStatus: EditProfileSubmissionStatus.submitting,
        submissionErrorMessage: null,
      ),
    );

    final profile = activeState.initialProfile;
    final data = <String, dynamic>{};

    if (activeState.username != profile.username && state.canChangeUsername) {
      data['username'] = activeState.username;
      data['username_changed_at'] = DateTime.now().toIso8601String();
    }
    if (activeState.displayName != profile.displayName) {
      data['display_name'] = activeState.displayName;
    }
    if (activeState.bio != (profile.bio ?? '')) {
      data['bio'] = activeState.bio;
    }

    if (activeState.removeAvatar) {
      data['avatar_url'] = null;
    } else if (activeState.uploadedAvatarUrl != null) {
      data['avatar_url'] = activeState.uploadedAvatarUrl;
    }

    if (data.isEmpty) {
      emit(
        activeState.copyWith(
          submissionStatus: EditProfileSubmissionStatus.success,
        ),
      );
      return;
    }

    final updateResult = await _repository.updateProfile(profile.id, data);
    updateResult.fold(
      (failure) => emit(
        activeState.copyWith(
          submissionStatus: EditProfileSubmissionStatus.failure,
          submissionErrorMessage: failure.message,
        ),
      ),
      (_) => emit(
        activeState.copyWith(
          submissionStatus: EditProfileSubmissionStatus.success,
        ),
      ),
    );
  }
}
