import 'package:pulse/shared/data/models/post_like_model.dart';
import 'package:pulse/shared/data/models/post_media_model.dart';
import 'package:pulse/shared/data/models/post_mention_model.dart';
import 'package:pulse/shared/data/models/post_hashtag_model.dart';
import 'package:pulse/shared/data/models/profile_model.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';

class PostModel extends PostEntity {
  const PostModel({
    required super.id,
    required super.userId,
    super.caption,
    super.location,
    required super.likeCount,
    required super.commentCount,
    required super.isEdited,
    required super.isDeleted,
    required super.createdAt,
    required super.updatedAt,
    super.author,
    super.currentUserLike,
    super.media = const [],
    super.mentions = const [],
    super.hashtags = const [],
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    final likes = json['post_likes'] as List<dynamic>?;

    return PostModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      caption: json['caption'] as String?,
      location: json['location'] as String?,
      likeCount: (json['like_count'] as num?)?.toInt() ?? 0,
      commentCount: (json['comment_count'] as num?)?.toInt() ?? 0,
      isEdited: json['is_edited'] as bool? ?? false,
      isDeleted: json['is_deleted'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      currentUserLike: likes != null && likes.isNotEmpty
          ? PostLikeModel.fromJson(likes.first as Map<String, dynamic>)
          : null,
      author: json['profiles'] != null
          ? ProfileModel.fromJson(json['profiles'] as Map<String, dynamic>)
          : null,
      media:
          (json['post_media'] as List<dynamic>?)
              ?.map((e) => PostMediaModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      mentions:
          (json['post_mentions'] as List<dynamic>?)
              ?.map((e) => PostMentionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hashtags:
          (json['post_hashtags'] as List<dynamic>?)
              ?.map((e) => PostHashtagModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
  }
}
