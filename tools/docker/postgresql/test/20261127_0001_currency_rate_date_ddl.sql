-- 20261127_0001 為替レートを月単位から日付単位へ(06_cteate_test.sql に取り込み済みの変更の差分。既存の DB に当てる)
-- ・trans_exchange_rate.rate_month(月の初日)→ rate_date(適用開始日。終了日は持たない。次のレートが出るまで続く)
-- ・acceptance_month(月の初日を返す)→ acceptance_date(検収日=換算の基準日を返す)
-- ・currency_rate_at: rate_date <= 基準日(索引が使える)。currency_rate_provisional: 基準日の月に、基準日以前の適用開始日のレートが無いとき true
-- ・v_currency_rate_latest・v_shipping_record_amount・v_purchase_rec_amount の列 rate_month → rate_date(列名が変わるため、作り直す)
-- 実行: ROLLBACK 付きで検査する(20261126_0002_currency_test.sql・20261126_0003_currency_views_test.sql が新しい内容に対応している)

-- 作り直したビューの権限は、09_grant_test.sql の GRANT を流し直して付ける(再構築では 09 が付ける)
ALTER TABLE tests.trans_exchange_rate DROP CONSTRAINT IF EXISTS trans_exchange_rate_ck_month;
ALTER TABLE tests.trans_exchange_rate RENAME COLUMN rate_month TO rate_date;
COMMENT ON COLUMN tests.trans_exchange_rate.rate_date IS '適用開始日(この日以後、次のレートが出るまで適用する。終了日は持たない)';
COMMENT ON TABLE tests.trans_exchange_rate IS '為替レート(適用開始日ごとの概算。追記のみ)';

DROP VIEW IF EXISTS tests.v_shipping_record_amount;
DROP VIEW IF EXISTS tests.v_purchase_rec_amount;
DROP VIEW IF EXISTS tests.v_currency_rate_latest;
DROP FUNCTION IF EXISTS tests.acceptance_month(smallint, date);

CREATE OR REPLACE FUNCTION tests.currency_rate_at(p_currency_id uuid, p_date date) RETURNS numeric AS $$
    SELECT CASE
        WHEN p_currency_id IS NULL THEN NULL
        WHEN p_currency_id = tests.currency_base_id() THEN 1::numeric
        ELSE (
            SELECT r.rate FROM tests.trans_exchange_rate AS r
            WHERE r.mstr_currency_id = p_currency_id AND r.remove IS FALSE
              AND r.rate_date <= p_date
            ORDER BY r.rate_date DESC, r.update_at DESC LIMIT 1
        )
    END
$$ LANGUAGE sql STABLE;

COMMENT ON FUNCTION tests.currency_rate_at(uuid, date) IS '@omit
その日以前で適用開始日が最新のレート(1 単位の通貨 = 基準通貨いくら)。基準通貨は 1。無ければ NULL';

CREATE OR REPLACE FUNCTION tests.currency_rate_provisional(p_currency_id uuid, p_date date) RETURNS boolean AS $$
    SELECT CASE
        WHEN p_currency_id IS NULL THEN false
        WHEN p_currency_id = tests.currency_base_id() THEN false
        ELSE NOT EXISTS (
            SELECT 1 FROM tests.trans_exchange_rate AS r
            WHERE r.mstr_currency_id = p_currency_id AND r.remove IS FALSE
              AND r.rate_date >= date_trunc('month', p_date)::date AND r.rate_date <= p_date
        )
    END
$$ LANGUAGE sql STABLE;

COMMENT ON FUNCTION tests.currency_rate_provisional(uuid, date) IS '@omit
その日の月に、その日以前の適用開始日のレートが登録されていない(前の月以前のレートで代用している)とき true。基準通貨は false';

CREATE OR REPLACE FUNCTION tests.acceptance_date(p_acceptance_day smallint, p_date date) RETURNS date AS $$
    SELECT CASE
        WHEN p_date IS NULL THEN NULL
        WHEN p_acceptance_day IS NULL THEN (date_trunc('month', p_date) + interval '1 month' - interval '1 day')::date
        WHEN p_date <= date_trunc('month', p_date)::date + (LEAST(
            p_acceptance_day::int,
            extract(day FROM (date_trunc('month', p_date) + interval '1 month' - interval '1 day'))::int
        ) - 1) THEN date_trunc('month', p_date)::date + (LEAST(
            p_acceptance_day::int,
            extract(day FROM (date_trunc('month', p_date) + interval '1 month' - interval '1 day'))::int
        ) - 1)
        ELSE (date_trunc('month', p_date) + interval '1 month')::date + (LEAST(
            p_acceptance_day::int,
            extract(day FROM (date_trunc('month', p_date) + interval '2 month' - interval '1 day'))::int
        ) - 1)
    END
$$ LANGUAGE sql IMMUTABLE;

COMMENT ON FUNCTION tests.acceptance_date(smallint, date) IS '@omit
その取引が属する検収日(換算の基準日)。検収日までは当月の検収日、後は翌月の検収日。NULL は月末(常に当月)。検収日が月の日数より大きいときは月末';

CREATE VIEW tests.v_currency_rate_latest AS
SELECT DISTINCT ON (c.mstr_currency_id)
       c.mstr_currency_id
     , c.code
     , c.currency_symbol
     , c.minor_unit
     , c.rate_auto
     , (c.mstr_currency_id = tests.currency_base_id()) AS is_base
     , r.rate_date
     , CASE WHEN c.mstr_currency_id = tests.currency_base_id() THEN 1::numeric ELSE r.rate END AS rate
     , r.auto_fetched
     , r.source
     , c.symbol
FROM tests.mstr_currency AS c
LEFT JOIN tests.trans_exchange_rate AS r
       ON r.mstr_currency_id = c.mstr_currency_id AND r.remove IS FALSE
WHERE c.remove IS FALSE
ORDER BY c.mstr_currency_id, r.rate_date DESC NULLS LAST, r.update_at DESC;

COMMENT ON VIEW tests.v_currency_rate_latest IS '@primaryKey mstr_currency_id
@foreignKey (mstr_currency_id) references mstr_currency (mstr_currency_id)
通貨ごとの最新のレート(適用開始日ごとの概算)';

CREATE VIEW tests.v_shipping_record_amount AS
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
    , tests.acceptance_date(h.acceptance_day, r.shipping_date::date) AS rate_date
    , ROUND(COALESCE(r.shipping_quantity, 0) * COALESCE(od.fixed_price, od.unit_price, 0) + COALESCE(od.price_adjustment, 0) * COALESCE(COALESCE(r.shipping_quantity, 0) / NULLIF(od.quantity, 0), 0), 2) AS amount
    , tests.currency_rate_at(h.mstr_currency_id, tests.acceptance_date(h.acceptance_day, r.shipping_date::date)) AS rate
    , tests.currency_rate_provisional(h.mstr_currency_id, tests.acceptance_date(h.acceptance_day, r.shipping_date::date)) AS provisional
    , tests.currency_to_base(ROUND(COALESCE(r.shipping_quantity, 0) * COALESCE(od.fixed_price, od.unit_price, 0) + COALESCE(od.price_adjustment, 0) * COALESCE(COALESCE(r.shipping_quantity, 0) / NULLIF(od.quantity, 0), 0), 2), h.mstr_currency_id, tests.acceptance_date(h.acceptance_day, r.shipping_date::date)) AS amount_base
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
出荷実績の金額(顧客の通貨のまま)と、検収日のレートで換算した基準通貨の金額。provisional は、その月に適用するレートが無く前の月以前で代用したとき true。レートが無いときは amount_base が NULL';

CREATE VIEW tests.v_purchase_rec_amount AS
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
    , tests.acceptance_date(h.acceptance_day, r.receive_at::date) AS rate_date
    , ROUND(COALESCE(r.quantity, 0) * COALESCE(pd.fixed_price, pd.unit_price, 0) + COALESCE(pd.price_adjustment, 0) * COALESCE(COALESCE(r.quantity, 0) / NULLIF(pd.quantity, 0), 0), 2) AS amount
    , tests.currency_rate_at(h.mstr_currency_id, tests.acceptance_date(h.acceptance_day, r.receive_at::date)) AS rate
    , tests.currency_rate_provisional(h.mstr_currency_id, tests.acceptance_date(h.acceptance_day, r.receive_at::date)) AS provisional
    , tests.currency_to_base(ROUND(COALESCE(r.quantity, 0) * COALESCE(pd.fixed_price, pd.unit_price, 0) + COALESCE(pd.price_adjustment, 0) * COALESCE(COALESCE(r.quantity, 0) / NULLIF(pd.quantity, 0), 0), 2), h.mstr_currency_id, tests.acceptance_date(h.acceptance_day, r.receive_at::date)) AS amount_base
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
受入実績の金額(仕入先の通貨のまま)と、検収日のレートで換算した基準通貨の金額。provisional は、その月に適用するレートが無く前の月以前で代用したとき true。レートが無いときは amount_base が NULL';

