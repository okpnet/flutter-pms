-- 20261122_0002 監査の実施のビュー・関数の検査 B1〜B8
-- 実行: node runtest.js <.env> NONE 20261122_0002_audit_functions_ddl.sql 20261122_0002_audit_functions.sql
--   DDL(ビュー・関数)が DB に適用済みなら、このファイルだけでよい。1 トランザクションで流し、最後に ROLLBACK するのでデータは変わらない。
-- 前提: 検証用 DB。担当者 ADMIN・TANAKA(一般ユーザーの担当者)。監査標準・監査・チーム・監査員は、このファイルが作る。
-- 失敗したら例外で止まる。成功は NOTICE に出す。

CREATE TEMP TABLE b_ctx (k text PRIMARY KEY, v uuid);
GRANT ALL ON b_ctx TO PUBLIC;

-- 一般ユーザー(pms_user)の権限(09 の付与と同じ。DDL をこのトランザクションで当てたときのため)
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA tests TO pms_user;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA tests TO pms_user;

DO $$
DECLARE
    adm uuid; adm_h uuid; me uuid; me_h uuid; other uuid;
    a1 uuid; std uuid; i1 uuid; i2 uuid; t1 uuid; t2 uuid; audit uuid; team uuid; team2 uuid; d1 uuid; d2 uuid; d3 uuid;
BEGIN
    SELECT info_staff_id INTO adm FROM tests.info_staff WHERE code = 'ADMIN' LIMIT 1;
    SELECT history_id INTO adm_h FROM tests.history_info_staff WHERE info_staff_id = adm ORDER BY revision DESC LIMIT 1;
    SELECT info_staff_id INTO me FROM tests.info_staff WHERE code = 'TANAKA' LIMIT 1;
    SELECT history_id INTO me_h FROM tests.history_info_staff WHERE info_staff_id = me ORDER BY revision DESC LIMIT 1;
    SELECT info_staff_id INTO other FROM tests.info_staff WHERE info_staff_id NOT IN (adm, me) AND remove IS FALSE LIMIT 1;
    PERFORM set_config('jwt.claims.staff_id', adm::text, true);

    SELECT shared_appellations_id INTO a1 FROM tests.shared_appellation_save(NULL, '{"ja":"監査標準"}'::jsonb, NULL, NULL, adm, adm_h);
    INSERT INTO tests.mstr_audit_std (code, names) VALUES ('B-STD', a1) RETURNING mstr_audit_std_id INTO std;
    INSERT INTO tests.mstr_audit_std_checkitem (mstr_audit_std_id, code, names, type_class, formula_class) VALUES (std, 'B1', a1, 1, 1) RETURNING mstr_audit_std_checkitem_id INTO i1;
    INSERT INTO tests.mstr_audit_std_checkitem (mstr_audit_std_id, code, names, type_class, formula_class) VALUES (std, 'B2', a1, 1, 1) RETURNING mstr_audit_std_checkitem_id INTO i2;
    SELECT trans_label_id INTO t1 FROM tests.trans_label_save(NULL, '{"ja":"B 監査"}'::jsonb, adm, adm_h);
    SELECT trans_text_id INTO t2 FROM tests.trans_text_save(NULL, '{"ja":"計画"}'::jsonb, adm, adm_h);
    INSERT INTO tests.trans_audit (audit_std_history_id, audit_std_id, staff_history_id, staff_id, titles, details)
    VALUES ((SELECT history_id FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id = std ORDER BY revision DESC LIMIT 1), std, adm_h, adm, t1, t2)
    RETURNING trans_audit_id INTO audit;
    -- チーム 1(TANAKA が監査員)・チーム 2(別の人だけ)
    INSERT INTO tests.trans_audit_team (trans_audit_id, names) VALUES (audit, t1) RETURNING trans_audit_team_id INTO team;
    INSERT INTO tests.trans_audit_team (trans_audit_id, names) VALUES (audit, t1) RETURNING trans_audit_team_id INTO team2;
    INSERT INTO tests.trans_auditor (trans_audit_team_id, audit_std_history_id, audit_std_id, staff_history_id, staff_id)
    VALUES (team, (SELECT history_id FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id = std ORDER BY revision DESC LIMIT 1), std, me_h, me);
    INSERT INTO tests.trans_auditor (trans_audit_team_id, audit_std_history_id, audit_std_id, staff_history_id, staff_id)
    VALUES (team2, (SELECT history_id FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id = std ORDER BY revision DESC LIMIT 1), std, adm_h, adm);
    -- 監査実施詳細: d1(TANAKA のチーム。予定は 1 日後)・d2(TANAKA のチーム。予定は過ぎた)・d3(別のチーム。予定は 1 日後)
    INSERT INTO tests.trans_audit_details (trans_audit_id, audit_std_history_id, audit_std_id, names, trans_audit_team_id, scheduled_at, expected_end_at)
    SELECT audit, (SELECT history_id FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id = std ORDER BY revision DESC LIMIT 1), std, t1, team, now() + interval '1 day', now() + interval '2 day'
    RETURNING trans_audit_details_id INTO d1;
    INSERT INTO tests.trans_audit_details (trans_audit_id, audit_std_history_id, audit_std_id, names, trans_audit_team_id, scheduled_at)
    SELECT audit, (SELECT history_id FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id = std ORDER BY revision DESC LIMIT 1), std, t1, team, now() - interval '3 day'
    RETURNING trans_audit_details_id INTO d2;
    INSERT INTO tests.trans_audit_details (trans_audit_id, audit_std_history_id, audit_std_id, names, trans_audit_team_id, scheduled_at)
    SELECT audit, (SELECT history_id FROM tests.history_mstr_audit_std WHERE mstr_audit_std_id = std ORDER BY revision DESC LIMIT 1), std, t1, team2, now() + interval '1 day'
    RETURNING trans_audit_details_id INTO d3;
    INSERT INTO b_ctx VALUES ('adm', adm), ('me', me), ('other', other), ('d1', d1), ('d2', d2), ('d3', d3), ('i1', i1), ('i2', i2);
END $$;

CREATE FUNCTION pg_temp.c(k text) RETURNS uuid AS $$ SELECT v FROM b_ctx WHERE k = $1 $$ LANGUAGE sql;
GRANT EXECUTE ON FUNCTION pg_temp.c(text) TO PUBLIC;
CREATE FUNCTION pg_temp.expect(name text, ok boolean) RETURNS void AS $$
BEGIN IF ok IS NOT TRUE THEN RAISE EXCEPTION '% NG', name; END IF; RAISE NOTICE '% OK', name; END $$ LANGUAGE plpgsql;
GRANT EXECUTE ON FUNCTION pg_temp.expect(text, boolean) TO PUBLIC;

-- 以降は一般ユーザー(pms_user)として、TANAKA の資格で実行する
SET LOCAL ROLE pms_user;
SELECT set_config('jwt.claims.staff_id', (SELECT v::text FROM b_ctx WHERE k = 'me'), true);

-- B1: v_audit_assignment は、自分のチームの監査実施詳細だけを、状態の boolean つきで返す
DO $$
BEGIN
    PERFORM pg_temp.expect('B1a 自分(TANAKA)のチームの 2 件だけが見える(別のチームの d3 は staff_id が別)',
        (SELECT count(*) FROM tests.v_audit_assignment WHERE staff_id = pg_temp.c('me')) = 2
        AND NOT EXISTS (SELECT 1 FROM tests.v_audit_assignment WHERE staff_id = pg_temp.c('me') AND trans_audit_details_id = pg_temp.c('d3')));
    PERFORM pg_temp.expect('B1b 未着手(予定超過・予定)の boolean と状態の文字',
        (SELECT is_planned AND NOT is_in_progress AND NOT is_done AND is_overdue AND status_label_ja = '予定超過' AND status_label_en = 'Overdue'
         FROM tests.v_audit_assignment WHERE staff_id = pg_temp.c('me') AND trans_audit_details_id = pg_temp.c('d2'))
        AND (SELECT is_planned AND NOT is_overdue AND status_label_ja = '予定' FROM tests.v_audit_assignment WHERE staff_id = pg_temp.c('me') AND trans_audit_details_id = pg_temp.c('d1')));
END $$;

-- B2: audit_notice は、自分のチームの、予定日が近い・過ぎたものを返す(予定日から導く。行は作らない)
DO $$
BEGIN
    PERFORM pg_temp.expect('B2a 3 日以内の 2 件(d2 は過ぎた)。別のチームの d3 は含まない',
        (SELECT count(*) FROM tests.audit_notice(3)) = 2 AND NOT EXISTS (SELECT 1 FROM tests.audit_notice(3) WHERE trans_audit_details_id = pg_temp.c('d3')));
    PERFORM pg_temp.expect('B2b 過ぎたものは days_until が負で is_overdue',
        (SELECT days_until < 0 AND is_overdue FROM tests.audit_notice(3) WHERE trans_audit_details_id = pg_temp.c('d2')));
    PERFORM pg_temp.expect('B2c 日数を絞ると、過ぎたものだけ(1 日後の d1 は予定時刻が now + 1 日で範囲外)',
        (SELECT count(*) FROM tests.audit_notice(0)) = 1);
END $$;

-- B3: 開始前は、項目が無く、終了できない(AUD06)。別のチームの監査員(ここでは TANAKA)は d3 を操作できない(AUD03)
DO $$
BEGIN
    BEGIN
        PERFORM tests.audit_detail_finish(pg_temp.c('d1'));
        RAISE EXCEPTION 'B3a NG: 開始前なのに終了できた';
    EXCEPTION WHEN SQLSTATE 'AUD06' THEN RAISE NOTICE 'B3a OK: 実施を開始していないと終了できない(AUD06)'; END;
    BEGIN
        PERFORM tests.audit_detail_start(pg_temp.c('d3'));
        RAISE EXCEPTION 'B3b NG: 別のチームの監査を開始できた';
    EXCEPTION WHEN SQLSTATE 'AUD03' THEN RAISE NOTICE 'B3b OK: チームの監査員でないと開始できない(AUD03)'; END;
    BEGIN
        PERFORM tests.audit_detail_start(gen_random_uuid());
        RAISE EXCEPTION 'B3c NG: 存在しない監査を開始できた';
    EXCEPTION WHEN SQLSTATE 'AUD02' THEN RAISE NOTICE 'B3c OK: 存在しない監査実施詳細(AUD02)'; END;
END $$;

-- B4: 開始 = 実施日が今日になり、監査標準の項目が用意される(冪等)
DO $$
DECLARE d tests.trans_audit_details; n integer;
BEGIN
    d := tests.audit_detail_start(pg_temp.c('d1'));
    PERFORM pg_temp.expect('B4a 実施日が今日になる', d.performed_date = current_date);
    PERFORM pg_temp.expect('B4b 項目が 2 件用意される', (SELECT count(*) FROM tests.v_audit_item WHERE trans_audit_details_id = pg_temp.c('d1')) = 2);
    PERFORM tests.audit_detail_start(pg_temp.c('d1'));
    n := tests.audit_detail_prepare(pg_temp.c('d1'));
    PERFORM pg_temp.expect('B4c 2 回目の開始・用意は、項目を増やさない(冪等)', n = 0 AND (SELECT count(*) FROM tests.v_audit_item WHERE trans_audit_details_id = pg_temp.c('d1')) = 2);
    PERFORM pg_temp.expect('B4d 状態は実施中、項目数 2・入力済み 0',
        (SELECT is_in_progress AND NOT is_planned AND item_count = 2 AND answered_count = 0 AND status_label_ja = '実施中'
         FROM tests.v_audit_assignment WHERE staff_id = pg_temp.c('me') AND trans_audit_details_id = pg_temp.c('d1')));
END $$;

-- B5: 未入力の項目があると終了できない(AUD04)。p_force で押し切れる。値・所見を入れると入力済みになる
DO $$
DECLARE item uuid; txt uuid;
BEGIN
    BEGIN
        PERFORM tests.audit_detail_finish(pg_temp.c('d1'), '{"ja":"指摘なし"}'::jsonb);
        RAISE EXCEPTION 'B5a NG: 未入力なのに終了できた';
    EXCEPTION WHEN SQLSTATE 'AUD04' THEN RAISE NOTICE 'B5a OK: 未入力の項目があると終了できない(AUD04)'; END;
    -- 1 件目に値を入れる(項目の入力は表の更新)
    SELECT trans_audit_detail_check_items_id INTO item FROM tests.v_audit_item WHERE trans_audit_details_id = pg_temp.c('d1') ORDER BY code LIMIT 1;
    UPDATE tests.trans_audit_detail_check_items SET formula_value = '{"value":"3"}'::jsonb WHERE trans_audit_detail_check_items_id = item;
    PERFORM pg_temp.expect('B5b 値を入れた項目は入力済み(answered)・ビューの入力済み数が 1',
        (SELECT answered FROM tests.v_audit_item WHERE trans_audit_detail_check_items_id = item)
        AND (SELECT answered_count = 1 FROM tests.v_audit_assignment WHERE staff_id = pg_temp.c('me') AND trans_audit_details_id = pg_temp.c('d1')));
    INSERT INTO b_ctx VALUES ('item_a', item);
END $$;

-- B6: 異常の登録 = 異常(ラベル・文章・異常)+ つなぎが 1 回で作られる。題名が無いとき(AUD07)・別のチーム(AUD03)は止まる
DO $$
DECLARE r tests.trans_audit_complaint; item2 uuid;
BEGIN
    SELECT trans_audit_detail_check_items_id INTO item2 FROM tests.v_audit_item WHERE trans_audit_details_id = pg_temp.c('d1') AND NOT answered LIMIT 1;
    INSERT INTO b_ctx VALUES ('item_b', item2);
    BEGIN
        PERFORM tests.audit_complaint_register(item2, '{}'::jsonb);
        RAISE EXCEPTION 'B6a NG: 題名が無いのに登録できた';
    EXCEPTION WHEN SQLSTATE 'AUD07' THEN RAISE NOTICE 'B6a OK: 題名が無いと登録できない(AUD07)'; END;
    r := tests.audit_complaint_register(item2, '{"ja":"教育訓練の記録なし"}'::jsonb, '{"ja":"3 名分の記録が無い"}'::jsonb);
    PERFORM pg_temp.expect('B6b 異常とつなぎが作られる(報告者 = 担当者)',
        (SELECT c.reporter_staff_id = pg_temp.c('me') FROM tests.trans_complaint c WHERE c.trans_complaint_id = r.trans_complaint_id)
        AND r.trans_audit_detail_check_items_id = item2);
    PERFORM pg_temp.expect('B6c 項目の異常の件数が 1(v_audit_item・v_audit_assignment)',
        (SELECT complaint_count = 1 FROM tests.v_audit_item WHERE trans_audit_detail_check_items_id = item2)
        AND (SELECT complaint_count = 1 FROM tests.v_audit_assignment WHERE staff_id = pg_temp.c('me') AND trans_audit_details_id = pg_temp.c('d1')));
    -- 題名だけでも登録できる(内容は題名を使う)
    PERFORM tests.audit_complaint_register(item2, '{"ja":"2 件目"}'::jsonb);
    PERFORM pg_temp.expect('B6d 同じ項目に複数の異常をつなげられる', (SELECT complaint_count = 2 FROM tests.v_audit_item WHERE trans_audit_detail_check_items_id = item2));
END $$;

-- B7: 終了(p_force で未入力を押し切る)= 終了日時・結論が入り、以後は変更できない(AUD05)
DO $$
DECLARE d tests.trans_audit_details;
BEGIN
    d := tests.audit_detail_finish(pg_temp.c('d1'), '{"ja":"指摘 1 件"}'::jsonb, TRUE);
    PERFORM pg_temp.expect('B7a 終了日時が入り、状態は完了', d.ended_at IS NOT NULL AND d.conclusion IS NOT NULL
        AND (SELECT is_done AND NOT is_in_progress AND status_label_ja = '完了' FROM tests.v_audit_assignment WHERE staff_id = pg_temp.c('me') AND trans_audit_details_id = pg_temp.c('d1')));
    PERFORM pg_temp.expect('B7b 結論の文章が保存される',
        (SELECT tv.text_value FROM tests.trans_text_value tv WHERE tv.trans_text_id = d.conclusion LIMIT 1) = '指摘 1 件');
    BEGIN PERFORM tests.audit_detail_finish(pg_temp.c('d1')); RAISE EXCEPTION 'B7c NG';
    EXCEPTION WHEN SQLSTATE 'AUD05' THEN RAISE NOTICE 'B7c OK: 終了した監査は、もう一度終了できない(AUD05)'; END;
    BEGIN PERFORM tests.audit_complaint_register(pg_temp.c('item_b'), '{"ja":"x"}'::jsonb); RAISE EXCEPTION 'B7d NG';
    EXCEPTION WHEN SQLSTATE 'AUD05' THEN RAISE NOTICE 'B7d OK: 終了した監査には、異常を登録できない(AUD05)'; END;
    PERFORM pg_temp.expect('B7e 完了した監査は、通知に出ない', NOT EXISTS (SELECT 1 FROM tests.audit_notice(30) WHERE trans_audit_details_id = pg_temp.c('d1')));
END $$;

-- B8: 担当者が無い(JWT なし・引数なし)ときは OPR00
DO $$
BEGIN
    PERFORM set_config('jwt.claims.staff_id', '', true);
    BEGIN PERFORM tests.audit_detail_start(pg_temp.c('d2')); RAISE EXCEPTION 'B8 NG';
    EXCEPTION WHEN SQLSTATE 'OPR00' THEN RAISE NOTICE 'B8 OK: 担当者が無いと実行できない(OPR00)'; END;
    PERFORM set_config('jwt.claims.staff_id', pg_temp.c('me')::text, true);
END $$;
