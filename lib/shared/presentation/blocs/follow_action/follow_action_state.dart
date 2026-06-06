part of 'follow_action_cubit.dart';

class FollowActionState extends Equatable {
  final bool isFollowing;
  final bool isLoading;
  final bool isInitializing;

  const FollowActionState({
    this.isFollowing = false,
    this.isLoading = false,
    this.isInitializing = false,
  });

  FollowActionState copyWith({
    bool? isFollowing,
    bool? isLoading,
    bool? isInitializing,
  }) {
    return FollowActionState(
      isFollowing: isFollowing ?? this.isFollowing,
      isLoading: isLoading ?? this.isLoading,
      isInitializing: isInitializing ?? this.isInitializing,
    );
  }

  @override
  List<Object?> get props => [isFollowing, isLoading, isInitializing];
}
