abstract final class DbConstants {
  // Tables
  static const String profiles = 'profiles';
  static const String posts = 'posts';
  static const String postMedia = 'post_media';
  static const String postLikes = 'post_likes';
  static const String postHashtags = 'post_hashtags';
  static const String postMentions = 'post_mentions';
  static const String comments = 'comments';
  static const String commentLikes = 'comment_likes';
  static const String commentMentions = 'comment_mentions';
  static const String follows = 'follows';
  static const String blocks = 'blocks';
  static const String conversations = 'conversations';
  static const String messages = 'messages';
  static const String messageMedia = 'message_media';
  static const String notifications = 'notifications';
  static const String reports = 'reports';
  static const String affinity = 'affinity';
  static const String pushTokens = 'push_tokens';

  // Storage buckets
  static const String avatarsBucket = 'avatars';
  static const String postMediaBucket = 'posts-media';
  static const String messageMediaBucket = 'message-media';

  // RPC functions
  static const String getRankedFeed = 'get_ranked_feed';
}
