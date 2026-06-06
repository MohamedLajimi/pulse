-- ============================================
-- REPORTS
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE reports (
    id          UUID          PRIMARY KEY DEFAULT gen_random_uuid(),
    reporter_id UUID          NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
    post_id     UUID          NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
    reason      report_reason NOT NULL,
    description VARCHAR(500),
    status      report_status NOT NULL DEFAULT 'pending',
    created_at  TIMESTAMPTZ   NOT NULL DEFAULT now(),

    CONSTRAINT unique_report UNIQUE (reporter_id, post_id)
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_reports_status
ON reports(status, created_at DESC);

CREATE INDEX idx_reports_reporter
ON reports(reporter_id, post_id);


-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "reports_select"
ON reports FOR SELECT
TO authenticated
USING (reporter_id = auth.uid());

CREATE POLICY "reports_insert"
ON reports FOR INSERT
TO authenticated
WITH CHECK (
    reporter_id = auth.uid()
    AND NOT EXISTS (
        SELECT 1 FROM posts
        WHERE id = post_id
        AND user_id = auth.uid()
    )
);

CREATE POLICY "reports_update"
ON reports FOR UPDATE
TO authenticated
USING (false);

CREATE POLICY "reports_delete"
ON reports FOR DELETE
TO authenticated
USING (false);