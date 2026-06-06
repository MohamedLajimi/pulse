import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pulse/features/auth/domain/repositories/auth_repository.dart';
import 'package:pulse/shared/domain/repositories/profile_repository.dart';

part 'profile_setup_bloc.freezed.dart';
part 'profile_setup_event.dart';
part 'profile_setup_state.dart';

class ProfileSetupBloc extends Bloc<ProfileSetupEvent, ProfileSetupState> {
  ProfileSetupBloc({
    required AuthRepository authRepository,
    required ProfileRepository profileRepository,
  }) : _authRepository = authRepository,
       _profileRepository = profileRepository,
       super(const ProfileSetupState()) {
    on<_AvatarChanged>(_onAvatarChanged);
    on<_UsernameChanged>(_onUsernameChanged);
    on<_SubmitProfileSetup>(_onSubmitProfileSetup);
  }

  final AuthRepository _authRepository;
  final ProfileRepository _profileRepository;

  Future<void> _onAvatarChanged(
    _AvatarChanged event,
    Emitter<ProfileSetupState> emit,
  ) async {
    final file = event.file;
    emit(
      state.copyWith(
        avatar: file,
        isAvatarUploading: file != null,
        errorMessage: null,
      ),
    );

    if (file == null) {
      emit(state.copyWith(uploadedAvatarUrl: null));
      return;
    }

    final userId = _authRepository.currentUserId;
    if (userId == null) return;

    final uploadResult = await _profileRepository.uploadAvatar(userId, file);
    debugPrint('URL OF AVATAR IS : $uploadResult');

    uploadResult.fold(
      (failure) => emit(
        state.copyWith(isAvatarUploading: false, errorMessage: failure.message),
      ),
      (url) => emit(
        state.copyWith(isAvatarUploading: false, uploadedAvatarUrl: url),
      ),
    );
  }

  Future<void> _onUsernameChanged(
    _UsernameChanged event,
    Emitter<ProfileSetupState> emit,
  ) async {
    final username = event.username.trim();
    emit(
      state.copyWith(
        username: username,
        isUsernameAvailable: false,
        errorMessage: null,
      ),
    );

    if (username.isEmpty || username.length < 3) {
      emit(state.copyWith(isCheckingUsername: false));
      return;
    }

    emit(state.copyWith(isCheckingUsername: true));
    final result = await _profileRepository.isUsernameAvailable(username);

    result.fold(
      (failure) => emit(
        state.copyWith(
          isCheckingUsername: false,
          errorMessage: failure.message,
        ),
      ),
      (isAvailable) => emit(
        state.copyWith(
          isCheckingUsername: false,
          isUsernameAvailable: isAvailable,
        ),
      ),
    );
  }

  Future<void> _onSubmitProfileSetup(
    _SubmitProfileSetup event,
    Emitter<ProfileSetupState> emit,
  ) async {
    final userId = _authRepository.currentUserId;
    if (userId == null) {
      emit(
        state.copyWith(
          status: FormStatus.error,
          errorMessage: 'No authenticated user found.',
        ),
      );
      return;
    }

    if (!state.isFormValid) return;

    emit(state.copyWith(status: FormStatus.submitting));

    final profileResult = await _profileRepository.createProfile(
      userId: userId,
      username: state.username,
      displayName: event.displayName,
      bio: event.bio,
      avatarUrl: state.uploadedAvatarUrl,
    );

    profileResult.fold(
      (failure) => emit(
        state.copyWith(status: FormStatus.error, errorMessage: failure.message),
      ),
      (_) => emit(state.copyWith(status: FormStatus.success)),
    );
  }
}
