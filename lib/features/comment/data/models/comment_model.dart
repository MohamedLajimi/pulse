import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/shared/data/models/profile_model.dart';

class CommentModel extends CommentEntity {
  const CommentModel({
    required super.id,
    required super.postId,
    required super.userId,
    super.parentId,
    required super.body,
    required super.likeCount,
    required super.isEdited,
    required super.isLiked,
    required super.createdAt,
    required super.updatedAt,
    super.author,
    required super.repliesCount,
    required super.mentions,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    final likes = json['comment_likes'] as List<dynamic>?;
    return CommentModel(
      id: json['id'] as String,
      postId: json['post_id'] as String,
      userId: json['user_id'] as String,
      parentId: json['parent_id'] as String?,
      body: json['body'] as String,
      likeCount: (json['like_count'] as num?)?.toInt() ?? 0,
      isEdited: json['is_edited'] as bool? ?? false,
      isLiked: likes != null && likes.isNotEmpty,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      author: json['author'] != null
          ? ProfileModel.fromJson(json['author'] as Map<String, dynamic>)
          : null,
      repliesCount: json['replies_count'],
      mentions:
          (json['mentions'] as List?)
              ?.map(
                (e) => (
                  e['profile']['id'] as String,
                  e['profile']['username'] as String,
                ),
              )
              .toList() ??
          [],
    );
  }
}
