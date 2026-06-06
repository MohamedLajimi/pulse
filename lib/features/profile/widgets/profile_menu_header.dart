import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/widgets/app_avatar.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';

class ProfileMenuHeader extends StatelessWidget {
  final ProfileEntity profile;

  const ProfileMenuHeader({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.pushNamed(
        RouteNames.userProfile,
        pathParameters: {'userId': profile.id},
      ),
      leading: AppAvatar(url: profile.avatarUrl, radius: 25),
      title: Text(
        profile.displayName,
        style: context.textTheme.titleMedium?.copyWith(fontWeight: .bold),
        maxLines: 1,
        overflow: .ellipsis,
      ),
      subtitle: Text(
        '@${profile.username}',
        style: context.textTheme.bodyMedium?.copyWith(
          color: context.colorScheme.secondary,
        ),
        maxLines: 1,
        overflow: .ellipsis,
      ),
      trailing: Icon(
        CupertinoIcons.chevron_right,
        size: 16,
        color: context.colorScheme.secondary,
      ),
    );
  }
}
