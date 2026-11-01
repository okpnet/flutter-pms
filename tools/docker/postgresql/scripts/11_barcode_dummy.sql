-- =====================================================================
-- 11_barcode_dummy.sql
-- バーコード実績登録(barcode_entry)の通信テスト・実機確認用のダミーデータ
--   A. 設備点検  : 設備 LS01 / PB01 に点検項目・点検予定・点検予定の明細(実施済み1件・未実施2件)
--   B. 作業指示  : 筐体 CS-110 の作業指示(レーザー切断 → 曲げ)。symbol 付き
--   C. 異常      : 保留(release = false)の棚ビジターと、解除されていない異常入出庫ビジター
--
-- ■ 実行順   06_cteate_test.sql → 08_mrp.sql → 10_mrp_dummy.sql → 本ファイル
--   ・10_mrp_dummy.sql が作った品目・設備・工程・棚(RACK-A01)を使う。無ければ中止する
--   ・日付は実行日(current_date)からの相対値
--   ・点検の式(mstr_inspection_formula)の arg_class は仮の形式({"operator":"<=","value":n})。
--     画面で式を定義する案(=,<>,>,<,>=,<=,IN,NOT IN)が確定したら合わせる
--   ・空のDBに1回だけ流す想定
-- =====================================================================

\c test_avocado

CREATE OR REPLACE FUNCTION pg_temp.nm(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, v.val
    FROM (VALUES ('ja', p_ja), ('en', p_en)) AS v(code, val)
    INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE
    WHERE v.val IS NOT NULL;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION pg_temp.hist(p_table text, p_id uuid) RETURNS uuid AS $$
DECLARE v uuid;
BEGIN
    EXECUTE format('SELECT history_id FROM tests.%I WHERE %I = $1 ORDER BY revision DESC LIMIT 1',
                   'history_' || p_table, p_table || '_id') USING p_id INTO v;
    RETURN v;
END $$ LANGUAGE plpgsql;

-- 呼称(trans_label)。trans_complaint / trans_inspect_sch の表題で使う
CREATE OR REPLACE FUNCTION pg_temp.lb(p_ja varchar) RETURNS uuid AS $$
DECLARE l uuid;
BEGIN
    INSERT INTO tests.trans_label DEFAULT VALUES RETURNING trans_label_id INTO l;
    INSERT INTO tests.trans_label_value (trans_label_id, shared_language_code_id, label_value)
    SELECT l, c.shared_language_code_id, p_ja FROM tests.shared_language_code AS c
    WHERE c.code = 'ja' AND c.remove IS FALSE;
    RETURN l;
END $$ LANGUAGE plpgsql;

-- 詳細テキスト(trans_text)
CREATE OR REPLACE FUNCTION pg_temp.tx(p_ja varchar) RETURNS uuid AS $$
DECLARE t uuid;
BEGIN
    INSERT INTO tests.trans_text DEFAULT VALUES RETURNING trans_text_id INTO t;
    INSERT INTO tests.trans_text_value (trans_text_id, shared_language_code_id, char_count, lead_text, text_value)
    SELECT t, c.shared_language_code_id, char_length(p_ja), p_ja, p_ja FROM tests.shared_language_code AS c
    WHERE c.code = 'ja' AND c.remove IS FALSE;
    RETURN t;
END $$ LANGUAGE plpgsql;

BEGIN;

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM tests.mstr_item WHERE code = 'CS-110') THEN
        RAISE EXCEPTION '10_mrp_dummy.sql を先に実行してください';
    END IF;
END $$;

-- ---------------------------------------------------------------------
-- A. 設備点検
-- ---------------------------------------------------------------------
DO $$
DECLARE
    kd uuid; fm uuid; ins uuid; op uuid; tk uuid; sch uuid; eq record; q uuid;
BEGIN
    INSERT INTO tests.mstr_inspection_kind (code, names) VALUES ('DAILY', pg_temp.nm('日常点検', 'Daily'))
    RETURNING mstr_inspection_kind_id INTO kd;
    INSERT INTO tests.mstr_inspection_formula (formula_class, arg_class, type_class, format_class)
    VALUES (1, '{"operator":"<=","value":0.5}'::jsonb, 1, '0.00') RETURNING mstr_inspection_formula_id INTO fm;

    FOR eq IN SELECT e.mstr_equipment_id, e.mstr_item_id, e.code FROM tests.mstr_equipment AS e
              WHERE e.code IN ('LS01', 'PB01') AND e.remove IS FALSE LOOP
        INSERT INTO tests.mstr_inspection (code, names, inspection_kind, base_date, time_interval,
                                           inspection_formula_id, mstr_item_id)
        VALUES ('INS-' || eq.code, pg_temp.nm(eq.code || ' 振動測定', 'Vibration'), kd,
                current_date - 30, interval '7 days', fm, eq.mstr_item_id)
        RETURNING mstr_inspection_id INTO ins;
        INSERT INTO tests.mstr_inspection_operation (names, code, mstr_equipment_id)
        VALUES (pg_temp.nm(eq.code || ' 点検'), 'IOP-' || eq.code, eq.mstr_equipment_id)
        RETURNING mstr_inspection_operation_id INTO op;
        INSERT INTO tests.mstr_inspection_operation_task (mstr_inspection_operation_id, mstr_inspection_id, sequence,
                                                         commencement_date, time_interval)
        VALUES (op, ins, 1, current_date - 30, interval '7 days')
        RETURNING mstr_inspection_operation_task_id INTO tk;

        INSERT INTO tests.trans_inspect_sch (code, titles, equipment_history_id, equipment_id,
                                             inspection_operation_history_id, inspection_operation_id)
        VALUES ('SCH-' || eq.code, pg_temp.lb(eq.code || ' 週次点検'),
                pg_temp.hist('mstr_equipment', eq.mstr_equipment_id), eq.mstr_equipment_id,
                pg_temp.hist('mstr_inspection_operation', op), op)
        RETURNING trans_inspect_sch_id INTO sch;

        -- 14日前(実施済み)・7日前(未実施。取り込み対象)・7日後(未来。対象外)
        INSERT INTO tests.trans_inspect_sch_detail (trans_inspect_sch_id, scheduled_start_date, scheduled_end_date,
            inspection_history_id, inspection_id, inspection_formula_history_id, inspection_formula_id,
            inspection_kind_history_id, inspection_kind_id,
            inspection_operation_task_history_id, inspection_operation_task_id)
        SELECT sch, current_date + d, current_date + d + 1,
               pg_temp.hist('mstr_inspection', ins), ins,
               pg_temp.hist('mstr_inspection_formula', fm), fm,
               pg_temp.hist('mstr_inspection_kind', kd), kd,
               pg_temp.hist('mstr_inspection_operation_task', tk), tk
        FROM (VALUES (-14), (-7), (7)) AS t(d);

        -- 14日前の明細には点検結果を付ける
        SELECT d.trans_inspect_sch_detail_id INTO q FROM tests.trans_inspect_sch_detail AS d
        WHERE d.trans_inspect_sch_id = sch ORDER BY d.scheduled_start_date LIMIT 1;
        INSERT INTO tests.trans_inspect_record (trans_inspect_sch_detail_id, implement_start_date, implement_stop_date,
                                                result_value, result, result_state)
        VALUES (q, current_date - 14, current_date - 14, '{"value":0.3}'::jsonb, TRUE, 'ok');
    END LOOP;
END $$;

-- ---------------------------------------------------------------------
-- B. 作業指示(筐体 CS-110 を5個。レーザー切断 → 曲げ)
-- ---------------------------------------------------------------------
DO $$
DECLARE it uuid; rp uuid; op uuid; t record;
BEGIN
    SELECT mstr_item_id INTO it FROM tests.mstr_item WHERE code = 'CS-110';
    INSERT INTO tests.trans_resource_plan (quantity, deadline, item_history_id, item_id)
    VALUES (5, current_date + 14, pg_temp.hist('mstr_item', it), it) RETURNING trans_resource_plan_id INTO rp;
    INSERT INTO tests.trans_operations_plan (trans_resource_plan_id, deadline, quantity)
    VALUES (rp, current_date + 14, 5) RETURNING trans_operations_plan_id INTO op;
    FOR t IN SELECT * FROM (VALUES ('LASER', 1), ('BEND', 2)) AS x(k, seq) LOOP
        INSERT INTO tests.trans_work_plan (trans_operations_plan_id, mstr_task_id, sequence, start_at, completion_at)
        SELECT op, m.mstr_task_id, t.seq, current_date + t.seq, current_date + t.seq + 1
        FROM tests.mstr_task AS m WHERE m.remove IS FALSE
          AND upper(m.code) LIKE '%' || t.k || '%' ORDER BY m.code LIMIT 1;
    END LOOP;
END $$;

-- ---------------------------------------------------------------------
-- C. 異常(保留の棚ビジター + 解除されていない異常)
--    ・棚ビジター 鋼板(SPCC)を1件 release = false にし、異常を登録して中間テーブルに結び付ける
--    ・保留中だが異常が無い棚ビジター(マスタ点検の対象)を1件作る
-- ---------------------------------------------------------------------
DO $$
DECLARE ct uuid; v1 uuid; v2 uuid; cp uuid; st uuid; sth uuid;
BEGIN
    SELECT trans_container_id INTO ct FROM tests.trans_container WHERE code = 'RACK-A01';
    SELECT info_staff_id INTO st FROM tests.info_staff WHERE code = 'ADMIN';
    sth := pg_temp.hist('info_staff', st);

    INSERT INTO tests.trans_visiter (trans_container_id, release, quantity)
    VALUES (ct, FALSE, 5) RETURNING trans_visiter_id INTO v1;
    INSERT INTO tests.trans_visiter (trans_container_id, release, quantity)
    VALUES (ct, FALSE, 3) RETURNING trans_visiter_id INTO v2;      -- 異常の登録が無い保留

    INSERT INTO tests.trans_complaint (occurent_at, titles, details, reporter_staff_history_id, reporter_staff_id)
    VALUES (now(), pg_temp.lb('異常報告'),
            pg_temp.tx('錆の発生'),
            sth, st)
    RETURNING trans_complaint_id INTO cp;
    INSERT INTO tests.trans_complaint_visiter (trans_complaint_id, trans_visiter_id, quantity)
    VALUES (cp, v1, 5);
END $$;

COMMIT;

SELECT '点検予定の明細' AS item, COUNT(*)::text AS value FROM tests.trans_inspect_sch_detail
UNION ALL SELECT '点検結果', COUNT(*)::text FROM tests.trans_inspect_record
UNION ALL SELECT '作業指示', COUNT(*)::text FROM tests.trans_work_plan
UNION ALL SELECT '異常入出庫ビジター', COUNT(*)::text FROM tests.trans_complaint_visiter
UNION ALL SELECT '保留の棚ビジター', COUNT(*)::text FROM tests.trans_visiter WHERE release IS FALSE;
