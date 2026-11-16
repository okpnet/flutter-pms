-- 段階 1 のビューと PostGraphile のスマートコメント(案)。対象のスキーマ: tests。DB には入れていない(doc/query/README.md)。
--
-- 方針(CLAUDE.md「設計の共通ルール」「受注・発注まわりの GraphQL モデルと画面の仕様」R1・R2):
--   ・状態・区分をコード値(整数・文字列の定数)で持たない・判定しない。ビューは boolean の列で返し、アプリは列の名前(列コメント)に
--     チェック・シグナル・ステップで 1 対 1 に出す。複数の boolean から文・意味をアプリが組み立てない。
--   ・言語別の表示の文字の列は持たない(意図がアプリで変わらない表示は、アプリでよい)。ビットスイッチの整数値は持たない(廃案)。
--   ・ビューには symbol 列を含める。PostGraphile 用に、COMMENT ON VIEW の @primaryKey・@foreignKey を付ける。
--     スマートコメントは、タグ(@primaryKey・@unique・@foreignKey)の行を先に書き、説明は最後の行に書く(説明を先に書くと、タグが読まれない)。
--   ・ビューの中だけで完結させる。既存のテーブル・関数・行は変えない。
--   ・出力の順(PERO の関数・ビューの依存): 先に参照される v_order_detail_balance・v_purchase_detail_balance・v_supply_detail_balance・
--     v_external_property・v_visiter_lot・v_visiter_lineage・v_mrp_visiter_item・v_plan_change_unreflected が作られたあと。
--
-- 内容:
--   1. trans_visiter_owner の @omit create,update,delete(アプリは書かない。13 のトリガーだけが書く)
--   2. v_plan_change       計画変更の表示用(対象・動き・処置・原因・MRP 反映を boolean で。品目と最上位の受注明細も)
--   3. v_cancel_open_item  未処置一覧(キャンセル・停止・打ち切りのあと、処置が済んでいないもの 7 種)
--   4. v_mrp_run           MRP 実行の状態を boolean で
--   5. v_mrp_suggestion    MRP の提案を boolean で(kind・decision・plan_kind の文字・整数を出さない)
--   (v_mrp_pending_suggestion の @foreignKey は、DB に適用済み。段階 3 で v_mrp_suggestion へ置き換えたあとに外す)

-- ---------------------------------------------------------------------
-- 1. trans_visiter_owner を、読み取り専用のモデルにする
-- ---------------------------------------------------------------------
COMMENT ON TABLE tests.trans_visiter_owner IS E'支給所有権\n@omit create,update,delete';

-- ---------------------------------------------------------------------
-- 2. 計画変更の表示用 v_plan_change
-- ---------------------------------------------------------------------
-- trans_plan_change(追記のみ)の 1 行につき 1 行。種別の列は持たない記録(どの列に値が入っているかで種別が分かる)を、
-- boolean の列にして返す。表示の文字は、列の名前(列コメント)をアプリが出す。
-- item_id                     : 対象の品目(受注明細・発注明細・生産計画・引当予約・ロット・出荷オーダー明細から導く)
-- root_trans_order_detail_id  : 対象がたどり着く最上位の受注明細(受注明細・出荷オーダー明細はその受注明細。
--                               生産計画・引当予約・発注明細は資材計画をさかのぼる。ロットは NULL)
-- is_unreflected              : MRP に未反映(v_plan_change_unreflected と同じ条件)
CREATE OR REPLACE VIEW tests.v_plan_change AS
SELECT
    pc.trans_plan_change_id
    , pc.symbol
    , pc.parent_trans_plan_change_id
    , pc.change_at
    -- 対象(どれか 1 つ)
    , pc.trans_order_detail_id
    , pc.trans_purchase_detail_id
    , pc.trans_operations_plan_id
    , pc.trans_inventory_request_id
    , pc.trans_visiter_id
    , pc.trans_shipping_order_detail_id
    , (pc.trans_order_detail_id IS NOT NULL) AS is_order_detail
    , (pc.trans_purchase_detail_id IS NOT NULL) AS is_purchase_detail
    , (pc.trans_operations_plan_id IS NOT NULL) AS is_operations_plan
    , (pc.trans_inventory_request_id IS NOT NULL) AS is_inventory_request
    , (pc.trans_visiter_id IS NOT NULL) AS is_visiter
    , (pc.trans_shipping_order_detail_id IS NOT NULL) AS is_shipping_order_detail
    , t.item_id
    , t.root_trans_order_detail_id
    -- 動き(キャンセル・数量・日付・停止)。値そのものは、下の列で読む
    , (pc.cancel_quantity > 0) AS is_cancel
    , (pc.new_quantity IS NOT NULL AND pc.new_quantity IS DISTINCT FROM pc.old_quantity) AS is_quantity_change
    , (pc.new_date IS NOT NULL AND pc.new_date IS DISTINCT FROM pc.old_date) AS is_date_change
    , (pc.new_date IS NOT NULL AND pc.old_date IS NOT NULL AND pc.new_date > pc.old_date) AS is_postpone
    , (pc.new_date IS NOT NULL AND pc.old_date IS NOT NULL AND pc.new_date < pc.old_date) AS is_advance
    , (pc.new_stop IS TRUE AND pc.old_stop IS NOT TRUE) AS is_stop
    , (pc.new_stop IS FALSE AND pc.old_stop IS TRUE) AS is_resume
    -- 処置(生産計画の打ち切り・引当予約の解除と保管・品物の処置)
    , pc.discontinue AS is_discontinue
    , pc.release AS is_release
    , pc.hold AS is_hold
    , pc.scrap AS is_scrap
    , pc.deliver AS is_deliver
    , (pc.trans_order_detail_settlement_id IS NOT NULL) AS has_settlement
    -- 起点と処置のつながり(起点の変更から parent_trans_plan_change_id で下の処置につなぐ)
    , (pc.parent_trans_plan_change_id IS NULL) AS is_root
    , EXISTS (SELECT 1 FROM tests.trans_plan_change AS c
              WHERE c.parent_trans_plan_change_id = pc.trans_plan_change_id AND c.remove IS FALSE) AS has_children
    -- 原因(変更理由マスタの boolean。理由が無いときは false)
    , COALESCE(cr.customer_cause, FALSE) AS customer_cause
    , COALESCE(cr.supplier_cause, FALSE) AS supplier_cause
    , COALESCE(cr.quality_cause, FALSE) AS quality_cause
    -- MRP との関係
    , (pc.trans_mrp_suggestion_id IS NOT NULL) AS from_mrp
    , (pc.reflected_trans_mrp_run_id IS NOT NULL) AS is_reflected
    , (pc.reflected_trans_mrp_run_id IS NULL AND pc.trans_mrp_suggestion_id IS NULL
       AND (pc.trans_order_detail_id IS NOT NULL OR pc.trans_purchase_detail_id IS NOT NULL
            OR pc.trans_operations_plan_id IS NOT NULL)) AS is_unreflected
    -- 値
    , pc.old_quantity
    , pc.new_quantity
    , pc.cancel_quantity
    , pc.old_date
    , pc.new_date
    , pc.old_stop
    , pc.new_stop
    , pc.trans_container_id
    , pc.trans_order_detail_settlement_id
    , pc.change_reason_history_id
    , pc.change_reason_id
    , pc.reason
    , pc.stakeholder_history_id
    , pc.stakeholder_id
    , pc.staff_history_id
    , pc.staff_id
    , pc.trans_mrp_suggestion_id
    , pc.reflected_trans_mrp_run_id
    , pc.remarks
    , pc.update_at
FROM tests.trans_plan_change AS pc
LEFT JOIN tests.mstr_change_reason AS cr
    ON cr.mstr_change_reason_id = pc.change_reason_id AND cr.remove IS FALSE
CROSS JOIN LATERAL (
    SELECT
        COALESCE(od.item_id, pd.item_id, rp_op.item_id, rp_rq.item_id, vi.item_id, od_sd.item_id) AS item_id
        , COALESCE(
              pc.trans_order_detail_id
              , od_sd.trans_order_detail_id
              , tests.mrp_root_order_detail(COALESCE(op.trans_resource_plan_id, rq.trans_resource_plan_id, pd.trans_resource_plan_id))
          ) AS root_trans_order_detail_id
    FROM (SELECT 1) AS d
    LEFT JOIN tests.trans_order_detail AS od ON od.trans_order_detail_id = pc.trans_order_detail_id
    LEFT JOIN tests.trans_purchase_detail AS pd ON pd.trans_purchase_detail_id = pc.trans_purchase_detail_id
    LEFT JOIN tests.trans_operations_plan AS op ON op.trans_operations_plan_id = pc.trans_operations_plan_id
    LEFT JOIN tests.trans_resource_plan AS rp_op ON rp_op.trans_resource_plan_id = op.trans_resource_plan_id
    LEFT JOIN tests.trans_inventory_request AS rq ON rq.trans_inventory_request_id = pc.trans_inventory_request_id
    LEFT JOIN tests.trans_resource_plan AS rp_rq ON rp_rq.trans_resource_plan_id = rq.trans_resource_plan_id
    LEFT JOIN tests.v_mrp_visiter_item AS vi ON vi.trans_visiter_id = pc.trans_visiter_id
    LEFT JOIN tests.trans_shipping_order_detail AS sdd ON sdd.trans_shipping_order_detail_id = pc.trans_shipping_order_detail_id
    LEFT JOIN tests.trans_order_detail AS od_sd ON od_sd.trans_order_detail_id = sdd.trans_order_detail_id
) AS t
WHERE pc.remove IS FALSE;

COMMENT ON VIEW tests.v_plan_change IS '@primaryKey trans_plan_change_id
@unique symbol
@foreignKey (trans_plan_change_id) references trans_plan_change (trans_plan_change_id)
@foreignKey (parent_trans_plan_change_id) references trans_plan_change (trans_plan_change_id)
@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (trans_purchase_detail_id) references trans_purchase_detail (trans_purchase_detail_id)
@foreignKey (trans_operations_plan_id) references trans_operations_plan (trans_operations_plan_id)
@foreignKey (trans_inventory_request_id) references trans_inventory_request (trans_inventory_request_id)
@foreignKey (trans_visiter_id) references trans_visiter (trans_visiter_id)
@foreignKey (trans_shipping_order_detail_id) references trans_shipping_order_detail (trans_shipping_order_detail_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (root_trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (trans_container_id) references trans_container (trans_container_id)
@foreignKey (trans_order_detail_settlement_id) references trans_order_detail_settlement (trans_order_detail_settlement_id)
@foreignKey (change_reason_history_id, change_reason_id) references history_mstr_change_reason (history_id, mstr_change_reason_id)
@foreignKey (stakeholder_history_id, stakeholder_id) references history_mstr_stakeholder (history_id, mstr_stakeholder_id)
@foreignKey (staff_history_id, staff_id) references history_info_staff (history_id, info_staff_id)
@foreignKey (trans_mrp_suggestion_id) references trans_mrp_suggestion (trans_mrp_suggestion_id)
@foreignKey (reflected_trans_mrp_run_id) references trans_mrp_run (trans_mrp_run_id)
計画変更(表示用。種別・対象・処置を boolean の列で返す)';

COMMENT ON COLUMN tests.v_plan_change.is_order_detail IS '対象: 受注明細';
COMMENT ON COLUMN tests.v_plan_change.is_purchase_detail IS '対象: 発注明細';
COMMENT ON COLUMN tests.v_plan_change.is_operations_plan IS '対象: 生産計画';
COMMENT ON COLUMN tests.v_plan_change.is_inventory_request IS '対象: 引当予約';
COMMENT ON COLUMN tests.v_plan_change.is_visiter IS '対象: 棚ビジター(ロット)';
COMMENT ON COLUMN tests.v_plan_change.is_shipping_order_detail IS '対象: 出荷オーダー明細';
COMMENT ON COLUMN tests.v_plan_change.is_cancel IS 'キャンセル(キャンセル数量が 0 より大きい)';
COMMENT ON COLUMN tests.v_plan_change.is_quantity_change IS '数量の変更';
COMMENT ON COLUMN tests.v_plan_change.is_date_change IS '納期の変更';
COMMENT ON COLUMN tests.v_plan_change.is_postpone IS '延期(納期を後ろへ)';
COMMENT ON COLUMN tests.v_plan_change.is_advance IS '前倒し(納期を前へ)';
COMMENT ON COLUMN tests.v_plan_change.is_stop IS '停止';
COMMENT ON COLUMN tests.v_plan_change.is_resume IS '再開';
COMMENT ON COLUMN tests.v_plan_change.is_discontinue IS '打ち切り';
COMMENT ON COLUMN tests.v_plan_change.is_release IS '在庫にする(解除)';
COMMENT ON COLUMN tests.v_plan_change.is_hold IS '押さえる(保管)';
COMMENT ON COLUMN tests.v_plan_change.is_scrap IS '廃棄';
COMMENT ON COLUMN tests.v_plan_change.is_deliver IS '顧客へ引き渡し';
COMMENT ON COLUMN tests.v_plan_change.has_settlement IS '精算あり';
COMMENT ON COLUMN tests.v_plan_change.is_root IS '起点の変更(親の変更が無い)';
COMMENT ON COLUMN tests.v_plan_change.has_children IS '下に処置がある';
COMMENT ON COLUMN tests.v_plan_change.customer_cause IS '顧客の都合';
COMMENT ON COLUMN tests.v_plan_change.supplier_cause IS '仕入先・外注先の都合';
COMMENT ON COLUMN tests.v_plan_change.quality_cause IS '品質の原因(異常の登録を促す)';
COMMENT ON COLUMN tests.v_plan_change.from_mrp IS 'MRP の提案から作られた';
COMMENT ON COLUMN tests.v_plan_change.is_reflected IS 'MRP に反映済み';
COMMENT ON COLUMN tests.v_plan_change.is_unreflected IS 'MRP に未反映(再 MRP の対象)';

-- ---------------------------------------------------------------------
-- 3. 未処置一覧 v_cancel_open_item
-- ---------------------------------------------------------------------
-- キャンセル・停止・打ち切りのあと、処置が済んでいないもの。1 行 = 処置が要る 1 件。
-- 7 種(is_* がちょうど 1 つ true):
--   is_inventory_request   未解除の引当予約    キャンセル・停止された受注明細、停止・打ち切りされた生産計画に紐づく予約で、
--                                              払出(引当実績)が無く、解除(release)も保管(hold)も記録されていないもの
--   is_work_in_process     仕掛品              停止・打ち切りの生産計画(または止まった受注明細の下)の作業実績が作ったロット
--                                              (分割・移動した先を含む)で、今の数量が残り、在庫にする(release)・押さえる(hold)が記録されていないもの。
--                                              廃棄・引き渡し・押さえるで払い出した分は数量から減る(残りだけ出る)
--   is_hold                押さえたままの品    押さえる(hold)で仮止め(release = false)にしたロットで、今の数量が残るもの
--   is_shipping_order      未出荷の出荷オーダー キャンセル済み・停止の受注明細の出荷オーダー明細で、出荷実績が足りないもの
--   is_outsource_order     未キャンセルの外注発注 打ち切り・キャンセルされた生産計画の外注発注明細で、キャンセル済みでなく受入残があるもの
--                                              (停止のときは、発注明細も停止していないもの)
--   is_supply_at_supplier  外注先にある支給材  キャンセル済み・停止の外注発注明細へ無償で渡した支給材で、発注先に数量が残るもの
--   is_customer_supply     顧客支給材の未返却  キャンセル済みの受注明細の顧客支給材(顧客の所有)で、自社に数量が残るもの
--                                              (返却不要で自社の物にしたロットは、所有者が自社になるため出ない)
-- 原因: cause_cancel(受注明細・発注明細が全部キャンセル済み)・cause_stop(停止)・cause_discontinue(生産計画の打ち切り)。
--       停止は再開できるため、画面は cause_stop だけの行を、キャンセル・打ち切りと見分けて出せる。
-- cause_trans_plan_change_id : 原因の計画変更(処置の関数の p_parent_plan_change_id に渡す。起点と処置のつながり)
-- open_item_id               : 種類と元の ID から作る一意の ID(md5 の uuid)。ビューの主キー
CREATE OR REPLACE VIEW tests.v_cancel_open_item AS
WITH q AS (
    -- 1. 未解除の引当予約
    SELECT
        'inventory_request:' || rq.trans_inventory_request_id::text AS k
        , rq.symbol
        , TRUE AS is_inventory_request, FALSE AS is_work_in_process, FALSE AS is_hold, FALSE AS is_shipping_order
        , FALSE AS is_outsource_order, FALSE AS is_supply_at_supplier, FALSE AS is_customer_supply
        , COALESCE(ob.cancel_closed, FALSE) AS cause_cancel
        , (COALESCE(ob.stop, FALSE) OR COALESCE(pop.stop, FALSE)) AS cause_stop
        , COALESCE(pop.discontinue, FALSE) AS cause_discontinue
        , rp.item_id
        , rq.quantity
        , root.od AS trans_order_detail_id
        , NULL::uuid AS trans_purchase_detail_id
        , rp.parent_trans_operations_plan_id AS trans_operations_plan_id
        , rq.trans_inventory_request_id
        , rq.trans_visiter_id
        , NULL::uuid AS trans_shipping_order_detail_id
        , NULL::uuid AS trans_supply_detail_id
        , NULL::uuid AS trans_container_id
        , o.stakeholder_id
    FROM tests.trans_inventory_request AS rq
    INNER JOIN tests.trans_resource_plan AS rp
        ON rp.trans_resource_plan_id = rq.trans_resource_plan_id AND rp.remove IS FALSE
    CROSS JOIN LATERAL (SELECT tests.mrp_root_order_detail(rp.trans_resource_plan_id) AS od) AS root
    LEFT JOIN tests.v_order_detail_balance AS ob ON ob.trans_order_detail_id = root.od
    LEFT JOIN tests.trans_order AS o ON o.trans_order_id = ob.trans_order_id
    LEFT JOIN tests.trans_operations_plan AS pop
        ON pop.trans_operations_plan_id = rp.parent_trans_operations_plan_id AND pop.remove IS FALSE
    WHERE rq.remove IS FALSE AND rq.quantity > 0
      AND NOT EXISTS (SELECT 1 FROM tests.trans_inventory_apply AS ap
                      WHERE ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE)
      AND NOT EXISTS (SELECT 1 FROM tests.trans_plan_change AS pc
                      WHERE pc.trans_inventory_request_id = rq.trans_inventory_request_id AND pc.remove IS FALSE
                        AND (pc.release OR pc.hold))
      AND (COALESCE(ob.cancel_closed, FALSE) OR COALESCE(ob.stop, FALSE)
           OR COALESCE(pop.stop, FALSE) OR COALESCE(pop.discontinue, FALSE))

    UNION ALL
    -- 2. 仕掛品
    SELECT
        'work_in_process:' || l.trans_visiter_id::text
        , l.symbol
        , FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE
        , COALESCE(ob.cancel_closed, FALSE)
        , (op.stop OR COALESCE(ob.stop, FALSE))
        , op.discontinue
        , rp.item_id
        , l.quantity
        , root.od
        , NULL::uuid
        , op.trans_operations_plan_id
        , NULL::uuid
        , l.trans_visiter_id
        , NULL::uuid
        , NULL::uuid
        , l.trans_container_id
        , o.stakeholder_id
    FROM tests.trans_operations_plan AS op
    INNER JOIN tests.trans_resource_plan AS rp
        ON rp.trans_resource_plan_id = op.trans_resource_plan_id AND rp.remove IS FALSE
    INNER JOIN tests.trans_work_plan AS wp
        ON wp.trans_operations_plan_id = op.trans_operations_plan_id AND wp.remove IS FALSE
    INNER JOIN tests.trans_work_record AS wr
        ON wr.trans_work_plan_id = wp.trans_work_plan_id AND wr.remove IS FALSE
    INNER JOIN tests.trans_work_record_visiter AS wrv
        ON wrv.trans_work_record_id = wr.trans_work_record_id AND wrv.remove IS FALSE
    INNER JOIN tests.v_visiter_lineage AS lg ON lg.ancestor_visiter_id = wrv.trans_visiter_id
    INNER JOIN tests.v_visiter_lot AS l ON l.trans_visiter_id = lg.trans_visiter_id
    CROSS JOIN LATERAL (SELECT tests.mrp_root_order_detail(op.trans_resource_plan_id) AS od) AS root
    LEFT JOIN tests.v_order_detail_balance AS ob ON ob.trans_order_detail_id = root.od
    LEFT JOIN tests.trans_order AS o ON o.trans_order_id = ob.trans_order_id
    WHERE op.remove IS FALSE AND l.quantity > 0
      AND (op.stop OR op.discontinue OR COALESCE(ob.cancel_closed, FALSE) OR COALESCE(ob.stop, FALSE))
      AND NOT EXISTS (SELECT 1 FROM tests.trans_plan_change AS pc
                      WHERE pc.trans_visiter_id = l.trans_visiter_id AND pc.remove IS FALSE AND (pc.release OR pc.hold))

    UNION ALL
    -- 3. 押さえたままの品(押さえる = 仮止めにしたロット。仮止めのまま、数量が残るもの)
    SELECT
        'hold:' || l.trans_visiter_id::text
        , l.symbol
        , FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE
        , FALSE, FALSE, FALSE
        , vi.item_id
        , l.quantity
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , l.trans_visiter_id
        , NULL::uuid
        , NULL::uuid
        , l.trans_container_id
        , NULL::uuid
    FROM tests.v_visiter_lot AS l
    LEFT JOIN tests.v_mrp_visiter_item AS vi ON vi.trans_visiter_id = l.trans_visiter_id
    WHERE l.release IS FALSE AND l.quantity > 0
      AND EXISTS (SELECT 1 FROM tests.trans_plan_change AS pc
                  WHERE pc.hold AND pc.remove IS FALSE
                    AND (pc.trans_visiter_id = l.trans_visiter_id
                         OR pc.trans_inventory_request_id IN (SELECT rq.trans_inventory_request_id
                                                                FROM tests.trans_inventory_request AS rq
                                                               WHERE rq.trans_visiter_id = l.trans_visiter_id)))

    UNION ALL
    -- 4. 未出荷の出荷オーダー
    SELECT
        'shipping_order:' || sd.trans_shipping_order_detail_id::text
        , sd.symbol
        , FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE
        , ob.cancel_closed
        , ob.stop
        , FALSE
        , ob.item_id
        , sd.shipping_quantity - COALESCE(sh.q, 0)
        , sd.trans_order_detail_id
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , sd.trans_shipping_order_detail_id
        , NULL::uuid
        , NULL::uuid
        , o.stakeholder_id
    FROM tests.trans_shipping_order_detail AS sd
    INNER JOIN tests.trans_shipping_order AS so
        ON so.trans_shipping_order_id = sd.trans_shipping_order_id AND so.remove IS FALSE
    INNER JOIN tests.v_order_detail_balance AS ob
        ON ob.trans_order_detail_id = sd.trans_order_detail_id AND (ob.cancel_closed OR ob.stop)
    INNER JOIN tests.trans_order AS o ON o.trans_order_id = ob.trans_order_id
    LEFT JOIN LATERAL (
        SELECT SUM(r.shipping_quantity) AS q FROM tests.trans_shipping_order_detail_record AS r
        WHERE r.trans_shipping_order_detail_id = sd.trans_shipping_order_detail_id AND r.remove IS FALSE
    ) AS sh ON TRUE
    WHERE sd.remove IS FALSE AND sd.shipping_quantity - COALESCE(sh.q, 0) > 0

    UNION ALL
    -- 5. 未キャンセルの外注発注
    SELECT
        'outsource_order:' || pb.trans_purchase_detail_id::text
        , pb.symbol
        , FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE
        , COALESCE(ob.cancel_closed, FALSE)
        , (op.stop OR COALESCE(ob.stop, FALSE))
        , op.discontinue
        , pb.item_id
        , pb.remaining_quantity
        , root.od
        , pb.trans_purchase_detail_id
        , op.trans_operations_plan_id
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , p.stakeholder_id
    FROM tests.v_purchase_detail_balance AS pb
    INNER JOIN tests.trans_purchase_detail AS pd ON pd.trans_purchase_detail_id = pb.trans_purchase_detail_id
    INNER JOIN tests.trans_purchase AS p ON p.trans_purchase_id = pd.trans_purchase_id
    INNER JOIN tests.trans_work_plan AS wp
        ON wp.trans_purchase_detail_id = pb.trans_purchase_detail_id AND wp.remove IS FALSE
    INNER JOIN tests.trans_operations_plan AS op
        ON op.trans_operations_plan_id = wp.trans_operations_plan_id AND op.remove IS FALSE
    CROSS JOIN LATERAL (SELECT tests.mrp_root_order_detail(op.trans_resource_plan_id) AS od) AS root
    LEFT JOIN tests.v_order_detail_balance AS ob ON ob.trans_order_detail_id = root.od
    WHERE pb.is_outsource AND NOT pb.cancel_closed AND pb.remaining_quantity > 0
      AND ((op.discontinue OR COALESCE(ob.cancel_closed, FALSE))
           OR ((op.stop OR COALESCE(ob.stop, FALSE)) AND NOT pb.stop))

    UNION ALL
    -- 6. 外注先にある支給材(無償で渡した材料。有償は発注先の物のため除く)
    SELECT
        'supply_at_supplier:' || sb.trans_supply_detail_id::text
        , sb.symbol
        , FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE
        , pb.cancel_closed
        , pb.stop
        , FALSE
        , sb.item_id
        , sb.current_quantity
        , NULL::uuid
        , sb.trans_purchase_detail_id
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , sb.trans_supply_detail_id
        , NULL::uuid
        , sb.stakeholder_id
    FROM tests.v_supply_detail_balance AS sb
    INNER JOIN tests.v_purchase_detail_balance AS pb
        ON pb.trans_purchase_detail_id = sb.trans_purchase_detail_id AND (pb.cancel_closed OR pb.stop)
    WHERE sb.receive IS FALSE AND sb.paid_supply IS FALSE AND sb.current_quantity > 0

    UNION ALL
    -- 7. 顧客支給材の未返却(顧客の所有のロットで、受注明細が全部キャンセル済み)
    SELECT
        'customer_supply:' || ep.trans_visiter_id::text
        , ep.symbol
        , FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE
        , TRUE
        , FALSE
        , FALSE
        , COALESCE(ep.item_id, sd.item_id)
        , ep.quantity
        , ob.trans_order_detail_id
        , NULL::uuid
        , NULL::uuid
        , NULL::uuid
        , ep.trans_visiter_id
        , NULL::uuid
        , ep.trans_supply_detail_id
        , ep.trans_container_id
        , ep.owner_stakeholder_id
    FROM tests.v_external_property AS ep
    LEFT JOIN tests.trans_supply_detail AS sd ON sd.trans_supply_detail_id = ep.trans_supply_detail_id
    INNER JOIN tests.v_order_detail_balance AS ob
        ON ob.trans_order_detail_id = COALESCE(sd.trans_order_detail_id, ep.trans_order_detail_id) AND ob.cancel_closed
)
SELECT
    md5(q.k)::uuid AS open_item_id
    , q.symbol
    , q.is_inventory_request
    , q.is_work_in_process
    , q.is_hold
    , q.is_shipping_order
    , q.is_outsource_order
    , q.is_supply_at_supplier
    , q.is_customer_supply
    , q.cause_cancel
    , q.cause_stop
    , q.cause_discontinue
    , q.item_id
    , q.quantity
    , q.trans_order_detail_id
    , q.trans_purchase_detail_id
    , q.trans_operations_plan_id
    , q.trans_inventory_request_id
    , q.trans_visiter_id
    , q.trans_shipping_order_detail_id
    , q.trans_supply_detail_id
    , q.trans_container_id
    , q.stakeholder_id
    , c.trans_plan_change_id AS cause_trans_plan_change_id
    , c.change_at AS since
FROM q
LEFT JOIN LATERAL (
    -- 原因の計画変更(最新): 受注明細のキャンセル・停止、発注明細のキャンセル・停止、生産計画の停止・打ち切り
    SELECT pc.trans_plan_change_id, pc.change_at
    FROM tests.trans_plan_change AS pc
    WHERE pc.remove IS FALSE
      AND ((pc.trans_order_detail_id = q.trans_order_detail_id AND (pc.cancel_quantity > 0 OR pc.new_stop IS TRUE))
           OR (pc.trans_purchase_detail_id = q.trans_purchase_detail_id AND (pc.cancel_quantity > 0 OR pc.new_stop IS TRUE))
           OR (pc.trans_operations_plan_id = q.trans_operations_plan_id AND (pc.discontinue OR pc.new_stop IS TRUE)))
    ORDER BY pc.change_at DESC
    LIMIT 1
) AS c ON TRUE;

COMMENT ON VIEW tests.v_cancel_open_item IS '@primaryKey open_item_id
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (trans_purchase_detail_id) references trans_purchase_detail (trans_purchase_detail_id)
@foreignKey (trans_operations_plan_id) references trans_operations_plan (trans_operations_plan_id)
@foreignKey (trans_inventory_request_id) references trans_inventory_request (trans_inventory_request_id)
@foreignKey (trans_visiter_id) references trans_visiter (trans_visiter_id)
@foreignKey (trans_shipping_order_detail_id) references trans_shipping_order_detail (trans_shipping_order_detail_id)
@foreignKey (trans_supply_detail_id) references trans_supply_detail (trans_supply_detail_id)
@foreignKey (trans_container_id) references trans_container (trans_container_id)
@foreignKey (stakeholder_id) references mstr_stakeholder (mstr_stakeholder_id)
@foreignKey (cause_trans_plan_change_id) references trans_plan_change (trans_plan_change_id)
未処置一覧(キャンセル・停止・打ち切りのあと、処置が済んでいないもの。種類は is_* の boolean で、ちょうど 1 つ true)';

COMMENT ON COLUMN tests.v_cancel_open_item.is_inventory_request IS '未解除の引当予約';
COMMENT ON COLUMN tests.v_cancel_open_item.is_work_in_process IS '仕掛品(停止・打ち切りの生産計画のロット)';
COMMENT ON COLUMN tests.v_cancel_open_item.is_hold IS '押さえたままの品';
COMMENT ON COLUMN tests.v_cancel_open_item.is_shipping_order IS '未出荷の出荷オーダー';
COMMENT ON COLUMN tests.v_cancel_open_item.is_outsource_order IS '未キャンセルの外注発注';
COMMENT ON COLUMN tests.v_cancel_open_item.is_supply_at_supplier IS '外注先にある支給材';
COMMENT ON COLUMN tests.v_cancel_open_item.is_customer_supply IS '顧客支給材の未返却';
COMMENT ON COLUMN tests.v_cancel_open_item.cause_cancel IS '原因: 全部キャンセル済み';
COMMENT ON COLUMN tests.v_cancel_open_item.cause_stop IS '原因: 停止(再開できる)';
COMMENT ON COLUMN tests.v_cancel_open_item.cause_discontinue IS '原因: 生産計画の打ち切り';
COMMENT ON COLUMN tests.v_cancel_open_item.quantity IS '処置が要る数量(今の数量・未出荷の数量・受入残)';
COMMENT ON COLUMN tests.v_cancel_open_item.cause_trans_plan_change_id IS '原因の計画変更(処置の関数の起点に渡す)';
COMMENT ON COLUMN tests.v_cancel_open_item.since IS '原因の日時(原因の計画変更の日時)';

-- ---------------------------------------------------------------------
-- 4. MRP 実行の状態 v_mrp_run
-- ---------------------------------------------------------------------
-- trans_mrp_run.status(0:計算済 1:確定 2:破棄 3:失効)と run_mode(1:受注MRP 2:再MRP)のコード値を、boolean にする。
CREATE OR REPLACE VIEW tests.v_mrp_run AS
SELECT
    r.trans_mrp_run_id
    , r.symbol
    , (r.status = 0) AS is_calculated
    , (r.status = 1) AS is_committed
    , (r.status = 2) AS is_discarded
    , (r.status = 3) AS is_expired
    , (r.run_mode = 1) AS is_order_run
    , (r.run_mode = 2) AS is_rerun
    , r.run_at
    , r.committed_at
    , r.suggestion_count
    , r.pending_count
    , r.late_count
    , r.overload_count
    , r.staff_history_id
    , r.staff_id
    , r.params
    , r.remarks
    , r.update_at
FROM tests.trans_mrp_run AS r
WHERE r.remove IS FALSE;

COMMENT ON VIEW tests.v_mrp_run IS '@primaryKey trans_mrp_run_id
@unique symbol
@foreignKey (trans_mrp_run_id) references trans_mrp_run (trans_mrp_run_id)
@foreignKey (staff_history_id, staff_id) references history_info_staff (history_id, info_staff_id)
MRP 実行(状態・実行区分を boolean の列で返す)';

COMMENT ON COLUMN tests.v_mrp_run.is_calculated IS '計算済み(確定・破棄を待っている)';
COMMENT ON COLUMN tests.v_mrp_run.is_committed IS '確定済み';
COMMENT ON COLUMN tests.v_mrp_run.is_discarded IS '破棄';
COMMENT ON COLUMN tests.v_mrp_run.is_expired IS '失効(新しい計算があり、確定できない)';
COMMENT ON COLUMN tests.v_mrp_run.is_order_run IS '受注 MRP';
COMMENT ON COLUMN tests.v_mrp_run.is_rerun IS '再 MRP';

-- ---------------------------------------------------------------------
-- 5. MRP の提案 v_mrp_suggestion
-- ---------------------------------------------------------------------
-- kind(文字列 17 種)・decision(0/1/2/9)・plan_kind(1〜4)を出さず、boolean の列に分解する。
-- ・対象: is_purchase・is_production・is_outsource・is_plan・is_exception・is_supply_request(ちょうど 1 つ true)
-- ・動き: is_new・is_change・is_cancel・is_keep・is_option(例外の提案は、どれも false)
-- ・例外の主題: subject_equipment(設備の過負荷)・subject_stock(在庫の過剰)・subject_master(マスタの不備)(例外のときだけ 1 つ true)
-- ・判断: undecided(判断が要る = 0)・adopted(採用 = 1)・rejected(却下 = 2)・is_info(情報 = 9。判断の対象でない)(ちょうど 1 つ true)
--   need_user(判断を求めるか)・late(納期遅れ)は既存の列のまま。
-- ・計画区分: is_order_demand(受注)・is_non_booked(非計上)・is_safety_stock(安全在庫)・is_dependent_demand(従属)。計画の提案以外は false。
-- ・run_open: その MRP 実行が計算済み(確定・破棄を待っている)。画面の「確認中の提案」は run_open で絞る(維持 is_keep は除く)。
-- 判断は、個別の提案ではなく結果(MRP 実行)に対して行う: 採用 = mrp_commit(要判断の残りを却下にするのは p_force)、破棄 = mrp_discard。
CREATE OR REPLACE VIEW tests.v_mrp_suggestion AS
SELECT
    s.trans_mrp_suggestion_id
    , s.trans_mrp_run_id
    , s.parent_trans_mrp_suggestion_id
    , s.seq
    , s.symbol
    -- 対象
    , (s.kind IN ('PURCHASE_NEW', 'PURCHASE_RESCHEDULE', 'PURCHASE_CANCEL')) AS is_purchase
    , (s.kind IN ('PRODUCTION_NEW', 'PRODUCTION_RESCHEDULE', 'PRODUCTION_CANCEL')) AS is_production
    , (s.kind IN ('OUTSOURCE_NEW', 'OUTSOURCE_CANCEL', 'OUTSOURCE_OPTION')) AS is_outsource
    , (s.kind IN ('PLAN_NEW', 'PLAN_UPDATE', 'PLAN_KEEP', 'PLAN_CANCEL')) AS is_plan
    , (s.kind IN ('EXC_OVERLOAD', 'EXC_EXCESS', 'EXC_MASTER')) AS is_exception
    , (s.kind = 'SUPPLY_REQUEST') AS is_supply_request
    -- 動き
    , (s.kind IN ('PURCHASE_NEW', 'PRODUCTION_NEW', 'OUTSOURCE_NEW', 'PLAN_NEW', 'SUPPLY_REQUEST')) AS is_new
    , (s.kind IN ('PURCHASE_RESCHEDULE', 'PRODUCTION_RESCHEDULE', 'PLAN_UPDATE')) AS is_change
    , (s.kind IN ('PURCHASE_CANCEL', 'PRODUCTION_CANCEL', 'OUTSOURCE_CANCEL', 'PLAN_CANCEL')) AS is_cancel
    , (s.kind = 'PLAN_KEEP') AS is_keep
    , (s.kind = 'OUTSOURCE_OPTION') AS is_option
    -- 例外の主題
    , (s.kind = 'EXC_OVERLOAD') AS subject_equipment
    , (s.kind = 'EXC_EXCESS') AS subject_stock
    , (s.kind = 'EXC_MASTER') AS subject_master
    -- 判断
    , s.need_user
    , s.late
    , (s.decision = 0) AS undecided
    , (s.decision = 1) AS adopted
    , (s.decision = 2) AS rejected
    , (s.decision = 9) AS is_info
    -- 計画区分
    , (s.plan_kind = 1) AS is_order_demand
    , (s.plan_kind = 2) AS is_non_booked
    , (s.plan_kind = 3) AS is_safety_stock
    , (s.plan_kind = 4) AS is_dependent_demand
    -- MRP 実行
    , (r.status = 0) AS run_open
    , (r.status = 1) AS run_committed
    -- 値
    , s.item_history_id
    , s.item_id
    , s.bom_level
    , s.quantity
    , s.allocated_quantity
    , s.old_quantity
    , s.need_at
    , s.release_at
    , s.due_at
    , s.old_due_at
    , s.trans_order_detail_id
    , s.trans_unrecognized_detail_id
    , s.trans_resource_plan_id
    , s.parent_trans_operations_plan_id
    , s.trans_purchase_detail_id
    , s.trans_operations_plan_id
    , s.stakeholder_history_id
    , s.stakeholder_id
    , s.cost
    , s.asking_price
    , s.trans_mrp_suggestion_task_id
    , s.mstr_outsource_available_history_id
    , s.mstr_outsource_available_id
    , s.mstr_equipment_id
    , s.load_date
    , s.message
    , s.applied_at
    , s.remarks
    , s.update_at
    , s.update_user_id
    , s.update_user_history_id
FROM tests.trans_mrp_suggestion AS s
INNER JOIN tests.trans_mrp_run AS r ON r.trans_mrp_run_id = s.trans_mrp_run_id AND r.remove IS FALSE
WHERE s.remove IS FALSE;

COMMENT ON VIEW tests.v_mrp_suggestion IS '@primaryKey trans_mrp_suggestion_id
@unique symbol
@foreignKey (trans_mrp_suggestion_id) references trans_mrp_suggestion (trans_mrp_suggestion_id)
@foreignKey (trans_mrp_run_id) references trans_mrp_run (trans_mrp_run_id)
@foreignKey (parent_trans_mrp_suggestion_id) references trans_mrp_suggestion (trans_mrp_suggestion_id)
@foreignKey (trans_mrp_suggestion_task_id) references trans_mrp_suggestion_task (trans_mrp_suggestion_task_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
@foreignKey (item_history_id, item_id) references history_mstr_item (history_id, mstr_item_id)
@foreignKey (stakeholder_id) references mstr_stakeholder (mstr_stakeholder_id)
@foreignKey (stakeholder_history_id, stakeholder_id) references history_mstr_stakeholder (history_id, mstr_stakeholder_id)
@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)
@foreignKey (trans_unrecognized_detail_id) references trans_unrecognized_detail (trans_unrecognized_detail_id)
@foreignKey (trans_resource_plan_id) references trans_resource_plan (trans_resource_plan_id)
@foreignKey (parent_trans_operations_plan_id) references trans_operations_plan (trans_operations_plan_id)
@foreignKey (trans_operations_plan_id) references trans_operations_plan (trans_operations_plan_id)
@foreignKey (trans_purchase_detail_id) references trans_purchase_detail (trans_purchase_detail_id)
@foreignKey (mstr_equipment_id) references mstr_equipment (mstr_equipment_id)
@foreignKey (mstr_outsource_available_history_id, mstr_outsource_available_id) references history_mstr_outsource_available (history_id, mstr_outsource_available_id)
@foreignKey (update_user_history_id, update_user_id) references history_info_staff (history_id, info_staff_id)
MRP の提案(対象・動き・判断を boolean の列で返す。提案の種類・判断の整数は出さない)';

COMMENT ON COLUMN tests.v_mrp_suggestion.is_purchase IS '対象: 発注';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_production IS '対象: 生産';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_outsource IS '対象: 外注';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_plan IS '対象: 資材計画';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_exception IS '対象: 例外';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_supply_request IS '対象: 顧客への支給依頼';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_new IS '動き: 新規';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_change IS '動き: 変更(日程・数量)';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_cancel IS '動き: 取消';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_keep IS '動き: 維持';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_option IS '動き: 切り替えの選択肢';
COMMENT ON COLUMN tests.v_mrp_suggestion.subject_equipment IS '例外の主題: 設備(過負荷)';
COMMENT ON COLUMN tests.v_mrp_suggestion.subject_stock IS '例外の主題: 在庫(過剰)';
COMMENT ON COLUMN tests.v_mrp_suggestion.subject_master IS '例外の主題: マスタ(不備)';
COMMENT ON COLUMN tests.v_mrp_suggestion.need_user IS 'ユーザー判断が必要';
COMMENT ON COLUMN tests.v_mrp_suggestion.late IS '納期遅れ';
COMMENT ON COLUMN tests.v_mrp_suggestion.undecided IS '判断が要る(未判断)';
COMMENT ON COLUMN tests.v_mrp_suggestion.adopted IS '採用';
COMMENT ON COLUMN tests.v_mrp_suggestion.rejected IS '却下';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_info IS '情報(判断の対象でない)';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_order_demand IS '計画区分: 受注';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_non_booked IS '計画区分: 非計上';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_safety_stock IS '計画区分: 安全在庫';
COMMENT ON COLUMN tests.v_mrp_suggestion.is_dependent_demand IS '計画区分: 従属';
COMMENT ON COLUMN tests.v_mrp_suggestion.run_open IS 'MRP 実行が計算済み(確定・破棄を待っている)';
COMMENT ON COLUMN tests.v_mrp_suggestion.run_committed IS 'MRP 実行が確定済み';
