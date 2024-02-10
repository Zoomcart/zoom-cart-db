-- User Table
CREATE TABLE IF NOT EXISTS public.users
(
    user_id        SERIAL PRIMARY KEY,
    username       VARCHAR(50) UNIQUE,
    email          VARCHAR(100) UNIQUE,
    password_hash  VARCHAR(100),
    oauth_provider VARCHAR(20),
    oauth_id       VARCHAR(100),
    created_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
