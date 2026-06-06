import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:pulse/core/extensions/context_extensions.dart';

class AppMediaGridSkeleton extends StatelessWidget {
  final int count;

  const AppMediaGridSkeleton({super.key, this.count = 12});

  @override
  Widget build(BuildContext context) {
    final baseColor = context.colorScheme.surfaceContainerHighest;
    final highlightColor = context.colorScheme.surfaceContainer;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: count,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Container(color: Colors.white);
        },
      ),
    );
  }
}
