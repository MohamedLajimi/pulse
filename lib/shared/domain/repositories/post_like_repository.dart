import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

abstract class PostLikeRepository {
  AsyncResult<void> likePost(String postId);
  AsyncResult<void> unlikePost(String postId);
  AsyncResult<PaginatedData<ProfileEntity>> getPostLikers({
    required String postId,
    required PaginationParams params,
  });
}
