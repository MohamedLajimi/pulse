-- ============================================
-- POST HASHTAGS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE post_hashtags (
    id         UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id    UUID         NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
    hashtag    VARCHAR(100) NOT NULL,
    created_at TIMESTAMPTZ  NOT NULL DEFAULT now(),

    CONSTRAINT unique_post_hashtag UNIQUE (post_id, hashtag)
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_post_hashtags_hashtag
ON post_hashtags(hashtag);

CREATE INDEX idx_post_hashtags_post_id
ON post_hashtags(post_id);

-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "post_hashtags_select"
ON post_hashtags FOR SELECT
TO authenticated
USING (true);

CREATE POLICY "post_hashtags_insert"
ON post_hashtags FOR INSERT
TO authenticated
WITH CHECK (
    EXISTS (
        SELECT 1 FROM posts
        WHERE id = post_id
        AND user_id = auth.uid()
    )
);

CREATE POLICY "post_hashtags_delete"
ON post_hashtags FOR DELETE
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM posts
        WHERE id = post_id
        AND user_id = auth.uid()
    )
);