import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fpdart/fpdart.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_compress/video_compress.dart';
import 'package:pulse/core/constants/app_constants.dart';
import 'package:pulse/core/error/failure.dart';
import 'package:pulse/core/services/permission_service.dart';
import 'package:pulse/core/theme/app_colors.dart';

class MediaService {
  static final ImagePicker _picker = ImagePicker();

  static Future<Either<Failure, File?>> pickFromGallery({
    bool crop = true,
  }) async {
    final permissionResult = await PermissionService.requestPhotos();

    return permissionResult.fold((failure) => Left(failure), (
      hasPermission,
    ) async {
      if (!hasPermission) return const Right(null);

      try {
        final xFile = await _picker.pickImage(
          source: ImageSource.gallery,
          imageQuality: AppConstants.imageMaxQuality,
        );

        if (xFile == null) return const Right(null);
        final file = File(xFile.path);

        if (!_checkFileSize(file, AppConstants.imageMaxSize)) {
          return Left(
            UnknownFailure(
              'Image size must be less than ${AppConstants.imageMaxSize}MB',
            ),
          );
        }

        if (crop) {
          final croppedFile = await _cropImage(file);
          if (croppedFile != null) {
            final compressedFile = await compressImage(croppedFile);
            return Right(compressedFile ?? croppedFile);
          }
          return const Right(null);
        }
        final compressedFile = await compressImage(file);
        return Right(compressedFile ?? file);
      } catch (e) {
        return Left(UnknownFailure(e.toString()));
      }
    });
  }

  static Future<Either<Failure, File?>> pickFromCamera({
    bool crop = true,
  }) async {
    final permissionResult = await PermissionService.requestCamera();

    return permissionResult.fold((failure) => Left(failure), (
      hasPermission,
    ) async {
      if (!hasPermission) return const Right(null);

      try {
        final xFile = await _picker.pickImage(
          source: ImageSource.camera,
          imageQuality: AppConstants.imageMaxQuality,
        );

        if (xFile == null) return const Right(null);
        final file = File(xFile.path);

        if (!_checkFileSize(file, AppConstants.imageMaxSize)) {
          return Left(
            UnknownFailure(
              'Image size must be less than ${AppConstants.imageMaxSize}MB',
            ),
          );
        }

        if (crop) {
          final croppedFile = await _cropImage(file);
          if (croppedFile != null) {
            final compressedFile = await compressImage(croppedFile);
            return Right(compressedFile ?? croppedFile);
          }
          return const Right(null);
        }
        final compressedFile = await compressImage(file);
        return Right(compressedFile ?? file);
      } catch (e) {
        return Left(UnknownFailure(e.toString()));
      }
    });
  }

  static Future<Either<Failure, List<File>>> pickMultiImage() async {
    final permissionResult = await PermissionService.requestPhotos();

    return permissionResult.fold((failure) => Left(failure), (
      hasPermission,
    ) async {
      if (!hasPermission) return const Right([]);

      try {
        final xFiles = await _picker.pickMultiImage(
          imageQuality: AppConstants.imageMaxQuality,
        );

        if (xFiles.isEmpty) return const Right([]);

        final List<File> compressedFiles = [];
        for (final xFile in xFiles) {
          final file = File(xFile.path);
          if (_checkFileSize(file, AppConstants.imageMaxSize)) {
            final compressed = await compressImage(file);
            compressedFiles.add(compressed ?? file);
          }
        }

        return Right(compressedFiles);
      } catch (e) {
        return Left(UnknownFailure(e.toString()));
      }
    });
  }

  static Future<Either<Failure, File?>> pickVideo() async {
    final permissionResult = await PermissionService.requestPhotos();

    return permissionResult.fold((failure) => Left(failure), (
      hasPermission,
    ) async {
      if (!hasPermission) return const Right(null);

      try {
        final xFile = await _picker.pickVideo(
          source: ImageSource.gallery,
          maxDuration: const Duration(minutes: 5),
        );

        if (xFile == null) return const Right(null);
        final file = File(xFile.path);

        if (!_checkFileSize(file, AppConstants.videoMaxSize)) {
          return Left(
            UnknownFailure(
              'Video size must be less than ${AppConstants.videoMaxSize}MB',
            ),
          );
        }

        final compressedFile = await compressVideo(file);
        return Right(compressedFile ?? file);
      } catch (e) {
        return Left(UnknownFailure(e.toString()));
      }
    });
  }

  static Future<File?> _cropImage(File imageFile) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          cropStyle: CropStyle.circle,
          toolbarColor: AppColors.surface,
          toolbarWidgetColor: AppColors.textPrimary,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: true,
          backgroundColor: AppColors.background,
          dimmedLayerColor: Colors.black54,
          cropFrameColor: AppColors.border,
          cropGridColor: Colors.transparent,
          activeControlsWidgetColor: AppColors.buttonPrimary,
        ),
        IOSUiSettings(
          title: 'Crop Image',
          aspectRatioLockEnabled: true,
          resetAspectRatioEnabled: false,
          aspectRatioPickerButtonHidden: true,
        ),
      ],
    );

    if (croppedFile != null) {
      return File(croppedFile.path);
    }
    return null;
  }

  static bool _checkFileSize(File file, int maxSize) {
    final sizeInBytes = file.lengthSync();
    final sizeInMb = sizeInBytes / (1024 * 1024);
    return sizeInMb <= maxSize;
  }

  static Future<File?> compressImage(
    File file, {
    int quality = AppConstants.imageMaxQuality,
    int? maxWidth,
    int? maxHeight,
  }) async {
    try {
      final tempDir = await getTemporaryDirectory();
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final targetPath = '${tempDir.path}/img_$timestamp.jpg';

      final result = await FlutterImageCompress.compressAndGetFile(
        file.absolute.path,
        targetPath,
        quality: quality,
        minWidth: maxWidth ?? AppConstants.postImageMaxWidth,
        minHeight: maxHeight ?? AppConstants.postImageMaxHeight,
        format: CompressFormat.jpeg,
      );

      return result != null ? File(result.path) : null;
    } catch (_) {
      return null;
    }
  }

  static Future<File?> compressVideo(File file) async {
    try {
      final info = await VideoCompress.compressVideo(
        file.path,
        quality: VideoQuality.MediumQuality,
        deleteOrigin: false,
        includeAudio: true,
      );

      return info?.file;
    } catch (_) {
      return null;
    }
  }

  static Future<File?> getVideoThumbnail(File videoFile) async {
    try {
      final thumbnail = await VideoCompress.getFileThumbnail(
        videoFile.path,
        quality: 50,
      );
      return thumbnail;
    } catch (_) {
      return null;
    }
  }
}
