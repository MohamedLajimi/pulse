part of 'app_user_bloc.dart';

@freezed
sealed class AppUserEvent with _$AppUserEvent {
  const factory AppUserEvent.userChanged(String? userId) = UserChanged;
  const factory AppUserEvent.profileUpdated() = ProfileUpdated;
}
