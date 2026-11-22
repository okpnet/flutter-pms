-- 20261122_0001 監査の実施記録(trans_audit_details・trans_audit_detail_check_items・trans_audit_complaint)の検査 A1〜A10
-- 実行: node runtest.js <.env> NONE 20261122_0001_audit_details_ddl.sql 20261122_0001_audit_details.sql
--   DDL(06_cteate_test.sql の追加分)がまだ DB に無いときは、先に DDL(06 の差分)を同じトランザクションで流す。DB に適用済みなら、このファイルだけでよい。
--   1 トランザクションで流し、最後に ROLLBACK するので、データは変わらない。
-- 前提: 検証用 DB。担当者 ADMIN・言語 ja・異常 1 件以上。監査標準・監査は、このファイルが作る(ダミーに無い)。
-- 失敗したら例外で止まる。成功は NOTICE に出す。

CREATE TEMP TABLE a_ctx (k text PRIMARY KEY, v uuid);

-- 担当者・言語(07 のダミー)
DO $$
DECLARE
    st uuid; sh uuid; lang uuid;
    std_a uuid; std_b uuid; item_a1 uuid; item_a2 uuid; item_b1 uuid;
    a1 uuid; t1 uuid; t2 uuid; audit uuid; team uuid; team_other uuid; audit2 uuid;
BEGIN
    SELECT info_staff_id INTO st FROM tests.info_staff WHERE code = 'ADMIN' LIMIT 1;
    SELECT history_id INTO sh FROM tests.history_info_staff WHERE info_staff_id = st ORDER BY revision DESC LIMIT 1;
    PERFORM set_config('jwt.claims.staff_id', st::text, true);

    -- 監査標準 A(項目 2)・B(項目 1)。履歴は、マスタのトリガーが作る
    SELECT shared_appellations_id INTO a1 FROM tests.shared_appellation_save(NULL, '{"ja":"監査標準A"}'::jsonb, NULL, NULL, st, sh);
    INSERT INTO tests.mstr_audit_std (code, names) VALUES ('STD-A', a1) RETURNING mstr_audit_std_id INTO std_a;
    SELECT shared_appellations_id INTO a1 FROM tests.shared_appellation_save(NULL, '{"ja":"監査標準B"}'::jsonb, NULL, NULL, st, sh);
    INSERT INTO tests.mstr_audit_std (code, names) VALUES ('STD-B', a1) RETURNING mstr_audit_std_id INTO std_b;
    SELECT shared_appellations_id INTO a1 FROM tests.shared_appellation_save(NULL, '{"ja":"項目A1"}'::jsonb, NULL, NULL, st, sh);
    INSERT INTO tests.mstr_audit_std_checkitem (mstr_audit_std_id, code, names, type_class, formula_class) VALUES (std_a, 'A1', a1, 1, 1) RETURNING mstr_audit_std_checkitem_id INTO item_a1;
    INSERT INTO tests.mstr_audit_std_checkitem (mstr_audit_std_id, code, names, type_class, formula_class) VALUES (std_a, 'A2', a1, 1, 1) RETURNING mstr_audit_std_checkitem_id INTO item_a2;
    INSERT INTO tests.mstr_audit_std_checkitem (mstr_audit_std_id, code, names, type_class, formula_class) VALUES (std_b, 'B1', a1, 1, 1) RETURNING mstr_audit_std_checkitem_id INTO item_b1;

    -- 監査(計画)・チーム
    SELECT trans_label_id INTO t1 FROM tests.trans_label_save(NULL, '{"ja":"2026 年度 内部監査"}'::jsonb, st, sh);
    SELECT trans_text_id INTO t2 FROM tests.trans_text_save(NULL, '{"ja":"年度計画"}'::jsonb, st, sh);
    INSERT INTO tests.trans_audit (audit_std_history_id, audit_std_id, staff_history_id, staff_id, titles, details)
    SELECT (SELECT history_id FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id = std_a ORDER BY revision DESC LIMIT 1), std_a, sh, st, t1, t2
    RETURNING trans_audit_id INTO audit;
    INSERT INTO tests.trans_audit (audit_std_history_id, audit_std_id, staff_history_id, staff_id, titles, details)
    SELECT (SELECT history_id FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id = std_a ORDER BY revision DESC LIMIT 1), std_a, sh, st, t1, t2
    RETURNING trans_audit_id INTO audit2;
    INSERT INTO tests.trans_audit_team (trans_audit_id, names) VALUES (audit, t1) RETURNING trans_audit_team_id INTO team;
    INSERT INTO tests.trans_audit_team (trans_audit_id, names) VALUES (audit2, t1) RETURNING trans_audit_team_id INTO team_other;

    INSERT INTO a_ctx VALUES ('st', st), ('sh', sh), ('std_a', std_a), ('std_b', std_b), ('item_a1', item_a1), ('item_a2', item_a2), ('item_b1', item_b1),
        ('audit', audit), ('team', team), ('team_other', team_other), ('label', t1), ('text', t2),
        ('cmp', (SELECT trans_complaint_id FROM tests.trans_complaint WHERE remove IS FALSE LIMIT 1));
END $$;

CREATE FUNCTION pg_temp.c(k text) RETURNS uuid AS $$ SELECT v FROM a_ctx WHERE k = $1 $$ LANGUAGE sql;
CREATE FUNCTION pg_temp.h_std(std uuid) RETURNS uuid AS $$ SELECT history_id FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id = std ORDER BY revision DESC LIMIT 1 $$ LANGUAGE sql;
CREATE FUNCTION pg_temp.h_item(i uuid) RETURNS uuid AS $$ SELECT history_id FROM tests.history_mstr_audit_std_checkitem WHERE mstr_audit_std_checkitem_id = i ORDER BY revision DESC LIMIT 1 $$ LANGUAGE sql;
CREATE FUNCTION pg_temp.expect(name text, ok boolean) RETURNS void AS $$
BEGIN IF ok IS NOT TRUE THEN RAISE EXCEPTION '% NG', name; END IF; RAISE NOTICE '% OK', name; END $$ LANGUAGE plpgsql;

-- A1: 監査実施詳細を登録できる(主キー・symbol は DB が採番する)
DO $$
DECLARE d uuid;
BEGIN
    INSERT INTO tests.trans_audit_details (trans_audit_id, audit_std_history_id, audit_std_id, names, trans_audit_team_id, scheduled_at, expected_end_at, performed_date, ended_at, conclusion)
    VALUES (pg_temp.c('audit'), pg_temp.h_std(pg_temp.c('std_a')), pg_temp.c('std_a'), pg_temp.c('label'), pg_temp.c('team'),
            '2026-12-01 09:00', '2026-12-01 17:00', '2026-12-01', '2026-12-01 16:30', pg_temp.c('text'))
    RETURNING trans_audit_details_id INTO d;
    INSERT INTO a_ctx VALUES ('d1', d);
    PERFORM pg_temp.expect('A1 監査実施詳細を登録できる(symbol が採番される)',
        (SELECT symbol <> '' FROM tests.trans_audit_details WHERE trans_audit_details_id = d));
END $$;

-- A2: チームは、その監査のものだけ(別の監査のチームは、複合の外部キーで止まる)
DO $$
BEGIN
    BEGIN
        INSERT INTO tests.trans_audit_details (trans_audit_id, audit_std_history_id, audit_std_id, names, trans_audit_team_id)
        VALUES (pg_temp.c('audit'), pg_temp.h_std(pg_temp.c('std_a')), pg_temp.c('std_a'), pg_temp.c('label'), pg_temp.c('team_other'));
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE EXCEPTION 'A2 NG: 別の監査のチームを指定できてしまった';
    EXCEPTION WHEN foreign_key_violation THEN
        RAISE NOTICE 'A2 OK: 別の監査のチームは指定できない(外部キー)';
    END;
END $$;

-- A3: 終了予定が予定より前、終了日時が実施日より前は、CHECK で止まる
DO $$
BEGIN
    BEGIN
        INSERT INTO tests.trans_audit_details (trans_audit_id, audit_std_history_id, audit_std_id, names, trans_audit_team_id, scheduled_at, expected_end_at)
        VALUES (pg_temp.c('audit'), pg_temp.h_std(pg_temp.c('std_a')), pg_temp.c('std_a'), pg_temp.c('label'), pg_temp.c('team'), '2026-12-02 09:00', '2026-12-01 09:00');
        RAISE EXCEPTION 'A3 NG: 終了予定が予定より前なのに登録できた';
    EXCEPTION WHEN check_violation THEN RAISE NOTICE 'A3a OK: 終了予定が予定より前は登録できない'; END;
    BEGIN
        INSERT INTO tests.trans_audit_details (trans_audit_id, audit_std_history_id, audit_std_id, names, trans_audit_team_id, performed_date, ended_at)
        VALUES (pg_temp.c('audit'), pg_temp.h_std(pg_temp.c('std_a')), pg_temp.c('std_a'), pg_temp.c('label'), pg_temp.c('team'), '2026-12-02', '2026-12-01 10:00');
        RAISE EXCEPTION 'A3 NG: 終了日時が実施日より前なのに登録できた';
    EXCEPTION WHEN check_violation THEN RAISE NOTICE 'A3b OK: 終了日時が実施日より前は登録できない'; END;
END $$;

-- A4: 監査標準(履歴 + ID)は、組で参照する(履歴が別の監査標準のものだと止まる)
DO $$
BEGIN
    BEGIN
        INSERT INTO tests.trans_audit_details (trans_audit_id, audit_std_history_id, audit_std_id, names, trans_audit_team_id)
        VALUES (pg_temp.c('audit'), pg_temp.h_std(pg_temp.c('std_b')), pg_temp.c('std_a'), pg_temp.c('label'), pg_temp.c('team'));
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE EXCEPTION 'A4 NG: 履歴と ID の組が合わないのに登録できた';
    EXCEPTION WHEN foreign_key_violation THEN RAISE NOTICE 'A4 OK: 監査標準の履歴と ID の組が合わないと登録できない'; END;
END $$;

-- A5: 項目を登録できる(基準 = 監査標準項目、事実 = 式に対する値・所見)
DO $$
DECLARE i uuid;
BEGIN
    INSERT INTO tests.trans_audit_detail_check_items (trans_audit_details_id, audit_std_checkitem_history_id, audit_std_checkitem_id, formula_value, findings)
    VALUES (pg_temp.c('d1'), pg_temp.h_item(pg_temp.c('item_a1')), pg_temp.c('item_a1'), '{"value": 3, "unit": "件"}'::jsonb, pg_temp.c('text'))
    RETURNING trans_audit_detail_check_items_id INTO i;
    INSERT INTO a_ctx VALUES ('i1', i);
    PERFORM pg_temp.expect('A5 監査実施詳細項目を登録できる(JSON の値・所見つき)',
        (SELECT formula_value->>'value' = '3' AND symbol <> '' FROM tests.trans_audit_detail_check_items WHERE trans_audit_detail_check_items_id = i));
END $$;

-- A6: 別の監査標準の項目は登録できない(AUD01)
DO $$
BEGIN
    BEGIN
        INSERT INTO tests.trans_audit_detail_check_items (trans_audit_details_id, audit_std_checkitem_history_id, audit_std_checkitem_id)
        VALUES (pg_temp.c('d1'), pg_temp.h_item(pg_temp.c('item_b1')), pg_temp.c('item_b1'));
        RAISE EXCEPTION 'A6 NG: 別の監査標準の項目を登録できてしまった';
    EXCEPTION WHEN SQLSTATE 'AUD01' THEN RAISE NOTICE 'A6 OK: 別の監査標準の項目は登録できない(AUD01)'; END;
END $$;

-- A7: 同じ監査実施詳細に同じ項目は 1 件(削除済みなら再登録できる)
DO $$
BEGIN
    BEGIN
        INSERT INTO tests.trans_audit_detail_check_items (trans_audit_details_id, audit_std_checkitem_history_id, audit_std_checkitem_id)
        VALUES (pg_temp.c('d1'), pg_temp.h_item(pg_temp.c('item_a1')), pg_temp.c('item_a1'));
        RAISE EXCEPTION 'A7 NG: 同じ項目を重ねて登録できてしまった';
    EXCEPTION WHEN unique_violation THEN RAISE NOTICE 'A7a OK: 同じ項目は重ねて登録できない'; END;
    UPDATE tests.trans_audit_detail_check_items SET remove = true WHERE trans_audit_detail_check_items_id = pg_temp.c('i1');
    INSERT INTO tests.trans_audit_detail_check_items (trans_audit_details_id, audit_std_checkitem_history_id, audit_std_checkitem_id)
    VALUES (pg_temp.c('d1'), pg_temp.h_item(pg_temp.c('item_a1')), pg_temp.c('item_a1'));
    RAISE NOTICE 'A7b OK: 削除済みの項目は再登録できる';
END $$;

-- A8: 異常とつなぐ(事実が不適合のとき)。同じ組は 1 件
DO $$
DECLARE c uuid; i2 uuid;
BEGIN
    IF pg_temp.c('cmp') IS NULL THEN RAISE NOTICE 'A8 中止: 異常が無い'; RETURN; END IF;
    SELECT trans_audit_detail_check_items_id INTO i2 FROM tests.trans_audit_detail_check_items WHERE trans_audit_details_id = pg_temp.c('d1') AND remove IS FALSE;
    INSERT INTO tests.trans_audit_complaint (trans_complaint_id, trans_audit_detail_check_items_id) VALUES (pg_temp.c('cmp'), i2) RETURNING trans_audit_complaint_id INTO c;
    PERFORM pg_temp.expect('A8a 異常と監査実施詳細項目をつなげる', (SELECT symbol <> '' FROM tests.trans_audit_complaint WHERE trans_audit_complaint_id = c));
    BEGIN
        INSERT INTO tests.trans_audit_complaint (trans_complaint_id, trans_audit_detail_check_items_id) VALUES (pg_temp.c('cmp'), i2);
        RAISE EXCEPTION 'A8 NG: 同じ組を重ねて登録できてしまった';
    EXCEPTION WHEN unique_violation THEN RAISE NOTICE 'A8b OK: 同じ異常と項目の組は 1 件'; END;
    -- 1 つの異常を、複数の項目につなげられる / 1 つの項目に複数の異常をつなげられる(別の組)は、組の一意だけが制約
END $$;

-- A9: 存在しない参照は、外部キーで止まる
DO $$
BEGIN
    BEGIN
        INSERT INTO tests.trans_audit_complaint (trans_complaint_id, trans_audit_detail_check_items_id) VALUES (gen_random_uuid(), gen_random_uuid());
        SET CONSTRAINTS ALL IMMEDIATE;
        RAISE EXCEPTION 'A9 NG: 存在しない参照を登録できてしまった';
    EXCEPTION WHEN foreign_key_violation THEN RAISE NOTICE 'A9 OK: 存在しない異常・項目は参照できない'; END;
END $$;

-- A10: 一般ユーザー(pms_user)の権限(09 の ALL TABLES への付与。DDL をこのトランザクションで当てたときは、付与前のため、結果を出すだけ)
DO $$
BEGIN
    RAISE NOTICE 'A10 pms_user の権限: 詳細 %, 項目 %, 異常 %',
        has_table_privilege('pms_user', 'tests.trans_audit_details', 'INSERT,UPDATE'),
        has_table_privilege('pms_user', 'tests.trans_audit_detail_check_items', 'INSERT,UPDATE'),
        has_table_privilege('pms_user', 'tests.trans_audit_complaint', 'INSERT,UPDATE');
END $$;
