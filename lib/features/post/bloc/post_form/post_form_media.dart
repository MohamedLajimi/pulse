import 'dart:io';
import 'package:pulse/shared/domain/entities/media_type.dart';

class PostFormMedia {
  final String id;
  final MediaType type;
  final File? localFile;
  final File? localThumbnail;
  final String? remoteUrl;
  final String? remoteThumbnail;
  final int width;
  final int height;
  final int? durationMs;

  const PostFormMedia({
    required this.id,
    required this.type,
    this.localFile,
    this.localThumbnail,
    this.remoteUrl,
    this.remoteThumbnail,
    required this.width,
    required this.height,
    this.durationMs,
  });

  PostFormMedia copyWith({
    String? remoteUrl,
    String? remoteThumbnail,
  }) {
    return PostFormMedia(
      id: id,
      type: type,
      localFile: localFile,
      localThumbnail: localThumbnail,
      remoteUrl: remoteUrl ?? this.remoteUrl,
      remoteThumbnail: remoteThumbnail ?? this.remoteThumbnail,
      width: width,
      height: height,
      durationMs: durationMs,
    );
  }
}
