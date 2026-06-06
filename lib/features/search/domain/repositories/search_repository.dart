import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/pagination.dart';

abstract class SearchRepository {
  AsyncResult<List<ProfileEntity>> searchUsers({required String query});
  AsyncResult<List<ProfileEntity>> getSearchAccountsHistory();
  AsyncResult<void> saveSearchAccountHistory({required ProfileEntity profile});
  AsyncResult<void> removeSearchAccountHistory({required String id});
  AsyncResult<void> clearSearchAccountHistory();

  AsyncResult<List<String>> searchHashtags({required String query});
  AsyncResult<List<String>> getHashtagSearchHistory();
  AsyncResult<void> saveHashtagSearchHistory({required String hashtag});
  AsyncResult<void> removeHashtagSearchHistoryItem({required String hashtag});
  AsyncResult<void> clearHashtagSearchHistory();

  AsyncResult<PaginatedData<PostEntity>> getHashtagFeed({
    required String hashtag,
    required PaginationParams params,
  });
}
