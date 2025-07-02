-- liquibase formatted sql

-- changeset xkodxdf:4
CREATE TABLE IF NOT EXISTS w_location
(
    id        BIGSERIAL PRIMARY KEY,
    name      varchar(100)  NOT NULL,
    user_id   int           NOT NULL,
    latitude  decimal(9, 6) NOT NULL,
    longitude decimal(9, 6) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES w_user (id) ON DELETE CASCADE
);

-- changeset xkodxdf:5
CREATE UNIQUE INDEX IF NOT EXISTS uniq_user_location_idx ON w_location (user_id, latitude, longitude);
