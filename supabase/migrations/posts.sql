-- ============================================
-- POSTS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE posts (
    id            UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id       UUID         NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    caption       VARCHAR(2200),
    location      VARCHAR(60),
    like_count    INTEGER      NOT NULL DEFAULT 0,
    comment_count INTEGER      NOT NULL DEFAULT 0,
    is_edited     BOOLEAN      NOT NULL DEFAULT false,
    is_deleted    BOOLEAN      NOT NULL DEFAULT false,
    created_at    TIMESTAMPTZ  NOT NULL DEFAULT now(),
    updated_at    TIMESTAMPTZ  NOT NULL DEFAULT now()
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_posts_user_id
ON posts(user_id, created_at DESC)
WHERE is_deleted = false;

CREATE INDEX idx_posts_created_at
ON posts(created_at DESC)
WHERE is_deleted = false;


-- ============================================
-- TRIGGERS
-- ============================================

CREATE TRIGGER posts_updated_at
BEFORE UPDATE ON posts
FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE OR REPLACE FUNCTION increment_post_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE profiles
    SET post_count = post_count + 1
    WHERE id = NEW.user_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_post_created
AFTER INSERT ON posts
FOR EACH ROW EXECUTE FUNCTION increment_post_count();

CREATE OR REPLACE FUNCTION decrement_post_count()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.is_deleted = true AND OLD.is_deleted = false THEN
        UPDATE profiles
        SET post_count = post_count - 1
        WHERE id = NEW.user_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_post_soft_deleted
AFTER UPDATE ON posts
FOR EACH ROW EXECUTE FUNCTION decrement_post_count();

CREATE OR REPLACE FUNCTION update_captions_on_username_change()
RETURNS TRIGGER AS $$
BEGIN
    IF OLD.username IS DISTINCT FROM NEW.username THEN
        UPDATE posts
        SET caption = REGEXP_REPLACE(
            caption, 
            '(?<=^|\s)@' || OLD.username || '\b', 
            '@' || NEW.username, 
            'g'
        )
        WHERE id IN (
            SELECT post_id 
            FROM post_mentions 
            WHERE mentioned_user_id = NEW.id
        );
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_username_change_captions
AFTER UPDATE OF username ON profiles
FOR EACH ROW
EXECUTE FUNCTION update_captions_on_username_change();



-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "posts_select"
ON posts FOR SELECT
TO authenticated
USING (is_deleted = false);

CREATE POLICY "posts_insert"
ON posts FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

CREATE POLICY "posts_update"
ON posts FOR UPDATE
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

CREATE POLICY "posts_delete"
ON posts FOR DELETE
TO authenticated
USING (false);