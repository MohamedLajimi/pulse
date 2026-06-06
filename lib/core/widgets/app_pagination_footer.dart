import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';

class AppPaginationFooter extends StatelessWidget {
  final bool isLoading;
  final bool displayNoMoreItems;
  final String? error;

  const AppPaginationFooter({
    super.key,
    required this.isLoading,
    required this.displayNoMoreItems,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Padding(
        padding: .symmetric(vertical: 24),
        child: AppLoadingIndicator(),
      );
    }

    if (displayNoMoreItems) {
      return Padding(
        padding: const .symmetric(vertical: 32),
        child: Center(
          child: Text(
            "No more items to load",
            style: context.textTheme.labelMedium?.copyWith(
              color: context.colorScheme.secondary,
            ),
          ),
        ),
      );
    }

    if (!isLoading && error != null) {
      return Padding(
        padding: const .symmetric(vertical: 32),
        child: Center(
          child: Text(
            error!,
            style: context.textTheme.labelMedium?.copyWith(
              color: context.colorScheme.secondary,
            ),
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
