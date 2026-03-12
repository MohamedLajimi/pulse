

-- ============================================
-- BLOCKS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE blocks (
    blocker_id UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    blocked_id UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

    PRIMARY KEY (blocker_id, blocked_id),
    CONSTRAINT no_self_block CHECK (blocker_id != blocked_id)
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_blocks_blocker
ON blocks(blocker_id);

CREATE INDEX idx_blocks_blocked
ON blocks(blocked_id);


-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "blocks_select"
ON blocks FOR SELECT
TO authenticated
USING (blocker_id = auth.uid());

CREATE POLICY "blocks_insert"
ON blocks FOR INSERT
TO authenticated
WITH CHECK (blocker_id = auth.uid());

CREATE POLICY "blocks_delete"
ON blocks FOR DELETE
TO authenticated
USING (blocker_id = auth.uid());

CREATE POLICY "blocks_update"
ON blocks FOR UPDATE
TO authenticated
USING (false);