abstract final class AppConstants {
  // Profile
  static const int usernameMinLength = 3;
  static const int usernameMaxLength = 20;
  static const int displayNameMinLength = 1;
  static const int displayNameMaxLength = 50;
  static const int bioMaxLength = 150;

  // Auth
  static const int passwordMinLength = 8;

  // Posts
  static const int captionMaxLength = 2200;
  static const int locationMaxLength = 60;
  static const int maxPostMedia = 10;

  // Comments
  static const int commentMaxLength = 300;

  // Messages
  static const int messageMaxLength = 1000;

  // Hashtags
  static const int hashtagMaxLength = 100;

  // Pagination
  static const int feedPageSize = 15;
  static const int defaultPageSize = 20;

  // Debounce
  static const Duration searchDebounce = Duration(milliseconds: 400);
  static const Duration usernameCheckDebounce = Duration(milliseconds: 500);

  // Username change cooldown (30 days)
  static const Duration usernameChangeCooldown = Duration(days: 30);

  // Media
  static const int avatarMaxWidth = 512;
  static const int avatarMaxHeight = 512;
  static const int postImageMaxWidth = 1080;
  static const int postImageMaxHeight = 1350;
  static const int imageMaxQuality = 85;
  static const int imageMaxSize = 3;
  static const int videoMaxSize = 50;
}
