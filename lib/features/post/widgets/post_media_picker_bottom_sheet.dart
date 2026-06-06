import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/services/media_service.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/shared/domain/entities/media_type.dart';

class PostMediaPickerResult {
  final List<File> files;
  final List<File?>? thumbnails;
  final MediaType type;

  PostMediaPickerResult({
    required this.files,
    this.thumbnails,
    required this.type,
  });
}

class PostMediaPickerBottomSheet {
  static Future<PostMediaPickerResult?> show(BuildContext context) {
    return showModalBottomSheet<PostMediaPickerResult>(
      context: context,
      useSafeArea: true,
      backgroundColor: context.colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: .vertical(top: .circular(24)),
      ),
      builder: (sheetContext) {
        return Container(
          padding: const .only(top: 16, bottom: 24),
          child: Column(
            mainAxisSize: .min,
            children: [
              Container(
                width: 36,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.borderStrong,
                  borderRadius: .circular(2),
                ),
              ),
              const SizedBox(height: 24),

              ListTile(
                leading: const Icon(CupertinoIcons.photo_on_rectangle),
                title: const Text('Photo Gallery'),
                subtitle: Text(
                  'Upload multiple images',
                  style: context.textTheme.bodySmall,
                ),
                onTap: () async {
                  final result = await MediaService.pickMultiImage();
                  result.fold((failure) => null, (files) {
                    if (files.isNotEmpty && sheetContext.mounted) {
                      Navigator.pop(
                        sheetContext,
                        PostMediaPickerResult(
                          files: files,
                          type: MediaType.image,
                        ),
                      );
                    }
                  });
                },
              ),
              const SizedBox(height: 8),
              ListTile(
                leading: const Icon(Icons.video_library),
                title: const Text('Video Gallery'),
                subtitle: Text(
                  'Upload a single video',
                  style: context.textTheme.bodySmall,
                ),
                onTap: () async {
                  final result = await MediaService.pickVideo();
                  result.fold((failure) => null, (file) async {
                    if (file != null && sheetContext.mounted) {
                      final thumbnail = await MediaService.getVideoThumbnail(
                        file,
                      );
                      if (sheetContext.mounted) {
                        Navigator.pop(
                          sheetContext,
                          PostMediaPickerResult(
                            files: [file],
                            thumbnails: [thumbnail],
                            type: MediaType.video,
                          ),
                        );
                      }
                    }
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
