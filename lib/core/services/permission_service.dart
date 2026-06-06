import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pulse/core/error/failure.dart';

class PermissionService {
  static Future<Either<Failure, bool>> requestCamera() async {
    return _requestPermission(Permission.camera);
  }

  static Future<Either<Failure, bool>> requestPhotos() async {
    return _requestPermission(Permission.photos);
  }

  static Future<Either<Failure, bool>> _requestPermission(
    Permission permission,
  ) async {
    try {
      final status = await permission.request();

      if (status.isGranted || status.isLimited) {
        return const Right(true);
      } else if (status.isPermanentlyDenied || status.isRestricted) {
        return const Left(
          PermissionFailure(
            'Permission permanently denied. Please enable it in settings.',
          ),
        );
      } else {
        return const Right(false);
      }
    } on PlatformException catch (e) {
      return Left(PermissionFailure(e.message ?? 'A platform error occurred'));
    } catch (e) {
      return Left(
        PermissionFailure(
          'An unexpected error occurred while requesting permissions.',
        ),
      );
    }
  }

  static Future<bool> hasCameraPermission() async {
    return await Permission.camera.isGranted ||
        await Permission.camera.isLimited;
  }

  static Future<bool> hasPhotosPermission() async {
    return await Permission.photos.isGranted ||
        await Permission.photos.isLimited;
  }

  static Future<void> openSettings() async {
    await openAppSettings();
  }
}
