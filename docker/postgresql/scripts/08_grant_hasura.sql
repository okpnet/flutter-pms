\c hasura_metadata
CREATE ROLE hasura_admin WITH LOGIN PASSWORD 'hasura_admin';
GRANT CREATE ON DATABASE hasura_metadata TO hasura_admin;