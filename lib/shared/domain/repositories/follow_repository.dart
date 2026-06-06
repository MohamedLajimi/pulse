import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

abstract class FollowRepository {
  AsyncResult<void> followUser(String targetUserId);
  AsyncResult<void> unfollowUser(String targetUserId);
  AsyncResult<PaginatedData<ProfileEntity>> getFollowers({
    required String userId,
    required PaginationParams params,
  });
  AsyncResult<PaginatedData<ProfileEntity>> getFollowing({
    required String userId,
    required PaginationParams params,
  });
  AsyncResult<bool> checkFollowStatus(String targetUserId);
}
