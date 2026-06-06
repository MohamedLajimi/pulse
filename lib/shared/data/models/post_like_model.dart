import 'package:pulse/shared/domain/entities/post_like_entity.dart';

class PostLikeModel extends PostLikeEntity {
  PostLikeModel({required super.userId, required super.postId});

  factory PostLikeModel.fromJson(Map<String, dynamic> json) {
    return PostLikeModel(
      userId: json['user_id'] as String? ?? '',
      postId: json['post_id'] as String? ?? '',
    );
  }
}
