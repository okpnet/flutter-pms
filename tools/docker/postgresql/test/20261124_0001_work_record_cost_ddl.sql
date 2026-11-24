-- 20261124_0001 実績の原価のビュー v_work_record_cost の DDL(06_cteate_test.sql の追加分。PERO から出力される内容と同じ)。
-- DB へ適用する前に、ROLLBACK 付きで検査するときに先に流す。適用済みなら、本体の検査だけでよい。
CREATE VIEW tests.v_work_record_cost AS
SELECT
    w.trans_work_record_id
    , w.symbol
    , w.trans_work_plan_id
    , rp.item_id
    , w.qty AS quantity
    , COALESCE(pro.quantity, 0)::numeric(14,2) AS produced_quantity
    , COALESCE(inp.amount, 0)::numeric(14,2) AS material_amount
    , COALESCE(inp.line_count, 0)::integer AS material_line_count
    , COALESCE(inp.supplied, FALSE) AS has_supplied_material
    , (COALESCE(w.qty, 0) * COALESCE(pc.cost, 0))::numeric(14,2) AS process_cost
    , (COALESCE(inp.amount, 0) + COALESCE(w.qty, 0) * COALESCE(pc.cost, 0))::numeric(14,2) AS total_cost
    , CASE WHEN COALESCE(pro.quantity, 0) > 0
           THEN ((COALESCE(inp.amount, 0) + COALESCE(w.qty, 0) * COALESCE(pc.cost, 0)) / pro.quantity)::numeric(14,2)
      END AS unit_cost
FROM tests.trans_work_record AS w
INNER JOIN tests.trans_work_plan AS wp ON wp.trans_work_plan_id = w.trans_work_plan_id
INNER JOIN tests.trans_operations_plan AS op ON op.trans_operations_plan_id = wp.trans_operations_plan_id
INNER JOIN tests.trans_resource_plan AS rp ON rp.trans_resource_plan_id = op.trans_resource_plan_id
LEFT JOIN LATERAL (
    -- 作ったロット(+ の行)の数量
    SELECT SUM(v.quantity) AS quantity
    FROM tests.trans_work_record_visiter AS wrv
    INNER JOIN tests.trans_visiter AS v ON v.trans_visiter_id = wrv.trans_visiter_id AND v.remove IS FALSE
    WHERE wrv.trans_work_record_id = w.trans_work_record_id AND wrv.remove IS FALSE
      AND v.quantity > 0 AND v.adjustment IS NOT TRUE
) AS pro ON TRUE
LEFT JOIN LATERAL (
    -- 投入した材料(- の行)の評価額。材料のロット(分割元)が社外の所有物、または譲渡で自社の物になった材料は 0 円(支給品)。
    -- それ以外は、材料の品目の標準原価 × 投入した数量
    SELECT
        SUM(-v.quantity * CASE
            WHEN ow.owner_stakeholder_id IS NOT NULL THEN 0
            WHEN COALESCE(sp.company_owns, FALSE) THEN 0
            ELSE COALESCE(uc.unit_cost, 0)
        END) AS amount
        , COUNT(*) AS line_count
        , BOOL_OR(ow.owner_stakeholder_id IS NOT NULL OR COALESCE(sp.company_owns, FALSE)) AS supplied
    FROM tests.trans_work_record_visiter AS wrv
    INNER JOIN tests.trans_visiter AS v ON v.trans_visiter_id = wrv.trans_visiter_id AND v.remove IS FALSE
    LEFT JOIN tests.v_mrp_visiter_item AS mi ON mi.trans_visiter_id = v.parent_trans_visiter_id
    LEFT JOIN tests.v_item_unit_cost AS uc ON uc.item_id = mi.item_id
    LEFT JOIN tests.trans_visiter_owner AS ow ON ow.trans_visiter_id = v.parent_trans_visiter_id AND ow.remove IS FALSE
    LEFT JOIN tests.trans_supply_detail AS sd ON sd.trans_supply_detail_id = ow.trans_supply_detail_id
    LEFT JOIN tests.trans_supply AS sp ON sp.trans_supply_id = sd.trans_supply_id
    WHERE wrv.trans_work_record_id = w.trans_work_record_id AND wrv.remove IS FALSE
      AND v.quantity < 0 AND v.adjustment IS NOT TRUE
) AS inp ON TRUE
LEFT JOIN LATERAL (
    -- 工程の原価(作業の品目 × 作業の標準の原価の合計。数量 × 単価。標準原価の生産コストと同じ考え方)
    SELECT SUM(c.cost) AS cost
    FROM tests.mstr_item_task_cost AS c
    INNER JOIN tests.mstr_task_location AS tl ON tl.mstr_task_location_id = c.mstr_task_location_id
    WHERE c.mstr_item_id = rp.item_id AND tl.mstr_task_id = wp.mstr_task_id AND c.remove IS FALSE
) AS pc ON TRUE
WHERE w.remove IS FALSE;

COMMENT ON VIEW tests.v_work_record_cost IS '@primaryKey trans_work_record_id
@unique symbol
@foreignKey (trans_work_record_id) references trans_work_record (trans_work_record_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
実績の原価(1 行 = 作業実績。投入した材料の評価額の合計 + 工程の原価。作ったロットが複数のときは、数量で按分して単価にする)';

COMMENT ON COLUMN tests.v_work_record_cost.trans_work_record_id IS '作業実績ID';
COMMENT ON COLUMN tests.v_work_record_cost.symbol IS 'リニアシンボル';
COMMENT ON COLUMN tests.v_work_record_cost.trans_work_plan_id IS '作業指示ID';
COMMENT ON COLUMN tests.v_work_record_cost.item_id IS '作った品目ID';
COMMENT ON COLUMN tests.v_work_record_cost.quantity IS '作業実績の数量';
COMMENT ON COLUMN tests.v_work_record_cost.produced_quantity IS '作ったロット(+ の行)の数量の合計';
COMMENT ON COLUMN tests.v_work_record_cost.material_amount IS '投入した材料の評価額の合計(支給品は 0 円)';
COMMENT ON COLUMN tests.v_work_record_cost.material_line_count IS '投入した材料の払出の行の数';
COMMENT ON COLUMN tests.v_work_record_cost.has_supplied_material IS '支給品(社外の所有物・譲渡で自社の物になった材料)を投入した';
COMMENT ON COLUMN tests.v_work_record_cost.process_cost IS '工程の原価(数量 × 作業の標準の原価)';
COMMENT ON COLUMN tests.v_work_record_cost.total_cost IS '作業実績の原価(材料 + 工程)';
COMMENT ON COLUMN tests.v_work_record_cost.unit_cost IS '作ったロットの単価(作業実績の原価 ÷ 作ったロットの数量。作ったロットが無いときは NULL)';
