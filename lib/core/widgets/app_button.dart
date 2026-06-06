import 'package:flutter/material.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isEnabled = true,
    this.expanded = true,
    this.icon,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isEnabled;
  final bool expanded;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton(
      onPressed: (isLoading || !isEnabled) ? null : onPressed,
      child: _buildChild(),
    );

    if (expanded) {
      return SizedBox(width: double.infinity, child: button);
    }

    return button;
  }

  Widget _buildChild() {
    if (isLoading) {
      return const AppLoadingIndicator(
        size: 20,
        color: AppColors.background,
        strokeWidth: 2,
      );
    }

    if (icon != null) {
      return Row(
        spacing: 8,
        mainAxisSize: .min,
        children: [Icon(icon, size: 18), Text(text)],
      );
    }

    return Text(text);
  }
}

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isEnabled = true,
    this.expanded = true,
    this.icon,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isEnabled;
  final bool expanded;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final button = OutlinedButton(
      onPressed: (isLoading || !isEnabled) ? null : onPressed,
      child: _buildChild(),
    );

    if (expanded) {
      return SizedBox(width: double.infinity, child: button);
    }

    return button;
  }

  Widget _buildChild() {
    if (isLoading) {
      return const AppLoadingIndicator(
        size: 20,
        color: AppColors.textPrimary,
        strokeWidth: 2,
      );
    }

    if (icon != null) {
      return Row(
        mainAxisSize: .min,
        children: [Icon(icon, size: 18), const SizedBox(width: 8), Text(text)],
      );
    }

    return Text(text);
  }
}

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isEnabled = true,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isEnabled ? onPressed : null,
      child: Text(text),
    );
  }
}
