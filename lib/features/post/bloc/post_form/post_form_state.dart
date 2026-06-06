part of 'post_form_bloc.dart';

@freezed
sealed class PostFormState with _$PostFormState {
  const factory PostFormState({
    @Default('') String id,
    @Default('') String caption,
    String? location,
    @Default([]) List<PostFormMedia> mediaList,
    @Default([]) List<String> mentions,
    @Default([]) List<String> hashtags,
    @Default(false) bool isEditMode,
    String? originalPostId,
    PostEntity? existingPost,
    @Default('') String mentionQuery,
    @Default(false) bool isSearchingMention,
    @Default([]) List<ProfileEntity> mentionSuggestions,
    @Default('') String hashtagQuery,
    @Default(false) bool isSearchingHashtag,
  }) = _PostFormState;

  const PostFormState._();

  bool get canSubmit {
    final hasContent = caption.isNotEmpty || mediaList.isNotEmpty;
    if (!hasContent || isMediaUploading) return false;

    if (isEditMode && existingPost != null) {
      return _hasChanges;
    }

    return true;
  }

  bool get _hasChanges {
    if (existingPost == null) return true;

    final origCaption = existingPost!.caption ?? '';
    if (caption != origCaption) return true;

    if (location != existingPost!.location) return true;

    if (mediaList.length != existingPost!.media.length) return true;

    for (int i = 0; i < mediaList.length; i++) {
      if (mediaList[i].localFile != null) return true;
      if (mediaList[i].remoteUrl != existingPost!.media[i].url) return true;
    }

    return false;
  }

  bool get isMediaUploading =>
      mediaList.any((m) => m.localFile != null && m.remoteUrl == null);

  List<PostMediaEntity> getMediaEntities(String userId) {
    return mediaList
        .asMap()
        .entries
        .map((e) => _createMediaEntity(e.value, e.key, userId))
        .toList();
  }

  List<String> get mentionsToInsert {
    if (existingPost == null) return mentions;
    final origMentions = existingPost!.mentions
        .map((m) => m.profile.username)
        .toSet();
    return mentions.where((m) => !origMentions.contains(m)).toList();
  }

  List<String> get mentionsToDelete {
    if (existingPost == null) return [];
    final origMentions = existingPost!.mentions
        .map((m) => m.profile.username)
        .toSet();
    final currentMentions = mentions.toSet();
    return origMentions.where((m) => !currentMentions.contains(m)).toList();
  }

  List<String> get hashtagsToInsert {
    if (existingPost == null) return hashtags;
    final origHashtags = existingPost!.hashtags.map((h) => h.hashtag).toSet();
    return hashtags.where((h) => !origHashtags.contains(h)).toList();
  }

  List<String> get hashtagsToDelete {
    if (existingPost == null) return [];
    final origHashtags = existingPost!.hashtags.map((h) => h.hashtag).toSet();
    final currentHashtags = hashtags.toSet();
    return origHashtags.where((h) => !currentHashtags.contains(h)).toList();
  }

  List<PostMediaEntity> getMediaToInsert(String userId) {
    if (existingPost == null) return getMediaEntities(userId);
    final origMediaIds = existingPost!.media.map((m) => m.id).toSet();
    return mediaList
        .asMap()
        .entries
        .where((e) => !origMediaIds.contains(e.value.id))
        .map((e) => _createMediaEntity(e.value, e.key, userId))
        .toList();
  }

  List<PostMediaEntity> getMediaToUpdateSortOrder(String userId) {
    if (existingPost == null) return [];
    final origMediaIds = existingPost!.media.map((m) => m.id).toSet();
    return mediaList
        .asMap()
        .entries
        .where((e) => origMediaIds.contains(e.value.id))
        .map((e) => _createMediaEntity(e.value, e.key, userId))
        .toList();
  }

  List<String> get mediaIdsToDelete {
    if (existingPost == null) return [];
    final currentMediaIds = mediaList.map((m) => m.id).toSet();
    return existingPost!.media
        .where((m) => !currentMediaIds.contains(m.id))
        .map((m) => m.id)
        .toList();
  }

  PostMediaEntity _createMediaEntity(
    PostFormMedia m,
    int index,
    String userId,
  ) {
    return PostMediaEntity(
      id: m.id,
      postId: id,
      uploaderId: userId,
      type: m.type,
      url: m.remoteUrl ?? '',
      thumbnailUrl: m.remoteThumbnail,
      durationMs: m.durationMs,
      width: m.width,
      height: m.height,
      sortOrder: index,
    );
  }
}
