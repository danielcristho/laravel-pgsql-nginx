CREATE DATABASE laravel;
CREATE USER admin with encrypted password 'admin1234';
GRANT ALL PRIVILEGES ON DATABASE laravel TO admin;
\C laravel;
CREATE EXTENSION IF NOT EXISTS timescaledb;