-- 20261127_0002 為替レートの確定(確定日以前のレートの登録・変更・取り消しを止める)の SQL テスト(L1〜L6)
-- 実行: 06 → 07_dummy → 09 で作った DB に対して(06 に取り込んだあとは DDL は不要)。
-- 1 つのトランザクションで行い、最後に ROLLBACK する(DB は変わらない)。失敗すると RAISE EXCEPTION で止まる。
--   psql -v ON_ERROR_STOP=1 -d postgres -f 20261127_0002_exchange_lock_test.sql
-- L1 確定日が無いときは、どの日付のレートも登録できる
-- L2 確定日以前のレートは登録できない(CUR02)。確定日の翌日からは登録できる
-- L3 確定日以前の既存のレートは、変更・取り消しできない(CUR02)。備考だけの変更は通る
-- L4 確定日より後のレートは、今までどおり変更・取り消しできる
-- L5 確定日の保護: 前へ戻せない(CUR03)・未来や不正な日付は不可(CUR04)・進めることはできる
-- L6 確定した期間の換算は、確定後にレートを足しても変わらない
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

CREATE OR REPLACE FUNCTION pg_temp.set_lock(p_value text) RETURNS void AS $$
BEGIN
    UPDATE tests.info_app
       SET settings = COALESCE(settings, '{}'::jsonb)
                      || jsonb_build_object('exchange', COALESCE(settings -> 'exchange', '{}'::jsonb) || jsonb_build_object('lockedUntil', p_value))
     WHERE remove IS FALSE;
END $$ LANGUAGE plpgsql;

DO $$
DECLARE
    v_cur uuid; v_r1 uuid; v_r2 uuid; v_before numeric;
BEGIN
    INSERT INTO tests.mstr_currency (code, names, currency_symbol, minor_unit, rate_auto)
    VALUES ('TLK', pg_temp.nm2('確定の試験'), 'T', 2, false) RETURNING mstr_currency_id INTO v_cur;

    -- L1: 確定日が無い
    IF tests.exchange_rate_locked_until() IS NOT NULL THEN RAISE EXCEPTION 'L1 確定日が最初からある'; END IF;
    INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_date, rate) VALUES (v_cur, DATE '2026-10-10', 100) RETURNING trans_exchange_rate_id INTO v_r1;
    INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_date, rate) VALUES (v_cur, DATE '2026-09-01', 90);

    -- L2: 確定日 2026-10-31
    PERFORM pg_temp.set_lock('2026-10-31');
    IF tests.exchange_rate_locked_until() <> DATE '2026-10-31' THEN RAISE EXCEPTION 'L2 確定日を読めない'; END IF;
    BEGIN
        INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_date, rate) VALUES (v_cur, DATE '2026-10-31', 101);
        RAISE EXCEPTION 'L2 確定日当日のレートが登録できた';
    EXCEPTION WHEN SQLSTATE 'CUR02' THEN NULL; END;
    BEGIN
        INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_date, rate) VALUES (v_cur, DATE '2026-10-15', 101);
        RAISE EXCEPTION 'L2 確定済みの期間のレートが登録できた';
    EXCEPTION WHEN SQLSTATE 'CUR02' THEN NULL; END;
    INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_date, rate) VALUES (v_cur, DATE '2026-11-01', 110) RETURNING trans_exchange_rate_id INTO v_r2;

    -- L3: 確定日以前の既存のレート
    BEGIN
        UPDATE tests.trans_exchange_rate SET remove = true WHERE trans_exchange_rate_id = v_r1;
        RAISE EXCEPTION 'L3 確定済みのレートを取り消せた';
    EXCEPTION WHEN SQLSTATE 'CUR02' THEN NULL; END;
    BEGIN
        UPDATE tests.trans_exchange_rate SET rate = 105 WHERE trans_exchange_rate_id = v_r1;
        RAISE EXCEPTION 'L3 確定済みのレートの値を変えられた';
    EXCEPTION WHEN SQLSTATE 'CUR02' THEN NULL; END;
    BEGIN
        UPDATE tests.trans_exchange_rate SET rate_date = DATE '2026-10-12' WHERE trans_exchange_rate_id = v_r1;
        RAISE EXCEPTION 'L3 確定済みのレートの日付を変えられた';
    EXCEPTION WHEN SQLSTATE 'CUR02' THEN NULL; END;
    UPDATE tests.trans_exchange_rate SET remarks = '備考だけ' WHERE trans_exchange_rate_id = v_r1; -- 通る

    -- L4: 確定日より後は、今までどおり
    BEGIN
        UPDATE tests.trans_exchange_rate SET rate_date = DATE '2026-10-20' WHERE trans_exchange_rate_id = v_r2;
        RAISE EXCEPTION 'L4 確定済みの期間へ日付を変えられた';
    EXCEPTION WHEN SQLSTATE 'CUR02' THEN NULL; END;
    UPDATE tests.trans_exchange_rate SET rate = 111 WHERE trans_exchange_rate_id = v_r2;
    UPDATE tests.trans_exchange_rate SET remove = true WHERE trans_exchange_rate_id = v_r2;

    -- L5: 確定日の保護
    BEGIN
        PERFORM pg_temp.set_lock('2026-10-15');
        RAISE EXCEPTION 'L5 確定日を前へ戻せた';
    EXCEPTION WHEN SQLSTATE 'CUR03' THEN NULL; END;
    BEGIN
        UPDATE tests.info_app SET settings = settings #- '{exchange,lockedUntil}' WHERE remove IS FALSE;
        RAISE EXCEPTION 'L5 確定日を消せた';
    EXCEPTION WHEN SQLSTATE 'CUR03' THEN NULL; END;
    BEGIN
        PERFORM pg_temp.set_lock(to_char(CURRENT_DATE + 1, 'YYYY-MM-DD'));
        RAISE EXCEPTION 'L5 未来の日付を確定できた';
    EXCEPTION WHEN SQLSTATE 'CUR04' THEN NULL; END;
    BEGIN
        PERFORM pg_temp.set_lock('2026-13-45');
        RAISE EXCEPTION 'L5 不正な日付を確定できた';
    EXCEPTION WHEN SQLSTATE 'CUR04' THEN NULL; END;
    PERFORM pg_temp.set_lock('2026-10-31'); -- 同じ日は通る
    PERFORM pg_temp.set_lock('2026-11-05'); -- 進められる
    IF tests.exchange_rate_locked_until() <> DATE '2026-11-05' THEN RAISE EXCEPTION 'L5 確定日を進められない'; END IF;

    -- L6: 確定した期間の換算は、確定後にレートを足しても変わらない(確定日より後の日付でしか足せないため)
    v_before := tests.currency_rate_at(v_cur, DATE '2026-11-05');
    INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_date, rate) VALUES (v_cur, DATE '2026-11-06', 130);
    IF tests.currency_rate_at(v_cur, DATE '2026-11-05') IS DISTINCT FROM v_before THEN RAISE EXCEPTION 'L6 確定した日の換算が変わった'; END IF;
    IF tests.currency_rate_at(v_cur, DATE '2026-11-06') <> 130 THEN RAISE EXCEPTION 'L6 確定日より後のレートが使われない'; END IF;

    RAISE NOTICE 'L1〜L6 OK';
END $$;

ROLLBACK;
