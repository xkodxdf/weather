-- liquibase formatted sql

-- changeset xkodxdf:1
CREATE TABLE IF NOT EXISTS w_user
(
    id       BIGSERIAL PRIMARY KEY,
    login    varchar(64)  NOT NULL,
    password varchar(255) NOT NULL
);

-- changeset xkodxdf:2
CREATE UNIQUE INDEX IF NOT EXISTS uniq_login_idx ON w_user (login);

-- changeset xkodxdf:3
CREATE EXTENSION IF NOT EXISTS "pgcrypto";