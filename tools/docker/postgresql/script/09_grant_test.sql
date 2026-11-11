-- 環境変数 → psql 変数
\getenv db_test_svr    DB_TEST_SVR
\getenv db_test_schema DB_TEST_SCHEMA
\getenv app_owner_id   APP_OWNER_ID
\getenv app_user_id    APP_USER_ID
\getenv app_admin_id   APP_ADMIN_ID

\connect :"db_test_svr"

-- DO ブロック（$$ 内）では psql 変数が展開されないため、セッション設定経由で渡す
SELECT set_config('init.schema', :'db_test_schema', false),
       set_config('init.owner',  :'app_owner_id',   false) \gset

-- ============================================================
-- 06〜08 で（初期化実行ユーザーにより）作成されたオブジェクトのオーナーを
-- オーナーロールへ付け替える
-- ※ ALTER SCHEMA ... OWNER はスキーマ自体のみが対象で、中のオブジェクトは変わらないため個別に変更する
-- ============================================================
DO $$
DECLARE
    v_schema text := current_setting('init.schema');
    v_owner  text := current_setting('init.owner');
    r record;
BEGIN
    -- テーブル・ビュー・マテビュー・外部テーブル・複合型
    -- （テーブルを先に変更すると、serial/identity の紐付きシーケンスも自動で付け替わる）
    FOR r IN
        SELECT c.oid::regclass AS obj, c.relkind
          FROM pg_class c
          JOIN pg_namespace n ON n.oid = c.relnamespace
         WHERE n.nspname = v_schema
           AND c.relkind IN ('r', 'p', 'v', 'm', 'f', 'c')
           AND pg_get_userbyid(c.relowner) <> v_owner
    LOOP
        EXECUTE format('ALTER %s %s OWNER TO %I',
            CASE r.relkind
                WHEN 'v' THEN 'VIEW'
                WHEN 'm' THEN 'MATERIALIZED VIEW'
                WHEN 'f' THEN 'FOREIGN TABLE'
                WHEN 'c' THEN 'TYPE'
                ELSE 'TABLE'
            END, r.obj, v_owner);
    END LOOP;

    -- 単独シーケンス（テーブルに紐付くものは上で付け替え済みのため対象外になる）
    FOR r IN
        SELECT c.oid::regclass AS obj
          FROM pg_class c
          JOIN pg_namespace n ON n.oid = c.relnamespace
         WHERE n.nspname = v_schema
           AND c.relkind = 'S'
           AND pg_get_userbyid(c.relowner) <> v_owner
    LOOP
        EXECUTE format('ALTER SEQUENCE %s OWNER TO %I', r.obj, v_owner);
    END LOOP;

    -- 関数・プロシージャ・集約
    FOR r IN
        SELECT p.oid::regprocedure AS obj
          FROM pg_proc p
          JOIN pg_namespace n ON n.oid = p.pronamespace
         WHERE n.nspname = v_schema
           AND pg_get_userbyid(p.proowner) <> v_owner
    LOOP
        EXECUTE format('ALTER ROUTINE %s OWNER TO %I', r.obj, v_owner);
    END LOOP;

    -- 列挙型・ドメイン・範囲型
    FOR r IN
        SELECT t.oid::regtype AS obj, t.typtype
          FROM pg_type t
          JOIN pg_namespace n ON n.oid = t.typnamespace
         WHERE n.nspname = v_schema
           AND t.typtype IN ('e', 'd', 'r')
           AND pg_get_userbyid(t.typowner) <> v_owner
    LOOP
        EXECUTE format('ALTER %s %s OWNER TO %I',
            CASE r.typtype WHEN 'd' THEN 'DOMAIN' ELSE 'TYPE' END, r.obj, v_owner);
    END LOOP;
END
$$;

-- ============================================================
-- 作成済みオブジェクトへの権限付与
-- （以降に作成されるものは 05 の DEFAULT PRIVILEGES で自動付与）
-- ============================================================
-- 管理者
GRANT ALL ON ALL TABLES    IN SCHEMA :"db_test_schema" TO :"app_admin_id";
GRANT ALL ON ALL SEQUENCES IN SCHEMA :"db_test_schema" TO :"app_admin_id";

-- 管理者・一般ユーザー共通（関数の権限は EXECUTE のみ）
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA :"db_test_schema" TO :"app_user_id", :"app_admin_id";

-- 一般ユーザー
-- 一般ユーザーも登録できるよう INSERT を付ける (claude/135)
-- (棚ビジター所有者 trans_visiter_owner の書き込みは 13 で外す)
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA :"db_test_schema" TO :"app_user_id";

-- デバッガー用の権限付与は不要
-- （05 でオーナーロールのメンバーにしているため。本番での削除対象は 05 のみ）
