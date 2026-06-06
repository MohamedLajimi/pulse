import 'package:flutter/material.dart';
import 'package:pulse/core/widgets/app_local_image.dart';
import 'package:pulse/core/widgets/app_network_image.dart';

class AppAdaptiveImage extends StatelessWidget {
  final String path;
  final double width;
  final double height;
  final BorderRadius? borderRadius;
  final BoxFit fit;

  const AppAdaptiveImage({
    super.key,
    required this.path,
    required this.width,
    required this.height,
    this.borderRadius,
    this.fit = BoxFit.cover,
  });

  bool get _isNetworkUrl =>
      path.startsWith('http://') || path.startsWith('https://');

  @override
  Widget build(BuildContext context) {
    return _isNetworkUrl
        ? AppNetworkImage(
            url: path,
            width: width,
            height: height,
            borderRadius: borderRadius,
            fit: fit,
          )
        : AppLocalImage(
            path: path,
            width: width,
            height: height,
            borderRadius: borderRadius,
            fit: fit,
          );
  }
}
