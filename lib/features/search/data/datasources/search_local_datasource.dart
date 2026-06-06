import 'package:hive/hive.dart';
import 'package:pulse/shared/data/models/profile_model.dart';

abstract class SearchLocalDataSource {
  Future<List<ProfileModel>> getSearchAccountsHistory();
  Future<void> saveSearchAccountHistory(ProfileModel profile);
  Future<void> removeSearchAccountHistoryItem(String id);
  Future<void> clearSearchAccountHistory();

  Future<List<String>> getHashtagSearchHistory();
  Future<void> saveHashtagSearchHistory(String hashtag);
  Future<void> removeHashtagSearchHistoryItem(String hashtag);
  Future<void> clearHashtagSearchHistory();
}

class SearchLocalDataSourceImpl implements SearchLocalDataSource {
  final String currentUserId;

  const SearchLocalDataSourceImpl({required this.currentUserId});

  String get _accountsBox => '${currentUserId}_search_accounts_history';
  String get _hashtagBox => '${currentUserId}_hashtag_search_history';

  Future<Box<ProfileModel>> _getAccountsBox() async {
    if (Hive.isBoxOpen(_accountsBox)) {
      return Hive.box<ProfileModel>(_accountsBox);
    }

    return await Hive.openBox<ProfileModel>(_accountsBox);
  }

  Future<Box<String>> _getHashtagBox() async {
    if (Hive.isBoxOpen(_hashtagBox)) {
      return Hive.box<String>(_hashtagBox);
    }
    return await Hive.openBox<String>(_hashtagBox);
  }

  @override
  Future<List<ProfileModel>> getSearchAccountsHistory() async {
    final box = await _getAccountsBox();
    return box.values.toList().reversed.cast<ProfileModel>().toList();
  }

  @override
  Future<void> saveSearchAccountHistory(ProfileModel profile) async {
    final box = await _getAccountsBox();

    if (box.containsKey(profile.id)) {
      await box.delete(profile.id);
    }

    await box.put(profile.id, profile);

    if (box.length > 10) {
      final oldestKey = box.keys.first;
      await box.delete(oldestKey);
    }
  }

  @override
  Future<void> removeSearchAccountHistoryItem(String id) async {
    final box = await _getAccountsBox();
    await box.delete(id);
  }

  @override
  Future<void> clearSearchAccountHistory() async {
    final box = await _getAccountsBox();
    await box.clear();
  }

  @override
  Future<List<String>> getHashtagSearchHistory() async {
    final box = await _getHashtagBox();
    return box.values.toList().reversed.toList();
  }

  @override
  Future<void> saveHashtagSearchHistory(String hashtag) async {
    final box = await _getHashtagBox();
    final safeTag = hashtag.trim().toLowerCase();

    if (box.containsKey(safeTag)) {
      await box.delete(safeTag);
    }

    await box.put(safeTag, safeTag);

    if (box.length > 10) {
      final oldestKey = box.keys.first;
      await box.delete(oldestKey);
    }
  }

  @override
  Future<void> removeHashtagSearchHistoryItem(String hashtag) async {
    final box = await _getHashtagBox();
    await box.delete(hashtag.trim().toLowerCase());
  }

  @override
  Future<void> clearHashtagSearchHistory() async {
    final box = await _getHashtagBox();
    await box.clear();
  }
}
