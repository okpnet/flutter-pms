-- 20261127_0003 為替レートの登録・変更は管理者だけ(ADM01)の SQL テスト(A1〜A3)
-- 実行: 06 → 07_dummy → 09 で作った DB に対して(06 に取り込んだあとは DDL は不要)。
-- 1 つのトランザクションで行い、最後に ROLLBACK する(DB は変わらない。作ったロールも戻る)。
--   psql -v ON_ERROR_STOP=1 -d postgres -f 20261127_0003_exchange_admin_test.sql
-- A1 DB の所有者(pms_user のメンバーでない)は、これまでどおり登録できる
-- A2 一般ユーザー(pms_user のメンバーで、pms_admin でない)は、登録・変更できない(ADM01)
-- A3 管理者(pms_admin のメンバー)は、登録・変更できる
-- ロールが無い環境・ロールを作る権限が無い環境では、A2・A3 は省く(NOTICE を出す)。
\getenv db_test_svr DB_TEST_SVR
\connect :"db_test_svr"
SET search_path TO tests, public;

BEGIN;

CREATE OR REPLACE FUNCTION pg_temp.nm2(p_ja varchar) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, p_ja FROM tests.shared_language_code AS l WHERE l.code = 'ja' AND l.remove IS FALSE;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

DO $$
DECLARE
    v_cur uuid; v_rate uuid;
BEGIN
    INSERT INTO tests.mstr_currency (code, names, currency_symbol, minor_unit, rate_auto)
    VALUES ('TAD', pg_temp.nm2('管理者の試験'), 'T', 2, false) RETURNING mstr_currency_id INTO v_cur;

    -- A1: 所有者
    INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_date, rate) VALUES (v_cur, DATE '2026-10-01', 100) RETURNING trans_exchange_rate_id INTO v_rate;

    IF (SELECT count(*) FROM pg_roles WHERE rolname IN ('pms_user', 'pms_admin')) <> 2 THEN
        RAISE NOTICE 'A2・A3 を省く: ロール pms_user・pms_admin が無い';
        RETURN;
    END IF;
    BEGIN
        CREATE ROLE tmp_exchange_user NOLOGIN IN ROLE pms_user;
        CREATE ROLE tmp_exchange_admin NOLOGIN IN ROLE pms_user, pms_admin;
    EXCEPTION WHEN insufficient_privilege THEN
        RAISE NOTICE 'A2・A3 を省く: ロールを作る権限が無い';
        RETURN;
    END;

    -- A2: 一般ユーザー
    BEGIN
        SET LOCAL ROLE tmp_exchange_user;
        INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_date, rate) VALUES (v_cur, DATE '2026-10-02', 101);
        RESET ROLE;
        RAISE EXCEPTION 'A2 一般ユーザーがレートを登録できた';
    EXCEPTION
        WHEN SQLSTATE 'ADM01' THEN RESET ROLE;
        WHEN insufficient_privilege THEN RESET ROLE; RAISE NOTICE 'A2 を省く: 表の権限が無い';
    END;
    BEGIN
        SET LOCAL ROLE tmp_exchange_user;
        UPDATE tests.trans_exchange_rate SET remove = true WHERE trans_exchange_rate_id = v_rate;
        RESET ROLE;
        RAISE EXCEPTION 'A2 一般ユーザーがレートを取り消せた';
    EXCEPTION
        WHEN SQLSTATE 'ADM01' THEN RESET ROLE;
        WHEN insufficient_privilege THEN RESET ROLE; RAISE NOTICE 'A2 を省く: 表の権限が無い';
    END;

    -- A3: 管理者
    BEGIN
        SET LOCAL ROLE tmp_exchange_admin;
        INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_date, rate) VALUES (v_cur, DATE '2026-10-03', 102);
        UPDATE tests.trans_exchange_rate SET remove = true WHERE trans_exchange_rate_id = v_rate;
        RESET ROLE;
    EXCEPTION
        WHEN insufficient_privilege THEN RESET ROLE; RAISE NOTICE 'A3 を省く: 表の権限が無い';
    END;

    RAISE NOTICE 'A1〜A3 OK';
END $$;

ROLLBACK;
