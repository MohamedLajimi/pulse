import 'package:flutter/cupertino.dart';
import 'package:pulse/core/extensions/context_extensions.dart';

class AppErrorImage extends StatelessWidget {
  final double width;
  final double height;

  const AppErrorImage({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: context.colorScheme.surfaceContainerHighest,
      child: Center(
        child: Icon(
          CupertinoIcons.exclamationmark_circle,
          color: context.colorScheme.error,
          size: 24,
        ),
      ),
    );
  }
}
