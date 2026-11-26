-- 20261126_0003 通貨の換算(金額のビュー)。20261126_0002_currency_ddl.sql のあとに当てる(06_cteate_test.sql の追加分)
-- 出荷実績・受入実績: 相手先の検収日のある月のレートで基準通貨へ換算(相手先の通貨は、受注・発注が参照する履歴のもの)
-- 受注・発注の明細・仕入先の単価: 目安(最新の月のレートで換算。固定しない)

CREATE OR REPLACE VIEW tests.v_shipping_record_amount AS
SELECT
    r.trans_shipping_order_detail_record_id
    , o.stakeholder_id AS customer_id
    , od.trans_order_detail_id
    , od.item_id
    , r.shipping_date
    , r.shipping_quantity
    , h.mstr_currency_id
    , cu.code AS currency_code
    , cu.currency_symbol
    , tests.acceptance_month(h.acceptance_day, r.shipping_date::date) AS rate_month
    , ROUND(COALESCE(r.shipping_quantity, 0) * COALESCE(od.fixed_price, od.unit_price, 0) + COALESCE(od.price_adjustment, 0) * COALESCE(COALESCE(r.shipping_quantity, 0) / NULLIF(od.quantity, 0), 0), 2) AS amount
    , tests.currency_rate_at(h.mstr_currency_id, tests.acceptance_month(h.acceptance_day, r.shipping_date::date)) AS rate
    , tests.currency_rate_provisional(h.mstr_currency_id, tests.acceptance_month(h.acceptance_day, r.shipping_date::date)) AS provisional
    , tests.currency_to_base(ROUND(COALESCE(r.shipping_quantity, 0) * COALESCE(od.fixed_price, od.unit_price, 0) + COALESCE(od.price_adjustment, 0) * COALESCE(COALESCE(r.shipping_quantity, 0) / NULLIF(od.quantity, 0), 0), 2), h.mstr_currency_id, tests.acceptance_month(h.acceptance_day, r.shipping_date::date)) AS amount_base
    , r.symbol
FROM tests.trans_shipping_order_detail_record AS r
INNER JOIN tests.trans_shipping_order_detail AS sd ON sd.trans_shipping_order_detail_id = r.trans_shipping_order_detail_id
INNER JOIN tests.trans_order_detail AS od ON od.trans_order_detail_id = sd.trans_order_detail_id
INNER JOIN tests.trans_order AS o ON o.trans_order_id = od.trans_order_id
INNER JOIN tests.history_mstr_stakeholder AS h ON h.history_id = o.stakeholder_history_id AND h.mstr_stakeholder_id = o.stakeholder_id
INNER JOIN tests.mstr_currency AS cu ON cu.mstr_currency_id = h.mstr_currency_id
WHERE r.remove IS FALSE;

COMMENT ON VIEW tests.v_shipping_record_amount IS '@primaryKey trans_shipping_order_detail_record_id
@foreignKey (customer_id) references mstr_stakeholder (mstr_stakeholder_id)
@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (mstr_currency_id) references mstr_currency (mstr_currency_id)
出荷実績の金額(顧客の通貨のまま)と、検収月のレートで換算した基準通貨の金額。provisional は、その月のレートが無く別の月で代用したとき true。レートが無いときは amount_base が NULL';

CREATE OR REPLACE VIEW tests.v_purchase_rec_amount AS
SELECT
    r.trans_purchase_rec_id
    , p.stakeholder_id AS supplier_id
    , pd.trans_purchase_detail_id
    , pd.item_id
    , r.receive_at
    , r.quantity AS received_quantity
    , h.mstr_currency_id
    , cu.code AS currency_code
    , cu.currency_symbol
    , tests.acceptance_month(h.acceptance_day, r.receive_at::date) AS rate_month
    , ROUND(COALESCE(r.quantity, 0) * COALESCE(pd.fixed_price, pd.unit_price, 0) + COALESCE(pd.price_adjustment, 0) * COALESCE(COALESCE(r.quantity, 0) / NULLIF(pd.quantity, 0), 0), 2) AS amount
    , tests.currency_rate_at(h.mstr_currency_id, tests.acceptance_month(h.acceptance_day, r.receive_at::date)) AS rate
    , tests.currency_rate_provisional(h.mstr_currency_id, tests.acceptance_month(h.acceptance_day, r.receive_at::date)) AS provisional
    , tests.currency_to_base(ROUND(COALESCE(r.quantity, 0) * COALESCE(pd.fixed_price, pd.unit_price, 0) + COALESCE(pd.price_adjustment, 0) * COALESCE(COALESCE(r.quantity, 0) / NULLIF(pd.quantity, 0), 0), 2), h.mstr_currency_id, tests.acceptance_month(h.acceptance_day, r.receive_at::date)) AS amount_base
    , r.symbol
FROM tests.trans_purchase_rec AS r
INNER JOIN tests.trans_purchase_detail AS pd ON pd.trans_purchase_detail_id = r.trans_purchase_detail_id
INNER JOIN tests.trans_purchase AS p ON p.trans_purchase_id = pd.trans_purchase_id
INNER JOIN tests.history_mstr_stakeholder AS h ON h.history_id = p.stakeholder_history_id AND h.mstr_stakeholder_id = p.stakeholder_id
INNER JOIN tests.mstr_currency AS cu ON cu.mstr_currency_id = h.mstr_currency_id
WHERE r.remove IS FALSE;

COMMENT ON VIEW tests.v_purchase_rec_amount IS '@primaryKey trans_purchase_rec_id
@foreignKey (supplier_id) references mstr_stakeholder (mstr_stakeholder_id)
@foreignKey (trans_purchase_detail_id) references trans_purchase_detail (trans_purchase_detail_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (mstr_currency_id) references mstr_currency (mstr_currency_id)
受入実績の金額(仕入先の通貨のまま)と、検収月のレートで換算した基準通貨の金額。provisional は、その月のレートが無く別の月で代用したとき true。レートが無いときは amount_base が NULL';

CREATE OR REPLACE VIEW tests.v_order_detail_amount AS
SELECT
    od.trans_order_detail_id
    , o.stakeholder_id AS customer_id
    , od.item_id
    , h.mstr_currency_id
    , cu.code AS currency_code
    , cu.currency_symbol
    , ROUND(GREATEST(COALESCE(od.quantity, 0) - COALESCE(od.cancel_quantity, 0), 0) * COALESCE(od.fixed_price, od.unit_price, 0) + COALESCE(od.price_adjustment, 0), 2) AS amount
    , tests.currency_rate_at(h.mstr_currency_id, CURRENT_DATE) AS rate
    , tests.currency_rate_provisional(h.mstr_currency_id, CURRENT_DATE) AS provisional
    , tests.currency_to_base(ROUND(GREATEST(COALESCE(od.quantity, 0) - COALESCE(od.cancel_quantity, 0), 0) * COALESCE(od.fixed_price, od.unit_price, 0) + COALESCE(od.price_adjustment, 0), 2), h.mstr_currency_id, CURRENT_DATE) AS amount_base
    , od.symbol
FROM tests.trans_order_detail AS od
INNER JOIN tests.trans_order AS o ON o.trans_order_id = od.trans_order_id
INNER JOIN tests.history_mstr_stakeholder AS h ON h.history_id = o.stakeholder_history_id AND h.mstr_stakeholder_id = o.stakeholder_id
INNER JOIN tests.mstr_currency AS cu ON cu.mstr_currency_id = h.mstr_currency_id
WHERE od.remove IS FALSE;

COMMENT ON VIEW tests.v_order_detail_amount IS '@primaryKey trans_order_detail_id
@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (customer_id) references mstr_stakeholder (mstr_stakeholder_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (mstr_currency_id) references mstr_currency (mstr_currency_id)
受注明細の金額(キャンセルを除く。顧客の通貨のまま)と、最新の月のレートで換算した基準通貨の目安の金額。固定しない';

CREATE OR REPLACE VIEW tests.v_purchase_detail_amount AS
SELECT
    pd.trans_purchase_detail_id
    , p.stakeholder_id AS supplier_id
    , pd.item_id
    , h.mstr_currency_id
    , cu.code AS currency_code
    , cu.currency_symbol
    , ROUND(COALESCE(pd.quantity, 0) * COALESCE(pd.fixed_price, pd.unit_price, 0) + COALESCE(pd.price_adjustment, 0), 2) AS amount
    , tests.currency_rate_at(h.mstr_currency_id, CURRENT_DATE) AS rate
    , tests.currency_rate_provisional(h.mstr_currency_id, CURRENT_DATE) AS provisional
    , tests.currency_to_base(ROUND(COALESCE(pd.quantity, 0) * COALESCE(pd.fixed_price, pd.unit_price, 0) + COALESCE(pd.price_adjustment, 0), 2), h.mstr_currency_id, CURRENT_DATE) AS amount_base
    , pd.symbol
FROM tests.trans_purchase_detail AS pd
INNER JOIN tests.trans_purchase AS p ON p.trans_purchase_id = pd.trans_purchase_id
INNER JOIN tests.history_mstr_stakeholder AS h ON h.history_id = p.stakeholder_history_id AND h.mstr_stakeholder_id = p.stakeholder_id
INNER JOIN tests.mstr_currency AS cu ON cu.mstr_currency_id = h.mstr_currency_id
WHERE pd.remove IS FALSE;

COMMENT ON VIEW tests.v_purchase_detail_amount IS '@primaryKey trans_purchase_detail_id
@foreignKey (trans_purchase_detail_id) references trans_purchase_detail (trans_purchase_detail_id)
@foreignKey (supplier_id) references mstr_stakeholder (mstr_stakeholder_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (mstr_currency_id) references mstr_currency (mstr_currency_id)
発注明細の金額(仕入先の通貨のまま)と、最新の月のレートで換算した基準通貨の目安の金額。固定しない';

CREATE OR REPLACE VIEW tests.v_item_supplier_cost AS
SELECT
    s.mstr_item_supplier_id
    , s.mstr_item_id AS item_id
    , s.mstr_stakeholder_id AS supplier_id
    , s.priority
    , st.mstr_currency_id
    , cu.code AS currency_code
    , cu.currency_symbol
    , s.cost
    , tests.currency_rate_at(st.mstr_currency_id, CURRENT_DATE) AS rate
    , tests.currency_rate_provisional(st.mstr_currency_id, CURRENT_DATE) AS provisional
    , tests.currency_to_base(s.cost, st.mstr_currency_id, CURRENT_DATE) AS cost_base
    , s.symbol
FROM tests.mstr_item_supplier AS s
INNER JOIN tests.mstr_stakeholder AS st ON st.mstr_stakeholder_id = s.mstr_stakeholder_id
INNER JOIN tests.mstr_currency AS cu ON cu.mstr_currency_id = st.mstr_currency_id
WHERE s.remove IS FALSE;

COMMENT ON VIEW tests.v_item_supplier_cost IS '@primaryKey mstr_item_supplier_id
@foreignKey (mstr_item_supplier_id) references mstr_item_supplier (mstr_item_supplier_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (supplier_id) references mstr_stakeholder (mstr_stakeholder_id)
@foreignKey (mstr_currency_id) references mstr_currency (mstr_currency_id)
仕入先ごとの単価(仕入先の通貨のまま)と、最新の月のレートで換算した基準通貨の目安の単価。外注の単価も同じ';

-- 標準原価: 仕入先の単価を基準通貨へ換算する。レートが無いとき purchase_cost は 0 で、rate_missing が true(原価を過小に出さないよう画面は区別して表示する)
CREATE OR REPLACE VIEW tests.v_item_unit_cost AS
WITH RECURSIVE direct AS (
    -- 品目ごとの直接の原価: 購入品 = 優先順位が最も小さい仕入先の単価、生産コスト = 工程ごとの原価の合計
    SELECT
        i.mstr_item_id
        , COALESCE(sp.cost_base, 0) AS purchase_cost
        , COALESCE((
            SELECT SUM(c.cost) FROM tests.mstr_item_task_cost AS c
            WHERE c.mstr_item_id = i.mstr_item_id AND c.remove IS FALSE
        ), 0) AS production_cost
        , EXISTS (SELECT 1 FROM tests.mstr_item_supplier AS s WHERE s.mstr_item_id = i.mstr_item_id AND s.remove IS FALSE) AS has_supplier
        , (sp.cost_base IS NULL AND EXISTS (SELECT 1 FROM tests.mstr_item_supplier AS s WHERE s.mstr_item_id = i.mstr_item_id AND s.remove IS FALSE)) AS purchase_rate_missing
    FROM tests.mstr_item AS i
    LEFT JOIN LATERAL (
        -- 仕入先の単価を、仕入先の通貨から基準通貨へ換算する(最新の月のレート。レートが無ければ NULL)
        SELECT tests.currency_to_base(s.cost, st.mstr_currency_id, CURRENT_DATE) AS cost_base
        FROM tests.mstr_item_supplier AS s
        INNER JOIN tests.mstr_stakeholder AS st ON st.mstr_stakeholder_id = s.mstr_stakeholder_id
        WHERE s.mstr_item_id = i.mstr_item_id AND s.remove IS FALSE
        ORDER BY s.priority, s.cost LIMIT 1
    ) AS sp ON TRUE
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
    , BOOL_OR(cd.purchase_rate_missing) AS rate_missing
FROM tests.mstr_item AS i
INNER JOIN direct AS d ON d.mstr_item_id = i.mstr_item_id
INNER JOIN bom AS b ON b.root_id = i.mstr_item_id
INNER JOIN direct AS cd ON cd.mstr_item_id = b.item_id
WHERE i.remove IS FALSE
GROUP BY i.mstr_item_id, i.symbol, i.code, d.purchase_cost, d.production_cost, d.has_supplier;
