\c ${DB_TEST_SVR}
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- ============================================================
-- ロール作成
-- ============================================================
-- オブジェクト所有専用ロール（ログイン不可）。スキーマ・テーブル・関数はすべてこのロールが所有する
CREATE ROLE ${APP_OWNER_ID} NOLOGIN;

-- ログイン可能（パスワードあり）。権限は持たせず、切り替え専用にする
CREATE ROLE ${APP_SERVICE_USER_ID} LOGIN NOINHERIT PASSWORD '${APP_SERVICE_USER_PWD}';

-- ログイン不可（パスワードなし）。JWT の role で切り替える先
CREATE ROLE ${APP_ANONYMOUS} NOLOGIN;   -- JWT なし（pgDefaultRole）
CREATE ROLE ${APP_USER_ID}   NOLOGIN;
CREATE ROLE ${APP_ADMIN_ID}  NOLOGIN;

-- authenticator がこれらのロールに切り替えられるようにする
GRANT ${APP_ANONYMOUS}, ${APP_USER_ID}, ${APP_ADMIN_ID} TO ${APP_SERVICE_USER_ID};

-- ============================================================
-- スキーマ作成（作成時点でオーナーを確定させる）
-- ============================================================
CREATE SCHEMA ${DB_TEST_SCHEMA} AUTHORIZATION ${APP_OWNER_ID}; --テスト環境

-- スキーマ権限：アプリ用ロールは参照(USAGE)のみ。CREATE は与えない
GRANT USAGE ON SCHEMA ${DB_TEST_SCHEMA} TO ${APP_USER_ID}, ${APP_ADMIN_ID};

-- 今後 オーナーロールで作成されるオブジェクトへの既定権限
-- （06〜08 で作成済みのオブジェクトには 09 で付与する）
ALTER DEFAULT PRIVILEGES FOR ROLE ${APP_OWNER_ID} IN SCHEMA ${DB_TEST_SCHEMA}
    GRANT ALL ON TABLES TO ${APP_ADMIN_ID};
ALTER DEFAULT PRIVILEGES FOR ROLE ${APP_OWNER_ID} IN SCHEMA ${DB_TEST_SCHEMA}
    GRANT ALL ON SEQUENCES TO ${APP_ADMIN_ID};
ALTER DEFAULT PRIVILEGES FOR ROLE ${APP_OWNER_ID} IN SCHEMA ${DB_TEST_SCHEMA}
    GRANT EXECUTE ON FUNCTIONS TO ${APP_USER_ID}, ${APP_ADMIN_ID};
ALTER DEFAULT PRIVILEGES FOR ROLE ${APP_OWNER_ID} IN SCHEMA ${DB_TEST_SCHEMA}
    GRANT SELECT, UPDATE, DELETE ON TABLES TO ${APP_USER_ID};

-- ============================================================
--本番では削除（ここから）
-- ============================================================
CREATE ROLE ${TEST_DEBUGGER_ID} WITH LOGIN PASSWORD '${TEST_DEBUGGER_PWD}';
-- オーナーロールのメンバーにする → スキーマ内の全オブジェクトに対しオーナー同等の操作(DDL含む)が可能
GRANT ${APP_OWNER_ID} TO ${TEST_DEBUGGER_ID};
GRANT ALL ON SCHEMA public TO ${TEST_DEBUGGER_ID};
GRANT ${TEST_DEBUGGER_ID} TO ${APP_SERVICE_USER_ID};
--本番では削除（ここまで）