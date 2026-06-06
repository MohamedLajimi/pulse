-- ============================================
-- AFFINITY
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE affinity (
    follower_id  UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    following_id UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    score        FLOAT       NOT NULL DEFAULT 0,
    last_updated TIMESTAMPTZ NOT NULL DEFAULT now(),

    PRIMARY KEY (follower_id, following_id),
    CONSTRAINT no_self_affinity CHECK (follower_id != following_id)
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_affinity_follower_id
ON affinity(follower_id);

CREATE INDEX idx_affinity_last_updated
ON affinity(last_updated);


-- ============================================
-- TRIGGERS
-- ============================================

CREATE OR REPLACE FUNCTION update_affinity_on_like()
RETURNS TRIGGER AS $$
DECLARE
    post_author_id UUID;
BEGIN
    SELECT user_id INTO post_author_id
    FROM posts WHERE id = NEW.post_id;

    IF NEW.user_id = post_author_id THEN
        RETURN NEW;
    END IF;

    INSERT INTO affinity (follower_id, following_id, score, last_updated)
    VALUES (NEW.user_id, post_author_id, 1, now())
    ON CONFLICT (follower_id, following_id)
    DO UPDATE SET
        score = affinity.score + 1,
        last_updated = now();

    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_post_liked_affinity
AFTER INSERT ON post_likes
FOR EACH ROW EXECUTE FUNCTION update_affinity_on_like();

CREATE OR REPLACE FUNCTION update_affinity_on_comment()
RETURNS TRIGGER AS $$
DECLARE
    post_author_id UUID;
BEGIN
    SELECT user_id INTO post_author_id
    FROM posts WHERE id = NEW.post_id;

    IF NEW.user_id = post_author_id THEN
        RETURN NEW;
    END IF;

    INSERT INTO affinity (follower_id, following_id, score, last_updated)
    VALUES (NEW.user_id, post_author_id, 3, now())
    ON CONFLICT (follower_id, following_id)
    DO UPDATE SET
        score = affinity.score + 3,
        last_updated = now();

    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_comment_created_affinity
AFTER INSERT ON comments
FOR EACH ROW EXECUTE FUNCTION update_affinity_on_comment();


-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "affinity_select"
ON affinity FOR SELECT
TO authenticated
USING (follower_id = auth.uid());

CREATE POLICY "affinity_insert"
ON affinity FOR INSERT
TO authenticated
WITH CHECK (false);

CREATE POLICY "affinity_update"
ON affinity FOR UPDATE
TO authenticated
USING (false);

CREATE POLICY "affinity_delete"
ON affinity FOR DELETE
TO authenticated
USING (false);