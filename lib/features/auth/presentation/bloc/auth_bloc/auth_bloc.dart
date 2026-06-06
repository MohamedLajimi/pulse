import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/features/auth/domain/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<SignInRequested>(_onSignIn);
    on<SignUpRequested>(_onSignUp);
    on<ResetPasswordRequested>(_onResetPassword);
    on<SignOutRequested>(_onSignOut);
  }

  final AuthRepository _authRepository;

  Future<void> _onSignIn(SignInRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await _authRepository.signInWithEmail(
      event.email.trim(),
      event.password,
    );

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (userId) => emit(const AuthState.success()),
    );
  }

  Future<void> _onSignUp(SignUpRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await _authRepository.signUpWithEmail(
      event.email.trim(),
      event.password,
    );

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (userId) => emit(const AuthState.success()),
    );
  }

  Future<void> _onResetPassword(
    ResetPasswordRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final result = await _authRepository.resetPassword(event.email.trim());

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.resetPasswordSent()),
    );
  }

  Future<void> _onSignOut(
    SignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final result = await _authRepository.signOut();

    result.fold((failure) => emit(AuthState.error(failure.message)), (_) {
      emit(const AuthState.initial());
    });
  }
}
