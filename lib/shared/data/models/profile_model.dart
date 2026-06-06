import 'package:pulse/shared/domain/entities/profile_entity.dart';

class ProfileModel extends ProfileEntity {
  const ProfileModel({
    required super.id,
    required super.username,
    required super.displayName,
    super.bio,
    super.avatarUrl,
    required super.followerCount,
    required super.followingCount,
    required super.postCount,
    super.usernameChangedAt,
    required super.isActive,
    required super.createdAt,
    required super.updatedAt,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'] as String,
      username: json['username'] as String,
      displayName: json['display_name'] as String,
      bio: json['bio'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      followerCount: (json['follower_count'] as num?)?.toInt() ?? 0,
      followingCount: (json['following_count'] as num?)?.toInt() ?? 0,
      postCount: (json['post_count'] as num?)?.toInt() ?? 0,
      usernameChangedAt: json['username_changed_at'] != null
          ? DateTime.parse(json['username_changed_at'] as String)
          : null,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'display_name': displayName,
      'bio': bio,
      'avatar_url': avatarUrl,
      'follower_count': followerCount,
      'following_count': followingCount,
      'post_count': postCount,
      'username_changed_at': usernameChangedAt?.toIso8601String(),
      'is_active': isActive,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  factory ProfileModel.fromEntity(ProfileEntity entity) {
    return ProfileModel(
      id: entity.id,
      username: entity.username,
      displayName: entity.displayName,
      bio: entity.bio,
      avatarUrl: entity.avatarUrl,
      followerCount: entity.followerCount,
      followingCount: entity.followingCount,
      postCount: entity.postCount,
      usernameChangedAt: entity.usernameChangedAt,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  ProfileEntity toEntity() {
    return ProfileEntity(
      id: id,
      username: username,
      displayName: displayName,
      bio: bio,
      avatarUrl: avatarUrl,
      followerCount: followerCount,
      followingCount: followingCount,
      postCount: postCount,
      usernameChangedAt: usernameChangedAt,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
