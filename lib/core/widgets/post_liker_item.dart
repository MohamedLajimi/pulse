import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/widgets/app_avatar.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';

class PostLikerItem extends StatelessWidget {
  final ProfileEntity profile;
  final bool isCurrentUser;
  const PostLikerItem({
    super.key,
    required this.profile,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: isCurrentUser
          ? null
          : () => context.pushNamed(
              RouteNames.userProfile,
              pathParameters: {'userId': profile.id},
            ),
      leading: AppAvatar(url: profile.avatarUrl, radius: 28),
      title: Text(
        '${profile.displayName} ${isCurrentUser ? '(You)' : ''}',
        style: context.textTheme.labelLarge?.copyWith(fontWeight: .w700),
      ),
      subtitle: Text(
        profile.username,
        style: context.textTheme.bodyMedium?.copyWith(
          color: context.colorScheme.secondary,
        ),
      ),
      trailing: isCurrentUser
          ? null
          : FilledButton(onPressed: () {}, child: const Text('Follow')),
    );
  }
}
