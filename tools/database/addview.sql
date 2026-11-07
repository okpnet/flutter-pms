-- addview.sql: 引当予約(stockrez → invreq 統合、issue 20261107_0009 の B 案)のための追加クエリ。
-- 実行: DB のスキーマ `tests`(QualDB_ER_02A.a5er の @schema)に対して、このファイルを 1 回実行する(冪等。何度実行しても同じ)。
--       実行したあとの作業は apps/pms_app/issue/未20261107_0010.md。
-- 前提: テーブル・列の名前は QualDB_ER_02A.a5er(trans_resource_plan 系)に合わせた。a5m2_*.csv は古く、trans_resorce_plan と綴りが違う。
-- 方針: DB のトリガー・既存の列は変更しない。足すのは「列 1つ」と「ビュー 4本」だけ。PostGraphile 用のコメント(@primaryKey など)を付ける。

BEGIN;

-- ---------------------------------------------------------------------------------------------------------
-- 1. 引当元の在庫: trans_inventory_request.trans_visiter_id
--    どの在庫(棚ビジター = ロット)から引き当てるか。既存の行は NULL(引当元なし)のまま。
-- ---------------------------------------------------------------------------------------------------------
ALTER TABLE tests.trans_inventory_request
    ADD COLUMN IF NOT EXISTS trans_visiter_id uuid NULL;

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_constraint
        WHERE conname = 'fk_trans_inventory_request_trans_visiter'
    ) THEN
        ALTER TABLE tests.trans_inventory_request
            ADD CONSTRAINT fk_trans_inventory_request_trans_visiter
            FOREIGN KEY (trans_visiter_id) REFERENCES tests.trans_visiter (trans_visiter_id);
    END IF;
END $$;

CREATE INDEX IF NOT EXISTS idx_trans_inventory_request_trans_visiter
    ON tests.trans_inventory_request (trans_visiter_id);

COMMENT ON COLUMN tests.trans_inventory_request.trans_visiter_id IS '引当元の在庫(棚ビジターID)';

-- ---------------------------------------------------------------------------------------------------------
-- 2. 在庫(ロット)の品目: v_visiter_item
--    棚ビジター(ロット)から品目を引く。分割・移動した在庫は、分割元をたどった最初の在庫(root_visiter_id)の
--    受入実績(発注明細の品目)または作業実績(生産計画 → 資材計画の品目)で決める。
-- ---------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW tests.v_visiter_item AS
SELECT
    l.trans_visiter_id
    , COALESCE(pd.mstr_item_id, rp.mstr_item_id) AS mstr_item_id
FROM tests.v_visiter_lot AS l
LEFT JOIN LATERAL (
    -- 受入実績(購入品)の品目
    SELECT d.mstr_item_id
    FROM tests.trans_purchase_rec_visiter AS prv
    INNER JOIN tests.trans_purchase_rec AS pr
        ON pr.trans_purchase_rec_id = prv.trans_purchase_rec_id AND pr.remove IS FALSE
    INNER JOIN tests.trans_purchase_detail AS d
        ON d.trans_purchase_detail_id = pr.trans_purchase_detail_id
    WHERE prv.trans_visiter_id = COALESCE(l.root_visiter_id, l.trans_visiter_id)
    LIMIT 1
) AS pd ON TRUE
LEFT JOIN LATERAL (
    -- 作業実績(製造品)の品目
    SELECT r.mstr_item_id
    FROM tests.trans_work_record_visiter AS wrv
    INNER JOIN tests.trans_work_record AS wr
        ON wr.trans_work_record_id = wrv.trans_work_record_id AND wr.remove IS FALSE
    INNER JOIN tests.trans_work_plan AS wp
        ON wp.trans_work_plan_id = wr.trans_work_plan_id
    INNER JOIN tests.trans_operations_plan AS op
        ON op.trans_operations_plan_id = wp.trans_operations_plan_id
    INNER JOIN tests.trans_resource_plan AS r
        ON r.trans_resource_plan_id = op.trans_resource_plan_id
    WHERE wrv.trans_visiter_id = COALESCE(l.root_visiter_id, l.trans_visiter_id)
    LIMIT 1
) AS rp ON TRUE;

COMMENT ON VIEW tests.v_visiter_item IS E'@primaryKey trans_visiter_id\n@foreignKey (trans_visiter_id) references trans_visiter (trans_visiter_id)\n@foreignKey (mstr_item_id) references mstr_item (mstr_item_id)\n在庫(ロット)の品目';

-- ---------------------------------------------------------------------------------------------------------
-- 3. 在庫状況: v_stock_status(画面の stockstatus。1行 = 在庫(ロット) 1件)
--    quantity   : 今の数量(v_visiter_lot.quantity)
--    safety     : 品目の安全在庫(mstr_item_lot.safety_inventory。品目全体の値で、行ごとに重複して引かない)
--    reserved   : この在庫を引当元にした引当予約の合計(trans_inventory_request.quantity)
--    available  : 出庫可能数 = 0 以上の min(この在庫の空き, 品目全体の在庫 − 品目全体の引当済 − 安全在庫)
--                 (実在庫に安全在庫が含まれる分は引き当てられない。0 未満にはならない)
-- ---------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW tests.v_stock_status AS
WITH lot AS (
    SELECT
        l.trans_visiter_id
        , l.symbol
        , l.mstr_location_id
        , l.trans_container_id
        , vi.mstr_item_id
        , l.quantity
        , COALESCE(rz.reserved, 0) AS reserved
        , COALESCE(il.safety_inventory, 0) AS safety
    FROM tests.v_visiter_lot AS l
    LEFT JOIN tests.v_visiter_item AS vi
        ON vi.trans_visiter_id = l.trans_visiter_id
    LEFT JOIN tests.mstr_item AS i
        ON i.mstr_item_id = vi.mstr_item_id
    LEFT JOIN tests.mstr_item_lot AS il
        ON il.mstr_item_lot_id = i.mstr_item_lot_id
    LEFT JOIN LATERAL (
        SELECT SUM(ir.quantity) AS reserved
        FROM tests.trans_inventory_request AS ir
        WHERE ir.trans_visiter_id = l.trans_visiter_id AND ir.remove IS FALSE
    ) AS rz ON TRUE
    WHERE l.quantity > 0
)
SELECT
    lot.trans_visiter_id
    , lot.symbol
    , lot.mstr_location_id
    , lot.trans_container_id
    , lot.mstr_item_id
    , lot.quantity
    , lot.safety
    , lot.reserved
    , GREATEST(
          LEAST(
              lot.quantity - lot.reserved
              , SUM(lot.quantity) OVER (PARTITION BY lot.mstr_item_id)
                - SUM(lot.reserved) OVER (PARTITION BY lot.mstr_item_id)
                - lot.safety
          )
          , 0
      ) AS available
FROM lot;

COMMENT ON VIEW tests.v_stock_status IS E'@primaryKey trans_visiter_id\n@unique symbol\n@foreignKey (trans_visiter_id) references trans_visiter (trans_visiter_id)\n@foreignKey (mstr_location_id) references mstr_location (mstr_location_id)\n@foreignKey (trans_container_id) references trans_container (trans_container_id)\n@foreignKey (mstr_item_id) references mstr_item (mstr_item_id)\n在庫状況(出庫可能数つき)';

-- ---------------------------------------------------------------------------------------------------------
-- 4. 発注明細の未引当数量: v_purchase_detail_unreserved
--    quantity   : 発注数量
--    reserved   : 購買引当(trans_purchase_rez)を通した引当予約の合計(trans_inventory_request.quantity)
--    unreserved : 未引当数量 = 発注数量 − 引当済(0 未満にはならない)
-- ---------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW tests.v_purchase_detail_unreserved AS
SELECT
    d.trans_purchase_detail_id
    , d.mstr_item_id
    , d.quantity
    , COALESCE(rz.reserved, 0) AS reserved
    , GREATEST(d.quantity - COALESCE(rz.reserved, 0), 0) AS unreserved
FROM tests.trans_purchase_detail AS d
LEFT JOIN LATERAL (
    SELECT SUM(ir.quantity) AS reserved
    FROM tests.trans_purchase_rez AS pz
    INNER JOIN tests.trans_inventory_request AS ir
        ON ir.trans_purchase_rez_id = pz.trans_purchase_rez_id AND ir.remove IS FALSE
    WHERE pz.trans_purchase_detail_id = d.trans_purchase_detail_id AND pz.remove IS FALSE
) AS rz ON TRUE
WHERE d.remove IS FALSE;

COMMENT ON VIEW tests.v_purchase_detail_unreserved IS E'@primaryKey trans_purchase_detail_id\n@foreignKey (trans_purchase_detail_id) references trans_purchase_detail (trans_purchase_detail_id)\n@foreignKey (mstr_item_id) references mstr_item (mstr_item_id)\n発注明細の未引当数量';

-- ---------------------------------------------------------------------------------------------------------
-- 5. 生産計画の未引当数量: v_operations_plan_unreserved
--    quantity   : 生産計画の数量(trans_operations_plan.quantity)
--    reserved   : 生産引当(trans_product_rez。工程 = 生産計画詳細ごと)を通した引当予約の合計
--    unreserved : 未引当数量 = 数量 − 引当済(0 未満にはならない)
--    mstr_item_id: 資材計画の品目
-- ---------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW tests.v_operations_plan_unreserved AS
SELECT
    op.trans_operations_plan_id
    , rp.mstr_item_id
    , COALESCE(op.quantity, 0) AS quantity
    , COALESCE(rz.reserved, 0) AS reserved
    , GREATEST(COALESCE(op.quantity, 0) - COALESCE(rz.reserved, 0), 0) AS unreserved
FROM tests.trans_operations_plan AS op
LEFT JOIN tests.trans_resource_plan AS rp
    ON rp.trans_resource_plan_id = op.trans_resource_plan_id
LEFT JOIN LATERAL (
    SELECT SUM(ir.quantity) AS reserved
    FROM tests.trans_work_plan AS wp
    INNER JOIN tests.trans_product_rez AS pz
        ON pz.trans_work_plan_id = wp.trans_work_plan_id AND pz.remove IS FALSE
    INNER JOIN tests.trans_inventory_request AS ir
        ON ir.trans_product_rez_id = pz.trans_product_rez_id AND ir.remove IS FALSE
    WHERE wp.trans_operations_plan_id = op.trans_operations_plan_id AND wp.remove IS FALSE
) AS rz ON TRUE
WHERE op.remove IS FALSE;

COMMENT ON VIEW tests.v_operations_plan_unreserved IS E'@primaryKey trans_operations_plan_id\n@foreignKey (trans_operations_plan_id) references trans_operations_plan (trans_operations_plan_id)\n@foreignKey (mstr_item_id) references mstr_item (mstr_item_id)\n生産計画の未引当数量';

COMMIT;
