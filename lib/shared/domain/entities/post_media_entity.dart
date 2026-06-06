import 'package:pulse/shared/domain/entities/media_type.dart';

class PostMediaEntity {
  const PostMediaEntity({
    required this.id,
    required this.postId,
    required this.uploaderId,
    required this.type,
    required this.url,
    this.thumbnailUrl,
    this.durationMs,
    required this.width,
    required this.height,
    required this.sortOrder,
  });

  final String id;
  final String postId;
  final String uploaderId;
  final MediaType type;
  final String url;
  final String? thumbnailUrl;
  final int? durationMs;
  final int width;
  final int height;
  final int sortOrder;
  PostMediaEntity copyWith({
    String? id,
    String? postId,
    String? uploaderId,
    MediaType? type,
    String? url,
    String? thumbnailUrl,
    int? durationMs,
    int? width,
    int? height,
    int? sortOrder,
  }) {
    return PostMediaEntity(
      id: id ?? this.id,
      postId: postId ?? this.postId,
      uploaderId: uploaderId ?? this.uploaderId,
      type: type ?? this.type,
      url: url ?? this.url,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      durationMs: durationMs ?? this.durationMs,
      width: width ?? this.width,
      height: height ?? this.height,
      sortOrder: sortOrder ?? this.sortOrder,
    );
  }
}

