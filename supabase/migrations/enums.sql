
create type notification_type as ENUM(
  'post_liked',
  'comment_liked',
  'post_commented',
  'comment_replied',
  'user_followed',
  'post_mentioned',
  'comment_mentioned',
  'message_received'
);

create type report_reason as ENUM(
  'spam',
  'inappropriate_content',
  'hate_speech',
  'violence',
  'other'
);

create type media_type as ENUM('image', 'video', 'audio', 'document');