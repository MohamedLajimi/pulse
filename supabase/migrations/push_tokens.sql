-- ============================================
-- PUSH TOKENS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE push_tokens (
    user_id    UUID        PRIMARY KEY REFERENCES profiles(id) ON DELETE CASCADE,
    token      TEXT        NOT NULL UNIQUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_push_tokens_user_id
ON push_tokens(user_id);


-- ============================================
-- TRIGGERS
-- ============================================

CREATE TRIGGER push_tokens_updated_at
BEFORE UPDATE ON push_tokens
FOR EACH ROW EXECUTE FUNCTION update_updated_at();


-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "push_tokens_select"
ON push_tokens FOR SELECT
TO authenticated
USING (user_id = auth.uid());

CREATE POLICY "push_tokens_insert"
ON push_tokens FOR INSERT
TO authenticated
WITH CHECK (user_id = auth.uid());

CREATE POLICY "push_tokens_update"
ON push_tokens FOR UPDATE
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

CREATE POLICY "push_tokens_delete"
ON push_tokens FOR DELETE
TO authenticated
USING (user_id = auth.uid());