class PostLikeEntity {
  final String userId;
  final String postId;

  PostLikeEntity({required this.userId, required this.postId});

  PostLikeEntity copyWith({String? userId, String? postId}) {
    return PostLikeEntity(
      userId: userId ?? this.userId,
      postId: postId ?? this.postId,
    );
  }
}
