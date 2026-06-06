part of 'app_user_bloc.dart';

@freezed
sealed class AppUserState with _$AppUserState {
  const factory AppUserState.initial() = _Initial;
  const factory AppUserState.loading() = _Loading;
  const factory AppUserState.profileRequired() = _ProfileRequired;
  const factory AppUserState.authenticated(ProfileEntity profile) =
      _Authenticated;
  const factory AppUserState.unauthenticated() = _Unauthenticated;
  const factory AppUserState.error(String message) = _Error;
}
