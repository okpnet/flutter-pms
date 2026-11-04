\c avocado
CREATE SCHEMA stores;
CREATE EXTENSION pgcrypto;
CREATE ROLE stores_user WITH LOGIN PASSWORD 'stores_user';
CREATE ROLE stores_admin WITH LOGIN PASSWORD 'stores_admin';
GRANT ALL PRIVILEGES ON SCHEMA stores TO stores_admin;
GRANT USAGE ON SCHEMA stores TO stores_user;
GRANT ALL ON SCHEMA public TO stores_user;