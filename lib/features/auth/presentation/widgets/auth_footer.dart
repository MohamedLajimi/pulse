import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/theme/app_colors.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
    required this.text,
    required this.actionText,
    required this.onActionTap,
  });

  final String text;
  final String actionText;
  final VoidCallback onActionTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: text,
          style: context.textTheme.bodySmall?.copyWith(
            color: AppColors.textSecondary,
          ),
          children: [
            TextSpan(
              text: actionText,
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColors.textPrimary,
                fontWeight: .w600,
              ),
              recognizer: TapGestureRecognizer()..onTap = onActionTap,
            ),
          ],
        ),
      ),
    );
  }
}
