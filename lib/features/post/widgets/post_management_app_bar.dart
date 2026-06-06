import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';

class PostManagementAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isUpdate;
  final bool isEnabled;
  final bool isLoading;
  final VoidCallback onSubmit;
  const PostManagementAppBar({
    super.key,
    required this.isUpdate,
    required this.isEnabled,
    required this.isLoading,
    required this.onSubmit,
  });

  String get title => isUpdate ? 'Edit Post' : 'New Post';

  Color get foregroundColor =>
      isEnabled ? AppColors.onButtonPrimary : AppColors.onButtonDisabled;

  Color get backgroundColor =>
      isEnabled ? AppColors.buttonPrimary : AppColors.buttonDisabled;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        isLoading
            ? Padding(
                padding: const .only(right: 16.0),
                child: AppLoadingIndicator(),
              )
            : Padding(
                padding: const .only(right: 16.0),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    foregroundColor: foregroundColor,
                    backgroundColor: backgroundColor,
                  ),
                  onPressed: onSubmit,
                  child: Text(
                    'Post',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.surface,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
