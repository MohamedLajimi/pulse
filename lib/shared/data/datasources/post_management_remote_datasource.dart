import 'dart:developer';

import 'package:pulse/shared/data/models/profile_model.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:pulse/core/constants/db_constants.dart';
import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/shared/data/models/post_model.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';
import 'package:pulse/shared/domain/models/media_upload_models.dart';

abstract class PostManagementRemoteDataSource {
  Future<PostEntity> getPostFormData(String id);

  Future<PostModel> createPost({
    required String id,
    required String userId,
    String? caption,
    String? location,
    required List<PostMediaEntity> media,
    required List<String> mentions,
    required List<String> hashtags,
  });

  Future<PostModel> updatePost({
    required String id,
    String? caption,
    String? location,
    required List<PostMediaEntity> mediaToInsert,
    required List<String> mediaIdsToDelete,
    required List<PostMediaEntity> mediaToUpdateSortOrder,
    required List<String> mentionsToInsert,
    required List<String> mentionsToDelete,
    required List<String> hashtagsToInsert,
    required List<String> hashtagsToDelete,
  });

  Future<List<ProfileModel>> getMentionSuggestions(String query);

  Future<List<MediaUploadResult>> uploadPostMedia({
    required String userId,
    required String postId,
    required List<MediaUploadJob> jobs,
  });

  Future<void> deletePost(String id);
}

class PostManagementRemoteDataSourceImpl
    implements PostManagementRemoteDataSource {
  PostManagementRemoteDataSourceImpl(this._client);

  final SupabaseClient _client;

  @override
  Future<List<ProfileModel>> getMentionSuggestions(String query) async {
    try {
      final response = await _client
          .from(DbConstants.profiles)
          .select(
            'id, username, display_name, avatar_url, created_at, updated_at',
          )
          .or('username.ilike.%$query%,display_name.ilike.%$query%')
          .limit(10);

      return (response as List)
          .map((json) => ProfileModel.fromJson(json))
          .toList();
    } catch (_) {
      throw const ServerException('Failed to fetch mention suggestions.');
    }
  }

  @override
  Future<List<MediaUploadResult>> uploadPostMedia({
    required String userId,
    required String postId,
    required List<MediaUploadJob> jobs,
  }) async {
    try {
      final results = <MediaUploadResult>[];

      String getContentType(String ext) {
        switch (ext.toLowerCase()) {
          case 'mp4':
            return 'video/mp4';
          case 'mov':
            return 'video/quicktime';
          case 'mkv':
            return 'video/x-matroska';
          case 'webm':
            return 'video/webm';
          case 'jpg':
          case 'jpeg':
            return 'image/jpeg';
          case 'png':
            return 'image/png';
          case 'gif':
            return 'image/gif';
          case 'webp':
            return 'image/webp';
          default:
            return 'application/octet-stream';
        }
      }

      for (final job in jobs) {
        final fileExtension = job.file.path.split('.').last;
        final mainPath = '$userId/$postId/${job.id}.$fileExtension';

        await _client.storage
            .from(DbConstants.postMediaBucket)
            .upload(
              mainPath,
              job.file,
              fileOptions: FileOptions(
                contentType: getContentType(fileExtension),
                upsert: false,
              ),
            );

        final mainUrl = _client.storage
            .from(DbConstants.postMediaBucket)
            .getPublicUrl(mainPath);

        String? thumbnailUrl;
        if (job.thumbnail != null) {
          final thumbExtension = job.thumbnail!.path.split('.').last;
          final thumbPath = '$userId/$postId/${job.id}_thumb.$thumbExtension';

          await _client.storage
              .from(DbConstants.postMediaBucket)
              .upload(
                thumbPath,
                job.thumbnail!,
                fileOptions: FileOptions(
                  contentType: getContentType(thumbExtension),
                  upsert: false,
                ),
              );

          thumbnailUrl = _client.storage
              .from(DbConstants.postMediaBucket)
              .getPublicUrl(thumbPath);
        }

        results.add(
          MediaUploadResult(
            id: job.id,
            url: mainUrl,
            thumbnailUrl: thumbnailUrl,
          ),
        );
      }

      return results;
    } catch (e) {
      log(e.toString());
      throw const ServerException('Failed to upload media files.');
    }
  }

  @override
  Future<PostModel> createPost({
    required String id,
    required String userId,
    String? caption,
    String? location,
    required List<PostMediaEntity> media,
    required List<String> mentions,
    required List<String> hashtags,
  }) async {
    late Map<String, dynamic> postResponse;
    try {
      postResponse = await _client
          .from(DbConstants.posts)
          .insert({
            'id': id,
            'user_id': userId,
            'caption': caption,
            'location': location,
          })
          .select('*, profiles!posts_user_id_fkey(*)')
          .single();
    } catch (e) {
      log('this is the error ${e.toString()}');

      throw const ServerException('Failed to create post.');
    }

    await _syncMedia(id, media);
    await _syncMentions(id, mentions);
    await _syncHashtags(id, hashtags);

    log(postResponse.toString());

    try {
      final finalMedia = await _client
          .from(DbConstants.postMedia)
          .select()
          .eq('post_id', id)
          .order('sort_order');

      postResponse['post_media'] = finalMedia;
      return PostModel.fromJson(postResponse);
    } catch (e) {
      log(e.toString());

      throw const ServerException('Failed to fetch created post details.');
    }
  }

  @override
  Future<PostModel> updatePost({
    required String id,
    String? caption,
    String? location,
    required List<PostMediaEntity> mediaToInsert,
    required List<String> mediaIdsToDelete,
    required List<PostMediaEntity> mediaToUpdateSortOrder,
    required List<String> mentionsToInsert,
    required List<String> mentionsToDelete,
    required List<String> hashtagsToInsert,
    required List<String> hashtagsToDelete,
  }) async {
    late Map<String, dynamic> postResponse;
    try {
      postResponse = await _client
          .from(DbConstants.posts)
          .update({'caption': caption, 'location': location, 'is_edited': true})
          .eq('id', id)
          .select('*, profiles!posts_user_id_fkey(*)')
          .single();
    } catch (e) {
      log(e.toString());
      throw const ServerException('Failed to update post base data.');
    }

    await _syncMedia(
      id,
      mediaToInsert,
      mediaIdsToDelete,
      mediaToUpdateSortOrder,
    );
    await _syncMentions(id, mentionsToInsert, mentionsToDelete);
    await _syncHashtags(id, hashtagsToInsert, hashtagsToDelete);

    try {
      final finalMedia = await _client
          .from(DbConstants.postMedia)
          .select()
          .eq('post_id', id)
          .order('sort_order');

      postResponse['post_media'] = finalMedia;
      return PostModel.fromJson(postResponse);
    } catch (_) {
      throw const ServerException('Failed to fetch updated post details.');
    }
  }

  Future<void> _syncMedia(
    String postId,
    List<PostMediaEntity> mediaToInsert, [
    List<String>? mediaIdsToDelete,
    List<PostMediaEntity>? mediaToUpdateSortOrder,
  ]) async {
    try {
      if (mediaIdsToDelete != null && mediaIdsToDelete.isNotEmpty) {
        await _client
            .from(DbConstants.postMedia)
            .delete()
            .inFilter('id', mediaIdsToDelete);
      }
      if (mediaToInsert.isNotEmpty) {
        final mediaData = mediaToInsert
            .map(
              (m) => {
                'id': m.id,
                'post_id': m.postId,
                'uploader_id': m.uploaderId,
                'type': m.type.name,
                'url': m.url,
                'thumbnail_url': m.thumbnailUrl,
                'duration_ms': m.durationMs,
                'width': m.width,
                'height': m.height,
                'sort_order': m.sortOrder,
              },
            )
            .toList();
        await _client.from(DbConstants.postMedia).insert(mediaData);
      }
      if (mediaToUpdateSortOrder != null) {
        for (final m in mediaToUpdateSortOrder) {
          await _client
              .from(DbConstants.postMedia)
              .update({'sort_order': m.sortOrder})
              .eq('id', m.id);
        }
      }
    } catch (e) {
      log(e.toString());
      throw const ServerException('Failed to sync post media.');
    }
  }

  Future<void> _syncMentions(
    String postId,
    List<String> mentionsToInsert, [
    List<String>? mentionsToDelete,
  ]) async {
    try {
      if (mentionsToDelete != null && mentionsToDelete.isNotEmpty) {
        await _client
            .from(DbConstants.postMentions)
            .delete()
            .eq('post_id', postId)
            .inFilter('mentioned_user_id', mentionsToDelete);
      }
      if (mentionsToInsert.isNotEmpty) {
        final mentionsData = mentionsToInsert
            .map((m) => {'post_id': postId, 'mentioned_user_id': m})
            .toList();
        await _client.from(DbConstants.postMentions).insert(mentionsData);
      }
    } catch (_) {
      throw const ServerException('Failed to sync post mentions.');
    }
  }

  Future<void> _syncHashtags(
    String postId,
    List<String> hashtagsToInsert, [
    List<String>? hashtagsToDelete,
  ]) async {
    try {
      if (hashtagsToDelete != null && hashtagsToDelete.isNotEmpty) {
        await _client
            .from(DbConstants.postHashtags)
            .delete()
            .eq('post_id', postId)
            .inFilter('hashtag', hashtagsToDelete);
      }
      if (hashtagsToInsert.isNotEmpty) {
        final hashtagsData = hashtagsToInsert
            .map((h) => {'post_id': postId, 'hashtag': h})
            .toList();
        await _client.from(DbConstants.postHashtags).insert(hashtagsData);
      }
    } catch (_) {
      throw const ServerException('Failed to sync post hashtags.');
    }
  }

  @override
  Future<void> deletePost(String id) async {
    try {
      await _client
          .from(DbConstants.posts)
          .update({'is_deleted': true})
          .eq('id', id);
    } catch (e) {
      log(e.toString());
      throw const ServerException('Failed to delete post.');
    }
  }

  @override
  Future<PostEntity> getPostFormData(String id) async {
    try {
      final postResponse = await _client
          .from(DbConstants.posts)
          .select('''
            *,
            profiles!posts_user_id_fkey(*),
            post_media(*),
            post_hashtags(*),
            post_mentions(
              *,
              profiles!post_mentions_mentioned_user_id_fkey(*)
            )
          ''')
          .eq('id', id)
          .single();
      log(postResponse.toString());
      return PostModel.fromJson(postResponse);
    } catch (e) {
      log(e.toString());
      throw const ServerException('Failed to fetch post data');
    }
  }
}
