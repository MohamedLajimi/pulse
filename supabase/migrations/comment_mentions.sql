-- ============================================
-- COMMENT MENTIONS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE comment_mentions (
    id                UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    comment_id        UUID        NOT NULL REFERENCES comments(id) ON DELETE CASCADE,
    mentioned_user_id UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    created_at        TIMESTAMPTZ NOT NULL DEFAULT now(),

    CONSTRAINT unique_comment_mention UNIQUE (comment_id, mentioned_user_id)
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_comment_mentions_user_id
ON comment_mentions(mentioned_user_id);

CREATE INDEX idx_comment_mentions_comment_id
ON comment_mentions(comment_id);


-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "comment_mentions_select"
ON comment_mentions FOR SELECT
TO authenticated
USING (true);

CREATE POLICY "comment_mentions_insert"
ON comment_mentions FOR INSERT
TO authenticated
WITH CHECK (
    EXISTS (
        SELECT 1 FROM comments
        WHERE id = comment_id
        AND user_id = auth.uid()
    )
);

CREATE POLICY "comment_mentions_delete"
ON comment_mentions FOR DELETE
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM comments
        WHERE id = comment_id
        AND user_id = auth.uid()
    )
);