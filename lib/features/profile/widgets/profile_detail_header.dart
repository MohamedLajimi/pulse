import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/widgets/app_avatar.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/shared/presentation/widgets/follow_button.dart';

class ProfileDetailHeader extends StatelessWidget {
  final ProfileEntity profile;
  final Widget? actionButton;

  const ProfileDetailHeader({
    super.key,
    required this.profile,
    this.actionButton,
  });

  @override
  Widget build(BuildContext context) {
    final currentUserId = context.read<AppUserBloc>().state.whenOrNull(
      authenticated: (profile) => profile.id,
    );
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              AppAvatar(url: profile.avatarUrl, radius: 44),
              const SizedBox(width: 24),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _StatBlock(label: 'Posts', count: profile.postCount),
                    _StatBlock(
                      label: 'Followers',
                      count: profile.followerCount,
                      onTap: () => context.pushNamed(
                        RouteNames.followers,
                        pathParameters: {'userId': profile.id},
                      ),
                    ),
                    _StatBlock(
                      label: 'Following',
                      count: profile.followingCount,
                      onTap: () => context.pushNamed(
                        RouteNames.following,
                        pathParameters: {'userId': profile.id},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Text(
            profile.displayName,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),

          if (profile.bio != null && profile.bio!.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(profile.bio!, style: context.textTheme.bodyMedium),
          ],

          if (actionButton != null) ...[
            const SizedBox(height: 16),
            actionButton!,
          ],

          if (currentUserId != null && currentUserId != profile.id) ...[
            const SizedBox(height: 16),
            FollowButtonWrapper(
              targetUserId: profile.id,
              currentUserId: currentUserId,
              isFullWidth: true,
            ),
          ],
        ],
      ),
    );
  }
}

class _StatBlock extends StatelessWidget {
  final String label;
  final int count;
  final VoidCallback? onTap;

  const _StatBlock({required this.label, required this.count, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: .min,
        children: [
          Text(
            _formatCount(count),
            style: context.textTheme.titleLarge?.copyWith(fontWeight: .bold),
          ),
          Text(
            label,
            style: context.textTheme.labelMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  String _formatCount(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 10000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }
}
