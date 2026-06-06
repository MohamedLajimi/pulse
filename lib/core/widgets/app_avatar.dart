import 'package:flutter/material.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/widgets/app_adaptive_image.dart';

class AppAvatar extends StatelessWidget {
  final String? url;
  final double radius;
  final VoidCallback? onTap;

  const AppAvatar({
    super.key,
    this.url,
    this.radius = 20,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget content;

    if (url != null && url!.isNotEmpty) {
      content = AppAdaptiveImage(
        path: url!,
        width: radius * 2,
        height: radius * 2,
        borderRadius: BorderRadius.circular(radius),
      );
    } else {
      content = Container(
        width: radius * 2,
        height: radius * 2,
        decoration: const BoxDecoration(
          color: AppColors.surface,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.person,
          color: AppColors.textTertiary,
          size: radius * 1.2,
        ),
      );
    }

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: content,
      );
    }

    return content;
  }
}
