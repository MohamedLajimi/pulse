import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/widgets/app_adaptive_image.dart';

class AppAvatarSelector extends StatelessWidget {
  final File? avatarFile;
  final String? avatarUrl;
  final bool isLoading;
  final VoidCallback onTap;

  const AppAvatarSelector({
    super.key,
    this.avatarFile,
    this.avatarUrl,
    this.isLoading = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: isLoading ? null : onTap,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.cardElevated,
                border: .all(color: AppColors.border, width: 2),
              ),
              child: ClipOval(child: _buildImage()),
            ),
            if (isLoading)
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black45,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  ),
                ),
              ),
            Positioned(
              bottom: 0,
              right: -4,
              child: Container(
                padding: const .all(6),
                decoration: const BoxDecoration(
                  color: AppColors.cardElevated,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  CupertinoIcons.camera,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (avatarFile != null) {
      return AppAdaptiveImage(path: avatarFile!.path, width: 120, height: 120);
    } else if (avatarUrl != null) {
      return AppAdaptiveImage(path: avatarUrl!, width: 120, height: 120);
    } else {
      return const Icon(
        CupertinoIcons.person,
        size: 40,
        color: AppColors.textSecondary,
      );
    }
  }
}
