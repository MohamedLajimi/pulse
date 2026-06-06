import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/di/service_locator.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/shared/presentation/blocs/follow_action/follow_action_cubit.dart';

class FollowButtonWrapper extends StatelessWidget {
  final String targetUserId;
  final String currentUserId;
  final bool isFullWidth;
  final double height;

  const FollowButtonWrapper({
    super.key,
    required this.targetUserId,
    required this.currentUserId,
    this.isFullWidth = false,
    this.height = 36,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<FollowActionCubit>()..checkStatus(targetUserId),
      child: FollowButtonView(
        targetUserId: targetUserId,
        currentUserId: currentUserId,
        isFullWidth: isFullWidth,
        height: height,
      ),
    );
  }
}

class FollowButtonView extends StatelessWidget {
  final String targetUserId;
  final String currentUserId;
  final bool isFullWidth;
  final double height;
  const FollowButtonView({
    super.key,
    required this.targetUserId,
    required this.currentUserId,
    required this.isFullWidth,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowActionCubit, FollowActionState>(
      builder: (context, state) {
        final buttonStyle = ElevatedButton.styleFrom(
          backgroundColor: state.isFollowing
              ? context.colorScheme.surface
              : context.colorScheme.primary,
          foregroundColor: state.isFollowing
              ? context.colorScheme.onSurface
              : context.colorScheme.onPrimary,
          elevation: 0,
          side: state.isFollowing
              ? BorderSide(color: context.colorScheme.outline)
              : null,
          shape: RoundedRectangleBorder(borderRadius: .circular(8)),
          padding: const .symmetric(horizontal: 16),
        );

        Widget buttonChild;
        if (state.isInitializing) {
          buttonChild = SizedBox(
            height: 16,
            width: 16,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: context.colorScheme.primary,
            ),
          );
        } else if (state.isLoading) {
          buttonChild = SizedBox(
            height: 16,
            width: 16,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: state.isFollowing
                  ? context.colorScheme.onSurface
                  : context.colorScheme.onPrimary,
            ),
          );
        } else {
          buttonChild = Text(
            state.isFollowing ? 'Following' : 'Follow',
            style: const TextStyle(fontWeight: .bold),
          );
        }

        final button = ElevatedButton(
          onPressed: state.isInitializing || state.isLoading
              ? null
              : () => context.read<FollowActionCubit>().toggleFollow(
                  targetUserId: targetUserId,
                  currentUserId: currentUserId,
                ),
          style: buttonStyle,
          child: buttonChild,
        );

        return SizedBox(
          height: height,
          width: isFullWidth ? .infinity : null,
          child: button,
        );
      },
    );
  }
}
