-- 20261126_0002 海外取引(通貨・為替)の SQL テスト(C1〜C9)
-- 実行: 06 → 07_dummy → 09 で作った DB に、20261126_0002_currency_ddl.sql を当てたあと(06 に取り込んだあとは DDL は不要)。
-- 1 つのトランザクションで行い、最後に ROLLBACK する(DB は変わらない)。失敗すると RAISE EXCEPTION で止まる。
--   psql -v ON_ERROR_STOP=1 -d postgres -f 20261126_0002_currency_test.sql
-- C1 列の追加(通貨は NOT NULL・検収日は 1〜31 か NULL)
-- C2 通貨マスタ: 履歴・有効なコードの一意・小数の桁数の範囲
-- C3 レートの引き当て: 基準通貨は 1・その月以前で最新・仮・追記(あとの行が有効)・取り消し
-- C4 検収日を考慮した換算の月
-- C5 基準通貨への換算(丸め・レートが無いと NULL)
-- C6 基準通貨の変更の保護(レートがあれば CUR01)
-- C7 利害関係者の履歴に通貨・検収日が残る
-- C8 v_currency_rate_latest
-- C9 為替レートの CHECK(月の初日・正の値)
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
    v_jpy uuid; v_usd uuid; v_base uuid; v_n int; v_r numeric; v_d date;
    v_stk uuid; v_rev1 int; v_rev2 int; v_cur_h uuid; v_day_h smallint;
BEGIN
    -- C1
    SELECT count(*) INTO v_n FROM information_schema.columns
     WHERE table_schema = 'tests' AND column_name = 'mstr_currency_id' AND is_nullable = 'NO'
       AND table_name IN ('mstr_stakeholder', 'history_mstr_stakeholder', 'info_app', 'history_info_app');
    IF v_n <> 4 THEN RAISE EXCEPTION 'C1 通貨の列が NOT NULL でない (%)', v_n; END IF;
    BEGIN
        UPDATE tests.mstr_stakeholder SET acceptance_day = 32 WHERE mstr_stakeholder_id = (SELECT mstr_stakeholder_id FROM tests.mstr_stakeholder LIMIT 1);
        RAISE EXCEPTION 'C1 検収日 32 が通った';
    EXCEPTION WHEN check_violation THEN NULL; END;

    -- 基準通貨(info_app の通貨)を、日本円(JPY)として扱う
    SELECT mstr_currency_id INTO v_base FROM tests.info_app WHERE remove IS FALSE ORDER BY update_at LIMIT 1;
    IF v_base IS NULL THEN RAISE EXCEPTION 'C1 info_app が無い'; END IF;
    v_jpy := v_base;

    -- C2: 通貨マスタ(USD)・履歴・コードの一意・桁数の範囲
    INSERT INTO tests.mstr_currency (code, names, currency_symbol, minor_unit, rate_auto)
    VALUES ('USD', pg_temp.nm2('米ドル'), '$', 2, true) RETURNING mstr_currency_id INTO v_usd;
    SELECT count(*) INTO v_n FROM tests.history_mstr_currency WHERE mstr_currency_id = v_usd;
    IF v_n <> 1 THEN RAISE EXCEPTION 'C2 履歴が 1 件でない (%)', v_n; END IF;
    UPDATE tests.mstr_currency SET currency_symbol = 'US$' WHERE mstr_currency_id = v_usd;
    SELECT count(*) INTO v_n FROM tests.history_mstr_currency WHERE mstr_currency_id = v_usd;
    IF v_n <> 2 THEN RAISE EXCEPTION 'C2 更新の履歴が増えない (%)', v_n; END IF;
    BEGIN
        INSERT INTO tests.mstr_currency (code, names, currency_symbol, minor_unit) VALUES ('USD', pg_temp.nm2('重複'), '$', 2);
        RAISE EXCEPTION 'C2 有効な通貨コードの重複が通った';
    EXCEPTION WHEN unique_violation THEN NULL; END;
    BEGIN
        INSERT INTO tests.mstr_currency (code, names, currency_symbol, minor_unit) VALUES ('XXX', pg_temp.nm2('桁'), 'x', 5);
        RAISE EXCEPTION 'C2 桁数 5 が通った';
    EXCEPTION WHEN check_violation THEN NULL; END;
    -- 削除済みの通貨のコードは再利用できる
    UPDATE tests.mstr_currency SET remove = true WHERE mstr_currency_id = v_usd;
    INSERT INTO tests.mstr_currency (code, names, currency_symbol, minor_unit, rate_auto)
    VALUES ('USD', pg_temp.nm2('米ドル(新)'), '$', 2, true) RETURNING mstr_currency_id INTO v_usd;

    -- C3: レート
    IF tests.currency_rate_at(v_jpy, DATE '2026-11-15') <> 1 THEN RAISE EXCEPTION 'C3 基準通貨が 1 でない'; END IF;
    IF tests.currency_rate_provisional(v_jpy, DATE '2026-11-15') THEN RAISE EXCEPTION 'C3 基準通貨が仮'; END IF;
    IF tests.currency_rate_at(v_usd, DATE '2026-11-15') IS NOT NULL THEN RAISE EXCEPTION 'C3 レートが無いのに値がある'; END IF;
    INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_month, rate, auto_fetched, source) VALUES
        (v_usd, DATE '2026-09-01', 150.0, false, NULL),
        (v_usd, DATE '2026-11-01', 155.5, true, 'test');
    v_r := tests.currency_rate_at(v_usd, DATE '2026-10-15');
    IF v_r <> 150.0 THEN RAISE EXCEPTION 'C3 10 月は 9 月のレート (%)', v_r; END IF;
    IF NOT tests.currency_rate_provisional(v_usd, DATE '2026-10-15') THEN RAISE EXCEPTION 'C3 10 月は仮のはず'; END IF;
    IF tests.currency_rate_at(v_usd, DATE '2026-11-30') <> 155.5 THEN RAISE EXCEPTION 'C3 11 月のレート'; END IF;
    IF tests.currency_rate_provisional(v_usd, DATE '2026-11-30') THEN RAISE EXCEPTION 'C3 11 月は仮でない'; END IF;
    IF tests.currency_rate_at(v_usd, DATE '2027-02-01') <> 155.5 THEN RAISE EXCEPTION 'C3 未来の月は最新'; END IF;
    IF NOT tests.currency_rate_provisional(v_usd, DATE '2027-02-01') THEN RAISE EXCEPTION 'C3 未来の月は仮'; END IF;
    IF tests.currency_rate_at(v_usd, DATE '2026-08-31') IS NOT NULL THEN RAISE EXCEPTION 'C3 最初の月より前は NULL'; END IF;
    -- 追記: 同じ月のあとの行が有効(同じトランザクションでは now() が同じなので、更新日時を入れるトリガーを止めて、日時を指定する)
    SET CONSTRAINTS ALL IMMEDIATE;
    ALTER TABLE tests.trans_exchange_rate DISABLE TRIGGER trg_01_updatetimes_trans_exchange_rate;
    INSERT INTO tests.trans_exchange_rate (trans_exchange_rate_id, mstr_currency_id, rate_month, rate, update_at)
    VALUES (gen_random_uuid(), v_usd, DATE '2026-11-01', 156.0, now() + interval '1 hour');
    ALTER TABLE tests.trans_exchange_rate ENABLE TRIGGER trg_01_updatetimes_trans_exchange_rate;
    IF tests.currency_rate_at(v_usd, DATE '2026-11-30') <> 156.0 THEN RAISE EXCEPTION 'C3 追記のあとの行が有効でない'; END IF;
    -- 取り消し(remove)した行は無視する
    UPDATE tests.trans_exchange_rate SET remove = true WHERE mstr_currency_id = v_usd AND rate = 156.0;
    IF tests.currency_rate_at(v_usd, DATE '2026-11-30') <> 155.5 THEN RAISE EXCEPTION 'C3 取り消しが効かない'; END IF;

    -- C4: 検収日の月
    IF tests.acceptance_month(25::smallint, DATE '2026-11-25') <> DATE '2026-11-01' THEN RAISE EXCEPTION 'C4 検収日当日は当月'; END IF;
    IF tests.acceptance_month(25::smallint, DATE '2026-11-26') <> DATE '2026-12-01' THEN RAISE EXCEPTION 'C4 検収日の翌日は翌月'; END IF;
    IF tests.acceptance_month(25::smallint, DATE '2026-12-31') <> DATE '2027-01-01' THEN RAISE EXCEPTION 'C4 年またぎ'; END IF;
    IF tests.acceptance_month(NULL, DATE '2026-11-30') <> DATE '2026-11-01' THEN RAISE EXCEPTION 'C4 NULL は月末(当月)'; END IF;
    IF tests.acceptance_month(31::smallint, DATE '2027-02-28') <> DATE '2027-02-01' THEN RAISE EXCEPTION 'C4 31 日は 2 月末まで当月'; END IF;
    IF tests.acceptance_month(30::smallint, DATE '2028-02-29') <> DATE '2028-02-01' THEN RAISE EXCEPTION 'C4 うるう年'; END IF;
    IF tests.acceptance_month(1::smallint, DATE '2026-11-02') <> DATE '2026-12-01' THEN RAISE EXCEPTION 'C4 1 日検収'; END IF;

    -- C5: 換算
    IF tests.currency_to_base(100.5, v_usd, DATE '2026-11-10') <> ROUND(100.5 * 155.5, (SELECT minor_unit FROM tests.mstr_currency WHERE mstr_currency_id = v_jpy)) THEN
        RAISE EXCEPTION 'C5 換算 (%)', tests.currency_to_base(100.5, v_usd, DATE '2026-11-10');
    END IF;
    IF tests.currency_to_base(1, v_usd, DATE '2026-01-10') IS NOT NULL THEN RAISE EXCEPTION 'C5 レートが無ければ NULL'; END IF;
    IF tests.currency_to_base(7.25, v_jpy, DATE '2026-11-10') <> ROUND(7.25, (SELECT minor_unit FROM tests.mstr_currency WHERE mstr_currency_id = v_jpy)) THEN
        RAISE EXCEPTION 'C5 基準通貨は丸めだけ';
    END IF;

    -- C7: 利害関係者の履歴
    SELECT mstr_stakeholder_id INTO v_stk FROM tests.mstr_stakeholder WHERE remove IS FALSE LIMIT 1;
    SELECT max(revision) INTO v_rev1 FROM tests.history_mstr_stakeholder WHERE mstr_stakeholder_id = v_stk;
    UPDATE tests.mstr_stakeholder SET mstr_currency_id = v_usd, acceptance_day = 20 WHERE mstr_stakeholder_id = v_stk;
    SELECT max(revision) INTO v_rev2 FROM tests.history_mstr_stakeholder WHERE mstr_stakeholder_id = v_stk;
    IF v_rev2 <> v_rev1 + 1 THEN RAISE EXCEPTION 'C7 通貨の変更が履歴に残らない (% -> %)', v_rev1, v_rev2; END IF;
    SELECT mstr_currency_id, acceptance_day INTO v_cur_h, v_day_h FROM tests.history_mstr_stakeholder
     WHERE mstr_stakeholder_id = v_stk AND revision = v_rev2;
    IF v_cur_h <> v_usd OR v_day_h <> 20 THEN RAISE EXCEPTION 'C7 履歴の値が違う'; END IF;
    UPDATE tests.mstr_stakeholder SET acceptance_day = 20 WHERE mstr_stakeholder_id = v_stk; -- 同じ値は履歴を増やさない
    SELECT max(revision) INTO v_rev1 FROM tests.history_mstr_stakeholder WHERE mstr_stakeholder_id = v_stk;
    IF v_rev1 <> v_rev2 THEN RAISE EXCEPTION 'C7 同じ値で履歴が増えた'; END IF;

    -- C8: ビュー
    SELECT rate, rate_month INTO v_r, v_d FROM tests.v_currency_rate_latest WHERE mstr_currency_id = v_usd;
    IF v_r <> 155.5 OR v_d <> DATE '2026-11-01' THEN RAISE EXCEPTION 'C8 最新のレート (% %)', v_r, v_d; END IF;
    SELECT rate INTO v_r FROM tests.v_currency_rate_latest WHERE mstr_currency_id = v_jpy;
    IF v_r <> 1 THEN RAISE EXCEPTION 'C8 基準通貨のレートは 1'; END IF;
    IF (SELECT count(*) FROM tests.v_currency_rate_latest WHERE mstr_currency_id = v_usd) <> 1 THEN RAISE EXCEPTION 'C8 1 通貨 1 行でない'; END IF;

    -- C9: CHECK
    BEGIN
        INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_month, rate) VALUES (v_usd, DATE '2026-12-15', 150);
        RAISE EXCEPTION 'C9 月の初日でない日付が通った';
    EXCEPTION WHEN check_violation THEN NULL; END;
    BEGIN
        INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_month, rate) VALUES (v_usd, DATE '2026-12-01', 0);
        RAISE EXCEPTION 'C9 レート 0 が通った';
    EXCEPTION WHEN check_violation THEN NULL; END;

    -- C6: 基準通貨の変更の保護(レートがある)
    BEGIN
        UPDATE tests.info_app SET mstr_currency_id = v_usd WHERE remove IS FALSE;
        RAISE EXCEPTION 'C6 レートがあるのに基準通貨を変えられた';
    EXCEPTION WHEN SQLSTATE 'CUR01' THEN NULL; END;
    -- レートが無ければ変えられる
    UPDATE tests.trans_exchange_rate SET remove = true;
    UPDATE tests.info_app SET mstr_currency_id = v_usd WHERE remove IS FALSE;
    IF tests.currency_rate_at(v_usd, DATE '2026-11-10') <> 1 THEN RAISE EXCEPTION 'C6 変更後の基準通貨は 1'; END IF;

    RAISE NOTICE 'C1〜C9 OK';
END $$;

ROLLBACK;
