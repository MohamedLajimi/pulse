import 'package:equatable/equatable.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';

enum CommentSortOrder {
  newest,
  mostLiked;

  String get displayName => switch (this) {
    .newest => 'Newest',
    .mostLiked => 'Most Liked',
  };
}

class CommentEntity extends Equatable {
  final String id;
  final String postId;
  final String userId;
  final String? parentId;
  final String body;
  final int likeCount;
  final int repliesCount;
  final bool isEdited;
  final bool isLiked;
  final DateTime createdAt;
  final DateTime updatedAt;
  final ProfileEntity? author;
  final List<(String, String)> mentions;

  bool get isReply => parentId != null;
  bool get hasReplies => repliesCount > 0;

  const CommentEntity({
    required this.id,
    required this.postId,
    required this.userId,
    this.parentId,
    required this.body,
    required this.likeCount,
    required this.isEdited,
    required this.isLiked,
    required this.createdAt,
    required this.updatedAt,
    this.author,
    required this.repliesCount,
    required this.mentions
  });

  CommentEntity copyWith({
    String? id,
    String? postId,
    String? userId,
    String? parentId,
    String? body,
    int? likeCount,
    int? repliesCount,
    bool? isEdited,
    bool? isLiked,
    DateTime? createdAt,
    DateTime? updatedAt,
    ProfileEntity? author,
    List<(String, String)>?mentions,
  }) => CommentEntity(
    id: id ?? this.id,
    postId: postId ?? this.postId,
    userId: userId ?? this.userId,
    parentId: parentId ?? this.parentId,
    body: body ?? this.body,
    likeCount: likeCount ?? this.likeCount,
    isEdited: isEdited ?? this.isEdited,
    isLiked: isLiked ?? this.isLiked,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    author: author ?? this.author,
    repliesCount: repliesCount ?? this.repliesCount,
    mentions: mentions??this.mentions
  );

  @override
  List<Object?> get props => [
    id,
    postId,
    userId,
    parentId,
    body,
    likeCount,
    repliesCount,
    isEdited,
    isLiked,
    createdAt,
    updatedAt,
    mentions
  ];
}
