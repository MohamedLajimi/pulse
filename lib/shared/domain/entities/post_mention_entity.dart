import 'package:pulse/shared/domain/entities/profile_entity.dart';

class PostMentionEntity {
  const PostMentionEntity({
    required this.id,
    required this.postId,
    required this.mentionedUserId,
    required this.profile,
  });

  final String id;
  final String postId;
  final String mentionedUserId;
  final ProfileEntity profile;
}
