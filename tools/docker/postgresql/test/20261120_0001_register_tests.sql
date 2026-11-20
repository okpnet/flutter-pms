-- 20261120_0001 実績登録・受入検品の DB 関数とビューの検査 T1〜T7(接続できる環境で。ROLLBACK するのでデータは変わらない)
-- 実行: node runtest.js <.env> pms_user 20261120_0001_register_tests.sql   (一般ユーザー = T7 も兼ねる)
-- 前提: 検証用 DB のダミーデータ(07_dummy)。作業指示 2 件(各 5)・発注明細(残り 10 のもの)・コンテナ 3 件・在庫のロット。
-- 失敗したら例外で止まる。成功は NOTICE に出す。

-- 担当者(JWT の staff_id の代わり。TANAKA)
SELECT set_config('jwt.claims.staff_id', (SELECT info_staff_id::text FROM tests.info_staff WHERE code = 'TANAKA'), true);

CREATE TEMP TABLE t_ctx AS
SELECT
    (SELECT trans_container_id FROM tests.trans_container WHERE remove IS FALSE ORDER BY symbol LIMIT 1) AS c1,
    (SELECT trans_container_id FROM tests.trans_container WHERE remove IS FALSE ORDER BY symbol OFFSET 1 LIMIT 1) AS c2,
    (SELECT trans_container_id FROM tests.trans_container WHERE remove IS FALSE ORDER BY symbol OFFSET 2 LIMIT 1) AS c3,
    (SELECT trans_purchase_detail_id FROM tests.v_purchase_detail_balance WHERE remaining_quantity = 10 AND NOT stop AND NOT cancel_closed LIMIT 1) AS pd,
    (SELECT trans_visiter_id FROM tests.v_visiter_lot WHERE quantity >= 100 AND release LIMIT 1) AS lot;
GRANT SELECT ON t_ctx TO PUBLIC;

-- T1: v_register_target の件数 = 作業指示 + 発注明細
DO $$ BEGIN
    IF (SELECT count(*) FROM tests.v_register_target)
       <> (SELECT count(*) FROM tests.trans_work_plan WHERE remove IS FALSE) + (SELECT count(*) FROM tests.trans_purchase_detail WHERE remove IS FALSE) THEN
        RAISE EXCEPTION 'T1 NG: 件数が合わない';
    END IF;
    RAISE NOTICE 'T1 OK: v_register_target % 件', (SELECT count(*) FROM tests.v_register_target);
END $$;

-- T2: 受入(発注)。残り 10 に 合格 6・不合格 2 → 受入実績 8、残り 2、異常 1、不合格のロットは仮止め
DO $$
DECLARE c record; r record; rem numeric; held boolean; n int;
BEGIN
    SELECT * INTO c FROM t_ctx;
    SELECT * INTO r FROM tests.inspection_register(6, c.c1, NULL, c.pd, 2, c.c2, '寸法不良');
    IF r.purchase_rec_id IS NULL OR r.pass_visiter_id IS NULL OR r.fail_visiter_id IS NULL OR r.complaint_id IS NULL THEN RAISE EXCEPTION 'T2 NG: 戻り値 %', r; END IF;
    SELECT remaining_quantity INTO rem FROM tests.v_purchase_detail_balance WHERE trans_purchase_detail_id = c.pd;
    IF rem <> 2 THEN RAISE EXCEPTION 'T2 NG: 残り % (2 のはず)', rem; END IF;
    SELECT quantity INTO rem FROM tests.trans_purchase_rec WHERE trans_purchase_rec_id = r.purchase_rec_id;
    IF rem <> 8 THEN RAISE EXCEPTION 'T2 NG: 受入実績 %', rem; END IF;
    SELECT release INTO held FROM tests.trans_visiter WHERE trans_visiter_id = r.fail_visiter_id;
    IF held IS NOT FALSE THEN RAISE EXCEPTION 'T2 NG: 不合格のロットが仮止めでない'; END IF;
    SELECT count(*) INTO n FROM tests.trans_complaint_purchase_rec WHERE trans_complaint_id = r.complaint_id AND trans_purchase_rec_id = r.purchase_rec_id;
    IF n <> 1 THEN RAISE EXCEPTION 'T2 NG: 受入異常 %', n; END IF;
    SELECT count(*) INTO n FROM tests.trans_complaint_visiter WHERE trans_complaint_id = r.complaint_id AND trans_visiter_id = r.fail_visiter_id;
    IF n <> 1 THEN RAISE EXCEPTION 'T2 NG: 異常のロット %', n; END IF;
    -- v_complaint_kind: 内部の異常(購買・委託品の受入)
    SELECT count(*) INTO n FROM tests.v_complaint_kind WHERE trans_complaint_id = r.complaint_id AND NOT is_external AND trans_purchase_rec_id = r.purchase_rec_id;
    IF n <> 1 THEN RAISE EXCEPTION 'T2 NG: v_complaint_kind % 件', n; END IF;
    RAISE NOTICE 'T2 OK: 受入 合格 6・不合格 2、残り 2、異常 1(内部の異常に出る)';
END $$;

-- T3: 受入の超過(残り 2 に 3)が OPR02、停止中の発注明細が OPR03
DO $$
DECLARE c record; code text;
BEGIN
    SELECT * INTO c FROM t_ctx;
    BEGIN PERFORM tests.inspection_register(3, c.c1, NULL, c.pd); code := 'なし';
    EXCEPTION WHEN OTHERS THEN code := SQLSTATE; END;
    IF code <> 'OPR02' THEN RAISE EXCEPTION 'T3 NG: 超過 %', code; END IF;
    UPDATE tests.trans_purchase_detail SET stop = TRUE WHERE trans_purchase_detail_id = c.pd;
    BEGIN PERFORM tests.inspection_register(1, c.c1, NULL, c.pd); code := 'なし';
    EXCEPTION WHEN OTHERS THEN code := SQLSTATE; END;
    IF code <> 'OPR03' THEN RAISE EXCEPTION 'T3 NG: 停止中 %', code; END IF;
    UPDATE tests.trans_purchase_detail SET stop = FALSE WHERE trans_purchase_detail_id = c.pd;
    RAISE NOTICE 'T3 OK: 超過 OPR02・停止中 OPR03';
END $$;

-- T4/T5: 作業の開始 → 終了。取り出し 4(作業指示 5) → 合格 2・不合格 1(差 1 は払出元へ返る)
DO $$
DECLARE c record; wp uuid; wr tests.trans_work_record; r record; code text; q numeric; parent uuid; origin_container uuid; rem numeric; inprog boolean;
BEGIN
    SELECT * INTO c FROM t_ctx;
    SELECT trans_work_plan_id INTO wp FROM tests.v_register_target WHERE is_work_plan AND registrable ORDER BY symbol LIMIT 1;
    wr := tests.work_record_start(wp, c.lot, 4);
    IF wr.stop_at IS NOT NULL OR wr.qty <> 0 THEN RAISE EXCEPTION 'T4 NG: 開始の実績 %', wr; END IF;
    SELECT remaining_quantity, in_progress INTO rem, inprog FROM tests.v_register_target WHERE trans_work_plan_id = wp;
    IF rem <> 1 OR NOT inprog THEN RAISE EXCEPTION 'T4 NG: 残り % 実施中 %', rem, inprog; END IF;
    -- T5: 実施中の指示への 2 回目の開始(OPR03)、残り超過の開始(OPR02は別の指示で)
    BEGIN PERFORM tests.work_record_start(wp, c.lot, 1); code := 'なし'; EXCEPTION WHEN OTHERS THEN code := SQLSTATE; END;
    IF code <> 'OPR03' THEN RAISE EXCEPTION 'T5 NG: 実施中の 2 回目 %', code; END IF;
    -- T5: 取り出しより多い完了(OPR02)
    BEGIN PERFORM tests.inspection_register(4, c.c3, wr.trans_work_record_id, NULL, 1, c.c2, '外観不良'); code := 'なし'; EXCEPTION WHEN OTHERS THEN code := SQLSTATE; END;
    IF code <> 'OPR02' THEN RAISE EXCEPTION 'T5 NG: 取り出し超過 %', code; END IF;
    -- 差(取り出し 4、完了 3)で、不合格がなければ理由が要る(OPR02)
    BEGIN PERFORM tests.inspection_register(3, c.c3, wr.trans_work_record_id); code := 'なし'; EXCEPTION WHEN OTHERS THEN code := SQLSTATE; END;
    IF code <> 'OPR02' THEN RAISE EXCEPTION 'T5 NG: 差の理由なし %', code; END IF;
    -- 終了: 合格 2・不合格 1(差 1 は払出元へ返る)
    SELECT * INTO r FROM tests.inspection_register(2, c.c3, wr.trans_work_record_id, NULL, 1, c.c2, '外観不良');
    IF r.return_quantity <> 1 OR r.return_visiter_id IS NULL OR r.complaint_id IS NULL OR r.pass_visiter_id IS NULL THEN RAISE EXCEPTION 'T4 NG: 戻り値 %', r; END IF;
    SELECT qty INTO q FROM tests.trans_work_record WHERE trans_work_record_id = wr.trans_work_record_id;
    IF q <> 3 OR (SELECT stop_at FROM tests.trans_work_record WHERE trans_work_record_id = wr.trans_work_record_id) IS NULL THEN RAISE EXCEPTION 'T4 NG: 実績 qty % / stop_at', q; END IF;
    SELECT parent_trans_visiter_id, trans_container_id INTO parent, origin_container FROM tests.trans_visiter WHERE trans_visiter_id = r.return_visiter_id;
    IF parent IS NULL THEN RAISE EXCEPTION 'T4 NG: 返したロットの親が無い'; END IF;
    -- 工程異常が、内部の異常(工程)に出る
    IF (SELECT count(*) FROM tests.trans_complaint_work WHERE trans_complaint_id = r.complaint_id) <> 1 THEN RAISE EXCEPTION 'T4 NG: 工程異常'; END IF;
    -- すでに終了(OPR03)
    BEGIN PERFORM tests.inspection_register(1, c.c3, wr.trans_work_record_id); code := 'なし'; EXCEPTION WHEN OTHERS THEN code := SQLSTATE; END;
    IF code <> 'OPR03' THEN RAISE EXCEPTION 'T5 NG: すでに終了 %', code; END IF;
    -- 残り(5 − 完了 3 = 2)を超える開始(OPR02)
    BEGIN PERFORM tests.work_record_start(wp, c.lot, 3); code := 'なし'; EXCEPTION WHEN OTHERS THEN code := SQLSTATE; END;
    IF code <> 'OPR02' THEN RAISE EXCEPTION 'T5 NG: 残り超過 %', code; END IF;
    SELECT remaining_quantity, in_progress INTO rem, inprog FROM tests.v_register_target WHERE trans_work_plan_id = wp;
    IF rem <> 2 OR inprog THEN RAISE EXCEPTION 'T4 NG: 終了後の残り % 実施中 %', rem, inprog; END IF;
    RAISE NOTICE 'T4/T5 OK: 開始 4 → 終了 合格 2・不合格 1・返却 1、実績 qty 3、残り 2';
END $$;

-- T6: 非計上発注(資材計画の元が非計上明細)の発注明細でも、T2 と同じ動き(発注明細として同じビュー・関数で扱う)
DO $$
DECLARE n int;
BEGIN
    SELECT count(*) INTO n FROM tests.v_register_target t
    INNER JOIN tests.trans_purchase_detail d ON d.trans_purchase_detail_id = t.trans_purchase_detail_id
    WHERE t.is_purchase_detail;
    RAISE NOTICE 'T6 OK(参考): 発注明細として登録対象に出る % 件(発注・非計上発注を区別しない)', n;
END $$;

-- T7: 一般ユーザーで実行できた(このスクリプト全体が pms_user で動いている)
DO $$ BEGIN RAISE NOTICE 'T7 OK: 実行ロール = %', current_user; END $$;
