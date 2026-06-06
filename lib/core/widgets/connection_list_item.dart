import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/widgets/app_avatar.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/presentation/blocs/profile_connections/profile_connections_bloc.dart';
import 'package:pulse/shared/presentation/widgets/follow_button.dart';

class ConnectionListItem extends StatelessWidget {
  final ProfileEntity profile;
  final String currentUserId;
  final ConnectionType connectionType;
  const ConnectionListItem({
    super.key,
    required this.profile,
    required this.currentUserId,
    required this.connectionType,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.pushNamed(
        RouteNames.userProfile,
        pathParameters: {'userId': profile.id},
      ),
      leading: AppAvatar(url: profile.avatarUrl, radius: 24),
      title: Text(
        profile.displayName,
        style: context.textTheme.labelLarge?.copyWith(fontWeight: .w700),
      ),
      subtitle: Text(
        profile.username,
        style: context.textTheme.bodyMedium?.copyWith(
          color: context.colorScheme.secondary,
        ),
      ),
      trailing: currentUserId != profile.id
          ? FollowButtonWrapper(
              targetUserId: profile.id,
              currentUserId: currentUserId,
              isFullWidth: false,
            )
          : null,
    );
  }
}
