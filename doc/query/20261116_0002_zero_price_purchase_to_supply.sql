-- 0円発注として扱っていた顧客支給を、支給(trans_supply)へ移す。
--
-- 使い方(psql。スキーマ tests。DB に適用する前に、必ず 1 の検出を実行して件数と中身を確認する):
--   1. 検出(読み取りだけ)  : 「1. 検出」の SELECT を実行する。
--   2. 移行の試行          : :staff_id を渡して実行する。既定は最後に ROLLBACK(結果の件数だけ見る)。
--   3. 本番の移行          : 末尾の ROLLBACK を COMMIT に替えて実行する。
--   psql -v staff_id="'<担当者のID(uuid)>'" -f 20261116_0002_zero_price_purchase_to_supply.sql
--
-- 対象の判定(0円発注 = 顧客支給の疑い。業務の判断を含むため、検出の結果を人が確認する):
--   発注明細の単価が 0 で、発注先(履歴)が顧客(is_customer)で、資材計画から受注明細にたどれるもの。
--   取り消し済み(remove)・全部キャンセル済みは対象外。
-- 移すもの:
--   支給(receive = true・counterpart_owns = true。顧客から支給を受ける)と支給明細(受注明細・資材計画・
--   予定数量 = 発注数量 − キャンセル数量・予定日 = 発注明細の納期)を作る。
--   元の発注明細は、数量を書き換えず、残りを cancel_quantity にして停止する(MRP が見なくなる)。
-- 移さないもの(人が判断する):
--   受入済みのロット(trans_purchase_rec)と棚ビジターのつなぎ。受け入れた数量は、支給の
--   「受入」(仮止めの + の行を支給ビジターへつなぐ)として、画面から登録し直す。
--   所有者(trans_visiter_owner)は、支給ビジターをつなぐと 13 のトリガーが決める。

-- 1. 検出(読み取りだけ) ----------------------------------------------------
-- SELECT pd.trans_purchase_detail_id, pd.symbol, p.symbol AS purchase_symbol,
--        pd.quantity, pd.cancel_quantity, pd.period, pd.stop,
--        od.trans_order_detail_id, o.trans_order_id,
--        (SELECT coalesce(sum(r.quantity), 0) FROM tests.trans_purchase_rec r
--          WHERE r.trans_purchase_detail_id = pd.trans_purchase_detail_id AND NOT r.remove) AS received
--   FROM tests.trans_purchase_detail pd
--   JOIN tests.trans_purchase p ON p.trans_purchase_id = pd.trans_purchase_id AND NOT p.remove
--   JOIN tests.history_mstr_stakeholder sh ON sh.history_id = p.stakeholder_history_id
--   JOIN tests.trans_resource_plan rp ON rp.trans_resource_plan_id = pd.trans_resource_plan_id
--   JOIN tests.trans_order_detail od ON od.trans_order_detail_id = rp.trans_order_detail_id
--   JOIN tests.trans_order o ON o.trans_order_id = od.trans_order_id
--  WHERE NOT pd.remove AND pd.unit_price = 0 AND sh.is_customer
--    AND coalesce(pd.cancel_quantity, 0) < pd.quantity;

-- 2. 移行 -------------------------------------------------------------------
BEGIN;

CREATE TEMP TABLE _zero_price_target ON COMMIT DROP AS
SELECT pd.trans_purchase_detail_id,
       pd.trans_resource_plan_id,
       pd.item_history_id,
       pd.item_id,
       pd.quantity - coalesce(pd.cancel_quantity, 0) AS plan_quantity,
       pd.period,
       p.stakeholder_history_id,
       p.stakeholder_id,
       od.trans_order_detail_id,
       od.trans_order_id,
       gen_random_uuid() AS new_supply_id
  FROM tests.trans_purchase_detail pd
  JOIN tests.trans_purchase p
    ON p.trans_purchase_id = pd.trans_purchase_id AND NOT p.remove
  JOIN tests.history_mstr_stakeholder sh
    ON sh.history_id = p.stakeholder_history_id
  JOIN tests.trans_resource_plan rp
    ON rp.trans_resource_plan_id = pd.trans_resource_plan_id
  JOIN tests.trans_order_detail od
    ON od.trans_order_detail_id = rp.trans_order_detail_id
 WHERE NOT pd.remove
   AND pd.unit_price = 0
   AND sh.is_customer
   AND coalesce(pd.cancel_quantity, 0) < pd.quantity
   -- 二重に移さない(同じ資材計画に支給明細がすでにある)
   AND NOT EXISTS (
     SELECT 1 FROM tests.trans_supply_detail sd
      WHERE sd.trans_resource_plan_id = pd.trans_resource_plan_id AND NOT sd.remove
   );

-- 担当者(履歴は最新。見つからなければ APL00 で止まる)
CREATE TEMP TABLE _staff ON COMMIT DROP AS
SELECT a.staff_id, a.staff_history_id
  FROM tests.apl_staff(:staff_id::uuid, NULL) AS a;

INSERT INTO tests.trans_supply
  (trans_supply_id, stakeholder_history_id, stakeholder_id,
   receive, counterpart_owns, company_owns, trans_order_id,
   reason, staff_history_id, staff_id)
SELECT t.new_supply_id, t.stakeholder_history_id, t.stakeholder_id,
       true, true, false, t.trans_order_id,
       '0円発注からの移行', s.staff_history_id, s.staff_id
  FROM _zero_price_target t CROSS JOIN _staff s;

INSERT INTO tests.trans_supply_detail
  (trans_supply_id, item_history_id, item_id, quantity,
   scheduled_at, trans_order_detail_id, trans_resource_plan_id, remarks)
SELECT t.new_supply_id, t.item_history_id, t.item_id, t.plan_quantity,
       t.period, t.trans_order_detail_id, t.trans_resource_plan_id,
       '0円発注からの移行(元の発注明細: ' || t.trans_purchase_detail_id || ')'
  FROM _zero_price_target t;

-- 元の発注明細は、数量を書き換えず、残りをキャンセルして停止する。
UPDATE tests.trans_purchase_detail pd
   SET cancel_quantity = pd.quantity,
       stop = true,
       remarks = coalesce(pd.remarks || ' ', '') || '(顧客支給へ移行)'
  FROM _zero_price_target t
 WHERE t.trans_purchase_detail_id = pd.trans_purchase_detail_id;

-- 件数の確認
SELECT (SELECT count(*) FROM _zero_price_target) AS migrated_details;

-- 試行のときは ROLLBACK のまま。本番の移行は COMMIT に替える。
ROLLBACK;
