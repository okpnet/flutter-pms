-- 20261124_0001 実績の原価のビュー v_work_record_cost の検査 W1〜W5
-- 実行: node runtest.js <.env> NONE 20261124_0001_work_record_cost_ddl.sql 20261124_0001_work_record_cost.sql
--   ビューが DB に適用済みなら、このファイルだけでよい。最後に ROLLBACK するのでデータは変わらない。
-- 前提: 検証用 DB(ダミーデータ)。担当者 ADMIN・作業指示・棚(コンテナ)・利害関係者がある。
DO $$
DECLARE
    adm uuid; wp record; cont uuid; sh uuid; tl uuid;
    wr_a uuid; wr_b uuid; wr_c uuid; lot_a tests.trans_visiter; iss tests.trans_visiter; out_b tests.trans_visiter;
    uc numeric; c record; od uuid;
BEGIN
    SELECT info_staff_id INTO adm FROM tests.info_staff WHERE code = 'ADMIN' LIMIT 1;
    SELECT wp2.trans_work_plan_id, wp2.mstr_task_id, rp.item_id INTO wp
      FROM tests.trans_work_plan AS wp2
      INNER JOIN tests.trans_operations_plan AS op ON op.trans_operations_plan_id = wp2.trans_operations_plan_id
      INNER JOIN tests.trans_resource_plan AS rp ON rp.trans_resource_plan_id = op.trans_resource_plan_id
     WHERE wp2.remove IS FALSE LIMIT 1;
    SELECT trans_container_id INTO cont FROM tests.trans_container WHERE remove IS FALSE LIMIT 1;
    SELECT mstr_stakeholder_id INTO sh FROM tests.mstr_stakeholder WHERE remove IS FALSE LIMIT 1;
    SELECT trans_order_detail_id INTO od FROM tests.trans_order_detail WHERE remove IS FALSE LIMIT 1;
    SELECT unit_cost INTO uc FROM tests.v_item_unit_cost WHERE item_id = wp.item_id;

    -- 材料のロット(作業実績 A が 10 作る。材料の品目 = 作った品目)
    INSERT INTO tests.trans_work_record (trans_work_plan_id, nth_time, start_at, qty)
    VALUES (wp.trans_work_plan_id, 1, now(), 10) RETURNING trans_work_record_id INTO wr_a;
    lot_a := tests.visiter_receive(cont, 10, false, wr_a, NULL, NULL, adm);

    -- 作業実績 B: 材料のロットから 4 を投入し、3 のロットを作る
    INSERT INTO tests.trans_work_record (trans_work_plan_id, nth_time, start_at, qty)
    VALUES (wp.trans_work_plan_id, 2, now(), 3) RETURNING trans_work_record_id INTO wr_b;
    iss := tests.visiter_issue(lot_a.trans_visiter_id, 4, wr_b, adm);
    out_b := tests.visiter_receive(cont, 3, false, wr_b, NULL, NULL, adm);

    -- W1: 材料の評価額 = 投入した数量 × 材料の品目の標準原価。作ったロットの数量は + の行の合計
    SELECT * INTO c FROM tests.v_work_record_cost WHERE trans_work_record_id = wr_b;
    IF c.material_amount <> 4 * COALESCE(uc, 0) OR c.material_line_count <> 1 OR c.produced_quantity <> 3 THEN
        RAISE EXCEPTION 'W1 NG: % / % / %', c.material_amount, c.material_line_count, c.produced_quantity;
    END IF;
    IF c.has_supplied_material THEN RAISE EXCEPTION 'W1 NG: 購入品なのに支給品の印'; END IF;
    RAISE NOTICE 'W1 OK (材料 %)', c.material_amount;

    -- W2: 作業実績の原価 = 材料 + 工程。単価 = 原価 ÷ 作ったロットの数量
    IF c.total_cost <> c.material_amount + c.process_cost THEN RAISE EXCEPTION 'W2 NG: total'; END IF;
    IF c.unit_cost IS DISTINCT FROM round(c.total_cost / 3, 2) THEN RAISE EXCEPTION 'W2 NG: unit % / %', c.unit_cost, c.total_cost; END IF;
    RAISE NOTICE 'W2 OK';

    -- W3: 作ったロットが無い作業実績(材料だけ投入)は単価 NULL。材料を投入していない作業実績は、材料 0・行 0
    SELECT * INTO c FROM tests.v_work_record_cost WHERE trans_work_record_id = wr_a;
    IF c.material_amount <> 0 OR c.material_line_count <> 0 OR c.produced_quantity <> 10 THEN RAISE EXCEPTION 'W3 NG: A'; END IF;
    INSERT INTO tests.trans_work_record (trans_work_plan_id, nth_time, start_at, qty)
    VALUES (wp.trans_work_plan_id, 3, now(), 1) RETURNING trans_work_record_id INTO wr_c;
    SELECT * INTO c FROM tests.v_work_record_cost WHERE trans_work_record_id = wr_c;
    IF c.unit_cost IS NOT NULL OR c.produced_quantity <> 0 THEN RAISE EXCEPTION 'W3 NG: ロット無し'; END IF;
    RAISE NOTICE 'W3 OK';

    -- W4: 材料のロットが社外の所有物(顧客・発注先の物)のときは、材料は 0 円で、支給品の印が付く
    INSERT INTO tests.trans_visiter_owner (trans_visiter_id, owner_stakeholder_history_id, owner_stakeholder_id, trans_order_detail_id)
    SELECT lot_a.trans_visiter_id, h.history_id, sh, od FROM tests.history_mstr_stakeholder AS h
     WHERE h.mstr_stakeholder_id = sh ORDER BY h.revision DESC LIMIT 1;
    SELECT * INTO c FROM tests.v_work_record_cost WHERE trans_work_record_id = wr_b;
    IF c.material_amount <> 0 OR NOT c.has_supplied_material THEN RAISE EXCEPTION 'W4 NG: % / %', c.material_amount, c.has_supplied_material; END IF;
    RAISE NOTICE 'W4 OK';

    -- W5: 工程の原価 = 数量 × 作業の標準の原価(作業の標準の原価が登録されているときだけ確かめる)
    SELECT tl2.mstr_task_location_id INTO tl FROM tests.mstr_task_location AS tl2
     WHERE tl2.mstr_task_id = wp.mstr_task_id AND tl2.remove IS FALSE LIMIT 1;
    IF tl IS NOT NULL THEN
        INSERT INTO tests.mstr_item_task_cost (mstr_item_id, mstr_task_location_id, cost) VALUES (wp.item_id, tl, 25);
        SELECT * INTO c FROM tests.v_work_record_cost WHERE trans_work_record_id = wr_b;
        IF c.process_cost <> 3 * 25 THEN RAISE EXCEPTION 'W5 NG: %', c.process_cost; END IF;
        RAISE NOTICE 'W5 OK (工程 %)', c.process_cost;
    ELSE
        RAISE NOTICE 'W5 SKIP (作業の標準の原価を登録できる場所が無い)';
    END IF;
END $$;
