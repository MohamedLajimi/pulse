import 'package:pulse/shared/domain/entities/post_hashtag_entity.dart';

class PostHashtagModel extends PostHashtagEntity {
  const PostHashtagModel({
    required super.id,
    required super.postId,
    required super.hashtag,
  });

  factory PostHashtagModel.fromJson(Map<String, dynamic> json) {
    return PostHashtagModel(
      id: json['id'] as String,
      postId: json['post_id'] as String,
      hashtag: json['hashtag'] as String,
    );
  }
}
