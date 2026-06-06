import 'package:flutter/material.dart';
import 'package:pulse/core/theme/app_colors.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    super.key,
    this.size = 24.0,
    this.color = AppColors.textPrimary,
    this.strokeWidth = 2.5,
  });

  final double size;
  final Color color;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          color: color,
          strokeWidth: strokeWidth,
          strokeCap: .round,
        ),
      ),
    );
  }
}

class AppLoadingOverlay extends StatelessWidget {
  const AppLoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.overlay,
      child: const AppLoadingIndicator(size: 32),
    );
  }
}
