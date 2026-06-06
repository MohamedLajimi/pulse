import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/extensions/context_extensions.dart';

class AppAlertDialog {
  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required String message,
    required String primaryButtonText,
    required VoidCallback onPrimaryPressed,
    String secondaryButtonText = 'Cancel',
    VoidCallback? onSecondaryPressed,
    bool isDestructive = false,
    IconData? icon,
  }) {
    return showDialog<T>(
      context: context,
      barrierColor: context.colorScheme.surface.withValues(alpha: 0.3),
      builder: (ctx) => Dialog(
        backgroundColor: context.theme.cardColor,
        shape: RoundedRectangleBorder(borderRadius: .circular(24)),
        child: Padding(
          padding: const .all(24),
          child: Column(
            mainAxisSize: .min,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  size: 28,
                  color: isDestructive
                      ? context.colorScheme.error
                      : context.colorScheme.primary,
                ),
                const SizedBox(height: 16),
              ],
              Text(title, style: context.textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(
                message,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.secondary,
                ),
                textAlign: .center,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        if (onSecondaryPressed != null) {
                          onSecondaryPressed();
                        } else {
                          ctx.pop();
                        }
                      },
                      child: Text(secondaryButtonText),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: isDestructive
                          ? ElevatedButton.styleFrom(
                              backgroundColor: context.colorScheme.error,
                              foregroundColor: context.colorScheme.onError,
                            )
                          : null,
                      onPressed: () {
                        ctx.pop();
                        onPrimaryPressed();
                      },
                      child: Text(primaryButtonText),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
