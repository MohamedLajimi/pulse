import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_error_image.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';

class AppNetworkImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final BorderRadius? borderRadius;
  final BoxFit fit;
  final bool isVideo;

  const AppNetworkImage({
    super.key,
    required this.url,
    required this.width,
    required this.height,
    this.borderRadius,
    this.fit = BoxFit.cover,
    this.isVideo = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipper: borderRadius != null
          ? _BorderRadiusClipper(borderRadius!)
          : null,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          CachedNetworkImage(
            imageUrl: url,
            width: width,
            height: height,
            fit: fit,
            placeholder: (_, _) => Container(
              width: width,
              height: height,
              color: context.colorScheme.surfaceContainerHighest,
              child: const AppLoadingIndicator(size: 16),
            ),
            errorWidget: (_, _, _) =>
                AppErrorImage(width: width, height: height),
          ),
          if (isVideo)
            Positioned.fill(
              child: Center(
                child: Container(
                  padding: const .all(8),
                  decoration: const BoxDecoration(
                    color: Colors.black45,
                    shape: .circle,
                  ),
                  child: const Icon(
                    CupertinoIcons.play_fill,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _BorderRadiusClipper extends CustomClipper<RRect> {
  final BorderRadius borderRadius;
  _BorderRadiusClipper(this.borderRadius);

  @override
  RRect getClip(Size size) => borderRadius
      .resolve(TextDirection.ltr)
      .toRRect(Rect.fromLTWH(0, 0, size.width, size.height));

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) => false;
}
