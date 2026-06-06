import 'dart:io';

class MediaUploadJob {
  final String id;
  final File file;
  final File? thumbnail;

  const MediaUploadJob({
    required this.id,
    required this.file,
    this.thumbnail,
  });
}

class MediaUploadResult {
  final String id;
  final String url;
  final String? thumbnailUrl;

  const MediaUploadResult({
    required this.id,
    required this.url,
    this.thumbnailUrl,
  });
}
