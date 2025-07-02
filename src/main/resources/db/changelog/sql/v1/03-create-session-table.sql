-- liquibase formatted sql

-- changeset xkodxdf:6
CREATE TABLE IF NOT EXISTS w_session
(
    id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id    int       NOT NULL,
    expires_at timestamp NOT NULL,
    FOREIGN KEY (user_id) REFERENCES w_user (id) ON DELETE CASCADE
);
