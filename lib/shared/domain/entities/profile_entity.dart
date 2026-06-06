class ProfileEntity {
  const ProfileEntity({
    required this.id,
    required this.username,
    required this.displayName,
    this.bio,
    this.avatarUrl,
    required this.followerCount,
    required this.followingCount,
    required this.postCount,
    this.usernameChangedAt,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String username;
  final String displayName;
  final String? bio;
  final String? avatarUrl;
  final int followerCount;
  final int followingCount;
  final int postCount;
  final DateTime? usernameChangedAt;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;

  ProfileEntity copyWith({
    String? id,
    String? username,
    String? displayName,
    String? bio,
    String? avatarUrl,
    int? followerCount,
    int? followingCount,
    int? postCount,
    DateTime? usernameChangedAt,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ProfileEntity(
      id: id ?? this.id,
      username: username ?? this.username,
      displayName: displayName ?? this.displayName,
      bio: bio ?? this.bio,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      followerCount: followerCount ?? this.followerCount,
      followingCount: followingCount ?? this.followingCount,
      postCount: postCount ?? this.postCount,
      usernameChangedAt: usernameChangedAt ?? this.usernameChangedAt,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
