-- ============================================
-- RANKED FEED FUNCTION
-- ============================================

CREATE OR REPLACE FUNCTION get_ranked_feed(
    p_user_id UUID,
    p_page    INTEGER DEFAULT 0
)
RETURNS TABLE (
    id            UUID,
    user_id       UUID,
    caption       VARCHAR,
    location      VARCHAR,
    like_count    INTEGER,
    comment_count INTEGER,
    is_edited     BOOLEAN,
    is_deleted    BOOLEAN,
    created_at    TIMESTAMPTZ,
    updated_at    TIMESTAMPTZ,
    feed_score    FLOAT
)
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
    RETURN QUERY
    SELECT
        p.id,
        p.user_id,
        p.caption,
        p.location,
        p.like_count,
        p.comment_count,
        p.is_edited,
        p.is_deleted,
        p.created_at,
        p.updated_at,
        (
        (p.like_count * 1.0) +
        (p.comment_count * 3.0) +
        COALESCE(a.score, 0) * 10 +
        (1.0 / (1.0 + EXTRACT(EPOCH FROM (NOW() - p.created_at)) / 3600 * 0.1))
        ) AS feed_score
    FROM posts p
    JOIN follows f
        ON f.following_id = p.user_id
        AND f.follower_id = p_user_id
    LEFT JOIN affinity a
        ON a.follower_id = p_user_id
        AND a.following_id = p.user_id
    WHERE p.created_at > NOW() - INTERVAL '7 days'
    AND p.is_deleted = false
    AND p.user_id != p_user_id
    ORDER BY feed_score DESC
    LIMIT 15
    OFFSET p_page * 15;
END;
$$;