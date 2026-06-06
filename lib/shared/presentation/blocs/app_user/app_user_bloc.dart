import 'dart:async';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' show AuthChangeEvent;

import 'package:pulse/features/auth/domain/repositories/auth_repository.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/repositories/profile_repository.dart';

part 'app_user_bloc.freezed.dart';
part 'app_user_event.dart';
part 'app_user_state.dart';

class AppUserBloc extends Bloc<AppUserEvent, AppUserState> {
  AppUserBloc({
    required AuthRepository authRepository,
    required ProfileRepository profileRepository,
  }) : _authRepository = authRepository,
       _profileRepository = profileRepository,
       super(const AppUserState.initial()) {
    on<UserChanged>(_onUserChanged);
    on<ProfileUpdated>(_onProfileUpdated);

    _authSubscription = _authRepository.authStateChanges.listen((authState) {
      if (authState.event == AuthChangeEvent.signedOut) {
        add(const AppUserEvent.userChanged(null));
      } else if (authState.session != null) {
        add(AppUserEvent.userChanged(authState.session!.user.id));
      }
    });

    final initialUserId = _authRepository.currentUserId;
    if (initialUserId != null) {
      add(AppUserEvent.userChanged(initialUserId));
    } else {
      add(const AppUserEvent.userChanged(null));
    }
  }

  final AuthRepository _authRepository;
  final ProfileRepository _profileRepository;
  late final StreamSubscription<dynamic> _authSubscription;

  Future<void> _onUserChanged(
    UserChanged event,
    Emitter<AppUserState> emit,
  ) async {
    final userId = event.userId;
    debugPrint(userId);
    if (userId == null) {
      emit(const AppUserState.unauthenticated());
      return;
    }

    emit(const AppUserState.loading());
    final result = await _profileRepository.getProfileById(userId);

    result.fold((failure) => emit(AppUserState.error(failure.message)), (
      profile,
    ) {
      if (profile != null) {
        emit(AppUserState.authenticated(profile));
      } else {
        emit(const AppUserState.profileRequired());
      }
    });
  }

  Future<void> _onProfileUpdated(
    ProfileUpdated event,
    Emitter<AppUserState> emit,
  ) async {
    final userId = _authRepository.currentUserId;
    if (userId == null) return;

    final result = await _profileRepository.getProfileById(userId);
    result.fold((failure) => emit(AppUserState.error(failure.message)), (
      profile,
    ) {
      if (profile != null) {
        emit(AppUserState.authenticated(profile));
      }
    });
  }

  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }
}
