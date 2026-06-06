part of 'profile_detail_bloc.dart';

@freezed
sealed class ProfileDetailState with _$ProfileDetailState {
  const factory ProfileDetailState.initial() = _Initial;
  const factory ProfileDetailState.loading() = _Loading;
  const factory ProfileDetailState.profileLoaded({
    required ProfileEntity profile,
    @Default(true) bool shouldTriggerPostFetching,
  }) = _ProfileLoaded;
  const factory ProfileDetailState.error(String message) = _Error;
}
