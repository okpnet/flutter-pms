-- =====================================================================
-- 20261114_0001_v_work_plan_registrable.sql
-- 登録できる作業指示かの判定のビュー(案)
--
-- 目的: 停止中・打ち切り・キャンセルで終わった作業指示(工程)に、バーコードから実績を登録させない(barcode_entry)。
--       判定を画面・クライアントに持たず、DB に集める(状態・区分をコード値で持たない・判定しない。boolean の列で返す)。
-- 背景: 組立品の子の生産計画は、親の生産計画をたどった最上位の受注明細の停止・全部キャンセルを、
--       クライアントからは判定できない(たどり方の関数 mrp_root_order_detail が @omit で公開されない)。
--       そのため、生産計画の連なり(親 → 子)を再帰でたどり、途中のどこかで停止・打ち切りがあるか、
--       最上位の受注明細が停止・全部キャンセルかを、ここで求める。
-- 仕様: issue/20261114_0001.md の4章 #2
-- 適用: スキーマ tests に、psql で1回流す(何度流しても同じ。CREATE OR REPLACE)。
--         psql -d test_avocado -f 20261114_0001_v_work_plan_registrable.sql
--
-- 列
--   trans_work_plan_id       作業指示(主キー)
--   symbol                   作業指示の symbol(バーコードのキー)
--   trans_operations_plan_id 作業指示が属する生産計画
--   trans_order_detail_id    最上位の受注明細(受注から直接つながらない計画では NULL)
--   plan_stopped             この作業指示の生産計画、または親の生産計画のどれかが停止中
--   plan_discontinued        この作業指示の生産計画、または親の生産計画のどれかが打ち切り済み
--   order_stopped            最上位の受注明細が停止中
--   order_cancel_closed      最上位の受注明細が全部キャンセル済み
--   stopped                  停止中(生産計画または受注明細)。画面が通知の文を分けるために使う
--   closed                   終わっている(打ち切りまたは全部キャンセル)
--   registrable              登録できる(停止中でも終わってもいない)
--
-- 注意
--   ・生産計画の連なり(trans_resource_plan.parent_trans_operations_plan_id)は、深さ 32 までたどる(循環の保険)
--   ・削除(remove)された作業指示は含めない
-- =====================================================================

SET search_path TO tests, public;

CREATE OR REPLACE VIEW tests.v_work_plan_registrable AS
WITH RECURSIVE chain AS (
    -- 作業指示が属する生産計画から出発する(深さ 0)
    SELECT wp.trans_work_plan_id,
           op.trans_operations_plan_id AS cur_op,
           op.trans_resource_plan_id   AS cur_rp,
           COALESCE(op.stop, false)        AS stopped,
           COALESCE(op.discontinue, false) AS discontinued,
           0 AS depth
    FROM tests.trans_work_plan AS wp
    INNER JOIN tests.trans_operations_plan AS op ON op.trans_operations_plan_id = wp.trans_operations_plan_id
    WHERE wp.remove IS FALSE
    UNION ALL
    -- 資材計画の親の生産計画へ1段上がる
    SELECT c.trans_work_plan_id,
           pop.trans_operations_plan_id,
           pop.trans_resource_plan_id,
           c.stopped OR COALESCE(pop.stop, false),
           c.discontinued OR COALESCE(pop.discontinue, false),
           c.depth + 1
    FROM chain AS c
    INNER JOIN tests.trans_resource_plan AS rp ON rp.trans_resource_plan_id = c.cur_rp
    INNER JOIN tests.trans_operations_plan AS pop ON pop.trans_operations_plan_id = rp.parent_trans_operations_plan_id
    WHERE c.depth < 32
),
-- 各作業指示の、たどり終えた行(いちばん上まで来たもの)
top AS (
    SELECT DISTINCT ON (c.trans_work_plan_id)
           c.trans_work_plan_id, c.stopped, c.discontinued, rp.trans_order_detail_id
    FROM chain AS c
    INNER JOIN tests.trans_resource_plan AS rp ON rp.trans_resource_plan_id = c.cur_rp
    ORDER BY c.trans_work_plan_id, c.depth DESC
)
SELECT
    wp.trans_work_plan_id,
    wp.symbol,
    wp.trans_operations_plan_id,
    t.trans_order_detail_id,
    t.stopped      AS plan_stopped,
    t.discontinued AS plan_discontinued,
    COALESCE(od.stop, false)         AS order_stopped,
    COALESCE(b.cancel_closed, false) AS order_cancel_closed,
    (t.stopped OR COALESCE(od.stop, false))            AS stopped,
    (t.discontinued OR COALESCE(b.cancel_closed, false)) AS closed,
    NOT (t.stopped OR COALESCE(od.stop, false) OR t.discontinued OR COALESCE(b.cancel_closed, false)) AS registrable
FROM tests.trans_work_plan AS wp
INNER JOIN top AS t ON t.trans_work_plan_id = wp.trans_work_plan_id
LEFT JOIN tests.trans_order_detail AS od ON od.trans_order_detail_id = t.trans_order_detail_id
LEFT JOIN tests.v_order_detail_balance AS b ON b.trans_order_detail_id = t.trans_order_detail_id;

COMMENT ON VIEW tests.v_work_plan_registrable IS
E'@primaryKey trans_work_plan_id\n@unique symbol\n@foreignKey (trans_work_plan_id) references trans_work_plan (trans_work_plan_id)\n@foreignKey (trans_operations_plan_id) references trans_operations_plan (trans_operations_plan_id)\n@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)\n登録できる作業指示か(生産計画の連なりと最上位の受注明細の、停止・打ち切り・全部キャンセルの判定)';

GRANT SELECT ON tests.v_work_plan_registrable TO pms_user, pms_admin;
