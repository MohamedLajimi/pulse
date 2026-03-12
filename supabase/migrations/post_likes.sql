-- ============================================
-- POST LIKES
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE post_likes (
    user_id    UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    post_id    UUID        NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

    PRIMARY KEY (user_id, post_id)
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_post_likes_post_id
ON post_likes(post_id);

CREATE INDEX idx_post_likes_user_id
ON post_likes(user_id);


-- ============================================
-- TRIGGERS
-- ============================================

CREATE OR REPLACE FUNCTION increment_post_like_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE posts
    SET like_count = like_count + 1
    WHERE id = NEW.post_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_post_liked
AFTER INSERT ON post_likes
FOR EACH ROW EXECUTE FUNCTION increment_post_like_count();

CREATE OR REPLACE FUNCTION decrement_post_like_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE posts
    SET like_count = like_count - 1
    WHERE id = OLD.post_id;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_post_unliked
AFTER DELETE ON post_likes
FOR EACH ROW EXECUTE FUNCTION decrement_post_like_count();


-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "post_likes_select"
ON post_likes FOR SELECT
TO authenticated
USING (true);

CREATE POLICY "post_likes_insert"
ON post_likes FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

CREATE POLICY "post_likes_delete"
ON post_likes FOR DELETE
TO authenticated
USING (user_id = auth.uid());
