\c test_avocado
CREATE SCHEMA tests;
CREATE EXTENSION pgcrypto;
CREATE ROLE tester WITH LOGIN PASSWORD 'tester';
CREATE ROLE tester_admin WITH LOGIN PASSWORD 'tester_admin';
GRANT ALL PRIVILEGES ON SCHEMA tests TO tester_admin;
GRANT ALL ON SCHEMA public TO tester_admin;
GRANT USAGE ON SCHEMA tests TO tester;

create or replace function tests.to_base33(n bigint, min_len int default 4) returns varchar as $$
declare
    alphabet text := '0123456789ABCDEFGHJKMNPQRSTUVWXYZ';
    result text := '';
begin
    if n = 0 then
        return lpad('0', min_len, '0');
    end if;
    while n > 0 loop
        result := substr(alphabet, (n % 33) + 1, 1) || result;
        n := n / 33;
    end loop;
    return case when length(result) < min_len then lpad(result, min_len, '0') else result end;
end;
$$ language plpgsql immutable;