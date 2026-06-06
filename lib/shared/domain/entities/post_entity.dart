import 'package:pulse/shared/domain/entities/post_like_entity.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';
import 'package:pulse/shared/domain/entities/post_mention_entity.dart';
import 'package:pulse/shared/domain/entities/post_hashtag_entity.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';

class PostEntity {
  const PostEntity({
    required this.id,
    required this.userId,
    this.caption,
    this.location,
    required this.likeCount,
    required this.commentCount,
    required this.isEdited,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    this.author,
    this.currentUserLike,
    this.media = const [],
    this.mentions = const [],
    this.hashtags = const [],
  });

  final String id;
  final String userId;
  final String? caption;
  final String? location;
  final int likeCount;
  final int commentCount;
  final bool isEdited;
  final bool isDeleted;
  final DateTime createdAt;
  final DateTime updatedAt;

  final ProfileEntity? author;
  final PostLikeEntity? currentUserLike;
  final List<PostMediaEntity> media;
  final List<PostMentionEntity> mentions;
  final List<PostHashtagEntity> hashtags;

  PostEntity copyWith({
    String? id,
    String? userId,
    String? caption,
    String? location,
    int? likeCount,
    int? commentCount,
    bool? isEdited,
    bool? isDeleted,
    bool? isLiked,
    DateTime? createdAt,
    DateTime? updatedAt,
    ProfileEntity? author,
    PostLikeEntity? currentUserLike,
    List<PostMediaEntity>? media,
    List<PostMentionEntity>? mentions,
    List<PostHashtagEntity>? hashtags,
  }) {
    return PostEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      caption: caption ?? this.caption,
      location: location ?? this.location,
      likeCount: likeCount ?? this.likeCount,
      commentCount: commentCount ?? this.commentCount,
      isEdited: isEdited ?? this.isEdited,
      isDeleted: isDeleted ?? this.isDeleted,
      currentUserLike: currentUserLike ?? this.currentUserLike,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      author: author ?? this.author,
      media: media ?? this.media,
      mentions: mentions ?? this.mentions,
      hashtags: hashtags ?? this.hashtags,
    );
  }

  bool get isLiked => currentUserLike != null;
}
