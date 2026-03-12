-- ============================================
-- MESSAGE MEDIA
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE message_media (
    id              UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    message_id      UUID        NOT NULL REFERENCES messages(id) ON DELETE CASCADE,
    uploader_id     UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    type            media_type  NOT NULL,
    url             TEXT        NOT NULL,
    thumbnail_url   TEXT,
    duration_ms     INTEGER,
    width           INTEGER,
    height          INTEGER,
    sort_order      SMALLINT    NOT NULL DEFAULT 0,
    created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_message_media_message_id
ON message_media(message_id, sort_order ASC);

CREATE INDEX idx_message_media_uploader_id
ON message_media(uploader_id);


-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "message_media_select"
ON message_media FOR SELECT
TO authenticated
USING (
    message_id IN (
        SELECT m.id FROM messages m
        JOIN conversations c ON c.id = m.conversation_id
        WHERE c.participant_one_id = auth.uid()
        OR c.participant_two_id = auth.uid()
    )
);

CREATE POLICY "message_media_insert"
ON message_media FOR INSERT
TO authenticated
WITH CHECK (uploader_id = auth.uid());

CREATE POLICY "message_media_update"
ON message_media FOR UPDATE
TO authenticated
USING (false);

CREATE POLICY "message_media_delete"
ON message_media FOR DELETE
TO authenticated
USING (uploader_id = auth.uid());