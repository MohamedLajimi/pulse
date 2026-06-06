-- ============================================
-- POST MENTIONS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE post_mentions (
    id                UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id           UUID        NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
    mentioned_user_id UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    created_at        TIMESTAMPTZ NOT NULL DEFAULT now(),

    CONSTRAINT unique_post_mention UNIQUE (post_id, mentioned_user_id)
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_post_mentions_user_id
ON post_mentions(mentioned_user_id);

CREATE INDEX idx_post_mentions_post_id
ON post_mentions(post_id);

-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "post_mentions_select"
ON post_mentions FOR SELECT
TO authenticated
USING (true);

CREATE POLICY "post_mentions_insert"
ON post_mentions FOR INSERT
TO authenticated
WITH CHECK (
    EXISTS (
        SELECT 1 FROM posts
        WHERE id = post_id
        AND user_id = auth.uid()
    )
);

CREATE POLICY "post_mentions_delete"
ON post_mentions FOR DELETE
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM posts
        WHERE id = post_id
        AND user_id = auth.uid()
    )
);