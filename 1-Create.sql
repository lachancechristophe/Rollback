CREATE DATABASE TP3;

CREATE TABLE account (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100),
    is_admin BOOL,
    email_address VARCHAR(100)
)