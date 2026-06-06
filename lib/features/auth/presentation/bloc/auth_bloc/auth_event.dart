part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = SignInRequested;

  const factory AuthEvent.signUpRequested({
    required String email,
    required String password,
  }) = SignUpRequested;

  const factory AuthEvent.resetPasswordRequested({required String email}) =
      ResetPasswordRequested;

  const factory AuthEvent.signOutRequested() = SignOutRequested;
}
