-- 受注明細の計画状況のビューと、それを使う mrp_run の適用ファイル(検査: 20261118_0001_order_detail_planning.sql)。
-- 検査が通るまで、PERO のデータ・06_cteate_test.sql には入れない(通過後に、このファイルの内容を PERO に取り込み、06 に出力して、このファイルは削除する)。
-- 適用の順: ビュー 2 つ → mrp_run(CREATE OR REPLACE。引数は変わらない)。

CREATE VIEW tests.v_order_detail_plan AS
SELECT
    od.trans_order_detail_id
    , rp.trans_resource_plan_id
    , (rp.trans_resource_plan_id IS NOT NULL) AS planned
FROM tests.trans_order_detail AS od
LEFT JOIN LATERAL (
    SELECT x.trans_resource_plan_id FROM tests.trans_resource_plan AS x
    WHERE x.trans_order_detail_id = od.trans_order_detail_id
      AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
    ORDER BY x.register_at DESC, x.trans_resource_plan_id LIMIT 1
) AS rp ON TRUE;

COMMENT ON VIEW tests.v_order_detail_plan IS '@primaryKey trans_order_detail_id
@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (trans_resource_plan_id) references trans_resource_plan (trans_resource_plan_id)
受注明細の資材計画(受注明細に直接つながる最新の資材計画。mrp_run の受注の需要が使う)';

COMMENT ON COLUMN tests.v_order_detail_plan.trans_resource_plan_id IS '受注明細に直接つながる最新の資材計画(論理削除と、下位の部品の資材計画を除く。無ければ NULL)';
COMMENT ON COLUMN tests.v_order_detail_plan.planned IS '計画済み(資材計画が有る。MRP が計画した)';

CREATE VIEW tests.v_order_detail_planning AS
SELECT
    ob.trans_order_detail_id
    , ob.symbol
    , ob.trans_order_id
    , ob.item_id
    , pl.trans_resource_plan_id
    , pl.planned
    , (ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0) AS has_demand
    , ob.stop AS stopped
    , (NOT pl.planned
       AND ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0
       AND ob.stop IS NOT TRUE) AS to_plan
FROM tests.v_order_detail_balance AS ob
INNER JOIN tests.trans_order AS o ON o.trans_order_id = ob.trans_order_id AND o.remove IS FALSE
INNER JOIN tests.v_order_detail_plan AS pl ON pl.trans_order_detail_id = ob.trans_order_detail_id;

COMMENT ON VIEW tests.v_order_detail_planning IS '@primaryKey trans_order_detail_id
@unique symbol
@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (trans_order_id) references trans_order (trans_order_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (trans_resource_plan_id) references trans_resource_plan (trans_resource_plan_id)
受注明細の計画状況(MRP の対象になるか)';

COMMENT ON COLUMN tests.v_order_detail_planning.trans_resource_plan_id IS '受注明細に直接つながる最新の資材計画(無ければ NULL)';
COMMENT ON COLUMN tests.v_order_detail_planning.planned IS '計画済み(資材計画が有る)';
COMMENT ON COLUMN tests.v_order_detail_planning.has_demand IS '需要が有る(数量 − キャンセル数量 + 代品ありの返品 > 0。全部キャンセル済みは false)';
COMMENT ON COLUMN tests.v_order_detail_planning.stopped IS '停止中(MRP は停止中の受注明細を凍結する)';
COMMENT ON COLUMN tests.v_order_detail_planning.to_plan IS '次の受注 MRP が計画する(未計画・需要が有る・停止していない。mrp_run の受注の需要の判定と同じ)';

CREATE OR REPLACE FUNCTION tests.mrp_run(
    p_mode smallint,
    p_staff_id uuid DEFAULT NULL,
    p_order_detail_ids uuid[] DEFAULT NULL,
    p_accept_late boolean DEFAULT false,
    p_reschedule_out_days integer DEFAULT 3,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_mrp_run AS $$
DECLARE
    v_run tests.trans_mrp_run;
    v_run_id uuid;
    v_staff uuid := tests.mrp_staff(p_staff_id);
    v_staff_hist uuid;
    v_scoped boolean := (p_mode = 2 AND p_order_detail_ids IS NOT NULL);
    v_n integer;
    v_now timestamp := date_trunc('minute', now()::timestamp);
    v_today date := now()::date;
    v_seq integer := 0;
    v_max_llc integer;
    v_llc integer;
    d record; s record; t record; c record; w record; r record;
    v_rem numeric; v_take numeric; v_alloc numeric;
    v_sug uuid; v_sup uuid; v_sug2 uuid; v_tk uuid;
    v_qty numeric; v_lot numeric; v_proc smallint;
    v_supplier record; v_found boolean; v_lead integer; v_supplied boolean;
    v_choice smallint; v_choice_msg varchar(256); v_buy_h numeric; v_make_h numeric;
    v_del numeric; v_ins numeric; v_arrival timestamp; v_rel timestamp; v_ready timestamp; v_asking boolean;
    v_period date; v_release date;
    v_due timestamp; v_end timestamp; v_start timestamp; v_first timestamp;
    v_hours numeric; v_load numeric;
    v_late boolean; v_ntask integer;
    v_slot record; v_osug uuid; v_prev_vendor uuid; v_vendor uuid; v_back boolean;
    v_tgt timestamp;
    v_resched boolean; v_switch boolean; v_broken boolean; v_changed boolean; v_pdchg boolean;
    v_kind varchar(32); v_msg varchar(1024);
    v_target timestamp; v_started boolean;
    v_rp_id uuid; v_rp_qty numeric; v_rp_deadline timestamp; v_rp_alloc numeric; v_issued numeric;
BEGIN
    IF p_mode NOT IN (1, 2) THEN
        RAISE EXCEPTION 'mrp_run: p_mode は 1(受注MRP) または 2(再MRP) を指定してください' USING ERRCODE = 'MRP00';
    END IF;
    v_staff_hist := tests.mrp_hist_staff(v_staff);
    IF v_staff_hist IS NULL THEN
        RAISE EXCEPTION 'mrp_run: 担当者が見つかりません (%)', v_staff USING ERRCODE = 'MRP00';
    END IF;

    -- 同時実行させない。古い未確定の実行は失効させる。
    PERFORM pg_advisory_xact_lock(hashtext('tests.mrp'));
    -- 新規 MRP(受注 MRP)のときだけ、破棄・失効して 30 日を過ぎた実行を削除する(mrp_purge)。
    -- 削除に失敗しても MRP は続ける。外部キーは遅延(コミットで検査)のため、いったん即時にして、この中で失敗を捕まえる。
    IF p_mode = 1 THEN
        BEGIN
            PERFORM tests.mrp_purge();
            SET CONSTRAINTS ALL IMMEDIATE;
            SET CONSTRAINTS ALL DEFERRED;
        EXCEPTION WHEN OTHERS THEN
            RAISE WARNING 'mrp_run: mrp_purge に失敗しました (%): %', SQLSTATE, SQLERRM;
        END;
    END IF;
    UPDATE tests.trans_mrp_run SET status = 3 WHERE status = 0;

    INSERT INTO tests.trans_mrp_run (run_mode, status, run_at, staff_history_id, staff_id, params, remarks,
                                     update_user_id, update_user_history_id)
    VALUES (p_mode, 0, now(), v_staff_hist, v_staff,
            jsonb_build_object('order_detail_ids', p_order_detail_ids, 'accept_late', p_accept_late, 'reschedule_out_days', p_reschedule_out_days),
            p_remarks, v_staff, v_staff_hist)
    RETURNING trans_mrp_run_id INTO v_run_id;

    -- ------------------------------------------------------------------
    -- 1. 品目 (LLC・内製/購買・安全在庫・ロット)
    -- ------------------------------------------------------------------
    DROP TABLE IF EXISTS _mrp_item, _mrp_scope, _mrp_dem, _mrp_sup, _mrp_resv, _mrp_claim, _mrp_peg, _mrp_day;
    CREATE TEMP TABLE _mrp_item ON COMMIT DROP AS
    WITH RECURSIVE bom(item_id, lvl, path) AS (
        SELECT i.mstr_item_id, 0, ARRAY[i.mstr_item_id]
        FROM tests.mstr_item AS i WHERE i.remove IS FALSE
        UNION ALL
        SELECT tc.mstr_item_id, bom.lvl + 1, bom.path || tc.mstr_item_id
        FROM bom
        INNER JOIN tests.mstr_item_tree AS tc
            ON tc.parent_mstr_item_id = bom.item_id AND tc.remove IS FALSE
        WHERE NOT (tc.mstr_item_id = ANY (bom.path)) AND bom.lvl < 30
    )
    SELECT
        i.mstr_item_id AS item_id
        , MAX(bom.lvl) AS llc
        , tests.mrp_proc_type(i.mstr_item_id) AS proc_type
        , COALESCE(l.safety_inventory, 0) AS safety
        , COALESCE(l.lot_size, 0) AS lot_size
    FROM tests.mstr_item AS i
    INNER JOIN bom ON bom.item_id = i.mstr_item_id
    LEFT JOIN tests.mstr_item_lot AS l ON l.mstr_item_lot_id = i.mstr_item_lot_id AND l.remove IS FALSE
    WHERE i.remove IS FALSE
    GROUP BY i.mstr_item_id, l.safety_inventory, l.lot_size;
    CREATE INDEX ON _mrp_item (item_id);

    -- 対象範囲 (再MRPで受注明細を指定したとき): その受注明細の資材計画と、その下位の資材計画
    CREATE TEMP TABLE _mrp_scope (rp_id uuid PRIMARY KEY) ON COMMIT DROP;
    IF v_scoped THEN
        INSERT INTO _mrp_scope
        WITH RECURSIVE sc(rp_id) AS (
            SELECT x.trans_resource_plan_id FROM tests.trans_resource_plan AS x
            WHERE x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
              AND x.trans_order_detail_id = ANY (p_order_detail_ids)
            UNION
            SELECT ch.trans_resource_plan_id
            FROM sc
            INNER JOIN tests.trans_operations_plan AS op
                ON op.trans_resource_plan_id = sc.rp_id AND op.remove IS FALSE
            INNER JOIN tests.trans_resource_plan AS ch
                ON ch.parent_trans_operations_plan_id = op.trans_operations_plan_id AND ch.remove IS FALSE
        )
        SELECT rp_id FROM sc;
    END IF;

    -- ------------------------------------------------------------------
    -- 2. 需要  src: 1=受注 2=非計上 3=安全在庫 4=従属
    --    gross = 総所要(資材計画の数量)、qty = 残所要(出荷済み・払出済みを除く)
    -- ------------------------------------------------------------------
    CREATE TEMP TABLE _mrp_dem (
        dem_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
        item_id uuid NOT NULL,
        llc integer,
        gross numeric,
        qty numeric,
        need_at timestamp,
        src smallint,
        frozen boolean DEFAULT false,
        done boolean DEFAULT false,
        order_detail_id uuid,
        unrec_detail_id uuid,
        rp_id uuid,
        parent_op_id uuid,
        parent_sug_id uuid,
        frozen_alloc numeric DEFAULT 0,
        alloc numeric DEFAULT 0,
        sug_id uuid,
        old_qty numeric,
        old_need timestamp,
        old_alloc numeric,
        root_od uuid
    ) ON COMMIT DROP;

    -- 受注 (claude/133: キャンセル数量・代品ありの返品を数える。停止は凍結。全部キャンセルは需要なし)
    INSERT INTO _mrp_dem (item_id, gross, qty, need_at, src, frozen, order_detail_id, rp_id,
                          frozen_alloc, old_qty, old_need, old_alloc, root_od)
    SELECT
        od.item_id
        , ob.quantity - ob.cancel_quantity + ob.replacement_quantity
        , ob.remaining_quantity
        , tests.mrp_need_end(COALESCE(od.deadline, o.deadline, od.delivery_date, o.delivery_date))
        , 1
        , (rp.trans_resource_plan_id IS NOT NULL
           AND (p_mode = 1 OR od.stop IS TRUE
                OR (v_scoped AND NOT (od.trans_order_detail_id = ANY (p_order_detail_ids)))))
        , od.trans_order_detail_id
        , rp.trans_resource_plan_id
        , COALESCE(rp.inventory_resavation, 0)
        , rp.quantity, rp.deadline, rp.inventory_resavation
        , od.trans_order_detail_id
    FROM tests.trans_order_detail AS od
    INNER JOIN tests.trans_order AS o
        ON o.trans_order_id = od.trans_order_id AND o.remove IS FALSE
    INNER JOIN tests.v_order_detail_balance AS ob
        ON ob.trans_order_detail_id = od.trans_order_detail_id
    LEFT JOIN tests.v_order_detail_plan AS pl
        ON pl.trans_order_detail_id = od.trans_order_detail_id
    LEFT JOIN tests.trans_resource_plan AS rp
        ON rp.trans_resource_plan_id = pl.trans_resource_plan_id
    WHERE od.remove IS FALSE
      AND ob.quantity - ob.cancel_quantity + ob.replacement_quantity > 0
      AND NOT (od.stop IS TRUE AND rp.trans_resource_plan_id IS NULL)
      AND ((p_mode = 2 AND NOT v_scoped)
           OR rp.trans_resource_plan_id IS NOT NULL
           OR p_order_detail_ids IS NULL
           OR od.trans_order_detail_id = ANY (p_order_detail_ids));

    -- 非計上
    INSERT INTO _mrp_dem (item_id, gross, qty, need_at, src, frozen, unrec_detail_id, rp_id,
                          frozen_alloc, old_qty, old_need, old_alloc)
    SELECT
        ud.item_id
        , ud.quantity
        , GREATEST(ud.quantity - CASE WHEN rp.trans_resource_plan_id IS NULL THEN 0
                                      ELSE tests.mrp_issued(rp.trans_resource_plan_id) END, 0)
        , tests.mrp_need_end(COALESCE(ud.deadline, u.deadline, u.expected_completion_date))
        , 2
        , ((p_mode = 1 OR v_scoped) AND rp.trans_resource_plan_id IS NOT NULL)
        , ud.trans_unrecognized_detail_id
        , rp.trans_resource_plan_id
        , COALESCE(rp.inventory_resavation, 0)
        , rp.quantity, rp.deadline, rp.inventory_resavation
    FROM tests.trans_unrecognized_detail AS ud
    INNER JOIN tests.trans_unrecognized AS u
        ON u.trans_unrecognized_id = ud.trans_unrecognized_id AND u.remove IS FALSE
    LEFT JOIN LATERAL (
        SELECT x.* FROM tests.trans_resource_plan AS x
        WHERE x.trans_unrecognized_detail_id = ud.trans_unrecognized_detail_id
          AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
        ORDER BY x.register_at DESC LIMIT 1
    ) AS rp ON TRUE
    WHERE ud.remove IS FALSE
      AND ((p_mode = 2 AND NOT v_scoped) OR rp.trans_resource_plan_id IS NOT NULL
           OR (p_mode = 1 AND p_order_detail_ids IS NULL));

    -- 安全在庫 (必要日なし = できるだけ早く)。安全在庫の資材計画 = 受注明細・非計上明細・親生産計画のどれも無い資材計画
    INSERT INTO _mrp_dem (item_id, gross, qty, need_at, src, frozen, rp_id,
                          frozen_alloc, old_qty, old_need, old_alloc)
    SELECT
        mi.item_id, mi.safety, mi.safety, NULL, 3
        , ((p_mode = 1 OR v_scoped) AND rp.trans_resource_plan_id IS NOT NULL)
        , rp.trans_resource_plan_id
        , COALESCE(rp.inventory_resavation, 0)
        , rp.quantity, rp.deadline, rp.inventory_resavation
    FROM _mrp_item AS mi
    LEFT JOIN LATERAL (
        SELECT x.* FROM tests.trans_resource_plan AS x
        WHERE x.item_id = mi.item_id AND x.remove IS FALSE
          AND x.trans_order_detail_id IS NULL AND x.trans_unrecognized_detail_id IS NULL
          AND x.parent_trans_operations_plan_id IS NULL
        ORDER BY x.register_at DESC LIMIT 1
    ) AS rp ON TRUE
    WHERE mi.safety > 0
      AND NOT (v_scoped AND rp.trans_resource_plan_id IS NULL);

    -- 受注MRP・範囲指定の再MRP: 範囲外の既存の従属需要は凍結したまま読み込む
    IF p_mode = 1 OR v_scoped THEN
        INSERT INTO _mrp_dem (item_id, gross, qty, need_at, src, frozen, rp_id, parent_op_id,
                              frozen_alloc, old_qty, old_need, old_alloc, root_od)
        SELECT
            rp.item_id, rp.quantity
            , GREATEST(rp.quantity - tests.mrp_issued(rp.trans_resource_plan_id), 0)
            , rp.deadline, 4, TRUE, rp.trans_resource_plan_id, rp.parent_trans_operations_plan_id
            , COALESCE(rp.inventory_resavation, 0)
            , rp.quantity, rp.deadline, rp.inventory_resavation
            , tests.mrp_root_order_detail(rp.trans_resource_plan_id)
        FROM tests.trans_resource_plan AS rp
        INNER JOIN tests.trans_operations_plan AS op
            ON op.trans_operations_plan_id = rp.parent_trans_operations_plan_id AND op.remove IS FALSE
        WHERE rp.remove IS FALSE
          AND NOT EXISTS (SELECT 1 FROM _mrp_scope AS sc WHERE sc.rp_id = rp.trans_resource_plan_id);
    END IF;

    -- 凍結した生産計画 (生産計画の停止・受注明細の停止) の従属需要は、どの実行でも凍結のまま読み込む  claude/133
    INSERT INTO _mrp_dem (item_id, gross, qty, need_at, src, frozen, rp_id, parent_op_id,
                          frozen_alloc, old_qty, old_need, old_alloc, root_od)
    SELECT
        rp.item_id, rp.quantity
        , GREATEST(rp.quantity - tests.mrp_issued(rp.trans_resource_plan_id), 0)
        , rp.deadline, 4, TRUE, rp.trans_resource_plan_id, rp.parent_trans_operations_plan_id
        , COALESCE(rp.inventory_resavation, 0)
        , rp.quantity, rp.deadline, rp.inventory_resavation
        , tests.mrp_root_order_detail(rp.trans_resource_plan_id)
    FROM tests.trans_resource_plan AS rp
    INNER JOIN tests.trans_operations_plan AS op
        ON op.trans_operations_plan_id = rp.parent_trans_operations_plan_id AND op.remove IS FALSE
       AND op.discontinue IS NOT TRUE
    WHERE rp.remove IS FALSE
      AND tests.mrp_op_frozen(op.trans_operations_plan_id)
      AND NOT EXISTS (SELECT 1 FROM _mrp_dem AS y WHERE y.rp_id = rp.trans_resource_plan_id);

    -- 残所要0 で資材計画も無いもの(出荷済み等)は対象外
    DELETE FROM _mrp_dem WHERE qty <= 0 AND rp_id IS NULL;
    UPDATE _mrp_dem AS x SET llc = i.llc FROM _mrp_item AS i WHERE i.item_id = x.item_id;
    UPDATE _mrp_dem SET llc = 0 WHERE llc IS NULL;

    -- ------------------------------------------------------------------
    -- 2'. 供給  kind: 1=現在庫 2=発注残 3=生産残 4=新規発注 5=新規生産
    -- ------------------------------------------------------------------
    CREATE TEMP TABLE _mrp_sup (
        sup_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
        item_id uuid NOT NULL,
        kind smallint NOT NULL,
        qty numeric NOT NULL,
        used numeric DEFAULT 0,
        avail_at timestamp,
        pegged_rp uuid,
        pd_id uuid,
        op_id uuid,
        sug_id uuid,
        started boolean DEFAULT false,
        restocking boolean DEFAULT false,
        first_start timestamp,
        prod_qty numeric,
        children_done boolean DEFAULT false,
        cancel_sug uuid,
        orig_rp uuid,
        in_scope boolean DEFAULT true,
        insp_h numeric DEFAULT 0,
        supplier_id uuid,
        frozen_sup boolean DEFAULT false,
        peg_rp uuid,
        peg_od uuid,
        sd_id uuid,
        root_od uuid
    ) ON COMMIT DROP;

    INSERT INTO _mrp_sup (item_id, kind, qty, avail_at)
    -- 現在庫 = 使える量 (仮止め・未解除の異常のロットは数えない。解除されれば次の再MRPで使われる)
    SELECT oh.item_id, 1, oh.available_quantity, '-infinity'::timestamp
    FROM tests.v_item_on_hand AS oh WHERE oh.available_quantity > 0;

    -- 顧客の物の在庫 (claude/131)。v_item_on_hand の使える量には入らない。その受注明細(・資材計画)の需要にだけ使う
    --   peg_rp: 支給明細の資材計画 / peg_od: 支給明細の受注明細、または製品が顧客所有の受注明細
    --   仮止め・未解除の異常のロット(検品前など)は数えない。発注先の物(有償支給)は数えない
    INSERT INTO _mrp_sup (item_id, kind, qty, avail_at, peg_rp, peg_od, sd_id)
    SELECT ep.item_id, 1, SUM(ep.quantity), '-infinity'::timestamp,
           sd.trans_resource_plan_id, COALESCE(sd.trans_order_detail_id, ep.trans_order_detail_id), ep.trans_supply_detail_id
    FROM tests.v_external_property AS ep
    LEFT JOIN tests.trans_supply_detail AS sd ON sd.trans_supply_detail_id = ep.trans_supply_detail_id
    WHERE ep.item_id IS NOT NULL AND ep.release IS TRUE AND COALESCE(ep.open_complaint_count, 0) = 0
      AND COALESCE(sd.trans_order_detail_id, ep.trans_order_detail_id) IS NOT NULL
    GROUP BY ep.item_id, sd.trans_resource_plan_id, COALESCE(sd.trans_order_detail_id, ep.trans_order_detail_id), ep.trans_supply_detail_id
    HAVING SUM(ep.quantity) > 0;

    -- 顧客からの支給予定 (kind 6、claude/131)。まだ受けていない数量を、その受注明細(・資材計画)の需要にだけ使う
    INSERT INTO _mrp_sup (item_id, kind, qty, avail_at, peg_rp, peg_od, sd_id)
    SELECT b.item_id, 6, b.remaining_quantity, COALESCE(b.scheduled_at, v_now),
           b.trans_resource_plan_id, b.trans_order_detail_id, b.trans_supply_detail_id
    FROM tests.v_supply_detail_balance AS b
    WHERE b.receive AND b.counterpart_owns AND b.trans_order_detail_id IS NOT NULL AND b.remaining_quantity > 0;

    -- 発注残 (外注加工の発注明細 = 生産計画明細から参照されるものは品目の供給ではない)
    --   使える日時 = 納期 ＋ その仕入先の標準検品時間
    --   claude/133: 残 = v_purchase_detail_balance (キャンセル数量・代品ありの返品)。停止中は凍結 (紐づく需要にだけ使う)
    INSERT INTO _mrp_sup (item_id, kind, qty, avail_at, pegged_rp, pd_id, restocking, started, orig_rp, insp_h, supplier_id,
                          frozen_sup)
    SELECT
        pd.item_id, 2
        , pb.remaining_quantity
        , COALESCE(pd.period, p.deadline, v_now) + COALESCE(ms.quality_inspection_time, INTERVAL '0')
        , rp.trans_resource_plan_id
        , pd.trans_purchase_detail_id
        , COALESCE(pd.restocking_purchase, false)
        , COALESCE(rc.q, 0) > 0
        , pd.trans_resource_plan_id
        , EXTRACT(EPOCH FROM COALESCE(ms.quality_inspection_time, INTERVAL '0')) / 3600
        , p.stakeholder_id
        , pd.stop IS TRUE
    FROM tests.trans_purchase_detail AS pd
    INNER JOIN tests.v_purchase_detail_balance AS pb ON pb.trans_purchase_detail_id = pd.trans_purchase_detail_id
    INNER JOIN tests.trans_purchase AS p
        ON p.trans_purchase_id = pd.trans_purchase_id AND p.remove IS FALSE
    LEFT JOIN tests.mstr_item_supplier AS ms
        ON ms.mstr_item_id = pd.item_id AND ms.mstr_stakeholder_id = p.stakeholder_id AND ms.remove IS FALSE
    LEFT JOIN tests.trans_resource_plan AS rp
        ON rp.trans_resource_plan_id = pd.trans_resource_plan_id AND rp.remove IS FALSE
    LEFT JOIN LATERAL (
        SELECT SUM(r2.quantity) AS q FROM tests.trans_purchase_rec AS r2
        WHERE r2.trans_purchase_detail_id = pd.trans_purchase_detail_id AND r2.remove IS FALSE
    ) AS rc ON TRUE
    WHERE pd.remove IS FALSE
      AND NOT tests.mrp_is_outsource_detail(pd.trans_purchase_detail_id)
      AND pb.remaining_quantity > 0;

    -- 生産残 (生産数量 - 最終工程の作業実績)
    --   claude/133: 打ち切り(discontinue)は生産残 0。停止・受注明細の停止は凍結 (紐づく需要にだけ使い、従属需要は展開し直さない)
    INSERT INTO _mrp_sup (item_id, kind, qty, avail_at, pegged_rp, op_id, started, first_start, prod_qty, children_done, orig_rp,
                          frozen_sup, root_od)
    SELECT
        rp.item_id, 3
        , x.prod_qty - COALESCE(done.q, 0)
        , COALESCE(op.deadline, wq.last_end, v_now)
        , CASE WHEN rp.remove IS FALSE THEN rp.trans_resource_plan_id END
        , op.trans_operations_plan_id
        , COALESCE(wr.cnt, 0) > 0
        , wq.first_start
        , x.prod_qty
        , (p_mode = 1 OR tests.mrp_op_frozen(op.trans_operations_plan_id) OR (v_scoped AND NOT EXISTS (
              SELECT 1 FROM _mrp_scope AS sc WHERE sc.rp_id = op.trans_resource_plan_id)))
        , op.trans_resource_plan_id
        , tests.mrp_op_frozen(op.trans_operations_plan_id)
        , tests.mrp_root_order_detail(op.trans_resource_plan_id)
    FROM tests.trans_operations_plan AS op
    INNER JOIN tests.trans_resource_plan AS rp
        ON rp.trans_resource_plan_id = op.trans_resource_plan_id
    CROSS JOIN LATERAL (
        -- 生産数量。0(06の既定値)は未設定とみなして資材計画から求める。資材計画が取消済みなら0
        SELECT COALESCE(NULLIF(op.quantity, 0),
                        CASE WHEN rp.remove IS FALSE THEN rp.quantity - COALESCE(rp.inventory_resavation, 0) ELSE 0 END) AS prod_qty
    ) AS x
    LEFT JOIN LATERAL (
        SELECT MIN(wp.start_at) AS first_start, MAX(wp.completion_at) AS last_end
        FROM tests.trans_work_plan AS wp
        WHERE wp.trans_operations_plan_id = op.trans_operations_plan_id AND wp.remove IS FALSE
    ) AS wq ON TRUE
    LEFT JOIN LATERAL (
        SELECT wp.trans_work_plan_id FROM tests.trans_work_plan AS wp
        WHERE wp.trans_operations_plan_id = op.trans_operations_plan_id AND wp.remove IS FALSE
        ORDER BY wp.sequence DESC NULLS LAST, wp.completion_at DESC NULLS LAST LIMIT 1
    ) AS lw ON TRUE
    LEFT JOIN LATERAL (
        SELECT SUM(r2.qty) AS q FROM tests.trans_work_record AS r2
        WHERE r2.trans_work_plan_id = lw.trans_work_plan_id AND r2.remove IS FALSE
    ) AS done ON TRUE
    LEFT JOIN LATERAL (
        SELECT COUNT(*) AS cnt FROM tests.trans_work_record AS r2
        INNER JOIN tests.trans_work_plan AS wp
            ON wp.trans_work_plan_id = r2.trans_work_plan_id AND wp.remove IS FALSE
        WHERE wp.trans_operations_plan_id = op.trans_operations_plan_id AND r2.remove IS FALSE
    ) AS wr ON TRUE
    WHERE op.remove IS FALSE AND op.discontinue IS NOT TRUE
      AND x.prod_qty - COALESCE(done.q, 0) > 0;

    CREATE INDEX ON _mrp_sup (item_id, kind);
    -- 範囲指定の再MRP: 取消・後ろ倒し・過剰の提案は、範囲内の資材計画に紐づく供給と、紐づき先の無い供給だけ
    IF v_scoped THEN
        UPDATE _mrp_sup AS x SET in_scope = (x.orig_rp IS NULL
            OR EXISTS (SELECT 1 FROM _mrp_scope AS sc WHERE sc.rp_id = x.orig_rp)
            OR NOT EXISTS (SELECT 1 FROM tests.trans_resource_plan AS y
                           WHERE y.trans_resource_plan_id = x.orig_rp AND y.remove IS FALSE))
        WHERE x.kind IN (2, 3);
    END IF;

    -- 確定済みの引当予約(未引当)。需要(資材計画)ごとに、どの供給をどれだけ押さえているか
    CREATE TEMP TABLE _mrp_resv ON COMMIT DROP AS
    SELECT rq.trans_resource_plan_id AS rp_id, x.sup_id, SUM(rq.quantity) AS qty
    FROM tests.trans_inventory_request AS rq
    LEFT JOIN tests.trans_purchase_rez AS pz
        ON pz.trans_purchase_rez_id = rq.trans_purchase_rez_id AND pz.remove IS FALSE
    LEFT JOIN tests.trans_product_rez AS pr
        ON pr.trans_product_rez_id = rq.trans_product_rez_id AND pr.remove IS FALSE
    LEFT JOIN tests.trans_work_plan AS wp
        ON wp.trans_work_plan_id = pr.trans_work_plan_id
    INNER JOIN _mrp_sup AS x
        ON (x.kind = 2 AND x.pd_id = pz.trans_purchase_detail_id)
        OR (x.kind = 3 AND x.op_id = wp.trans_operations_plan_id)
    WHERE rq.remove IS FALSE AND rq.trans_resource_plan_id IS NOT NULL
      AND NOT EXISTS (SELECT 1 FROM tests.trans_inventory_apply AS ap
                      WHERE ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE)
    GROUP BY rq.trans_resource_plan_id, x.sup_id;

    -- 引当予約のうち、供給がすでに入庫・完成して残っていないもの = その資材計画の在庫の押さえ
    CREATE TEMP TABLE _mrp_claim ON COMMIT DROP AS
    SELECT rq.trans_resource_plan_id AS rp_id, SUM(rq.quantity) AS qty
    FROM tests.trans_inventory_request AS rq
    LEFT JOIN tests.trans_purchase_rez AS pz
        ON pz.trans_purchase_rez_id = rq.trans_purchase_rez_id AND pz.remove IS FALSE
    LEFT JOIN tests.trans_product_rez AS pr
        ON pr.trans_product_rez_id = rq.trans_product_rez_id AND pr.remove IS FALSE
    LEFT JOIN tests.trans_work_plan AS wp
        ON wp.trans_work_plan_id = pr.trans_work_plan_id
    WHERE rq.remove IS FALSE AND rq.trans_resource_plan_id IS NOT NULL
      AND (pz.trans_purchase_rez_id IS NOT NULL OR pr.trans_product_rez_id IS NOT NULL)
      AND NOT EXISTS (SELECT 1 FROM tests.trans_inventory_apply AS ap
                      WHERE ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE)
      AND NOT EXISTS (SELECT 1 FROM _mrp_sup AS x
                      WHERE (x.kind = 2 AND x.pd_id = pz.trans_purchase_detail_id)
                         OR (x.kind = 3 AND x.op_id = wp.trans_operations_plan_id))
    GROUP BY rq.trans_resource_plan_id;
    CREATE INDEX ON _mrp_claim (rp_id);

    -- ペギング・日別負荷
    CREATE TEMP TABLE _mrp_peg (dem_id uuid, sup_id uuid, qty numeric) ON COMMIT DROP;
    CREATE TEMP TABLE _mrp_day (
        equipment_id uuid, load_date date, hours numeric,
        committed boolean, planned boolean, sup_id uuid, task_id uuid
    ) ON COMMIT DROP;

    -- 確定済みの生産計画明細の負荷 (内部の工程・未完了のみ)
    FOR w IN
        SELECT wp.*, ea.mstr_equipment_id AS eq, s2.sup_id, s2.prod_qty
        FROM _mrp_sup AS s2
        INNER JOIN tests.trans_work_plan AS wp
            ON wp.trans_operations_plan_id = s2.op_id AND wp.remove IS FALSE
        INNER JOIN tests.mstr_equipment_available AS ea
            ON ea.mstr_equipment_available_id = wp.mstr_equipment_available_id
        WHERE s2.kind = 3 AND NOT s2.frozen_sup
          AND wp.start_at IS NOT NULL AND wp.completion_at > wp.start_at
          AND COALESCE((SELECT SUM(r2.qty) FROM tests.trans_work_record AS r2
                        WHERE r2.trans_work_plan_id = wp.trans_work_plan_id AND r2.remove IS FALSE), 0) < s2.prod_qty
    LOOP
        SELECT COALESCE(SUM(sp.hours), 0) INTO v_load FROM tests.mrp_spread(w.eq, w.start_at, w.completion_at) AS sp;
        v_hours := COALESCE(EXTRACT(EPOCH FROM w.interval_plan) / 3600, v_load);
        INSERT INTO _mrp_day
        SELECT w.eq, sp.load_date,
               sp.hours * CASE WHEN v_load > 0 THEN v_hours / v_load ELSE 1 END,
               TRUE, TRUE, w.sup_id, NULL
        FROM tests.mrp_spread(w.eq, w.start_at, w.completion_at) AS sp;
    END LOOP;

    -- ------------------------------------------------------------------
    -- 3〜5. LLC順に割り当て
    -- ------------------------------------------------------------------
    SELECT COALESCE(MAX(llc), 0) INTO v_max_llc FROM _mrp_item;

    FOR v_llc IN 0 .. v_max_llc LOOP

        FOR d IN
            SELECT * FROM _mrp_dem WHERE llc = v_llc
            ORDER BY frozen DESC, (src = 3), need_at NULLS LAST, dem_id
        LOOP
            v_rem := d.qty;
            v_alloc := 0;
            v_sug := NULL;
            SELECT proc_type, lot_size INTO v_proc, v_lot FROM _mrp_item WHERE item_id = d.item_id;
            v_proc := COALESCE(v_proc, tests.mrp_proc_type(d.item_id));
            v_lot := COALESCE(v_lot, 0);

            IF NOT d.frozen THEN
                v_seq := v_seq + 1;
                INSERT INTO tests.trans_mrp_suggestion (
                    trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                    item_history_id, item_id, bom_level, plan_kind, quantity, need_at,
                    trans_order_detail_id, trans_unrecognized_detail_id, trans_resource_plan_id,
                    parent_trans_operations_plan_id, old_quantity, old_due_at,
                    update_user_id, update_user_history_id)
                VALUES (
                    v_run_id, d.parent_sug_id, v_seq, 'PLAN_KEEP', 1,
                    tests.mrp_hist_item(d.item_id), d.item_id, v_llc, d.src, d.gross, d.need_at,
                    d.order_detail_id, d.unrec_detail_id, d.rp_id,
                    d.parent_op_id, d.old_qty, d.old_need,
                    v_staff, v_staff_hist)
                RETURNING trans_mrp_suggestion_id INTO v_sug;
                UPDATE _mrp_dem SET sug_id = v_sug WHERE dem_id = d.dem_id;
            END IF;

            -- a0. 顧客支給 (顧客の物の在庫 → 支給予定)。その受注明細(・資材計画)の需要にだけ使う  claude/133
            FOR s IN
                SELECT x.* FROM _mrp_sup AS x
                WHERE x.item_id = d.item_id AND x.kind IN (1, 6) AND x.qty - x.used > 0
                  AND ((x.peg_rp IS NOT NULL AND x.peg_rp = d.rp_id)
                       OR (x.peg_rp IS NULL AND x.peg_od IS NOT NULL AND x.peg_od = d.root_od))
                ORDER BY x.kind, x.avail_at
            LOOP
                EXIT WHEN v_rem <= 0;
                v_take := LEAST(v_rem, s.qty - s.used);
                CONTINUE WHEN v_take <= 0;
                UPDATE _mrp_sup SET used = used + v_take WHERE sup_id = s.sup_id;
                INSERT INTO _mrp_peg VALUES (d.dem_id, s.sup_id, v_take);
                v_rem := v_rem - v_take;
                IF s.kind = 1 THEN v_alloc := v_alloc + v_take; END IF;
            END LOOP;

            -- 顧客支給の品目か (この受注明細・資材計画に顧客からの支給明細がある)。
            --    顧客支給の品目は、自社の空き在庫・空き供給を使わず、足りなければ支給依頼にする  claude/133
            v_supplied := EXISTS (
                SELECT 1 FROM tests.trans_supply_detail AS sd
                INNER JOIN tests.trans_supply AS sp
                    ON sp.trans_supply_id = sd.trans_supply_id AND sp.remove IS FALSE
                   AND sp.receive IS TRUE AND sp.counterpart_owns IS TRUE
                WHERE sd.remove IS FALSE AND sd.item_id = d.item_id
                  AND ((sd.trans_resource_plan_id IS NOT NULL AND sd.trans_resource_plan_id = d.rp_id)
                       OR (sd.trans_resource_plan_id IS NULL AND sd.trans_order_detail_id = d.root_od)));

            -- a. この需要に紐づく既存の供給 (発注明細・生産計画の資材計画ID、または確定済みの引当予約)
            IF d.rp_id IS NOT NULL THEN
                FOR s IN
                    SELECT x.*, CASE WHEN x.pegged_rp = d.rp_id THEN x.qty - x.used
                                     ELSE LEAST(rv.qty, x.qty - x.used) END AS cap
                    FROM _mrp_sup AS x
                    LEFT JOIN _mrp_resv AS rv ON rv.sup_id = x.sup_id AND rv.rp_id = d.rp_id
                    WHERE x.item_id = d.item_id AND x.kind IN (2, 3) AND x.qty - x.used > 0
                      AND (x.pegged_rp = d.rp_id OR rv.rp_id IS NOT NULL)
                    ORDER BY (x.pegged_rp = d.rp_id) DESC, x.avail_at
                LOOP
                    EXIT WHEN v_rem <= 0;
                    v_take := LEAST(v_rem, s.cap);
                    CONTINUE WHEN v_take <= 0;
                    UPDATE _mrp_sup SET used = used + v_take WHERE sup_id = s.sup_id;
                    INSERT INTO _mrp_peg VALUES (d.dem_id, s.sup_id, v_take);
                    v_rem := v_rem - v_take;
                END LOOP;
            END IF;

            -- b. 現在庫。ほかの未処理の需要の確定済み在庫引当は残す (凍結需要は確定済みの引当数量まで)
            --    顧客支給の品目は使わない (a0 の顧客の物・支給予定だけ)  claude/133
            IF v_rem > 0 AND (NOT v_supplied OR d.frozen) THEN
                SELECT * INTO s FROM _mrp_sup WHERE item_id = d.item_id AND kind = 1 AND qty - used > 0
                  AND peg_rp IS NULL AND peg_od IS NULL LIMIT 1;
                IF FOUND THEN
                    SELECT COALESCE(SUM(LEAST(COALESCE(y.old_alloc, 0) + COALESCE(cl.qty, 0), y.qty)), 0) INTO v_load
                    FROM _mrp_dem AS y
                    LEFT JOIN _mrp_claim AS cl ON cl.rp_id = y.rp_id
                    WHERE y.item_id = d.item_id AND NOT y.done AND y.dem_id <> d.dem_id AND y.rp_id IS NOT NULL;
                    v_take := LEAST(v_rem, s.qty - s.used - v_load,
                                    CASE WHEN d.frozen
                                         THEN d.frozen_alloc + COALESCE((SELECT cl.qty FROM _mrp_claim AS cl WHERE cl.rp_id = d.rp_id), 0)
                                         ELSE v_rem END);
                    IF v_take > 0 THEN
                        UPDATE _mrp_sup SET used = used + v_take WHERE sup_id = s.sup_id;
                        INSERT INTO _mrp_peg VALUES (d.dem_id, s.sup_id, v_take);
                        v_rem := v_rem - v_take;
                        v_alloc := v_alloc + v_take;
                    END IF;
                END IF;
            END IF;

            IF d.frozen THEN
                UPDATE _mrp_dem SET alloc = v_alloc, done = TRUE WHERE dem_id = d.dem_id;
                CONTINUE;
            END IF;

            -- c. 空いている供給 (紐づく需要が無い/処理済み。ほかの未処理需要の引当予約分は除く)
            FOR s IN
                SELECT x.*, x.qty - x.used - COALESCE((
                           SELECT SUM(rv.qty) FROM _mrp_resv AS rv
                           INNER JOIN _mrp_dem AS y ON y.rp_id = rv.rp_id AND NOT y.done AND y.dem_id <> d.dem_id
                           WHERE rv.sup_id = x.sup_id), 0) AS cap
                FROM _mrp_sup AS x
                WHERE x.item_id = d.item_id AND x.kind IN (2, 3, 4, 5) AND x.qty - x.used > 0
                  AND NOT x.frozen_sup AND NOT v_supplied
                  AND (x.kind IN (4, 5) OR x.pegged_rp IS NULL
                       OR NOT EXISTS (SELECT 1 FROM _mrp_dem AS y WHERE y.rp_id = x.pegged_rp AND NOT y.done))
                ORDER BY (d.need_at IS NOT NULL AND x.avail_at > d.need_at), x.avail_at
            LOOP
                EXIT WHEN v_rem <= 0;
                -- 新規計画の余り(ロットまとめ分)は間に合う場合だけ使う
                CONTINUE WHEN s.kind IN (4, 5) AND d.need_at IS NOT NULL AND s.avail_at > d.need_at;
                v_take := LEAST(v_rem, s.cap);
                CONTINUE WHEN v_take <= 0;
                UPDATE _mrp_sup SET used = used + v_take WHERE sup_id = s.sup_id;
                INSERT INTO _mrp_peg VALUES (d.dem_id, s.sup_id, v_take);
                v_rem := v_rem - v_take;
            END LOOP;

            -- d. 新規の発注 / 生産
            --    顧客支給の品目は発注・生産を提案せず、要判断の SUPPLY_REQUEST (支給依頼) を出す  claude/133
            IF v_supplied AND v_rem > 0 THEN
                v_seq := v_seq + 1;
                INSERT INTO tests.trans_mrp_suggestion (
                    trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision, need_user, late,
                    item_history_id, item_id, bom_level, plan_kind, quantity, need_at, trans_order_detail_id, message,
                    update_user_id, update_user_history_id)
                VALUES (
                    v_run_id, v_sug, v_seq, 'SUPPLY_REQUEST', 0, TRUE, FALSE,
                    tests.mrp_hist_item(d.item_id), d.item_id, v_llc, d.src, v_rem, d.need_at, d.root_od,
                    '顧客支給の品目です。支給予定と顧客の物の在庫では ' || v_rem::text
                        || ' 足りません。顧客に支給を依頼し、支給明細を登録してから再MRPしてください(発注・生産は提案しません)',
                    v_staff, v_staff_hist);
                v_rem := 0;
            ELSIF v_rem > 0 THEN
                -- 内製・購買の選択 (購入品フラグあり・工程あり): 品目体系の累積リードタイムで納期に間に合う方。両方なら上位(購買)
                v_choice := v_proc; v_choice_msg := NULL;
                IF v_proc = 3 THEN
                    v_buy_h := tests.mrp_buy_hours(d.item_id);
                    v_make_h := tests.mrp_make_hours(d.item_id);
                    IF v_buy_h IS NULL THEN
                        v_choice := 1; v_choice_msg := '内製・購買の選択: 仕入先が無いため内製';
                    ELSIF d.need_at IS NULL THEN
                        v_choice := 2; v_choice_msg := '内製・購買の選択: 必要日が無いため上位(購買)';
                    ELSIF d.need_at - make_interval(secs => (v_buy_h * 3600)::double precision) >= v_now THEN
                        v_choice := 2;
                        v_choice_msg := CASE WHEN d.need_at - make_interval(secs => (v_make_h * 3600)::double precision) >= v_now
                                             THEN '内製・購買の選択: 両方間に合うため上位(購買)'
                                             ELSE '内製・購買の選択: 内製では間に合わないため購買' END;
                    ELSIF d.need_at - make_interval(secs => (v_make_h * 3600)::double precision) >= v_now THEN
                        v_choice := 1; v_choice_msg := '内製・購買の選択: 購買では間に合わないため内製';
                    ELSE
                        v_choice := CASE WHEN v_buy_h <= v_make_h THEN 2 ELSE 1 END;
                        v_choice_msg := '内製・購買の選択: どちらも間に合わないためリードタイムの短い'
                                        || CASE WHEN v_choice = 2 THEN '購買' ELSE '内製' END;
                    END IF;
                END IF;

                IF v_choice = 2 THEN
                    -- 購買: 品目仕入先(仕入先フラグあり)の第一候補
                    --   納入日時 = 必要日時 - 標準検品時間、発注日時 = 納入日時 - デリバリータイム
                    SELECT * INTO v_supplier FROM tests.mrp_suppliers(d.item_id) LIMIT 1;
                    v_found := FOUND;
                    v_del := CASE WHEN v_found THEN v_supplier.delivery_hours ELSE 0 END;
                    v_ins := CASE WHEN v_found THEN v_supplier.inspection_hours ELSE 0 END;
                    v_asking := v_found AND v_supplier.asking_price;
                    v_qty := GREATEST(v_rem, CASE WHEN v_found THEN v_supplier.minimum_lot_size ELSE 0 END);
                    IF v_lot > 0 THEN v_qty := CEIL(v_qty / v_lot) * v_lot; END IF;

                    v_late := FALSE;
                    IF d.need_at IS NULL THEN
                        v_rel := v_now;
                        v_arrival := v_now + make_interval(secs => (v_del * 3600)::double precision);
                    ELSE
                        v_arrival := d.need_at - make_interval(secs => (v_ins * 3600)::double precision);
                        v_rel := v_arrival - make_interval(secs => (v_del * 3600)::double precision);
                        IF v_rel < v_now THEN
                            v_late := TRUE;
                            v_rel := v_now;
                            v_arrival := v_now + make_interval(secs => (v_del * 3600)::double precision);
                        END IF;
                    END IF;
                    v_ready := v_arrival + make_interval(secs => (v_ins * 3600)::double precision);

                    v_msg := CONCAT_WS(' / ',
                        CASE WHEN NOT v_found THEN '仕入先(仕入先フラグあり)が未登録です。仕入先を選んでから採用してください' END,
                        CASE WHEN v_asking THEN '言い値(単価未定)' END,
                        CASE WHEN v_late THEN '発注日時が過ぎています。最短納入 ' || to_char(v_arrival, 'YYYY-MM-DD HH24:MI')
                                              || '(必要 ' || to_char(d.need_at, 'YYYY-MM-DD HH24:MI') || ')' END);
                    v_seq := v_seq + 1;
                    INSERT INTO tests.trans_mrp_suggestion (
                        trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision, need_user, late,
                        item_history_id, item_id, bom_level, plan_kind, quantity, need_at, release_at, due_at,
                        stakeholder_history_id, stakeholder_id, cost, asking_price, message,
                        update_user_id, update_user_history_id)
                    VALUES (
                        v_run_id, v_sug, v_seq, 'PURCHASE_NEW',
                        CASE WHEN v_found AND (NOT v_late OR p_accept_late) THEN 1 ELSE 0 END,
                        NOT (v_found AND (NOT v_late OR p_accept_late)), v_late,
                        tests.mrp_hist_item(d.item_id), d.item_id, v_llc, d.src, v_qty, d.need_at,
                        v_rel, v_arrival,
                        CASE WHEN v_found THEN tests.mrp_hist_stakeholder(v_supplier.mstr_stakeholder_id) END,
                        CASE WHEN v_found THEN v_supplier.mstr_stakeholder_id END,
                        CASE WHEN v_asking THEN 0 WHEN v_found THEN v_supplier.cost END,
                        v_asking,
                        NULLIF(v_msg, ''),
                        v_staff, v_staff_hist)
                    RETURNING trans_mrp_suggestion_id INTO v_sug2;

                    INSERT INTO _mrp_sup (item_id, kind, qty, used, avail_at, sug_id, restocking, insp_h, supplier_id)
                    VALUES (d.item_id, 4, v_qty, v_rem, v_ready, v_sug2, d.src = 3, v_ins,
                            CASE WHEN v_found THEN v_supplier.mstr_stakeholder_id END)
                    RETURNING sup_id INTO v_sup;
                    INSERT INTO _mrp_peg VALUES (d.dem_id, v_sup, v_rem);
                    v_rem := 0;
                ELSE
                    -- 内製: 工程を逆算(必要日なしは今から順算)。工程ごとに内部/外部を mrp_plan_task で決める
                    --   連続する同じ外注先の工程は1つの外注発注(OUTSOURCE_NEW)にまとめる
                    v_qty := v_rem;
                    IF v_lot > 0 THEN v_qty := CEIL(v_qty / v_lot) * v_lot; END IF;

                    INSERT INTO _mrp_sup (item_id, kind, qty, used, avail_at, prod_qty, root_od)
                    VALUES (d.item_id, 5, v_qty, v_rem, COALESCE(d.need_at, v_now), v_qty, d.root_od)
                    RETURNING sup_id INTO v_sup;

                    v_seq := v_seq + 1;
                    INSERT INTO tests.trans_mrp_suggestion (
                        trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                        item_history_id, item_id, bom_level, plan_kind, quantity, need_at,
                        update_user_id, update_user_history_id)
                    VALUES (
                        v_run_id, v_sug, v_seq, 'PRODUCTION_NEW', 1,
                        tests.mrp_hist_item(d.item_id), d.item_id, v_llc, d.src, v_qty, d.need_at,
                        v_staff, v_staff_hist)
                    RETURNING trans_mrp_suggestion_id INTO v_sug2;
                    UPDATE _mrp_sup SET sug_id = v_sug2 WHERE sup_id = v_sup;

                    v_ntask := 0;
                    v_osug := NULL; v_prev_vendor := NULL;
                    v_back := d.need_at IS NOT NULL;
                    v_first := NULL;
                    IF v_back THEN v_end := d.need_at; ELSE v_start := v_now; END IF;
                    FOR t IN
                        SELECT iot.sequence AS iseq, ot.sequence AS oseq, ot.mstr_task_id
                        FROM tests.mstr_item_operation_task AS iot
                        INNER JOIN tests.mstr_operation_task AS ot
                            ON ot.mstr_operation_task_id = iot.mstr_operation_task_id AND ot.remove IS FALSE
                        WHERE iot.mstr_item_id = d.item_id AND iot.remove IS FALSE
                        ORDER BY CASE WHEN v_back THEN -iot.sequence ELSE iot.sequence END,
                                 CASE WHEN v_back THEN -ot.sequence ELSE ot.sequence END
                    LOOP
                        v_ntask := v_ntask + 1;
                        v_hours := tests.mrp_task_hours(d.item_id, t.mstr_task_id);
                        SELECT * INTO v_slot FROM tests.mrp_plan_task(d.item_id, t.mstr_task_id, v_hours,
                            CASE WHEN v_back THEN v_end ELSE v_start END, v_back);
                        IF v_slot.kind = 2 THEN
                            -- 外部: 連続する同じ外注先はまとめる
                            IF v_osug IS NULL OR v_prev_vendor IS DISTINCT FROM v_slot.mstr_stakeholder_id THEN
                                v_seq := v_seq + 1;
                                INSERT INTO tests.trans_mrp_suggestion (
                                    trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                                    item_history_id, item_id, bom_level, plan_kind, quantity, need_at, release_at, due_at,
                                    stakeholder_history_id, stakeholder_id, cost, update_user_id, update_user_history_id)
                                VALUES (
                                    v_run_id, v_sug2, v_seq, 'OUTSOURCE_NEW', 1,
                                    tests.mrp_hist_item(d.item_id), d.item_id, v_llc, d.src, v_qty, d.need_at,
                                    v_slot.start_at, v_slot.ready_at,
                                    tests.mrp_hist_stakeholder(v_slot.mstr_stakeholder_id), v_slot.mstr_stakeholder_id, 0,
                                    v_staff, v_staff_hist)
                                RETURNING trans_mrp_suggestion_id INTO v_osug;
                                v_prev_vendor := v_slot.mstr_stakeholder_id;
                            END IF;
                            UPDATE tests.trans_mrp_suggestion
                            SET release_at = LEAST(release_at, v_slot.start_at), due_at = GREATEST(due_at, v_slot.ready_at),
                                cost = COALESCE(cost, 0) + COALESCE(v_slot.cost, 0),
                                message = CASE WHEN v_slot.cost IS NULL
                                               THEN '品目作業単価が未登録の工程があります(単価0で計画)' ELSE message END
                            WHERE trans_mrp_suggestion_id = v_osug;
                            INSERT INTO tests.trans_mrp_suggestion_task (
                                trans_mrp_suggestion_id, mstr_task_id, sequence,
                                mstr_outsource_available_history_id, mstr_outsource_available_id,
                                outsource_trans_mrp_suggestion_id, cost, interval_plan, start_at, completion_at,
                                update_user_id, update_user_history_id)
                            VALUES (
                                v_sug2, t.mstr_task_id, t.iseq,
                                tests.mrp_hist_outsource_available(v_slot.mstr_outsource_available_id), v_slot.mstr_outsource_available_id,
                                v_osug, v_slot.cost, make_interval(secs => (v_hours * 3600)::double precision),
                                v_slot.start_at, v_slot.completion_at, v_staff, v_staff_hist);
                        ELSE
                            -- 内部 (または工程場所なし)
                            v_osug := NULL; v_prev_vendor := NULL;
                            INSERT INTO tests.trans_mrp_suggestion_task (
                                trans_mrp_suggestion_id, mstr_task_id, sequence,
                                mstr_equipment_available_history_id, mstr_equipment_available_id,
                                cost, interval_plan, start_at, completion_at, update_user_id, update_user_history_id)
                            VALUES (
                                v_sug2, t.mstr_task_id, t.iseq,
                                CASE WHEN v_slot.mstr_equipment_available_id IS NOT NULL
                                     THEN tests.mrp_hist_equipment_available(v_slot.mstr_equipment_available_id) END,
                                v_slot.mstr_equipment_available_id,
                                v_slot.cost, make_interval(secs => (v_hours * 3600)::double precision),
                                v_slot.start_at, v_slot.completion_at, v_staff, v_staff_hist)
                            RETURNING trans_mrp_suggestion_task_id INTO v_tk;
                            IF v_slot.mstr_equipment_id IS NOT NULL THEN
                                INSERT INTO _mrp_day
                                SELECT v_slot.mstr_equipment_id, sp.load_date, sp.hours, FALSE, TRUE, v_sup, v_tk
                                FROM tests.mrp_spread(v_slot.mstr_equipment_id, v_slot.start_at, v_slot.completion_at) AS sp;
                            END IF;
                        END IF;
                        v_first := LEAST(COALESCE(v_first, v_slot.start_at), v_slot.start_at);
                        IF v_back THEN v_end := v_slot.start_at; ELSE v_start := v_slot.ready_at; END IF;
                    END LOOP;
                    IF v_back THEN
                        v_first := COALESCE(v_first, v_end); v_due := d.need_at;
                    ELSE
                        v_first := COALESCE(v_first, v_now); v_due := v_start;
                    END IF;

                    v_late := v_first < v_now;
                    v_msg := CONCAT_WS(' / ',
                        CASE WHEN v_ntask = 0 THEN '品目工程運用明細が未登録です(リードタイム0で計画)' END,
                        CASE WHEN v_late THEN '着手日が過ぎています(着手 ' || to_char(v_first, 'YYYY-MM-DD HH24:MI') || ')' END);
                    UPDATE tests.trans_mrp_suggestion
                    SET release_at = v_first, due_at = v_due, late = v_late,
                        decision = CASE WHEN v_ntask = 0 OR (v_late AND NOT p_accept_late) THEN 0 ELSE 1 END,
                        need_user = (v_ntask = 0 OR (v_late AND NOT p_accept_late)),
                        message = NULLIF(v_msg, '')
                    WHERE trans_mrp_suggestion_id = v_sug2;
                    UPDATE _mrp_sup SET avail_at = v_due, first_start = v_first WHERE sup_id = v_sup;
                    -- 外注発注の提案: 外注への出荷日超過は要判断
                    UPDATE tests.trans_mrp_suggestion AS o
                    SET late = o.release_at < v_now,
                        decision = CASE WHEN o.release_at < v_now AND NOT p_accept_late THEN 0 ELSE 1 END,
                        need_user = (o.release_at < v_now AND NOT p_accept_late),
                        message = NULLIF(CONCAT_WS(' / ', o.message,
                            CASE WHEN o.release_at < v_now THEN '外注への出荷日が過ぎています' END), '')
                    WHERE o.parent_trans_mrp_suggestion_id = v_sug2 AND o.kind = 'OUTSOURCE_NEW';
                    INSERT INTO _mrp_peg VALUES (d.dem_id, v_sup, v_rem);
                    v_rem := 0;
                END IF;
                IF v_choice_msg IS NOT NULL THEN
                    UPDATE tests.trans_mrp_suggestion
                    SET message = CONCAT_WS(' / ', v_choice_msg, message)
                    WHERE trans_mrp_suggestion_id = v_sug2;
                END IF;
            END IF;

            -- 資材計画の提案を確定 (新規 / 変更 / 変更なし)
            v_alloc := ROUND(v_alloc, 2);
            UPDATE _mrp_dem SET alloc = v_alloc, done = TRUE WHERE dem_id = d.dem_id;
            v_kind := CASE
                WHEN d.rp_id IS NULL THEN 'PLAN_NEW'
                WHEN d.gross IS DISTINCT FROM d.old_qty
                  OR (d.src <> 3 AND d.need_at IS DISTINCT FROM d.old_need)
                  OR v_alloc IS DISTINCT FROM COALESCE(d.old_alloc, 0) THEN 'PLAN_UPDATE'
                ELSE 'PLAN_KEEP' END;
            UPDATE tests.trans_mrp_suggestion
            SET kind = v_kind, allocated_quantity = v_alloc,
                message = CASE WHEN v_kind = 'PLAN_UPDATE' THEN CONCAT_WS(' / ',
                    CASE WHEN d.gross IS DISTINCT FROM d.old_qty THEN '数量 ' || COALESCE(d.old_qty::text, '-') || '→' || d.gross::text END,
                    CASE WHEN d.src <> 3 AND d.need_at IS DISTINCT FROM d.old_need THEN '期限 ' || COALESCE(to_char(d.old_need, 'YYYY-MM-DD HH24:MI'), '-') || '→' || COALESCE(to_char(d.need_at, 'YYYY-MM-DD HH24:MI'), '-') END,
                    CASE WHEN v_alloc IS DISTINCT FROM COALESCE(d.old_alloc, 0) THEN '在庫引当 ' || COALESCE(d.old_alloc, 0)::text || '→' || v_alloc::text END) END
            WHERE trans_mrp_suggestion_id = v_sug;
        END LOOP;   -- 需要

        -- ------------------------------------------------------------------
        -- このレベルの供給の後処理: 取消・日程変更・内外の切り替え・従属需要の展開
        -- ------------------------------------------------------------------
        FOR s IN
            SELECT x.* FROM _mrp_sup AS x
            INNER JOIN _mrp_item AS i ON i.item_id = x.item_id AND i.llc = v_llc
            WHERE x.kind IN (2, 3, 5)
            ORDER BY x.avail_at
        LOOP
            -- 凍結した供給 (発注明細の停止・生産計画の停止・受注明細の停止) は取消・日程変更・展開をしない  claude/133
            CONTINUE WHEN s.frozen_sup;
            IF s.kind IN (2, 3) THEN
                IF s.used = 0 THEN
                    IF p_mode = 2 AND NOT s.restocking AND s.in_scope THEN
                        v_seq := v_seq + 1;
                        INSERT INTO tests.trans_mrp_suggestion (
                            trans_mrp_run_id, seq, kind, decision, need_user,
                            item_history_id, item_id, bom_level, quantity, old_quantity, old_due_at,
                            trans_purchase_detail_id, trans_operations_plan_id, message,
                            update_user_id, update_user_history_id)
                        VALUES (
                            v_run_id, v_seq, CASE WHEN s.kind = 2 THEN 'PURCHASE_CANCEL' ELSE 'PRODUCTION_CANCEL' END, 0, TRUE,
                            tests.mrp_hist_item(s.item_id), s.item_id, v_llc, 0, s.qty, s.avail_at,
                            s.pd_id, s.op_id,
                            CASE WHEN s.started AND s.kind = 2 THEN '一部受入済み。採用すると発注数量を受入済み数量に減らします'
                                 WHEN s.started THEN '着手済み。採用すると生産数量を完成数量に減らします'
                                 ELSE '需要が無くなりました' END,
                            v_staff, v_staff_hist)
                        RETURNING trans_mrp_suggestion_id INTO v_sug2;
                        UPDATE _mrp_sup SET cancel_sug = v_sug2 WHERE sup_id = s.sup_id;
                        UPDATE _mrp_day SET planned = FALSE WHERE sup_id = s.sup_id AND committed;
                    END IF;
                    CONTINUE;
                END IF;

                -- 日程変更: 実際に使う需要のうち一番早い必要日に合わせる
                SELECT MIN(y.need_at) INTO v_target
                FROM _mrp_peg AS p2 INNER JOIN _mrp_dem AS y ON y.dem_id = p2.dem_id
                WHERE p2.sup_id = s.sup_id AND NOT y.frozen;
                v_resched := v_target IS NOT NULL AND s.avail_at IS NOT NULL
                   AND (s.avail_at::date > v_target::date
                        OR (p_mode = 2 AND NOT s.restocking AND s.in_scope AND s.avail_at::date < v_target::date - p_reschedule_out_days));

                -- 工程計画で内外を切り替えた工程があるか (外部にしたのに外注発注が無い / 内部に戻したのに外注発注が残っている)
                v_switch := FALSE;
                IF s.kind = 3 AND p_mode = 2 AND s.in_scope THEN
                    SELECT EXISTS (
                        SELECT 1 FROM tests.trans_work_plan AS wp
                        LEFT JOIN tests.trans_purchase_detail AS opd
                            ON opd.trans_purchase_detail_id = wp.trans_purchase_detail_id AND opd.remove IS FALSE
                        WHERE wp.trans_operations_plan_id = s.op_id AND wp.remove IS FALSE
                          AND ((wp.mstr_outsource_available_id IS NOT NULL AND opd.trans_purchase_detail_id IS NULL)
                            OR (wp.mstr_outsource_available_id IS NULL AND opd.trans_purchase_detail_id IS NOT NULL)))
                    INTO v_switch;
                END IF;

                -- 工程の日程の食い違い (前の工程の完了＋デリバリーが次の工程の開始より後 / 最終工程が期限より後)
                --   外部への切り替え(OUTSOURCE_OPTION の採用・工程計画の変更)のあとに起きる
                v_broken := FALSE;
                IF s.kind = 3 AND p_mode = 2 AND s.in_scope AND NOT s.started THEN
                    SELECT EXISTS (
                        SELECT 1 FROM (
                            SELECT wp.completion_at + COALESCE(ea.delivery_interval, oa.delivery_interval, INTERVAL '0') AS ready,
                                   LEAD(wp.start_at) OVER (ORDER BY wp.sequence NULLS FIRST, wp.start_at) AS nxt
                            FROM tests.trans_work_plan AS wp
                            LEFT JOIN tests.mstr_equipment_available AS ea
                                ON ea.mstr_equipment_available_id = wp.mstr_equipment_available_id
                            LEFT JOIN tests.mstr_outsource_available AS oa
                                ON oa.mstr_outsource_available_id = wp.mstr_outsource_available_id
                            WHERE wp.trans_operations_plan_id = s.op_id AND wp.remove IS FALSE
                              AND wp.start_at IS NOT NULL AND wp.completion_at IS NOT NULL
                        ) AS x
                        WHERE (x.nxt IS NOT NULL AND x.ready > x.nxt + INTERVAL '1 minute')
                           OR (x.nxt IS NULL AND x.ready > s.avail_at + INTERVAL '1 minute'))
                    INTO v_broken;
                END IF;

                IF s.kind = 2 AND v_resched THEN
                    v_seq := v_seq + 1;
                    INSERT INTO tests.trans_mrp_suggestion (
                        trans_mrp_run_id, seq, kind, decision, need_user, late,
                        item_history_id, item_id, bom_level, quantity, need_at, due_at, old_due_at,
                        trans_purchase_detail_id, message, update_user_id, update_user_history_id)
                    VALUES (
                        v_run_id, v_seq, 'PURCHASE_RESCHEDULE', 0, TRUE, v_target < v_now,
                        tests.mrp_hist_item(s.item_id), s.item_id, v_llc, s.qty, v_target,
                        v_target - make_interval(secs => (COALESCE(s.insp_h, 0) * 3600)::double precision),
                        s.avail_at - make_interval(secs => (COALESCE(s.insp_h, 0) * 3600)::double precision),
                        s.pd_id,
                        CASE WHEN s.avail_at::date > v_target::date THEN '納期の前倒しが必要です。仕入先と調整のうえ採用してください'
                             ELSE '納期を後ろへずらせます' END,
                        v_staff, v_staff_hist);

                ELSIF s.kind = 3 AND (v_resched OR v_switch OR v_broken) THEN
                    -- 既存の生産計画明細を、今の内外(利用可能設備/利用可能外部)で完了日時から逆算し直す
                    v_tgt := CASE WHEN v_resched THEN v_target ELSE s.avail_at END;
                    v_started := s.started;
                    v_changed := FALSE; v_pdchg := FALSE;
                    v_seq := v_seq + 1;
                    INSERT INTO tests.trans_mrp_suggestion (
                        trans_mrp_run_id, seq, kind, decision, need_user,
                        item_history_id, item_id, bom_level, quantity, need_at, due_at, old_due_at,
                        trans_operations_plan_id, update_user_id, update_user_history_id)
                    VALUES (
                        v_run_id, v_seq, 'PRODUCTION_RESCHEDULE', 1, FALSE,
                        tests.mrp_hist_item(s.item_id), s.item_id, v_llc, s.qty, v_target, v_tgt, s.avail_at,
                        s.op_id, v_staff, v_staff_hist)
                    RETURNING trans_mrp_suggestion_id INTO v_sug2;
                    UPDATE _mrp_day SET planned = FALSE WHERE sup_id = s.sup_id AND committed;
                    v_end := v_tgt;
                    FOR w IN
                        SELECT wp.*, opd.trans_purchase_detail_id AS act_pd
                        FROM tests.trans_work_plan AS wp
                        LEFT JOIN tests.trans_purchase_detail AS opd
                            ON opd.trans_purchase_detail_id = wp.trans_purchase_detail_id AND opd.remove IS FALSE
                        WHERE wp.trans_operations_plan_id = s.op_id AND wp.remove IS FALSE
                        ORDER BY wp.sequence DESC NULLS LAST, wp.completion_at DESC NULLS LAST
                    LOOP
                        v_hours := COALESCE(EXTRACT(EPOCH FROM w.interval_plan) / 3600,
                                            tests.mrp_task_hours(s.item_id, w.mstr_task_id));
                        SELECT * INTO v_slot FROM tests.mrp_plan_task(s.item_id, w.mstr_task_id, v_hours, v_end, TRUE,
                                                                      w.mstr_equipment_available_id, w.mstr_outsource_available_id);
                        INSERT INTO tests.trans_mrp_suggestion_task (
                            trans_mrp_suggestion_id, trans_work_plan_id, mstr_task_id, sequence,
                            mstr_equipment_available_history_id, mstr_equipment_available_id,
                            mstr_outsource_available_history_id, mstr_outsource_available_id,
                            cost, interval_plan, start_at, completion_at, update_user_id, update_user_history_id)
                        VALUES (
                            v_sug2, w.trans_work_plan_id, w.mstr_task_id, w.sequence,
                            CASE WHEN v_slot.kind = 1 THEN tests.mrp_hist_equipment_available(v_slot.mstr_equipment_available_id) END,
                            CASE WHEN v_slot.kind = 1 THEN v_slot.mstr_equipment_available_id END,
                            CASE WHEN v_slot.kind = 2 THEN tests.mrp_hist_outsource_available(v_slot.mstr_outsource_available_id) END,
                            CASE WHEN v_slot.kind = 2 THEN v_slot.mstr_outsource_available_id END,
                            v_slot.cost, COALESCE(w.interval_plan, make_interval(secs => (v_hours * 3600)::double precision)),
                            v_slot.start_at, v_slot.completion_at, v_staff, v_staff_hist)
                        RETURNING trans_mrp_suggestion_task_id INTO v_tk;
                        IF v_slot.kind = 1 AND v_slot.mstr_equipment_id IS NOT NULL THEN
                            INSERT INTO _mrp_day
                            SELECT v_slot.mstr_equipment_id, sp.load_date, sp.hours, FALSE, TRUE, s.sup_id, v_tk
                            FROM tests.mrp_spread(v_slot.mstr_equipment_id, v_slot.start_at, v_slot.completion_at) AS sp;
                        END IF;
                        IF v_slot.kind = 2 AND w.act_pd IS NOT NULL AND w.completion_at IS DISTINCT FROM v_slot.completion_at THEN
                            v_pdchg := TRUE;
                        END IF;
                        IF w.start_at IS NULL OR w.completion_at IS NULL
                           OR abs(EXTRACT(EPOCH FROM (v_slot.start_at - w.start_at))) > 60
                           OR abs(EXTRACT(EPOCH FROM (v_slot.completion_at - w.completion_at))) > 60
                           OR (v_slot.kind = 1 AND w.mstr_equipment_available_id IS DISTINCT FROM v_slot.mstr_equipment_available_id) THEN
                            v_changed := TRUE;
                        END IF;
                        v_end := v_slot.start_at;
                    END LOOP;

                    IF NOT v_changed THEN
                        -- 日時が変わらないなら日程変更の提案は出さない
                        DELETE FROM _mrp_day WHERE sup_id = s.sup_id AND NOT committed;
                        UPDATE _mrp_day SET planned = TRUE WHERE sup_id = s.sup_id AND committed;
                        DELETE FROM tests.trans_mrp_suggestion_task WHERE trans_mrp_suggestion_id = v_sug2;
                        DELETE FROM tests.trans_mrp_suggestion WHERE trans_mrp_suggestion_id = v_sug2;
                        v_sug2 := NULL;
                    ELSE
                        v_late := v_end < v_now;
                        UPDATE tests.trans_mrp_suggestion
                        SET release_at = v_end, late = v_late,
                            decision = CASE WHEN v_started OR v_pdchg OR (v_late AND NOT p_accept_late) THEN 0 ELSE 1 END,
                            need_user = (v_started OR v_pdchg OR (v_late AND NOT p_accept_late)),
                            message = CONCAT_WS(' / ',
                                CASE WHEN NOT v_resched AND v_switch THEN '内外の切り替えによる日程の見直し'
                                     WHEN NOT v_resched THEN '工程の日程の食い違いの見直し(外部への切り替えなど)'
                                     WHEN s.avail_at > v_tgt THEN '前倒し' ELSE '後ろ倒し' END,
                                CASE WHEN v_started THEN '着手済みのため確認してください' END,
                                CASE WHEN v_pdchg THEN '外注発注済みの工程の日程が変わります。外注先と調整してください' END,
                                CASE WHEN v_late THEN '着手日が過ぎています' END)
                        WHERE trans_mrp_suggestion_id = v_sug2;
                        UPDATE _mrp_sup SET first_start = v_end WHERE sup_id = s.sup_id;
                        s.first_start := v_end;
                    END IF;

                    -- 内外の切り替えに合わせた外注発注の提案
                    IF v_switch THEN
                        v_osug := NULL; v_prev_vendor := NULL;
                        FOR w IN
                            SELECT wp.*, opd.trans_purchase_detail_id AS act_pd, oa.mstr_stakeholder_id AS vendor,
                                   oa.mstr_task_location_id AS oa_tl,
                                   EXTRACT(EPOCH FROM COALESCE(oa.delivery_interval, INTERVAL '0')) / 3600 AS dh,
                                   COALESCE(tk.start_at, wp.start_at) AS n_start,
                                   COALESCE(tk.completion_at, wp.completion_at) AS n_end
                            FROM tests.trans_work_plan AS wp
                            LEFT JOIN tests.trans_purchase_detail AS opd
                                ON opd.trans_purchase_detail_id = wp.trans_purchase_detail_id AND opd.remove IS FALSE
                            LEFT JOIN tests.mstr_outsource_available AS oa
                                ON oa.mstr_outsource_available_id = wp.mstr_outsource_available_id
                            LEFT JOIN tests.trans_mrp_suggestion_task AS tk
                                ON tk.trans_mrp_suggestion_id = v_sug2 AND tk.trans_work_plan_id = wp.trans_work_plan_id
                            WHERE wp.trans_operations_plan_id = s.op_id AND wp.remove IS FALSE
                            ORDER BY wp.sequence NULLS FIRST, wp.start_at
                        LOOP
                            IF w.mstr_outsource_available_id IS NOT NULL AND w.act_pd IS NULL THEN
                                v_vendor := w.vendor;
                                IF v_osug IS NULL OR v_prev_vendor IS DISTINCT FROM v_vendor THEN
                                    v_seq := v_seq + 1;
                                    INSERT INTO tests.trans_mrp_suggestion (
                                        trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                                        item_history_id, item_id, bom_level, quantity, release_at, due_at,
                                        trans_operations_plan_id, stakeholder_history_id, stakeholder_id, cost,
                                        update_user_id, update_user_history_id)
                                    VALUES (
                                        v_run_id, v_sug2, v_seq, 'OUTSOURCE_NEW', 1,
                                        tests.mrp_hist_item(s.item_id), s.item_id, v_llc, s.prod_qty, w.n_start,
                                        w.n_end + make_interval(secs => (COALESCE(w.dh, 0) * 3600)::double precision),
                                        s.op_id, tests.mrp_hist_stakeholder(v_vendor), v_vendor, 0,
                                        v_staff, v_staff_hist)
                                    RETURNING trans_mrp_suggestion_id INTO v_osug;
                                    v_prev_vendor := v_vendor;
                                END IF;
                                UPDATE tests.trans_mrp_suggestion
                                SET release_at = LEAST(release_at, w.n_start),
                                    due_at = GREATEST(due_at, w.n_end + make_interval(secs => (COALESCE(w.dh, 0) * 3600)::double precision)),
                                    cost = COALESCE(cost, 0) + COALESCE(tests.mrp_task_cost(s.item_id, w.oa_tl), 0)
                                WHERE trans_mrp_suggestion_id = v_osug;
                                INSERT INTO tests.trans_mrp_suggestion_task (
                                    trans_mrp_suggestion_id, trans_work_plan_id, mstr_task_id, sequence,
                                    mstr_outsource_available_history_id, mstr_outsource_available_id,
                                    cost, start_at, completion_at, update_user_id, update_user_history_id)
                                VALUES (
                                    v_osug, w.trans_work_plan_id, w.mstr_task_id, w.sequence,
                                    tests.mrp_hist_outsource_available(w.mstr_outsource_available_id), w.mstr_outsource_available_id,
                                    tests.mrp_task_cost(s.item_id, w.oa_tl), w.n_start, w.n_end, v_staff, v_staff_hist);
                            ELSE
                                v_osug := NULL; v_prev_vendor := NULL;
                                IF w.mstr_outsource_available_id IS NULL AND w.act_pd IS NOT NULL
                                   AND NOT EXISTS (SELECT 1 FROM tests.trans_mrp_suggestion AS x
                                                   WHERE x.trans_mrp_run_id = v_run_id AND x.kind = 'OUTSOURCE_CANCEL'
                                                     AND x.trans_purchase_detail_id = w.act_pd) THEN
                                    v_seq := v_seq + 1;
                                    INSERT INTO tests.trans_mrp_suggestion (
                                        trans_mrp_run_id, seq, kind, decision, need_user, item_history_id, item_id, bom_level,
                                        quantity, trans_purchase_detail_id, trans_operations_plan_id, message,
                                        update_user_id, update_user_history_id)
                                    VALUES (
                                        v_run_id, v_seq, 'OUTSOURCE_CANCEL', 0, TRUE, tests.mrp_hist_item(s.item_id), s.item_id, v_llc,
                                        0, w.act_pd, s.op_id,
                                        '内部に戻した工程の外注発注です。採用すると外注発注を取り消し、同じ発注の外部の工程は次の再MRPで発注し直します',
                                        v_staff, v_staff_hist);
                                END IF;
                            END IF;
                        END LOOP;
                        UPDATE tests.trans_mrp_suggestion AS o
                        SET late = o.release_at < v_now,
                            decision = CASE WHEN o.release_at < v_now AND NOT p_accept_late THEN 0 ELSE 1 END,
                            need_user = (o.release_at < v_now AND NOT p_accept_late),
                            message = NULLIF(CONCAT_WS(' / ', '工程計画で外部に切り替えた工程',
                                CASE WHEN o.release_at < v_now THEN '外注への出荷日が過ぎています' END), '')
                        WHERE o.trans_mrp_run_id = v_run_id AND o.kind = 'OUTSOURCE_NEW' AND o.trans_operations_plan_id = s.op_id;
                    END IF;
                END IF;

                -- 余り(ロットまとめ・最小発注数量を超える過剰)は情報として出す
                IF p_mode = 2 AND NOT s.restocking AND s.in_scope AND s.kind = 2 THEN
                    SELECT lot_size INTO v_lot FROM _mrp_item WHERE item_id = s.item_id;
                    v_qty := GREATEST(s.used, COALESCE((
                        SELECT ms.minimum_lot_size FROM tests.mstr_item_supplier AS ms
                        WHERE ms.mstr_item_id = s.item_id AND ms.mstr_stakeholder_id = s.supplier_id AND ms.remove IS FALSE
                        LIMIT 1), 0));
                    IF COALESCE(v_lot, 0) > 0 THEN v_qty := CEIL(v_qty / v_lot) * v_lot; END IF;
                    IF s.qty > v_qty + 0.005 THEN
                        v_seq := v_seq + 1;
                        INSERT INTO tests.trans_mrp_suggestion (
                            trans_mrp_run_id, seq, kind, decision, item_history_id, item_id, bom_level,
                            quantity, old_quantity, trans_purchase_detail_id, message, update_user_id, update_user_history_id)
                        VALUES (
                            v_run_id, v_seq, 'EXC_EXCESS', 9, tests.mrp_hist_item(s.item_id), s.item_id, v_llc,
                            v_qty, s.qty, s.pd_id,
                            '発注残 ' || s.qty::text || ' のうち必要なのは ' || v_qty::text || '。減らす場合は仕入先と調整してください',
                            v_staff, v_staff_hist);
                    END IF;
                END IF;
            END IF;

            -- 従属需要の展開 (既存の生産残は再MRPのみ。新規生産は常に)
            IF s.kind IN (3, 5) AND s.used > 0 AND NOT s.children_done THEN
                FOR c IN
                    SELECT tr.mstr_item_id AS child, SUM(tr.quantity) AS per
                    FROM tests.mstr_item_tree AS tr
                    INNER JOIN tests.mstr_item AS ci ON ci.mstr_item_id = tr.mstr_item_id AND ci.remove IS FALSE
                    WHERE tr.parent_mstr_item_id = s.item_id AND tr.remove IS FALSE
                    GROUP BY tr.mstr_item_id
                LOOP
                    v_rp_id := NULL; v_rp_qty := NULL; v_rp_deadline := NULL; v_rp_alloc := NULL;
                    v_issued := 0;
                    IF s.kind = 3 THEN
                        SELECT x.trans_resource_plan_id, x.quantity, x.deadline, x.inventory_resavation
                        INTO v_rp_id, v_rp_qty, v_rp_deadline, v_rp_alloc
                        FROM tests.trans_resource_plan AS x
                        WHERE x.parent_trans_operations_plan_id = s.op_id AND x.item_id = c.child AND x.remove IS FALSE
                        ORDER BY x.register_at DESC LIMIT 1;
                        IF v_rp_id IS NOT NULL THEN
                            v_issued := tests.mrp_issued(v_rp_id);
                        END IF;
                    END IF;
                    INSERT INTO _mrp_dem (item_id, llc, gross, qty, need_at, src, rp_id, parent_op_id, parent_sug_id,
                                          old_qty, old_need, old_alloc, root_od)
                    VALUES (
                        c.child,
                        COALESCE((SELECT i.llc FROM _mrp_item AS i WHERE i.item_id = c.child), v_llc + 1),
                        ROUND(c.per * s.prod_qty, 2),
                        GREATEST(ROUND(c.per * s.prod_qty, 2) - v_issued, 0),
                        COALESCE(s.first_start, s.avail_at),
                        4, v_rp_id,
                        CASE WHEN s.kind = 3 THEN s.op_id END,
                        CASE WHEN s.kind = 5 THEN s.sug_id END,
                        v_rp_qty, v_rp_deadline, v_rp_alloc, s.root_od);
                END LOOP;
                UPDATE _mrp_sup SET children_done = TRUE WHERE sup_id = s.sup_id;
            END IF;
        END LOOP;   -- 供給
    END LOOP;   -- LLC

    -- ------------------------------------------------------------------
    -- 再MRP: 需要が無くなった資材計画の取消
    -- ------------------------------------------------------------------
    IF p_mode = 2 THEN
        FOR r IN
            SELECT rp.*, ps.cancel_sug,
                   CASE WHEN rp.trans_order_detail_id IS NOT NULL THEN 1
                        WHEN rp.trans_unrecognized_detail_id IS NOT NULL THEN 2
                        WHEN rp.parent_trans_operations_plan_id IS NOT NULL THEN 4 ELSE 3 END AS pk
            FROM tests.trans_resource_plan AS rp
            LEFT JOIN tests.trans_operations_plan AS pop
                ON pop.trans_operations_plan_id = rp.parent_trans_operations_plan_id
            LEFT JOIN _mrp_sup AS ps
                ON ps.kind = 3 AND ps.op_id = rp.parent_trans_operations_plan_id
            WHERE rp.remove IS FALSE
              AND NOT EXISTS (SELECT 1 FROM _mrp_dem AS y WHERE y.rp_id = rp.trans_resource_plan_id)
              AND (NOT v_scoped OR EXISTS (SELECT 1 FROM _mrp_scope AS sc WHERE sc.rp_id = rp.trans_resource_plan_id))
              AND (rp.parent_trans_operations_plan_id IS NULL
                   OR pop.remove IS NOT FALSE
                   OR pop.discontinue IS TRUE
                   OR ps.sup_id IS NOT NULL)
        LOOP
            v_seq := v_seq + 1;
            INSERT INTO tests.trans_mrp_suggestion (
                trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                item_history_id, item_id, plan_kind, quantity, old_quantity, old_due_at,
                trans_order_detail_id, trans_unrecognized_detail_id, trans_resource_plan_id,
                parent_trans_operations_plan_id, message, update_user_id, update_user_history_id)
            VALUES (
                v_run_id, r.cancel_sug, v_seq, 'PLAN_CANCEL', 1,
                r.item_history_id, r.item_id, r.pk, 0, r.quantity, r.deadline,
                r.trans_order_detail_id, r.trans_unrecognized_detail_id, r.trans_resource_plan_id,
                r.parent_trans_operations_plan_id,
                CASE WHEN r.cancel_sug IS NOT NULL THEN '親の生産計画の取消を採用した場合に取り消します'
                     ELSE '需要が無くなりました' END,
                v_staff, v_staff_hist);
        END LOOP;
    END IF;

    -- ------------------------------------------------------------------
    -- ペギングの保存 (確定時に引当予約になる)
    -- ------------------------------------------------------------------
    INSERT INTO tests.trans_mrp_pegging (
        trans_mrp_run_id, demand_trans_mrp_suggestion_id, supply_kind, supply_trans_mrp_suggestion_id,
        trans_purchase_detail_id, trans_operations_plan_id, trans_supply_detail_id, quantity, need_at, available_at,
        update_user_id, update_user_history_id)
    SELECT
        v_run_id, y.sug_id, x.kind, x.sug_id, x.pd_id, x.op_id, x.sd_id, ROUND(SUM(p2.qty), 2), y.need_at,
        CASE WHEN x.kind = 1 THEN NULL ELSE x.avail_at END,
        v_staff, v_staff_hist
    FROM _mrp_peg AS p2
    INNER JOIN _mrp_dem AS y ON y.dem_id = p2.dem_id AND NOT y.frozen AND y.sug_id IS NOT NULL
    INNER JOIN _mrp_sup AS x ON x.sup_id = p2.sup_id
    GROUP BY y.sug_id, x.kind, x.sug_id, x.pd_id, x.op_id, x.sd_id, y.need_at, x.avail_at;

    -- ------------------------------------------------------------------
    -- 工程負荷 (設備×日) と過負荷
    -- ------------------------------------------------------------------
    INSERT INTO tests.trans_mrp_load (
        trans_mrp_run_id, mstr_equipment_id, load_date, capacity_hours, committed_hours, planned_hours, load_rate,
        update_user_id, update_user_history_id)
    SELECT
        v_run_id, z.equipment_id, z.load_date, z.cap, z.c_h, z.p_h,
        CASE WHEN z.cap > 0 THEN ROUND(z.p_h / z.cap * 100, 2) END,
        v_staff, v_staff_hist
    FROM (
        SELECT dl.equipment_id, dl.load_date,
               tests.mrp_capacity(dl.equipment_id, dl.load_date) AS cap,
               ROUND(COALESCE(SUM(dl.hours) FILTER (WHERE dl.committed), 0), 2) AS c_h,
               ROUND(COALESCE(SUM(dl.hours) FILTER (WHERE dl.planned), 0), 2) AS p_h
        FROM _mrp_day AS dl
        GROUP BY dl.equipment_id, dl.load_date
    ) AS z;

    FOR r IN
        SELECT * FROM tests.trans_mrp_load
        WHERE trans_mrp_run_id = v_run_id AND planned_hours > capacity_hours + 0.01
        ORDER BY mstr_equipment_id, load_date
    LOOP
        v_seq := v_seq + 1;
        INSERT INTO tests.trans_mrp_suggestion (
            trans_mrp_run_id, seq, kind, decision, mstr_equipment_id, load_date, quantity, message,
            update_user_id, update_user_history_id)
        VALUES (
            v_run_id, v_seq, 'EXC_OVERLOAD', 9, r.mstr_equipment_id, r.load_date, r.planned_hours,
            '負荷 ' || r.planned_hours::text || 'h / 稼働 ' || r.capacity_hours::text || 'h ('
                || COALESCE(r.load_rate::text, '-') || '%)',
            v_staff, v_staff_hist);
    END LOOP;

    -- 過負荷の設備×日に載っている、この実行で計画した内部の工程のうち、外部にも出せるもの → 要判断
    --   採用: その工程を外部に切り替えて外注発注を作る / 却下: 内部のまま(過負荷を受け入れる)
    FOR r IN
        SELECT DISTINCT ON (tk.trans_mrp_suggestion_task_id)
               tk.trans_mrp_suggestion_task_id, tk.trans_mrp_suggestion_id, tk.mstr_task_id, ld.mstr_equipment_id, ld.load_date,
               sg.item_id, sg.item_history_id, sg.quantity, sg.trans_operations_plan_id, alt.*
        FROM tests.trans_mrp_load AS ld
        INNER JOIN _mrp_day AS dl
            ON dl.equipment_id = ld.mstr_equipment_id AND dl.load_date = ld.load_date AND dl.task_id IS NOT NULL AND dl.planned
        INNER JOIN tests.trans_mrp_suggestion_task AS tk ON tk.trans_mrp_suggestion_task_id = dl.task_id
        INNER JOIN tests.trans_mrp_suggestion AS sg ON sg.trans_mrp_suggestion_id = tk.trans_mrp_suggestion_id
        CROSS JOIN LATERAL (
            SELECT x.mstr_outsource_available_id AS alt_oa, x.mstr_stakeholder_id AS alt_sh,
                   tests.mrp_task_cost(sg.item_id, x.mstr_task_location_id) AS alt_cost, x.delivery_hours AS alt_dh
            FROM tests.mrp_task_candidates(tk.mstr_task_id) AS x
            WHERE x.kind = 2
            ORDER BY x.priority, x.delivery_hours, tests.mrp_task_cost(sg.item_id, x.mstr_task_location_id) NULLS LAST
            LIMIT 1
        ) AS alt
        WHERE ld.trans_mrp_run_id = v_run_id AND ld.planned_hours > ld.capacity_hours + 0.01
        ORDER BY tk.trans_mrp_suggestion_task_id, ld.load_date
    LOOP
        v_seq := v_seq + 1;
        INSERT INTO tests.trans_mrp_suggestion (
            trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision, need_user,
            item_history_id, item_id, quantity, trans_operations_plan_id,
            stakeholder_history_id, stakeholder_id, cost,
            trans_mrp_suggestion_task_id, mstr_outsource_available_history_id, mstr_outsource_available_id,
            mstr_equipment_id, load_date, message, update_user_id, update_user_history_id)
        VALUES (
            v_run_id, r.trans_mrp_suggestion_id, v_seq, 'OUTSOURCE_OPTION', 0, TRUE,
            r.item_history_id, r.item_id, r.quantity, r.trans_operations_plan_id,
            tests.mrp_hist_stakeholder(r.alt_sh), r.alt_sh, r.alt_cost,
            r.trans_mrp_suggestion_task_id, tests.mrp_hist_outsource_available(r.alt_oa), r.alt_oa,
            r.mstr_equipment_id, r.load_date,
            '設備が過負荷です(' || r.load_date::text || ')。この工程は外部にも出せます。採用すると外部に切り替えて外注発注します(日程は次の再MRPで見直し)。却下すると内部のままです',
            v_staff, v_staff_hist);
    END LOOP;

    -- マスタの不備 (計算に使った品目について)。発注・生産の提案に出るもの以外のエラーは要判断
    INSERT INTO tests.trans_mrp_suggestion (
        trans_mrp_run_id, seq, kind, decision, need_user, item_history_id, item_id, message, remarks,
        update_user_id, update_user_history_id)
    SELECT
        v_run_id, v_seq + ROW_NUMBER() OVER (ORDER BY mi.severity, mi.item_code, mi.issue_code), 'EXC_MASTER',
        CASE WHEN mi.severity = 1 AND mi.issue_code NOT IN ('SUPPLIER_NOT_FOUND', 'TASK_NO_RESOURCE') THEN 0 ELSE 9 END,
        (mi.severity = 1 AND mi.issue_code NOT IN ('SUPPLIER_NOT_FOUND', 'TASK_NO_RESOURCE')),
        CASE WHEN mi.item_id IS NOT NULL THEN tests.mrp_hist_item(mi.item_id) END, mi.item_id,
        mi.message, mi.issue_code,
        v_staff, v_staff_hist
    FROM tests.mrp_check_items(ARRAY(SELECT DISTINCT y.item_id FROM _mrp_dem AS y)) AS mi
    WHERE mi.severity <= 2;
    GET DIAGNOSTICS v_n = ROW_COUNT;
    v_seq := v_seq + v_n;

    -- 件数
    UPDATE tests.trans_mrp_run AS mr
    SET suggestion_count = x.n, pending_count = x.pending, late_count = x.late, overload_count = x.over
    FROM (
        SELECT COUNT(*) FILTER (WHERE kind <> 'PLAN_KEEP') AS n,
               COUNT(*) FILTER (WHERE decision = 0) AS pending,
               COUNT(*) FILTER (WHERE late) AS late,
               COUNT(*) FILTER (WHERE kind = 'EXC_OVERLOAD') AS over
        FROM tests.trans_mrp_suggestion WHERE trans_mrp_run_id = v_run_id
    ) AS x
    WHERE mr.trans_mrp_run_id = v_run_id;

    SELECT * INTO v_run FROM tests.trans_mrp_run WHERE trans_mrp_run_id = v_run_id;
    RETURN v_run;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.mrp_run(smallint, uuid, uuid[], boolean, integer, varchar) IS 'MRP計算。p_mode 1:受注MRP 2:再MRP(p_order_detail_ids で範囲指定)。p_accept_late で遅れも自動採用。結果は trans_mrp_suggestion / trans_mrp_pegging / trans_mrp_load に保存し、計画データは変更しない。';
