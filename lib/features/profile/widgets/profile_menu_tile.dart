import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';

class ProfileMenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isDestructive;

  const ProfileMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isDestructive
        ? context.colorScheme.error
        : context.colorScheme.onSurface;

    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: color, size: 20),
      title: Text(
        title,
        style: context.textTheme.titleMedium?.copyWith(
          color: color,
          fontWeight: .w600,
        ),
      ),
      trailing: isDestructive
          ? null
          : Icon(
              CupertinoIcons.chevron_right,
              size: 16,
              color: context.colorScheme.secondary,
            ),
    );
  }
}
