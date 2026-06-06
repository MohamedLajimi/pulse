import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/theme/app_colors.dart';

enum SnackBarType { success, error, info }

abstract class AppSnackBar {
  static void show(
    BuildContext context, {
    required String message,
    required SnackBarType type,
    String? actionLabel,
    VoidCallback? onAction,
  }) {
    final iconColor = _getColor(type);
    final icon = _getIcon(type);

    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(icon, size: 20, color: iconColor),
            const SizedBox(width: 12),
            Expanded(child: Text(message, style: context.textTheme.bodyMedium)),
          ],
        ),
        action: actionLabel != null
            ? SnackBarAction(
                label: actionLabel,
                textColor: context.colorScheme.primary,
                onPressed: onAction ?? () {},
              )
            : null,
      ),
    );
  }

  static Color _getColor(SnackBarType type) {
    return switch (type) {
      SnackBarType.success => AppColors.success,
      SnackBarType.error => AppColors.error,
      SnackBarType.info => AppColors.verified,
    };
  }

  static IconData _getIcon(SnackBarType type) {
    return switch (type) {
      SnackBarType.success => CupertinoIcons.checkmark_circle,
      SnackBarType.error => CupertinoIcons.exclamationmark_circle,
      SnackBarType.info => CupertinoIcons.info_circle,
    };
  }
}
