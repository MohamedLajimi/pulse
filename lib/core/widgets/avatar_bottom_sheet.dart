import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/services/media_service.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/widgets/app_snack_bar.dart';

class AvatarBottomSheet {
  static Future<File?> show(BuildContext context, {bool hasImage = false}) {
    return showModalBottomSheet<File?>(
      context: context,
      useSafeArea: true,
      builder: (sheetContext) {
        return Container(
          padding: const .symmetric(vertical: 24),
          child: Column(
            mainAxisSize: .min,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.borderStrong,
                  borderRadius: .circular(4),
                ),
              ),

              const SizedBox(height: 24),
              ListTile(
                leading: const Icon(CupertinoIcons.camera),
                title: Text(
                  'Take a photo',
                  style: context.textTheme.bodyMedium,
                ),
                onTap: () async {
                  final result = await MediaService.pickFromCamera();

                  if (!sheetContext.mounted || !context.mounted) return;

                  result.fold(
                    (failure) {
                      sheetContext.pop();
                      AppSnackBar.show(
                        context,
                        message: failure.message,
                        type: SnackBarType.error,
                      );
                    },
                    (file) {
                      sheetContext.pop(file);
                    },
                  );
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.photo_on_rectangle),
                title: Text(
                  'Choose from library',
                  style: context.textTheme.bodyMedium,
                ),
                onTap: () async {
                  final result = await MediaService.pickFromGallery();

                  if (!sheetContext.mounted || !context.mounted) return;

                  result.fold(
                    (failure) {
                      sheetContext.pop();
                      AppSnackBar.show(
                        context,
                        message: failure.message,
                        type: SnackBarType.error,
                      );
                    },
                    (file) {
                      sheetContext.pop(file);
                    },
                  );
                },
              ),
              if (hasImage)
                ListTile(
                  leading: const Icon(
                    CupertinoIcons.trash,
                    color: AppColors.error,
                  ),
                  title: Text(
                    'Remove current photo',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.error,
                    ),
                  ),
                  onTap: () => context.pop(File('')),
                ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
