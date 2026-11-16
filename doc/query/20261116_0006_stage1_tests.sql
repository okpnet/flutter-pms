-- 段階 1 のビュー(20261116_0004_stage1_views.sql)の検査(案)。対象のスキーマ: tests。
--
-- 実行: ビュー・関数・ダミー(06 と 07_dummy.sql。PERO のデータから出力した 06 に、ビュー(0004)・関数(0007)が入っている)を流した DB に、
--   トランザクションの中で流して、最後に ROLLBACK する(DB は変わらない)。
--   BEGIN; \i 20261116_0006_stage1_tests.sql  ROLLBACK;
--   (06 に入れる前は、0004・0007 を同じトランザクションの中で先に流す)
-- 失敗すると、RAISE EXCEPTION で、どの検査かを出して止まる。成功すると、RAISE NOTICE で「OK ...」を出す。
-- 場面は、検査の中で自分で作る(受注明細のキャンセル → 生産計画の打ち切り → 品物の処置)。作業者は ADMIN(JWT のクレームに入れる)。

SET LOCAL search_path TO tests, public;

CREATE OR REPLACE FUNCTION pg_temp.expect(p_label text, p_ok boolean) RETURNS void AS $$
BEGIN
    IF p_ok IS NOT TRUE THEN RAISE EXCEPTION '検査に失敗: %', p_label; END IF;
    RAISE NOTICE 'OK %', p_label;
END $$ LANGUAGE plpgsql;

SELECT set_config('jwt.claims.staff_id', (SELECT info_staff_id::text FROM tests.info_staff WHERE code = 'ADMIN' AND remove IS FALSE LIMIT 1), true);

-- ---------------------------------------------------------------------
-- T1. v_mrp_suggestion: 不変条件(新しい種類が増えて、どの列も立たない行が出ないように)
-- ---------------------------------------------------------------------
DO $$
BEGIN
    PERFORM pg_temp.expect('T1-1 提案の件数が、元の表(削除・失効でない実行)と同じ',
        (SELECT count(*) FROM v_mrp_suggestion)
        = (SELECT count(*) FROM trans_mrp_suggestion s INNER JOIN trans_mrp_run r ON r.trans_mrp_run_id = s.trans_mrp_run_id AND r.remove IS FALSE
            WHERE s.remove IS FALSE));
    PERFORM pg_temp.expect('T1-2 対象の列が、全ての行でちょうど 1 つ立つ',
        NOT EXISTS (SELECT 1 FROM v_mrp_suggestion
                    WHERE is_purchase::int + is_production::int + is_outsource::int + is_plan::int + is_exception::int + is_supply_request::int <> 1));
    PERFORM pg_temp.expect('T1-3 判断の列が、全ての行でちょうど 1 つ立つ',
        NOT EXISTS (SELECT 1 FROM v_mrp_suggestion WHERE undecided::int + adopted::int + rejected::int + is_info::int <> 1));
    PERFORM pg_temp.expect('T1-4 動きは高々 1 つ(例外は動きなし。例外以外は 1 つ)',
        NOT EXISTS (SELECT 1 FROM v_mrp_suggestion
                    WHERE is_new::int + is_change::int + is_cancel::int + is_keep::int > 1
                       OR (is_exception AND is_new::int + is_change::int + is_cancel::int + is_keep::int + is_option::int > 0)
                       OR (NOT is_exception AND is_new::int + is_change::int + is_cancel::int + is_keep::int + is_option::int = 0)));
    PERFORM pg_temp.expect('T1-5 例外の主題が、例外の行だけでちょうど 1 つ立つ',
        NOT EXISTS (SELECT 1 FROM v_mrp_suggestion
                    WHERE (is_exception AND subject_equipment::int + subject_stock::int + subject_master::int <> 1)
                       OR (NOT is_exception AND subject_equipment::int + subject_stock::int + subject_master::int <> 0)));
    PERFORM pg_temp.expect('T1-6 判断の列が、元の整数と対応する(0・1・2・9)',
        NOT EXISTS (SELECT 1 FROM v_mrp_suggestion v INNER JOIN trans_mrp_suggestion s USING (trans_mrp_suggestion_id)
                    WHERE (s.decision = 0) <> v.undecided OR (s.decision = 1) <> v.adopted
                       OR (s.decision = 2) <> v.rejected OR (s.decision = 9) <> v.is_info));
    PERFORM pg_temp.expect('T1-7 提案の種類(kind)が、分解の対象に漏れていない',
        NOT EXISTS (SELECT 1 FROM trans_mrp_suggestion s
                    WHERE s.remove IS FALSE
                      AND s.kind NOT IN ('PURCHASE_NEW','PURCHASE_RESCHEDULE','PURCHASE_CANCEL','PRODUCTION_NEW','PRODUCTION_RESCHEDULE','PRODUCTION_CANCEL',
                                         'OUTSOURCE_NEW','OUTSOURCE_CANCEL','OUTSOURCE_OPTION','PLAN_NEW','PLAN_UPDATE','PLAN_KEEP','PLAN_CANCEL',
                                         'EXC_OVERLOAD','EXC_EXCESS','EXC_MASTER','SUPPLY_REQUEST')));
    PERFORM pg_temp.expect('T1-9 ビューのスマートコメントは、タグ(@primaryKey)の行が先頭(説明が先頭だとタグが読まれない)',
        (SELECT bool_and(obj_description(('tests.' || n)::regclass) LIKE '@primaryKey %')
           FROM unnest(ARRAY['v_plan_change', 'v_cancel_open_item', 'v_mrp_run', 'v_mrp_suggestion']) AS n));
    PERFORM pg_temp.expect('T1-8 MRP 実行の状態の列が、ちょうど 1 つ立つ',
        NOT EXISTS (SELECT 1 FROM v_mrp_run WHERE is_calculated::int + is_committed::int + is_discarded::int + is_expired::int <> 1));
END $$;

-- ---------------------------------------------------------------------
-- 場面: 受注明細 X(出荷オーダー明細(数量 6)を作る)の下に、資材計画 R・生産計画 O・作業実績のロット V・引当予約 Q を作る
-- ---------------------------------------------------------------------
CREATE TEMP TABLE _t (k text PRIMARY KEY, id uuid);

DO $$
DECLARE
    x uuid; item uuid; ord uuid; so uuid; sdt uuid; r uuid; o uuid; w uuid; wr uuid; v uuid; q uuid; ct uuid; st uuid; sth uuid; task uuid;
BEGIN
    -- 出荷オーダーがまだ無い(論理削除したものも無い)受注の、受注明細を 1 つ選ぶ
    SELECT od.trans_order_detail_id, od.item_id, od.trans_order_id INTO x, item, ord
    FROM trans_order_detail od
    WHERE od.remove IS FALSE AND NOT EXISTS (SELECT 1 FROM trans_shipping_order so WHERE so.trans_order_id = od.trans_order_id)
    ORDER BY od.quantity LIMIT 1;
    IF x IS NULL THEN RAISE EXCEPTION '場面を作れません: 出荷オーダーの無い受注明細がありません(07_dummy.sql の 1 節)'; END IF;
    SELECT staff_id, staff_history_id INTO st, sth FROM op_staff(NULL);
    SELECT mstr_task_id INTO task FROM mstr_task WHERE remove IS FALSE LIMIT 1;
    SELECT trans_container_id INTO ct FROM trans_container WHERE code = 'RACK-A01' AND remove IS FALSE;

    INSERT INTO trans_shipping_order (trans_order_id, estimated_shipping_date, code, estimated_arrival_date)
    VALUES (ord, now() + interval '7 days', 'SO-TEST', current_date + 8) RETURNING trans_shipping_order_id INTO so;
    INSERT INTO trans_shipping_order_detail (trans_shipping_order_id, trans_order_detail_id, estimated_shipping_date, shipping_quantity)
    VALUES (so, x, now() + interval '7 days', 6) RETURNING trans_shipping_order_detail_id INTO sdt;

    INSERT INTO trans_resource_plan (trans_order_detail_id, quantity, item_history_id, item_id)
    VALUES (x, 10, (SELECT history_id FROM history_mstr_item WHERE mstr_item_id = item ORDER BY revision DESC LIMIT 1), item)
    RETURNING trans_resource_plan_id INTO r;
    INSERT INTO trans_operations_plan (trans_resource_plan_id, quantity) VALUES (r, 10) RETURNING trans_operations_plan_id INTO o;
    INSERT INTO trans_work_plan (trans_operations_plan_id, mstr_task_id, sequence) VALUES (o, task, 1) RETURNING trans_work_plan_id INTO w;
    INSERT INTO trans_work_record (trans_work_plan_id, qty) VALUES (w, 5) RETURNING trans_work_record_id INTO wr;
    INSERT INTO trans_visiter (trans_container_id, quantity) VALUES (ct, 5) RETURNING trans_visiter_id INTO v;
    INSERT INTO trans_work_record_visiter (trans_visiter_id, trans_work_record_id) VALUES (v, wr);
    INSERT INTO trans_inventory_request (trans_resource_plan_id, quantity, staff_history_id, staff_id)
    VALUES (r, 3, sth, st) RETURNING trans_inventory_request_id INTO q;

    INSERT INTO _t VALUES ('X', x), ('SD', sdt), ('ITEM', item), ('R', r), ('O', o), ('V', v), ('Q', q), ('CT', ct);
END $$;

-- ---------------------------------------------------------------------
-- T2. キャンセル前: 未処置一覧に出ない
-- ---------------------------------------------------------------------
DO $$
BEGIN
    PERFORM pg_temp.expect('T2-1 キャンセル・停止の前は、未処置一覧に出ない',
        NOT EXISTS (SELECT 1 FROM v_cancel_open_item
                    WHERE trans_order_detail_id = (SELECT id FROM _t WHERE k = 'X')));
END $$;

-- ---------------------------------------------------------------------
-- T3. 受注明細の全部キャンセル → 生産計画の打ち切り(起点と処置は parent でつなぐ)
-- ---------------------------------------------------------------------
DO $$
DECLARE
    x uuid := (SELECT id FROM _t WHERE k = 'X'); o uuid := (SELECT id FROM _t WHERE k = 'O');
    qty numeric; pc1 uuid; pc2 uuid; reason uuid;
BEGIN
    SELECT quantity INTO qty FROM trans_order_detail WHERE trans_order_detail_id = x;
    SELECT mstr_change_reason_id INTO reason FROM mstr_change_reason WHERE code = 'CR-CUSTOMER' AND remove IS FALSE;
    pc1 := (order_detail_cancel(x, qty, reason, '試験')).trans_plan_change_id;
    pc2 := (operations_plan_discontinue(o, reason, '試験', NULL, NULL, pc1)).trans_plan_change_id;
    INSERT INTO _t VALUES ('PC1', pc1), ('PC2', pc2);

    PERFORM pg_temp.expect('T3-1 キャンセルが v_plan_change に出る(動き・対象・品目・最上位の受注明細・原因・未反映)',
        EXISTS (SELECT 1 FROM v_plan_change p
                WHERE p.trans_plan_change_id = pc1 AND p.is_cancel AND p.is_order_detail AND p.is_root AND p.has_children
                  AND p.customer_cause AND NOT p.supplier_cause AND p.is_unreflected AND NOT p.from_mrp AND NOT p.is_reflected
                  AND p.root_trans_order_detail_id = x AND p.item_id = (SELECT id FROM _t WHERE k = 'ITEM')));
    PERFORM pg_temp.expect('T3-2 打ち切りが v_plan_change に出る(処置・親あり・最上位の受注明細はたどって決まる)',
        EXISTS (SELECT 1 FROM v_plan_change p
                WHERE p.trans_plan_change_id = pc2 AND p.is_discontinue AND p.is_operations_plan AND NOT p.is_root
                  AND p.parent_trans_plan_change_id = pc1 AND p.root_trans_order_detail_id = x
                  AND p.item_id = (SELECT item_id FROM trans_resource_plan WHERE trans_resource_plan_id = (SELECT id FROM _t WHERE k = 'R'))));
    PERFORM pg_temp.expect('T3-3 対象の列が、全ての行でちょうど 1 つ立つ',
        NOT EXISTS (SELECT 1 FROM v_plan_change
                    WHERE is_order_detail::int + is_purchase_detail::int + is_operations_plan::int + is_inventory_request::int
                          + is_visiter::int + is_shipping_order_detail::int <> 1));
    PERFORM pg_temp.expect('T3-4 v_plan_change の未反映が、v_plan_change_unreflected と同じ行',
        NOT EXISTS (SELECT 1 FROM v_plan_change p FULL JOIN v_plan_change_unreflected u USING (trans_plan_change_id)
                    WHERE COALESCE(p.is_unreflected, FALSE) <> (u.trans_plan_change_id IS NOT NULL)));
    PERFORM pg_temp.expect('T3-5 v_plan_change の行が、元の表(削除でない)と同じ件数',
        (SELECT count(*) FROM v_plan_change) = (SELECT count(*) FROM trans_plan_change WHERE remove IS FALSE));
END $$;

-- ---------------------------------------------------------------------
-- T4. 未処置一覧: 引当予約・仕掛品・出荷オーダーが出る。種類の列はちょうど 1 つ
-- ---------------------------------------------------------------------
DO $$
DECLARE
    x uuid := (SELECT id FROM _t WHERE k = 'X'); v uuid := (SELECT id FROM _t WHERE k = 'V'); q uuid := (SELECT id FROM _t WHERE k = 'Q');
    pc1 uuid := (SELECT id FROM _t WHERE k = 'PC1');
BEGIN
    PERFORM pg_temp.expect('T4-1 種類の列が、全ての行でちょうど 1 つ立つ',
        NOT EXISTS (SELECT 1 FROM v_cancel_open_item
                    WHERE is_inventory_request::int + is_work_in_process::int + is_hold::int + is_shipping_order::int
                          + is_outsource_order::int + is_supply_at_supplier::int + is_customer_supply::int <> 1));
    PERFORM pg_temp.expect('T4-2 主キー(open_item_id)が一意',
        (SELECT count(*) FROM v_cancel_open_item) = (SELECT count(DISTINCT open_item_id) FROM v_cancel_open_item));
    PERFORM pg_temp.expect('T4-3 未解除の引当予約が出る(原因はキャンセル。原因の計画変更つき)',
        EXISTS (SELECT 1 FROM v_cancel_open_item i
                WHERE i.is_inventory_request AND i.trans_inventory_request_id = q AND i.cause_cancel AND i.quantity = 3
                  AND i.trans_order_detail_id = x AND i.cause_trans_plan_change_id = pc1 AND i.since IS NOT NULL));
    PERFORM pg_temp.expect('T4-4 仕掛品が出る(打ち切りの生産計画のロット。数量 5)',
        EXISTS (SELECT 1 FROM v_cancel_open_item i
                WHERE i.is_work_in_process AND i.trans_visiter_id = v AND i.quantity = 5 AND i.cause_discontinue
                  AND i.trans_order_detail_id = x));
    PERFORM pg_temp.expect('T4-5 未出荷の出荷オーダーが出る(原因はキャンセル)',
        EXISTS (SELECT 1 FROM v_cancel_open_item i
                WHERE i.is_shipping_order AND i.trans_order_detail_id = x AND i.cause_cancel AND i.quantity > 0));
END $$;

-- ---------------------------------------------------------------------
-- T5. 処置すると、未処置一覧から消える(解除・在庫にする)。押さえると、押さえたままの品として出る
-- ---------------------------------------------------------------------
DO $$
DECLARE
    v uuid := (SELECT id FROM _t WHERE k = 'V'); q uuid := (SELECT id FROM _t WHERE k = 'Q'); pc1 uuid := (SELECT id FROM _t WHERE k = 'PC1');
    hold_pc uuid; hold_lot uuid; ch uuid;
BEGIN
    PERFORM inventory_request_release(q, NULL, NULL, NULL, pc1);
    PERFORM pg_temp.expect('T5-1 引当予約を解除すると、未処置一覧から消える',
        NOT EXISTS (SELECT 1 FROM v_cancel_open_item WHERE trans_inventory_request_id = q));

    SELECT trans_container_id INTO ch FROM trans_container WHERE code = 'RACK-H01' AND remove IS FALSE;
    hold_pc := (lot_hold(v, ch, 2, NULL, NULL, NULL, pc1)).trans_plan_change_id;
    SELECT trans_visiter_id INTO hold_lot FROM trans_plan_change WHERE trans_plan_change_id = hold_pc;
    PERFORM pg_temp.expect('T5-2 押さえると、押さえたままの品(仮止めのロット 2)が出る',
        EXISTS (SELECT 1 FROM v_cancel_open_item i
                WHERE i.is_hold AND i.trans_visiter_id = hold_lot AND i.quantity = 2 AND i.trans_container_id = ch));
    PERFORM pg_temp.expect('T5-3 押さえた分は、仕掛品から減る(残り 3)',
        EXISTS (SELECT 1 FROM v_cancel_open_item i WHERE i.is_work_in_process AND i.trans_visiter_id = v AND i.quantity = 3));
    PERFORM pg_temp.expect('T5-4 押さえた(移動先の)ロットは、仕掛品に重ねて出ない',
        NOT EXISTS (SELECT 1 FROM v_cancel_open_item i WHERE i.is_work_in_process AND i.trans_visiter_id = hold_lot));

    PERFORM lot_release(v, NULL, NULL, NULL, pc1);
    PERFORM pg_temp.expect('T5-5 在庫にすると、仕掛品から消える(押さえたままの品は残る)',
        NOT EXISTS (SELECT 1 FROM v_cancel_open_item i WHERE i.is_work_in_process AND i.trans_visiter_id = v)
        AND EXISTS (SELECT 1 FROM v_cancel_open_item i WHERE i.is_hold AND i.trans_visiter_id = hold_lot));

    PERFORM lot_scrap(hold_lot, 2, NULL, NULL, NULL, pc1);
    PERFORM pg_temp.expect('T5-6 押さえた品を廃棄すると(数量 0)、未処置一覧から消える',
        NOT EXISTS (SELECT 1 FROM v_cancel_open_item i WHERE i.trans_visiter_id IN (v, hold_lot)));
END $$;

-- ---------------------------------------------------------------------
-- T5b. 出荷オーダー明細の取り消し(未出荷の出荷オーダーの処置)。出荷実績があるときは取り消せない
-- ---------------------------------------------------------------------
DO $$
DECLARE
    sdt uuid := (SELECT id FROM _t WHERE k = 'SD'); pc1 uuid := (SELECT id FROM _t WHERE k = 'PC1'); pc uuid;
BEGIN
    pc := (shipping_order_detail_cancel(sdt, NULL, '試験', NULL, pc1)).trans_plan_change_id;
    PERFORM pg_temp.expect('T5b-1 取り消すと、未処置一覧の「未出荷の出荷オーダー」から消える',
        NOT EXISTS (SELECT 1 FROM v_cancel_open_item i WHERE i.trans_shipping_order_detail_id = sdt));
    PERFORM pg_temp.expect('T5b-2 計画変更(対象は出荷オーダー明細・キャンセル数量 6・親は起点)が v_plan_change に出る',
        EXISTS (SELECT 1 FROM v_plan_change p
                WHERE p.trans_plan_change_id = pc AND p.is_shipping_order_detail AND p.is_cancel AND p.cancel_quantity = 6
                  AND p.parent_trans_plan_change_id = pc1 AND p.root_trans_order_detail_id = (SELECT id FROM _t WHERE k = 'X')
                  AND p.item_id = (SELECT id FROM _t WHERE k = 'ITEM')));
    BEGIN
        PERFORM shipping_order_detail_cancel(sdt);
        RAISE EXCEPTION '検査に失敗: T5b-3 取り消し済みを、もう一度取り消せてしまった';
    EXCEPTION WHEN SQLSTATE 'OPR03' THEN
        RAISE NOTICE 'OK T5b-3 取り消し済みは、もう一度取り消せない(OPR03)';
    END;
END $$;

-- ---------------------------------------------------------------------
-- T6. 顧客支給材の未返却: 顧客から受けた支給のロット(顧客の所有)で、受注明細が全部キャンセル済み
-- ---------------------------------------------------------------------
DO $$
DECLARE
    x uuid := (SELECT id FROM _t WHERE k = 'X'); item uuid := (SELECT id FROM _t WHERE k = 'ITEM'); ct uuid := (SELECT id FROM _t WHERE k = 'CT');
    cust uuid; ord uuid; lot uuid;
BEGIN
    SELECT o.stakeholder_id, o.trans_order_id INTO cust, ord
    FROM trans_order_detail od INNER JOIN trans_order o ON o.trans_order_id = od.trans_order_id WHERE od.trans_order_detail_id = x;
    INSERT INTO trans_visiter (trans_container_id, release, quantity) VALUES (ct, FALSE, 4) RETURNING trans_visiter_id INTO lot;
    PERFORM supply_register(cust, TRUE, TRUE, FALSE,
        jsonb_build_array(jsonb_build_object('item_id', item, 'quantity', 4, 'order_detail_id', x, 'visiter_ids', jsonb_build_array(lot))),
        ord);
    PERFORM pg_temp.expect('T6-1 顧客支給材(顧客の所有)で、受注明細が全部キャンセル済みのロットが出る',
        EXISTS (SELECT 1 FROM v_cancel_open_item i
                WHERE i.is_customer_supply AND i.trans_visiter_id = lot AND i.quantity = 4 AND i.stakeholder_id = cust
                  AND i.trans_order_detail_id = x AND i.cause_cancel));
END $$;

-- ---------------------------------------------------------------------
-- T7. 外注発注・外注先にある支給材: 打ち切りの生産計画の外注発注が出る。発注をキャンセルすると、外注先の支給材が出る
-- ---------------------------------------------------------------------
DO $$
DECLARE
    x uuid := (SELECT id FROM _t WHERE k = 'X'); o uuid := (SELECT id FROM _t WHERE k = 'O'); r uuid := (SELECT id FROM _t WHERE k = 'R');
    item uuid := (SELECT id FROM _t WHERE k = 'ITEM'); ch uuid; sup uuid; sup_h uuid; po uuid; pd uuid; lot uuid; pc1 uuid := (SELECT id FROM _t WHERE k = 'PC1');
    sd uuid; sp trans_supply;
BEGIN
    SELECT mstr_stakeholder_id INTO sup FROM mstr_stakeholder WHERE is_supplier IS TRUE AND remove IS FALSE ORDER BY code LIMIT 1;
    IF sup IS NULL THEN RAISE EXCEPTION '場面を作れません: 外部供給者(is_supplier)がありません'; END IF;
    sup_h := mrp_hist_stakeholder(sup);
    SELECT trans_container_id INTO ch FROM trans_container WHERE code = 'RACK-H01' AND remove IS FALSE;
    INSERT INTO trans_purchase (stakeholder_history_id, stakeholder_id) VALUES (sup_h, sup) RETURNING trans_purchase_id INTO po;
    INSERT INTO trans_purchase_detail (trans_purchase_id, trans_resource_plan_id, quantity, unit_price, item_history_id, item_id)
    VALUES (po, r, 10, 100, (SELECT history_id FROM history_mstr_item WHERE mstr_item_id = item ORDER BY revision DESC LIMIT 1), item)
    RETURNING trans_purchase_detail_id INTO pd;
    -- 外注工程: 生産計画 O の作業指示に、発注明細をつなぐ
    UPDATE trans_work_plan SET trans_purchase_detail_id = pd WHERE trans_operations_plan_id = o AND remove IS FALSE;

    PERFORM pg_temp.expect('T7-1 打ち切り・キャンセルの生産計画の、未キャンセルの外注発注が出る',
        EXISTS (SELECT 1 FROM v_cancel_open_item i
                WHERE i.is_outsource_order AND i.trans_purchase_detail_id = pd AND i.cause_discontinue AND i.quantity = 10 AND i.stakeholder_id = sup));

    -- 外注先へ無償で材料を渡す(ロットを選んだコンテナへ移す)→ 発注をキャンセル → 外注先にある支給材が出る
    INSERT INTO trans_visiter (trans_container_id, quantity) VALUES ((SELECT id FROM _t WHERE k = 'CT'), 6) RETURNING trans_visiter_id INTO lot;
    -- 関数が作った行は、同じ文の中では見えないため、先に変数で受けてから引く
    sp := supply_register(sup, FALSE, FALSE, FALSE,
        jsonb_build_array(jsonb_build_object('item_id', item, 'quantity', 6, 'purchase_detail_id', pd, 'lot_id', lot, 'container_id', ch)),
        NULL, po);
    SELECT d.trans_supply_detail_id INTO sd FROM trans_supply_detail d WHERE d.trans_supply_id = sp.trans_supply_id LIMIT 1;
    PERFORM purchase_detail_cancel(pd, 10, NULL, '試験');
    PERFORM pg_temp.expect('T7-2 キャンセルした外注発注は、未キャンセルの外注発注から消える',
        NOT EXISTS (SELECT 1 FROM v_cancel_open_item i WHERE i.is_outsource_order AND i.trans_purchase_detail_id = pd));
    PERFORM pg_temp.expect('T7-3 外注先にある支給材(無償)が出る(数量 6)',
        EXISTS (SELECT 1 FROM v_cancel_open_item i
                WHERE i.is_supply_at_supplier AND i.trans_supply_detail_id = sd AND i.quantity = 6 AND i.cause_cancel AND i.stakeholder_id = sup));
    PERFORM pg_temp.expect('T7-4 種類の列が、全ての行でちょうど 1 つ立つ(全種類)',
        NOT EXISTS (SELECT 1 FROM v_cancel_open_item
                    WHERE is_inventory_request::int + is_work_in_process::int + is_hold::int + is_shipping_order::int
                          + is_outsource_order::int + is_supply_at_supplier::int + is_customer_supply::int <> 1));
END $$;

-- ---------------------------------------------------------------------
-- T8. 支給の判定(MRP): 支給明細のある部品だけが SUPPLY_REQUEST になり、ほかの部品は通常の提案になる(受け入れ基準)
-- ---------------------------------------------------------------------
DO $$
DECLARE
    x2 uuid; pcb uuid; cust uuid; ord uuid; run uuid;
BEGIN
    SELECT od.trans_order_detail_id, o.stakeholder_id, o.trans_order_id INTO x2, cust, ord
    FROM trans_order_detail od
    INNER JOIN trans_order o ON o.trans_order_id = od.trans_order_id
    INNER JOIN mstr_item i ON i.mstr_item_id = od.item_id AND i.code IN ('P-100', 'P-200')
    WHERE od.remove IS FALSE AND od.trans_order_detail_id <> (SELECT id FROM _t WHERE k = 'X')
    ORDER BY od.quantity DESC LIMIT 1;
    SELECT mstr_item_id INTO pcb FROM mstr_item WHERE code = 'PCB-130' AND remove IS FALSE;
    IF x2 IS NULL OR pcb IS NULL THEN RAISE EXCEPTION '場面を作れません: 受注明細(P-100・P-200)または品目 PCB-130 がありません(07_dummy.sql の 1 節)'; END IF;

    -- 顧客支給の予定(PCB-130 を 1 個。必要数に足りない。ロットはまだつながっていない)
    PERFORM supply_register(cust, TRUE, TRUE, FALSE,
        jsonb_build_array(jsonb_build_object('item_id', pcb, 'quantity', 1, 'order_detail_id', x2)), ord);
    -- 再 MRP(この受注明細だけ)
    run := (mrp_run(2::smallint, NULL, ARRAY[x2], TRUE)).trans_mrp_run_id;
    INSERT INTO _t VALUES ('RUN', run);

    PERFORM pg_temp.expect('T8-1 支給明細のある部品(PCB-130)が、支給依頼(要判断)になる',
        EXISTS (SELECT 1 FROM v_mrp_suggestion s
                WHERE s.trans_mrp_run_id = run AND s.item_id = pcb AND s.is_supply_request AND s.need_user AND s.undecided AND s.run_open));
    PERFORM pg_temp.expect('T8-2 支給明細のある部品に、発注・生産・外注の提案が出ない',
        NOT EXISTS (SELECT 1 FROM v_mrp_suggestion s
                    WHERE s.trans_mrp_run_id = run AND s.item_id = pcb AND (s.is_purchase OR s.is_production OR s.is_outsource) AND s.is_new));
    PERFORM pg_temp.expect('T8-3 ほかの部品は、通常の発注・生産の提案が出る(支給依頼にならない)',
        EXISTS (SELECT 1 FROM v_mrp_suggestion s
                WHERE s.trans_mrp_run_id = run AND s.item_id <> pcb AND s.is_new AND (s.is_purchase OR s.is_production OR s.is_outsource))
        AND NOT EXISTS (SELECT 1 FROM v_mrp_suggestion s WHERE s.trans_mrp_run_id = run AND s.item_id <> pcb AND s.is_supply_request));
    PERFORM pg_temp.expect('T8-4 MRP 実行は、計算済みで要判断を持つ(v_mrp_run)',
        EXISTS (SELECT 1 FROM v_mrp_run r WHERE r.trans_mrp_run_id = run AND r.is_calculated AND r.is_rerun AND r.pending_count > 0));
END $$;

-- ---------------------------------------------------------------------
-- T9. mrp_commit が書き換える範囲(T8 の MRP 実行を使う)
--   ・要判断(未判断)が残ると確定できない(MRP01)。p_force で、未判断を却下として確定する
--   ・反映するのは、採用(adopted)の提案だけ。却下・未判断・情報は、何も変えない(反映日時 applied_at も付かない)
--   ・確定した実行は、もう一度確定できない(MRP03)。破棄(mrp_discard)は、確定済みには何もしない
-- ---------------------------------------------------------------------
DO $$
DECLARE
    run uuid := (SELECT id FROM _t WHERE k = 'RUN');
    cancel_target uuid; rp0 int; pd0 int; op0 int; ip0 int; rq0 int;
BEGIN
    PERFORM pg_temp.expect('T9-1 要判断が残る実行は、確定できない(MRP01)',
        (SELECT count(*) FROM v_mrp_suggestion WHERE trans_mrp_run_id = run AND undecided) > 0);
    BEGIN
        PERFORM mrp_commit(run, NULL, FALSE);
        RAISE EXCEPTION '検査に失敗: T9-1 要判断が残るのに確定できてしまった';
    EXCEPTION WHEN SQLSTATE 'MRP01' THEN
        RAISE NOTICE 'OK T9-1 要判断が残る実行は、p_force なしでは確定できない(MRP01)';
    END;

    -- 未判断の取消(発注)の対象は、確定しても取り消されない(却下として確定する)
    SELECT s.trans_purchase_detail_id INTO cancel_target
    FROM v_mrp_suggestion s WHERE s.trans_mrp_run_id = run AND s.undecided AND s.is_purchase AND s.is_cancel LIMIT 1;

    SELECT count(*) INTO rp0 FROM trans_resource_plan WHERE remove IS FALSE;
    SELECT count(*) INTO pd0 FROM trans_purchase_detail WHERE remove IS FALSE;
    SELECT count(*) INTO op0 FROM trans_operations_plan WHERE remove IS FALSE;
    SELECT count(*) INTO ip0 FROM trans_inventory_request WHERE remove IS FALSE;
    SELECT count(*) INTO rq0 FROM trans_mrp_suggestion WHERE trans_mrp_run_id = run;

    PERFORM mrp_commit(run, NULL, TRUE);

    PERFORM pg_temp.expect('T9-2 p_force で確定できる(実行は確定済みになる)',
        EXISTS (SELECT 1 FROM v_mrp_run r WHERE r.trans_mrp_run_id = run AND r.is_committed AND NOT r.is_calculated));
    PERFORM pg_temp.expect('T9-3 反映した提案は、採用だけ(未判断・却下・情報に反映日時が付かない)',
        NOT EXISTS (SELECT 1 FROM v_mrp_suggestion WHERE trans_mrp_run_id = run AND NOT adopted AND applied_at IS NOT NULL)
        AND EXISTS (SELECT 1 FROM v_mrp_suggestion WHERE trans_mrp_run_id = run AND adopted AND applied_at IS NOT NULL));
    PERFORM pg_temp.expect('T9-4 採用の資材計画の新規が、資材計画に入る(件数が増える)',
        (SELECT count(*) FROM trans_resource_plan WHERE remove IS FALSE) >= rp0
        AND (SELECT count(*) FROM v_mrp_suggestion WHERE trans_mrp_run_id = run AND adopted AND is_plan AND is_new) > 0);
    PERFORM pg_temp.expect('T9-5 未判断の発注の取消は、反映されない(発注明細のキャンセル数量が 0 のまま)',
        cancel_target IS NULL OR (SELECT cancel_quantity FROM trans_purchase_detail WHERE trans_purchase_detail_id = cancel_target) = 0);
    PERFORM pg_temp.expect('T9-6 提案の件数は、確定で変わらない',
        (SELECT count(*) FROM trans_mrp_suggestion WHERE trans_mrp_run_id = run) = rq0);
    BEGIN
        PERFORM mrp_commit(run, NULL, TRUE);
        RAISE EXCEPTION '検査に失敗: T9-7 確定済みの実行を、もう一度確定できてしまった';
    EXCEPTION WHEN SQLSTATE 'MRP03' THEN
        RAISE NOTICE 'OK T9-7 確定済みの実行は、もう一度確定できない(MRP03)';
    END;
    PERFORM mrp_discard(run);
    PERFORM pg_temp.expect('T9-8 確定済みの実行は、破棄しても確定済みのまま',
        EXISTS (SELECT 1 FROM v_mrp_run r WHERE r.trans_mrp_run_id = run AND r.is_committed AND NOT r.is_discarded));
    RAISE NOTICE 'DEBUG 前後の件数: 資材計画 % → %、発注明細 % → %、生産計画 % → %、引当予約 % → %', rp0,
        (SELECT count(*) FROM trans_resource_plan WHERE remove IS FALSE), pd0, (SELECT count(*) FROM trans_purchase_detail WHERE remove IS FALSE),
        op0, (SELECT count(*) FROM trans_operations_plan WHERE remove IS FALSE), ip0, (SELECT count(*) FROM trans_inventory_request WHERE remove IS FALSE);
END $$;
