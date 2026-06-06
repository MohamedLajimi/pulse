class PostHashtagEntity {
  const PostHashtagEntity({
    required this.id,
    required this.postId,
    required this.hashtag,
  });

  final String id;
  final String postId;
  final String hashtag;
  PostHashtagEntity copyWith({
    String? id,
    String? postId,
    String? hashtag,
  }) {
    return PostHashtagEntity(
      id: id ?? this.id,
      postId: postId ?? this.postId,
      hashtag: hashtag ?? this.hashtag,
    );
  }
}

