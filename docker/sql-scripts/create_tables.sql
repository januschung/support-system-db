DROP DATABASE IF EXISTS support_system;
CREATE DATABASE support_system;
\connect support_system;
CREATE SCHEMA IF NOT EXISTS support_system;
CREATE USER jare WITH PASSWORD 'jare';
CREATE USER liquibase WITH PASSWORD 'jare';

GRANT CONNECT ON DATABASE support_system TO jare;
GRANT USAGE ON SCHEMA support_system TO jare;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA support_system TO jare;

GRANT ALL PRIVILEGES ON DATABASE support_system TO liquibase;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA support_system TO liquibase;
ALTER USER liquibase WITH SUPERUSER;