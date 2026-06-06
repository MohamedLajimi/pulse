-- ============================================
-- FOLLOWS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE follows (
    follower_id  UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    following_id UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    created_at   TIMESTAMPTZ NOT NULL DEFAULT now(),

    PRIMARY KEY (follower_id, following_id),
    CONSTRAINT no_self_follow CHECK (follower_id != following_id)
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_follows_follower_id
ON follows(follower_id);

CREATE INDEX idx_follows_following_id
ON follows(following_id);


-- ============================================
-- TRIGGERS
-- ============================================

CREATE OR REPLACE FUNCTION on_follow_created()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE profiles
    SET following_count = following_count + 1
    WHERE id = NEW.follower_id;

    UPDATE profiles
    SET follower_count = follower_count + 1
    WHERE id = NEW.following_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_follow_created
AFTER INSERT ON follows
FOR EACH ROW EXECUTE FUNCTION on_follow_created();

CREATE OR REPLACE FUNCTION on_follow_deleted()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE profiles
    SET following_count = following_count - 1
    WHERE id = OLD.follower_id;

    UPDATE profiles
    SET follower_count = follower_count - 1
    WHERE id = OLD.following_id;

    RETURN OLD;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_follow_deleted
AFTER DELETE ON follows
FOR EACH ROW EXECUTE FUNCTION on_follow_deleted();



-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "follows_select"
ON follows FOR SELECT
TO authenticated
USING (true);

CREATE POLICY "follows_insert"
ON follows FOR INSERT
TO authenticated
WITH CHECK (follower_id = auth.uid());

CREATE POLICY "follows_delete"
ON follows FOR DELETE
TO authenticated
USING (follower_id = auth.uid());

CREATE POLICY "follows_update"
ON follows FOR UPDATE
TO authenticated
USING (false);