import 'package:pulse/shared/domain/entities/media_type.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';

class PostMediaModel extends PostMediaEntity {
  const PostMediaModel({
    required super.id,
    required super.postId,
    required super.uploaderId,
    required super.type,
    required super.url,
    super.thumbnailUrl,
    super.durationMs,
    required super.width,
    required super.height,
    required super.sortOrder,
  });

  factory PostMediaModel.fromJson(Map<String, dynamic> json) {
    final typeStr = json['type'] as String? ?? 'image';
    final parsedType = MediaType.values.firstWhere(
      (e) => e.name == typeStr,
      orElse: () => MediaType.image,
    );

    return PostMediaModel(
      id: json['id'] as String,
      postId: json['post_id'] as String,
      uploaderId: json['uploader_id'] as String,
      type: parsedType,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnail_url'] as String?,
      durationMs: (json['duration_ms'] as num?)?.toInt(),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      sortOrder: (json['sort_order'] as num).toInt(),
    );
  }
}
