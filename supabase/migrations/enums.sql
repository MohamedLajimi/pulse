
CREATE TYPE notification_type AS ENUM(
    'post_liked',
    'comment_liked',
    'post_commented',
    'comment_replied',
    'user_followed',
    'post_mentioned',
    'comment_mentioned',
    'message_received'
);

CREATE TYPE report_reason AS ENUM(
    'spam',
    'inappropriate_content',
    'hate_speech',
    'violence',
    'other'
);

CREATE TYPE report_status AS ENUM(
    'pending',
    'reviewed',
    'resolved',
    'dismissed'
);

CREATE TYPE media_type AS ENUM('image', 'video', 'audio', 'document');