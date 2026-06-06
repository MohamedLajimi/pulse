import 'dart:io';

import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

abstract class ProfileRepository {
  AsyncResult<ProfileEntity?> getProfileById(String userId);

  AsyncResult<ProfileEntity> createProfile({
    required String userId,
    required String username,
    required String displayName,
    String? bio,
    String? avatarUrl,
  });

  AsyncResult<ProfileEntity> updateProfile(
    String userId,
    Map<String, dynamic> data,
  );

  AsyncResult<String> uploadAvatar(String userId, File file, {String? oldUrl});

  AsyncResult<bool> isUsernameAvailable(String username);

  AsyncResult<PaginatedData<PostEntity>> getProfilePosts({
    required String userId,
    required PaginationParams params,
  });

  AsyncResult<PaginatedData<PostMediaEntity>> getProfileMedia({
    required String userId,
    required PaginationParams params,
  });
}
