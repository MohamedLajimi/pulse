-- ============================================
-- COMMENTS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE comments (
    id         UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id    UUID         NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
    user_id    UUID         NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    parent_id  UUID         REFERENCES comments(id) ON DELETE CASCADE,
    body       VARCHAR(300) NOT NULL,
    like_count INTEGER      NOT NULL DEFAULT 0,
    created_at TIMESTAMPTZ  NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ  NOT NULL DEFAULT now()
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_comments_post_id
ON comments(post_id, created_at ASC)
WHERE parent_id IS NULL;

CREATE INDEX idx_comments_parent_id
ON comments(parent_id)
WHERE parent_id IS NOT NULL;

CREATE INDEX idx_comments_user_id
ON comments(user_id);


-- ============================================
-- TRIGGERS
-- ============================================

CREATE TRIGGER comments_updated_at
BEFORE UPDATE ON comments
FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE OR REPLACE FUNCTION increment_comment_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE posts
    SET comment_count = comment_count + 1
    WHERE id = NEW.post_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_comment_created
AFTER INSERT ON comments
FOR EACH ROW EXECUTE FUNCTION increment_comment_count();

CREATE OR REPLACE FUNCTION decrement_comment_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE posts
    SET comment_count = comment_count - 1
    WHERE id = OLD.post_id;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_comment_deleted
AFTER DELETE ON comments
FOR EACH ROW EXECUTE FUNCTION decrement_comment_count();

-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "comments_select"
ON comments FOR SELECT
TO authenticated
USING (true);

CREATE POLICY "comments_insert"
ON comments FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

CREATE POLICY "comments_delete"
ON comments FOR DELETE
TO authenticated
USING (
    user_id = auth.uid()
    OR EXISTS (
        SELECT 1 FROM posts
        WHERE id = post_id
        AND user_id = auth.uid()
    )
);

CREATE POLICY "comments_update"
ON comments FOR UPDATE
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());
