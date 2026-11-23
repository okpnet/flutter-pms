-- 20261123_0003 原価計算のビューの DDL(06_cteate_test.sql の追加分。PERO から出力される内容と同じ)。DB へ適用する前に、ROLLBACK 付きで検査するときに先に流す
CREATE VIEW tests.v_item_unit_cost AS
WITH RECURSIVE direct AS (
    -- 品目ごとの直接の原価: 購入品 = 優先順位が最も小さい仕入先の単価、生産コスト = 工程ごとの原価の合計
    SELECT
        i.mstr_item_id
        , COALESCE((
            SELECT s.cost FROM tests.mstr_item_supplier AS s
            WHERE s.mstr_item_id = i.mstr_item_id AND s.remove IS FALSE
            ORDER BY s.priority, s.cost LIMIT 1
        ), 0) AS purchase_cost
        , COALESCE((
            SELECT SUM(c.cost) FROM tests.mstr_item_task_cost AS c
            WHERE c.mstr_item_id = i.mstr_item_id AND c.remove IS FALSE
        ), 0) AS production_cost
        , EXISTS (SELECT 1 FROM tests.mstr_item_supplier AS s WHERE s.mstr_item_id = i.mstr_item_id AND s.remove IS FALSE) AS has_supplier
    FROM tests.mstr_item AS i
    WHERE i.remove IS FALSE
),
bom (root_id, item_id, qty, path) AS (
    -- 部品表(品目体系)を、品目ごとに下へ展開する(循環は止める)
    SELECT d.mstr_item_id, d.mstr_item_id, 1::numeric, ARRAY[d.mstr_item_id] FROM direct AS d
    UNION ALL
    SELECT b.root_id, tr.mstr_item_id, b.qty * tr.quantity, b.path || tr.mstr_item_id
    FROM bom AS b
    INNER JOIN tests.mstr_item_tree AS tr ON tr.parent_mstr_item_id = b.item_id AND tr.remove IS FALSE
    WHERE NOT (tr.mstr_item_id = ANY (b.path)) AND array_length(b.path, 1) < 30
)
SELECT
    i.mstr_item_id AS item_id
    , i.symbol AS item_symbol
    , i.code AS item_code
    , d.purchase_cost
    , d.production_cost
    , COALESCE(SUM(b.qty * (cd.purchase_cost + cd.production_cost)) FILTER (WHERE b.item_id <> b.root_id), 0)::numeric(14,2) AS component_cost
    , (d.purchase_cost + d.production_cost
        + COALESCE(SUM(b.qty * (cd.purchase_cost + cd.production_cost)) FILTER (WHERE b.item_id <> b.root_id), 0))::numeric(14,2) AS unit_cost
    , d.has_supplier
    , (COUNT(*) FILTER (WHERE b.item_id <> b.root_id) > 0) AS has_components
FROM tests.mstr_item AS i
INNER JOIN direct AS d ON d.mstr_item_id = i.mstr_item_id
INNER JOIN bom AS b ON b.root_id = i.mstr_item_id
INNER JOIN direct AS cd ON cd.mstr_item_id = b.item_id
WHERE i.remove IS FALSE
GROUP BY i.mstr_item_id, i.symbol, i.code, d.purchase_cost, d.production_cost, d.has_supplier;

COMMENT ON VIEW tests.v_item_unit_cost IS '@primaryKey item_id
@unique item_symbol
@foreignKey (item_id) references mstr_item (mstr_item_id)
品目別の標準原価(購入品 = 優先順位が最も小さい仕入先の単価 + 生産コスト + 部品表の下位の部品の原価 × 数量)';

COMMENT ON COLUMN tests.v_item_unit_cost.item_id IS '品目ID';
COMMENT ON COLUMN tests.v_item_unit_cost.item_symbol IS '品目のシンボル';
COMMENT ON COLUMN tests.v_item_unit_cost.item_code IS '品目コード';
COMMENT ON COLUMN tests.v_item_unit_cost.purchase_cost IS '購入品の単価(優先順位が最も小さい仕入先。仕入先が無いときは 0)';
COMMENT ON COLUMN tests.v_item_unit_cost.production_cost IS '生産コスト(品目の工程ごとの原価の合計)';
COMMENT ON COLUMN tests.v_item_unit_cost.component_cost IS '下位の部品の原価(部品表を展開した 数量 × (購入品 + 生産コスト) の合計)';
COMMENT ON COLUMN tests.v_item_unit_cost.unit_cost IS '標準原価(購入品 + 生産コスト + 下位の部品)';
COMMENT ON COLUMN tests.v_item_unit_cost.has_supplier IS '仕入先がある';
COMMENT ON COLUMN tests.v_item_unit_cost.has_components IS '部品表に下位の部品がある';

CREATE VIEW tests.v_visiter_valuation AS
SELECT
    vi.trans_visiter_id
    , vi.symbol
    , vi.item_id
    , uc.item_code
    , vi.quantity
    , vi.held
    , (ow.owner_stakeholder_id IS NOT NULL) AS external_owned
    , (ow.owner_stakeholder_id IS NULL AND COALESCE(sp.company_owns, FALSE)) AS transferred
    , (ow.owner_stakeholder_id IS NULL) AS evaluated
    , uc.unit_cost
    , CASE
        WHEN ow.owner_stakeholder_id IS NOT NULL THEN NULL
        WHEN COALESCE(sp.company_owns, FALSE) THEN 0
        ELSE uc.unit_cost
      END::numeric(14,2) AS unit_value
    , (vi.quantity * CASE
        WHEN ow.owner_stakeholder_id IS NOT NULL THEN 0
        WHEN COALESCE(sp.company_owns, FALSE) THEN 0
        ELSE COALESCE(uc.unit_cost, 0)
      END)::numeric(14,2) AS amount
FROM tests.v_mrp_visiter_item AS vi
LEFT JOIN tests.v_item_unit_cost AS uc ON uc.item_id = vi.item_id
LEFT JOIN tests.trans_visiter_owner AS ow
    ON ow.trans_visiter_id = vi.trans_visiter_id AND ow.remove IS FALSE
LEFT JOIN tests.trans_supply_detail AS sd
    ON sd.trans_supply_detail_id = ow.trans_supply_detail_id
LEFT JOIN tests.trans_supply AS sp
    ON sp.trans_supply_id = sd.trans_supply_id
WHERE vi.finished AND vi.item_count = 1 AND vi.item_id IS NOT NULL AND vi.quantity > 0;

COMMENT ON VIEW tests.v_visiter_valuation IS '@primaryKey trans_visiter_id
@foreignKey (trans_visiter_id) references trans_visiter (trans_visiter_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
ロット(棚ビジター)の評価額(社外の所有物は評価しない・譲渡で自社の物になった材料は 0 円・発注先へ無償で渡している材料は元の評価額)';

COMMENT ON COLUMN tests.v_visiter_valuation.trans_visiter_id IS '棚ビジターID';
COMMENT ON COLUMN tests.v_visiter_valuation.symbol IS 'リニアシンボル';
COMMENT ON COLUMN tests.v_visiter_valuation.item_id IS '品目ID';
COMMENT ON COLUMN tests.v_visiter_valuation.item_code IS '品目コード';
COMMENT ON COLUMN tests.v_visiter_valuation.quantity IS '数量';
COMMENT ON COLUMN tests.v_visiter_valuation.held IS '仮止め中(出庫許可なし・未完了の異常あり)';
COMMENT ON COLUMN tests.v_visiter_valuation.external_owned IS '社外の所有物(顧客・発注先の物。評価しない)';
COMMENT ON COLUMN tests.v_visiter_valuation.transferred IS '譲渡で自社の物になった(支給の company_owns。0 円)';
COMMENT ON COLUMN tests.v_visiter_valuation.evaluated IS '評価の対象(社外の所有物でない)';
COMMENT ON COLUMN tests.v_visiter_valuation.unit_cost IS '品目の標準原価';
COMMENT ON COLUMN tests.v_visiter_valuation.unit_value IS 'ロットの単価(評価しないときは NULL)';
COMMENT ON COLUMN tests.v_visiter_valuation.amount IS '評価額(数量 × 単価。評価しないときは 0)';

CREATE VIEW tests.v_item_valuation AS
SELECT
    v.item_id
    , i.symbol AS item_symbol
    , v.item_code
    , SUM(v.quantity)::numeric(14,2) AS quantity
    , COALESCE(SUM(v.quantity) FILTER (WHERE v.evaluated), 0)::numeric(14,2) AS evaluated_quantity
    , COALESCE(SUM(v.quantity) FILTER (WHERE v.external_owned), 0)::numeric(14,2) AS external_quantity
    , SUM(v.amount)::numeric(14,2) AS amount
FROM tests.v_visiter_valuation AS v
INNER JOIN tests.mstr_item AS i ON i.mstr_item_id = v.item_id
GROUP BY v.item_id, i.symbol, v.item_code;

COMMENT ON VIEW tests.v_item_valuation IS '@primaryKey item_id
@unique item_symbol
@foreignKey (item_id) references mstr_item (mstr_item_id)
品目別の在庫評価額(社外の所有物を除く)';

COMMENT ON COLUMN tests.v_item_valuation.item_id IS '品目ID';
COMMENT ON COLUMN tests.v_item_valuation.item_symbol IS '品目のシンボル';
COMMENT ON COLUMN tests.v_item_valuation.item_code IS '品目コード';
COMMENT ON COLUMN tests.v_item_valuation.quantity IS '現在庫の数量(社外の所有物を含む)';
COMMENT ON COLUMN tests.v_item_valuation.evaluated_quantity IS '評価の対象の数量';
COMMENT ON COLUMN tests.v_item_valuation.external_quantity IS '社外の所有物の数量';
COMMENT ON COLUMN tests.v_item_valuation.amount IS '在庫評価額';
