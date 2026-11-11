-- 環境変数 → psql 変数
\getenv db_test_svr          DB_TEST_SVR
\getenv db_test_schema       DB_TEST_SCHEMA
\getenv app_owner_id         APP_OWNER_ID
\getenv app_service_user_id  APP_SERVICE_USER_ID
\getenv app_service_user_pwd APP_SERVICE_USER_PWD
\getenv app_anonymous        APP_ANONYMOUS
\getenv app_user_id          APP_USER_ID
\getenv app_admin_id         APP_ADMIN_ID
\getenv test_debugger_id     TEST_DEBUGGER_ID
\getenv test_debugger_pwd    TEST_DEBUGGER_PWD

\connect :"db_test_svr"
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- ============================================================
-- ロール作成
-- ============================================================
-- オブジェクト所有専用ロール（ログイン不可）。スキーマ・テーブル・関数はすべてこのロールが所有する
CREATE ROLE :"app_owner_id" NOLOGIN;

-- ログイン可能（パスワードあり）。権限は持たせず、切り替え専用にする
CREATE ROLE :"app_service_user_id" LOGIN NOINHERIT PASSWORD :'app_service_user_pwd';

-- ログイン不可（パスワードなし）。JWT の role で切り替える先
CREATE ROLE :"app_anonymous" NOLOGIN;   -- JWT なし（pgDefaultRole）
CREATE ROLE :"app_user_id"   NOLOGIN;
CREATE ROLE :"app_admin_id"  NOLOGIN;

-- authenticator がこれらのロールに切り替えられるようにする
GRANT :"app_anonymous", :"app_user_id", :"app_admin_id" TO :"app_service_user_id";

-- ============================================================
-- スキーマ作成（作成時点でオーナーを確定させる）
-- ============================================================
CREATE SCHEMA :"db_test_schema" AUTHORIZATION :"app_owner_id"; --テスト環境

-- スキーマ権限：アプリ用ロールは参照(USAGE)のみ。CREATE は与えない
GRANT USAGE ON SCHEMA :"db_test_schema" TO :"app_user_id", :"app_admin_id";

-- 今後 オーナーロールで作成されるオブジェクトへの既定権限
-- （06〜08 で作成済みのオブジェクトには 09 で付与する）
ALTER DEFAULT PRIVILEGES FOR ROLE :"app_owner_id" IN SCHEMA :"db_test_schema"
    GRANT ALL ON TABLES TO :"app_admin_id";
ALTER DEFAULT PRIVILEGES FOR ROLE :"app_owner_id" IN SCHEMA :"db_test_schema"
    GRANT ALL ON SEQUENCES TO :"app_admin_id";
ALTER DEFAULT PRIVILEGES FOR ROLE :"app_owner_id" IN SCHEMA :"db_test_schema"
    GRANT EXECUTE ON FUNCTIONS TO :"app_user_id", :"app_admin_id";
-- 一般ユーザーも登録できるよう INSERT を付ける (claude/135)
ALTER DEFAULT PRIVILEGES FOR ROLE :"app_owner_id" IN SCHEMA :"db_test_schema"
    GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO :"app_user_id";

-- ============================================================
--本番では削除（ここから）
-- ============================================================
CREATE ROLE :"test_debugger_id" WITH LOGIN PASSWORD :'test_debugger_pwd';
-- オーナーロールのメンバーにする → スキーマ内の全オブジェクトに対しオーナー同等の操作(DDL含む)が可能
GRANT :"app_owner_id" TO :"test_debugger_id";
GRANT ALL ON SCHEMA public TO :"test_debugger_id";
GRANT :"test_debugger_id" TO :"app_service_user_id";
--本番では削除（ここまで）
