-- ============================================
-- PROFILES
-- ============================================


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE profiles (
    id                  UUID        PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    username            VARCHAR(20) NOT NULL UNIQUE,
    display_name        VARCHAR(50) NOT NULL,
    bio                 VARCHAR(150),
    avatar_url          TEXT,
    follower_count      INTEGER     NOT NULL DEFAULT 0,
    following_count     INTEGER     NOT NULL DEFAULT 0,
    post_count          INTEGER     NOT NULL DEFAULT 0,
    username_changed_at TIMESTAMPTZ,
    is_active           BOOLEAN     NOT NULL DEFAULT true,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT now()
);


-- ============================================
-- INDEXES
-- ============================================

CREATE INDEX idx_profiles_username
ON profiles(username);

CREATE INDEX idx_profiles_display_name
ON profiles(display_name);

CREATE INDEX idx_profiles_is_active
ON profiles(is_active)
WHERE is_active = true;


-- ============================================
-- TRIGGERS
-- ============================================

CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER profiles_updated_at
BEFORE UPDATE ON profiles
FOR EACH ROW EXECUTE FUNCTION update_updated_at();


-- ============================================
-- RLS POLICIES
-- ============================================

CREATE POLICY "profiles_select"
ON profiles FOR SELECT
TO authenticated
USING (is_active = true);

CREATE POLICY "profiles_insert"
ON profiles FOR INSERT
TO authenticated
WITH CHECK (id = auth.uid());

CREATE POLICY "profiles_update"
ON profiles FOR UPDATE
TO authenticated
USING (id = auth.uid())
WITH CHECK (id = auth.uid());

CREATE POLICY "profiles_delete"
ON profiles FOR DELETE
TO authenticated
USING (false);