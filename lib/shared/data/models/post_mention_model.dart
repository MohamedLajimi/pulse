import 'package:pulse/shared/data/models/profile_model.dart';
import 'package:pulse/shared/domain/entities/post_mention_entity.dart';

class PostMentionModel extends PostMentionEntity {
  const PostMentionModel({
    required super.id,
    required super.postId,
    required super.mentionedUserId,
    required super.profile,
  });

  factory PostMentionModel.fromJson(Map<String, dynamic> json) {
    return PostMentionModel(
      id: json['id'] as String,
      postId: json['post_id'] as String,
      mentionedUserId: json['mentioned_user_id'] as String,
      profile: ProfileModel.fromJson(json['profiles'] as Map<String, dynamic>),
    );
  }
}
