\c test_avocado
CREATE SCHEMA tests;
CREATE EXTENSION pgcrypto;
CREATE ROLE tester WITH LOGIN PASSWORD 'tester';
CREATE ROLE tester_admin WITH LOGIN PASSWORD 'tester_admin';
GRANT ALL PRIVILEGES ON SCHEMA tests TO tester_admin;
GRANT ALL ON SCHEMA public TO tester_admin;
GRANT USAGE ON SCHEMA tests TO tester;