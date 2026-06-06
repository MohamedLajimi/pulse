import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pulse/core/widgets/app_error_image.dart';

class AppLocalImage extends StatelessWidget {
  final String path;
  final double width;
  final double height;
  final BorderRadius? borderRadius;
  final BoxFit fit;

  const AppLocalImage({
    super.key,
    required this.path,
    required this.width,
    required this.height,
    this.borderRadius,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Image.file(
        File(path),
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (_, _, _) => AppErrorImage(width: width, height: height),
      ),
    );
  }
}
