-- ============================================
-- CONVERSATIONS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE conversations (
    id                 UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    participant_one_id UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    participant_two_id UUID        NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    last_message_id    UUID,
    last_message_at    TIMESTAMPTZ,
    unread_count_one   INTEGER     NOT NULL DEFAULT 0,
    unread_count_two   INTEGER     NOT NULL DEFAULT 0,
    deleted_by_one     BOOLEAN     NOT NULL DEFAULT false,
    deleted_by_two     BOOLEAN     NOT NULL DEFAULT false,
    created_at         TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at         TIMESTAMPTZ NOT NULL DEFAULT now(),

    CONSTRAINT unique_conversation UNIQUE (participant_one_id, participant_two_id),
    CONSTRAINT no_self_conversation CHECK (participant_one_id != participant_two_id),
    CONSTRAINT ordered_participants CHECK (participant_one_id < participant_two_id)
);


-- ============================================
-- MESSAGES
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE messages (
    id              UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    conversation_id UUID         NOT NULL REFERENCES conversations(id) ON DELETE CASCADE,
    sender_id       UUID         NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    body            VARCHAR(1000),
    is_deleted      BOOLEAN      NOT NULL DEFAULT false,
    seen_at         TIMESTAMPTZ,
    created_at      TIMESTAMPTZ  NOT NULL DEFAULT now(),
    updated_at      TIMESTAMPTZ  NOT NULL DEFAULT now()
);

ALTER TABLE conversations
ADD CONSTRAINT fk_last_message
FOREIGN KEY (last_message_id)
REFERENCES messages(id)
ON DELETE SET NULL;


-- ============================================
-- INDEXES
-- ============================================

-- conversations
CREATE INDEX idx_conversations_participant_one
ON conversations(participant_one_id, last_message_at DESC);

CREATE INDEX idx_conversations_participant_two
ON conversations(participant_two_id, last_message_at DESC);

-- messages
CREATE INDEX idx_messages_conversation_id
ON messages(conversation_id, created_at DESC);

CREATE INDEX idx_messages_seen_at
ON messages(conversation_id, seen_at)
WHERE seen_at IS NULL;

CREATE INDEX idx_messages_sender_id
ON messages(sender_id);


-- ============================================
-- TRIGGERS
-- ============================================

CREATE TRIGGER conversations_updated_at
BEFORE UPDATE ON conversations
FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER messages_updated_at
BEFORE UPDATE ON messages
FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE OR REPLACE FUNCTION on_message_sent()
RETURNS TRIGGER AS $$
DECLARE
    conv conversations%ROWTYPE;
BEGIN
    SELECT * INTO conv
    FROM conversations
    WHERE id = NEW.conversation_id;

    UPDATE conversations SET
        last_message_id = NEW.id,
        last_message_at = NEW.created_at,
        unread_count_one = CASE
        WHEN conv.participant_one_id != NEW.sender_id
        THEN unread_count_one + 1
        ELSE unread_count_one
        END,
        unread_count_two = CASE
        WHEN conv.participant_two_id != NEW.sender_id
        THEN unread_count_two + 1
        ELSE unread_count_two
        END,
        -- reset deleted_by for receiver so conversation reappears
        deleted_by_one = CASE
        WHEN conv.participant_one_id != NEW.sender_id
        THEN false
        ELSE deleted_by_one
        END,
        deleted_by_two = CASE
        WHEN conv.participant_two_id != NEW.sender_id
        THEN false
        ELSE deleted_by_two
        END
    WHERE id = NEW.conversation_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_message_sent
AFTER INSERT ON messages
FOR EACH ROW EXECUTE FUNCTION on_message_sent();



-- ============================================
-- RLS POLICIES
-- ============================================

-- conversations
CREATE POLICY "conversations_select"
ON conversations FOR SELECT
TO authenticated
USING (
    (participant_one_id = auth.uid() AND deleted_by_one = false)
    OR
    (participant_two_id = auth.uid() AND deleted_by_two = false)
);

CREATE POLICY "conversations_insert"
ON conversations FOR INSERT
TO authenticated
WITH CHECK (
    participant_one_id = auth.uid()
    OR participant_two_id = auth.uid()
);

CREATE POLICY "conversations_update"
ON conversations FOR UPDATE
TO authenticated
USING (
    participant_one_id = auth.uid()
    OR participant_two_id = auth.uid()
);

CREATE POLICY "conversations_delete"
ON conversations FOR DELETE
TO authenticated
USING (false);

-- messages
CREATE POLICY "messages_select"
ON messages FOR SELECT
TO authenticated
USING (
    conversation_id IN (
        SELECT id FROM conversations
        WHERE participant_one_id = auth.uid()
        OR participant_two_id = auth.uid()
    )
    AND is_deleted = false
);

CREATE POLICY "messages_insert"
ON messages FOR INSERT
TO authenticated
WITH CHECK (
    sender_id = auth.uid()
    AND conversation_id IN (
        SELECT id FROM conversations
        WHERE participant_one_id = auth.uid()
        OR participant_two_id = auth.uid()
    )
);

CREATE POLICY "messages_update"
ON messages FOR UPDATE
TO authenticated
USING (sender_id = auth.uid())
WITH CHECK (sender_id = auth.uid());

CREATE POLICY "messages_delete"
ON messages FOR DELETE
TO authenticated
USING (false);
