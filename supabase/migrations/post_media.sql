-- ============================================
-- POST MEDIA
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE post_media (
    id            UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id       UUID        NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
    uploader_id   UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    type          media_type  NOT NULL,
    url           TEXT        NOT NULL,
    thumbnail_url TEXT,
    duration_ms   INTEGER,
    width         INTEGER,
    height        INTEGER,
    sort_order    SMALLINT    NOT NULL DEFAULT 0,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_post_media_post_id
ON post_media(post_id, sort_order ASC);

CREATE INDEX idx_post_media_uploader_id
ON post_media(uploader_id);



-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "post_media_select"
ON post_media FOR SELECT
TO authenticated
USING (true);

CREATE POLICY "post_media_insert"
ON post_media FOR INSERT
TO authenticated
WITH CHECK (uploader_id = auth.uid());

CREATE POLICY "post_media_update"
ON post_media FOR UPDATE
TO authenticated
USING (false);

CREATE POLICY "post_media_delete"
ON post_media FOR DELETE
TO authenticated
USING (uploader_id = auth.uid());
