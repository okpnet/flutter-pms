\c test_avocado
CREATE SCHEMA tests;
CREATE EXTENSION pgcrypto;
-- ログイン可能（パスワードあり）。権限は持たせず、切り替え専用にする
CREATE ROLE authenticator LOGIN NOINHERIT PASSWORD  'authenticator';--'強いパスワード'
CREATE ROLE tester_admin WITH LOGIN PASSWORD 'tester_admin';--debuger

-- ログイン不可（パスワードなし）。JWT の role で切り替える先
CREATE ROLE pms_anonymous NOLOGIN;   -- JWT なし（pgDefaultRole）
CREATE ROLE pms_user      NOLOGIN;
CREATE ROLE pms_admin     NOLOGIN;

-- authenticator がこれらのロールに切り替えられるようにする
GRANT pms_anonymous, tester_admin TO authenticator;
GRANT pms_user, pms_admin TO authenticator;

-- 権限はロールごとに付ける
GRANT USAGE ON SCHEMA tests TO pms_user,pms_admin,tester_admin;
GRANT ALL PRIVILEGES ON SCHEMA tests TO tester_admin;
GRANT ALL ON SCHEMA public TO tester_admin;
GRANT ALL ON SCHEMA tests TO pms_user,pms_admin,tester_admin;

--ALTER DATABASE test_avocado OWNER TO tester_admin;
ALTER SCHEMA tests OWNER TO tester_admin;