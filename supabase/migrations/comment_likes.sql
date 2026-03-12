-- ============================================
-- COMMENT LIKES
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE comment_likes (
    user_id    UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    comment_id UUID        NOT NULL REFERENCES comments(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

    PRIMARY KEY (user_id, comment_id)
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_comment_likes_comment_id
ON comment_likes(comment_id);

CREATE INDEX idx_comment_likes_user_id
ON comment_likes(user_id);


-- ============================================
-- TRIGGERS
-- ============================================

CREATE OR REPLACE FUNCTION increment_comment_like_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE comments
    SET like_count = like_count + 1
    WHERE id = NEW.comment_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_comment_liked
AFTER INSERT ON comment_likes
FOR EACH ROW EXECUTE FUNCTION increment_comment_like_count();

CREATE OR REPLACE FUNCTION decrement_comment_like_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE comments
    SET like_count = like_count - 1
    WHERE id = OLD.comment_id;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_comment_unliked
AFTER DELETE ON comment_likes
FOR EACH ROW EXECUTE FUNCTION decrement_comment_like_count();


-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "comment_likes_select"
ON comment_likes FOR SELECT
TO authenticated
USING (true);

CREATE POLICY "comment_likes_insert"
ON comment_likes FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

CREATE POLICY "comment_likes_delete"
ON comment_likes FOR DELETE
TO authenticated
USING (user_id = auth.uid());
