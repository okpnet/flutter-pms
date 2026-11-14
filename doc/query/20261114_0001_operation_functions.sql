-- =====================================================================
-- 20261114_0001_operation_functions.sql
-- 受注・発注まわりの「操作」を、1回の呼び出し = 1トランザクションにする DB 関数(案)
--
-- 背景: PostGraphile v4 は、1つのドキュメントの複数の mutation を巻き戻さない(1つ目が成功して2つ目が失敗すると、
--       1つ目は残る。2026-11-14 に実測)。計画変更の記録と本体の更新を、クライアントの複数の mutation にできない。
-- 仕様: CLAUDE.md「受注・発注まわりの仕様」・issue/20261114_0001.md(決定仕様 137 の4章・5章)
-- 適用: スキーマ tests に、psql で1回流す(何度流しても同じ。CREATE OR REPLACE)。
--         psql -d test_avocado -f 20261114_0001_operation_functions.sql
--       この文書の SQL は doc/query に置いた「案」で、tools/docker/postgresql/script の本体には、レビュー後に統合する。
--
-- 共通の約束(07_visiter_functions.sql の visiter_* と同じ)
--   ・担当者は p_staff_id、省略時は JWT の jwt.claims.staff_id。履歴IDは、その担当者の最新の履歴
--   ・エラーは errcode で判定する:
--       OPR00 担当者・マスタ(理由・精算区分・相手先)が見つからない
--       OPR01 対象(明細・計画・在庫・コンテナ)が見つからない
--       OPR02 数量・引数が不正
--       OPR03 今の状態では実行できない(すでに停止・打ち切り・キャンセル済み、など)
--   ・状態・区分は boolean で持つ(コード値にしない)。表示用の文字は持たない(v_plan_change ができたらそこで)
--   ・計画変更(trans_plan_change)は追記のみ。起点の変更と処置は p_parent_plan_change_id でつなぐ
--   ・戻り値は、作った計画変更(または精算・伝票)。画面は再読込せずに表示できる
--   ・内部の補助関数(op_*)は @omit(PostGraphile に公開しない)
--   ・ロットを動かす関数(inventory_request_hold・lot_hold・lot_scrap・lot_deliver・return_register・supply_register)は、
--     棚に場所が設定されていないと受払実績の場所が決まらない(VIS05)ため、p_location_id(省略可)で場所を渡せる
-- 一般ユーザー(pms_user)・管理者(pms_admin)が実行できる。所有者の表(trans_visiter_owner)は書かない(13 のトリガーだけが書く)。
-- =====================================================================

SET search_path TO tests, public;

-- ---------------------------------------------------------------------
-- 補助関数(@omit)
-- ---------------------------------------------------------------------

-- 担当者とその履歴ID(visiter_staff と同じ。操作の関数が使う)
CREATE OR REPLACE FUNCTION tests.op_staff(p_staff_id uuid, OUT staff_id uuid, OUT staff_history_id uuid) AS $$
BEGIN
    staff_id := COALESCE(p_staff_id, NULLIF(current_setting('jwt.claims.staff_id', true), '')::uuid);
    SELECT h.history_id INTO staff_history_id FROM tests.history_info_staff AS h
    WHERE h.info_staff_id = staff_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
    IF staff_history_id IS NULL THEN
        RAISE EXCEPTION '担当者が見つかりません (%)', staff_id USING ERRCODE = 'OPR00';
    END IF;
END
$$ LANGUAGE plpgsql STABLE;
COMMENT ON FUNCTION tests.op_staff(uuid) IS '@omit';

-- 変更理由・精算区分・返品区分の最新の履歴ID(ID が NULL なら NULL)
CREATE OR REPLACE FUNCTION tests.op_hist_change_reason(p_id uuid) RETURNS uuid AS $$
    SELECT h.history_id FROM tests.history_mstr_change_reason AS h
    WHERE h.mstr_change_reason_id = p_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.op_hist_change_reason(uuid) IS '@omit';

CREATE OR REPLACE FUNCTION tests.op_hist_settlement_kind(p_id uuid) RETURNS uuid AS $$
    SELECT h.history_id FROM tests.history_mstr_settlement_kind AS h
    WHERE h.mstr_settlement_kind_id = p_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.op_hist_settlement_kind(uuid) IS '@omit';

CREATE OR REPLACE FUNCTION tests.op_hist_return_kind(p_id uuid) RETURNS uuid AS $$
    SELECT h.history_id FROM tests.history_mstr_return_kind AS h
    WHERE h.mstr_return_kind_id = p_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.op_hist_return_kind(uuid) IS '@omit';

-- 計画変更を1件追加する(追記のみ。どの列に値が入っているかが、変更の種類になる)
CREATE OR REPLACE FUNCTION tests.op_add_plan_change(
    p_staff uuid, p_staff_hist uuid,
    p_order_detail uuid DEFAULT NULL, p_purchase_detail uuid DEFAULT NULL, p_operations_plan uuid DEFAULT NULL,
    p_inventory_request uuid DEFAULT NULL, p_visiter uuid DEFAULT NULL,
    p_old_quantity numeric DEFAULT NULL, p_new_quantity numeric DEFAULT NULL, p_cancel_quantity numeric DEFAULT 0,
    p_old_date timestamp DEFAULT NULL, p_new_date timestamp DEFAULT NULL,
    p_old_stop boolean DEFAULT NULL, p_new_stop boolean DEFAULT NULL,
    p_discontinue boolean DEFAULT false, p_release boolean DEFAULT false, p_hold boolean DEFAULT false,
    p_scrap boolean DEFAULT false, p_deliver boolean DEFAULT false,
    p_container uuid DEFAULT NULL, p_settlement uuid DEFAULT NULL,
    p_change_reason_id uuid DEFAULT NULL, p_reason varchar DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL, p_parent uuid DEFAULT NULL, p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_row tests.trans_plan_change;
    v_reason_hist uuid;
    v_stakeholder_hist uuid;
BEGIN
    IF p_change_reason_id IS NOT NULL THEN
        v_reason_hist := tests.op_hist_change_reason(p_change_reason_id);
        IF v_reason_hist IS NULL THEN
            RAISE EXCEPTION '変更理由が見つかりません (%)', p_change_reason_id USING ERRCODE = 'OPR00';
        END IF;
    END IF;
    IF p_stakeholder_id IS NOT NULL THEN
        v_stakeholder_hist := tests.mrp_hist_stakeholder(p_stakeholder_id);
        IF v_stakeholder_hist IS NULL THEN
            RAISE EXCEPTION '相手先が見つかりません (%)', p_stakeholder_id USING ERRCODE = 'OPR00';
        END IF;
    END IF;
    INSERT INTO tests.trans_plan_change (
        parent_trans_plan_change_id, change_at,
        trans_order_detail_id, trans_purchase_detail_id, trans_operations_plan_id, trans_inventory_request_id, trans_visiter_id,
        old_quantity, new_quantity, cancel_quantity, old_date, new_date, old_stop, new_stop,
        discontinue, release, hold, scrap, deliver, trans_container_id, trans_order_detail_settlement_id,
        change_reason_history_id, change_reason_id, reason, stakeholder_history_id, stakeholder_id,
        staff_history_id, staff_id, remarks, update_user_id, update_user_history_id)
    VALUES (
        p_parent, now(),
        p_order_detail, p_purchase_detail, p_operations_plan, p_inventory_request, p_visiter,
        p_old_quantity, p_new_quantity, COALESCE(p_cancel_quantity, 0), p_old_date, p_new_date, p_old_stop, p_new_stop,
        COALESCE(p_discontinue, false), COALESCE(p_release, false), COALESCE(p_hold, false),
        COALESCE(p_scrap, false), COALESCE(p_deliver, false), p_container, p_settlement,
        v_reason_hist, p_change_reason_id, p_reason, v_stakeholder_hist, p_stakeholder_id,
        p_staff_hist, p_staff, p_remarks, p_staff, p_staff_hist)
    RETURNING * INTO v_row;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.op_add_plan_change IS '@omit';

-- ---------------------------------------------------------------------
-- 1. 受注明細の操作
-- ---------------------------------------------------------------------

-- 受注明細のキャンセル(一部・全部)。キャンセル数量を加算し、計画変更を記録する。数量は書き換えない。
-- 後続(画面が案内する): 再MRP(p_order_detail_ids = この明細)、生産計画の処置、品物の処置、精算
CREATE OR REPLACE FUNCTION tests.order_detail_cancel(
    p_order_detail_id uuid,
    p_quantity numeric,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_od tests.trans_order_detail; v_remaining numeric;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_od FROM tests.trans_order_detail WHERE trans_order_detail_id = p_order_detail_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '受注明細が見つかりません (%)', p_order_detail_id USING ERRCODE = 'OPR01';
    END IF;
    SELECT b.remaining_quantity INTO v_remaining FROM tests.v_order_detail_balance AS b
    WHERE b.trans_order_detail_id = p_order_detail_id;
    IF p_quantity IS NULL OR p_quantity <= 0 OR p_quantity > COALESCE(v_remaining, 0) THEN
        RAISE EXCEPTION 'キャンセルできる数量は 0 より大きく、残(%)以下です: %', COALESCE(v_remaining, 0), p_quantity
            USING ERRCODE = 'OPR02';
    END IF;
    UPDATE tests.trans_order_detail
    SET cancel_quantity = cancel_quantity + p_quantity, update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_order_detail_id = p_order_detail_id;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_order_detail => p_order_detail_id,
        p_old_quantity => v_od.quantity, p_new_quantity => v_od.quantity, p_cancel_quantity => p_quantity,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason, p_stakeholder_id => p_stakeholder_id,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.order_detail_cancel(uuid, numeric, uuid, varchar, uuid, uuid, uuid, varchar) IS
    '受注明細のキャンセル(一部・全部)。キャンセル数量を加算し、計画変更を記録する(1トランザクション)。戻り値は計画変更';

-- 受注明細の停止・再開(MRP は停止中を凍結する)
CREATE OR REPLACE FUNCTION tests.order_detail_set_stop(
    p_order_detail_id uuid,
    p_stop boolean,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_od tests.trans_order_detail;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_od FROM tests.trans_order_detail WHERE trans_order_detail_id = p_order_detail_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '受注明細が見つかりません (%)', p_order_detail_id USING ERRCODE = 'OPR01';
    END IF;
    IF p_stop IS NULL OR COALESCE(v_od.stop, false) = p_stop THEN
        RAISE EXCEPTION '停止の状態が、すでに同じです (stop = %)', COALESCE(v_od.stop, false) USING ERRCODE = 'OPR03';
    END IF;
    IF p_stop AND EXISTS (SELECT 1 FROM tests.v_order_detail_balance AS b WHERE b.trans_order_detail_id = p_order_detail_id AND b.cancel_closed) THEN
        RAISE EXCEPTION '全部キャンセル済みの受注明細は停止できません' USING ERRCODE = 'OPR03';
    END IF;
    UPDATE tests.trans_order_detail
    SET stop = p_stop, update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_order_detail_id = p_order_detail_id;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_order_detail => p_order_detail_id,
        p_old_stop => COALESCE(v_od.stop, false), p_new_stop => p_stop,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason, p_stakeholder_id => p_stakeholder_id,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.order_detail_set_stop(uuid, boolean, uuid, varchar, uuid, uuid, uuid, varchar) IS
    '受注明細の停止・再開。計画変更(旧・新の停止)を記録する(1トランザクション)。戻り値は計画変更';

-- 受注明細の納期・数量の変更(延期・前倒し・増減)。どちらかは必須。数量はキャンセル数量以上
CREATE OR REPLACE FUNCTION tests.order_detail_change(
    p_order_detail_id uuid,
    p_new_quantity numeric DEFAULT NULL,
    p_new_delivery_date timestamp DEFAULT NULL,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_od tests.trans_order_detail;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    IF p_new_quantity IS NULL AND p_new_delivery_date IS NULL THEN
        RAISE EXCEPTION '新しい数量または納期のどちらかは必須です' USING ERRCODE = 'OPR02';
    END IF;
    SELECT * INTO v_od FROM tests.trans_order_detail WHERE trans_order_detail_id = p_order_detail_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '受注明細が見つかりません (%)', p_order_detail_id USING ERRCODE = 'OPR01';
    END IF;
    IF p_new_quantity IS NOT NULL AND (p_new_quantity <= 0 OR p_new_quantity < v_od.cancel_quantity) THEN
        RAISE EXCEPTION '数量は 0 より大きく、キャンセル数量(%)以上にしてください: %', v_od.cancel_quantity, p_new_quantity
            USING ERRCODE = 'OPR02';
    END IF;
    UPDATE tests.trans_order_detail
    SET quantity = COALESCE(p_new_quantity, quantity), delivery_date = COALESCE(p_new_delivery_date, delivery_date),
        update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_order_detail_id = p_order_detail_id;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_order_detail => p_order_detail_id,
        p_old_quantity => CASE WHEN p_new_quantity IS NULL THEN NULL ELSE v_od.quantity END, p_new_quantity => p_new_quantity,
        p_old_date => CASE WHEN p_new_delivery_date IS NULL THEN NULL ELSE v_od.delivery_date END, p_new_date => p_new_delivery_date,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason, p_stakeholder_id => p_stakeholder_id,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.order_detail_change(uuid, numeric, timestamp, uuid, varchar, uuid, uuid, uuid, varchar) IS
    '受注明細の納期・数量の変更。本体を更新し、計画変更(旧・新)を記録する(1トランザクション)。戻り値は計画変更';

-- ---------------------------------------------------------------------
-- 2. 発注明細の操作
-- ---------------------------------------------------------------------

CREATE OR REPLACE FUNCTION tests.purchase_detail_cancel(
    p_purchase_detail_id uuid,
    p_quantity numeric,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_pd tests.trans_purchase_detail; v_remaining numeric;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_pd FROM tests.trans_purchase_detail WHERE trans_purchase_detail_id = p_purchase_detail_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '発注明細が見つかりません (%)', p_purchase_detail_id USING ERRCODE = 'OPR01';
    END IF;
    SELECT b.remaining_quantity INTO v_remaining FROM tests.v_purchase_detail_balance AS b
    WHERE b.trans_purchase_detail_id = p_purchase_detail_id;
    IF p_quantity IS NULL OR p_quantity <= 0 OR p_quantity > COALESCE(v_remaining, 0) THEN
        RAISE EXCEPTION 'キャンセルできる数量は 0 より大きく、残(%)以下です: %', COALESCE(v_remaining, 0), p_quantity
            USING ERRCODE = 'OPR02';
    END IF;
    UPDATE tests.trans_purchase_detail
    SET cancel_quantity = cancel_quantity + p_quantity, update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_purchase_detail_id = p_purchase_detail_id;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_purchase_detail => p_purchase_detail_id,
        p_old_quantity => v_pd.quantity, p_new_quantity => v_pd.quantity, p_cancel_quantity => p_quantity,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason, p_stakeholder_id => p_stakeholder_id,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.purchase_detail_cancel(uuid, numeric, uuid, varchar, uuid, uuid, uuid, varchar) IS
    '発注明細のキャンセル(一部・全部)。キャンセル数量を加算し、計画変更を記録する(1トランザクション)。戻り値は計画変更';

CREATE OR REPLACE FUNCTION tests.purchase_detail_set_stop(
    p_purchase_detail_id uuid,
    p_stop boolean,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_pd tests.trans_purchase_detail;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_pd FROM tests.trans_purchase_detail WHERE trans_purchase_detail_id = p_purchase_detail_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '発注明細が見つかりません (%)', p_purchase_detail_id USING ERRCODE = 'OPR01';
    END IF;
    IF p_stop IS NULL OR COALESCE(v_pd.stop, false) = p_stop THEN
        RAISE EXCEPTION '停止の状態が、すでに同じです (stop = %)', COALESCE(v_pd.stop, false) USING ERRCODE = 'OPR03';
    END IF;
    UPDATE tests.trans_purchase_detail
    SET stop = p_stop, update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_purchase_detail_id = p_purchase_detail_id;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_purchase_detail => p_purchase_detail_id,
        p_old_stop => COALESCE(v_pd.stop, false), p_new_stop => p_stop,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason, p_stakeholder_id => p_stakeholder_id,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.purchase_detail_set_stop(uuid, boolean, uuid, varchar, uuid, uuid, uuid, varchar) IS
    '発注明細の停止・再開。計画変更(旧・新の停止)を記録する(1トランザクション)。戻り値は計画変更';

-- 発注明細の納期(period)・数量の変更。数量はキャンセル数量以上
CREATE OR REPLACE FUNCTION tests.purchase_detail_change(
    p_purchase_detail_id uuid,
    p_new_quantity numeric DEFAULT NULL,
    p_new_period timestamp DEFAULT NULL,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_pd tests.trans_purchase_detail;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    IF p_new_quantity IS NULL AND p_new_period IS NULL THEN
        RAISE EXCEPTION '新しい数量または納期のどちらかは必須です' USING ERRCODE = 'OPR02';
    END IF;
    SELECT * INTO v_pd FROM tests.trans_purchase_detail WHERE trans_purchase_detail_id = p_purchase_detail_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '発注明細が見つかりません (%)', p_purchase_detail_id USING ERRCODE = 'OPR01';
    END IF;
    IF p_new_quantity IS NOT NULL AND (p_new_quantity <= 0 OR p_new_quantity < v_pd.cancel_quantity) THEN
        RAISE EXCEPTION '数量は 0 より大きく、キャンセル数量(%)以上にしてください: %', v_pd.cancel_quantity, p_new_quantity
            USING ERRCODE = 'OPR02';
    END IF;
    UPDATE tests.trans_purchase_detail
    SET quantity = COALESCE(p_new_quantity, quantity), period = COALESCE(p_new_period, period),
        update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_purchase_detail_id = p_purchase_detail_id;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_purchase_detail => p_purchase_detail_id,
        p_old_quantity => CASE WHEN p_new_quantity IS NULL THEN NULL ELSE v_pd.quantity END, p_new_quantity => p_new_quantity,
        p_old_date => CASE WHEN p_new_period IS NULL THEN NULL ELSE v_pd.period END, p_new_date => p_new_period,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason, p_stakeholder_id => p_stakeholder_id,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.purchase_detail_change(uuid, numeric, timestamp, uuid, varchar, uuid, uuid, uuid, varchar) IS
    '発注明細の納期・数量の変更。本体を更新し、計画変更(旧・新)を記録する(1トランザクション)。戻り値は計画変更';

-- ---------------------------------------------------------------------
-- 3. 生産計画の操作
-- ---------------------------------------------------------------------

CREATE OR REPLACE FUNCTION tests.operations_plan_set_stop(
    p_operations_plan_id uuid,
    p_stop boolean,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_op tests.trans_operations_plan;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_op FROM tests.trans_operations_plan WHERE trans_operations_plan_id = p_operations_plan_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '生産計画が見つかりません (%)', p_operations_plan_id USING ERRCODE = 'OPR01';
    END IF;
    IF COALESCE(v_op.discontinue, false) THEN
        RAISE EXCEPTION '打ち切り済みの生産計画は停止・再開できません' USING ERRCODE = 'OPR03';
    END IF;
    IF p_stop IS NULL OR COALESCE(v_op.stop, false) = p_stop THEN
        RAISE EXCEPTION '停止の状態が、すでに同じです (stop = %)', COALESCE(v_op.stop, false) USING ERRCODE = 'OPR03';
    END IF;
    UPDATE tests.trans_operations_plan
    SET stop = p_stop, update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_operations_plan_id = p_operations_plan_id;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_operations_plan => p_operations_plan_id,
        p_old_stop => COALESCE(v_op.stop, false), p_new_stop => p_stop,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason, p_stakeholder_id => p_stakeholder_id,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.operations_plan_set_stop(uuid, boolean, uuid, varchar, uuid, uuid, uuid, varchar) IS
    '生産計画の停止・再開。計画変更(旧・新の停止)を記録する(1トランザクション)。戻り値は計画変更';

-- 生産計画の打ち切り(生産残 = 0。true にしたら戻さない。仕掛品は処置が必要 → lot_* の関数)
CREATE OR REPLACE FUNCTION tests.operations_plan_discontinue(
    p_operations_plan_id uuid,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_op tests.trans_operations_plan;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_op FROM tests.trans_operations_plan WHERE trans_operations_plan_id = p_operations_plan_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '生産計画が見つかりません (%)', p_operations_plan_id USING ERRCODE = 'OPR01';
    END IF;
    IF COALESCE(v_op.discontinue, false) THEN
        RAISE EXCEPTION 'すでに打ち切り済みです' USING ERRCODE = 'OPR03';
    END IF;
    UPDATE tests.trans_operations_plan
    SET discontinue = true, update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_operations_plan_id = p_operations_plan_id;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_operations_plan => p_operations_plan_id,
        p_discontinue => true,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason, p_stakeholder_id => p_stakeholder_id,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.operations_plan_discontinue(uuid, uuid, varchar, uuid, uuid, uuid, varchar) IS
    '生産計画の打ち切り(戻さない)。計画変更を記録する(1トランザクション)。戻り値は計画変更';

-- ---------------------------------------------------------------------
-- 4. 引当予約・品物(ロット)の処置
-- ---------------------------------------------------------------------

-- 引当予約の解除(予約を取り消す。在庫は動かさない)
CREATE OR REPLACE FUNCTION tests.inventory_request_release(
    p_inventory_request_id uuid,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_rq tests.trans_inventory_request;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_rq FROM tests.trans_inventory_request WHERE trans_inventory_request_id = p_inventory_request_id FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '引当予約が見つかりません (%)', p_inventory_request_id USING ERRCODE = 'OPR01';
    END IF;
    IF v_rq.remove IS TRUE THEN
        RAISE EXCEPTION 'すでに解除済みの引当予約です' USING ERRCODE = 'OPR03';
    END IF;
    UPDATE tests.trans_inventory_request
    SET remove = true, update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_inventory_request_id = p_inventory_request_id;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_inventory_request => p_inventory_request_id,
        p_release => true, p_change_reason_id => p_change_reason_id, p_reason => p_reason,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.inventory_request_release(uuid, uuid, varchar, uuid, uuid, varchar) IS
    '引当予約の解除。予約を取り消し(remove)、計画変更(release)を記録する(1トランザクション)。戻り値は計画変更';

-- 引当予約の保管(予約している在庫を、ユーザーが選んだコンテナへ仮止めで移す)
CREATE OR REPLACE FUNCTION tests.inventory_request_hold(
    p_inventory_request_id uuid,
    p_container_id uuid,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL,
    p_location_id uuid DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_rq tests.trans_inventory_request;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_rq FROM tests.trans_inventory_request WHERE trans_inventory_request_id = p_inventory_request_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '引当予約が見つかりません (%)', p_inventory_request_id USING ERRCODE = 'OPR01';
    END IF;
    IF v_rq.trans_visiter_id IS NULL THEN
        RAISE EXCEPTION '引当元の在庫(trans_visiter_id)が決まっていない予約は、保管できません' USING ERRCODE = 'OPR03';
    END IF;
    IF p_container_id IS NULL OR NOT EXISTS (SELECT 1 FROM tests.trans_container WHERE trans_container_id = p_container_id AND remove IS FALSE) THEN
        RAISE EXCEPTION '保管先のコンテナが見つかりません (%)', p_container_id USING ERRCODE = 'OPR01';
    END IF;
    PERFORM tests.visiter_move(v_rq.trans_visiter_id, p_container_id, v_rq.quantity, true, v_st.staff_id, p_location_id, NULL, p_remarks);
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_inventory_request => p_inventory_request_id,
        p_hold => true, p_container => p_container_id, p_change_reason_id => p_change_reason_id, p_reason => p_reason,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.inventory_request_hold(uuid, uuid, uuid, varchar, uuid, uuid, varchar, uuid) IS
    '引当予約の保管。予約の在庫を選んだコンテナへ仮止めで移し(visiter_move)、計画変更(hold・コンテナ)を記録する(1トランザクション)';

-- 在庫にする(処置の記録だけ。ロットは動かさない)
CREATE OR REPLACE FUNCTION tests.lot_release(
    p_visiter_id uuid,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    IF NOT EXISTS (SELECT 1 FROM tests.trans_visiter WHERE trans_visiter_id = p_visiter_id AND remove IS FALSE) THEN
        RAISE EXCEPTION '棚ビジター(ロット)が見つかりません (%)', p_visiter_id USING ERRCODE = 'OPR01';
    END IF;
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_visiter => p_visiter_id,
        p_release => true, p_change_reason_id => p_change_reason_id, p_reason => p_reason,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.lot_release(uuid, uuid, varchar, uuid, uuid, varchar) IS
    'キャンセル後の品物を在庫にする(処置の記録。ロットは動かさない)。計画変更(release)を記録する';

-- 押さえる(保管): ユーザーが選んだコンテナへ仮止めで移す
CREATE OR REPLACE FUNCTION tests.lot_hold(
    p_visiter_id uuid,
    p_container_id uuid,
    p_quantity numeric,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL,
    p_location_id uuid DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    IF p_container_id IS NULL OR NOT EXISTS (SELECT 1 FROM tests.trans_container WHERE trans_container_id = p_container_id AND remove IS FALSE) THEN
        RAISE EXCEPTION '保管先のコンテナが見つかりません (%)', p_container_id USING ERRCODE = 'OPR01';
    END IF;
    PERFORM tests.visiter_move(p_visiter_id, p_container_id, p_quantity, true, v_st.staff_id, p_location_id, NULL, p_remarks);
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_visiter => p_visiter_id,
        p_hold => true, p_container => p_container_id, p_change_reason_id => p_change_reason_id, p_reason => p_reason,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.lot_hold(uuid, uuid, numeric, uuid, varchar, uuid, uuid, varchar, uuid) IS
    '品物を押さえる(保管)。選んだコンテナへ仮止めで移し(visiter_move)、計画変更(hold・コンテナ)を記録する(1トランザクション)';

-- 廃棄
CREATE OR REPLACE FUNCTION tests.lot_scrap(
    p_visiter_id uuid,
    p_quantity numeric,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL,
    p_location_id uuid DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    PERFORM tests.visiter_issue(p_visiter_id, p_quantity, NULL, v_st.staff_id, p_location_id, NULL, p_remarks);
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_visiter => p_visiter_id,
        p_scrap => true, p_change_reason_id => p_change_reason_id, p_reason => p_reason,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.lot_scrap(uuid, numeric, uuid, varchar, uuid, uuid, varchar, uuid) IS
    '品物の廃棄。ロットから払い出し(visiter_issue)、計画変更(scrap)を記録する(1トランザクション)';

-- 顧客へ引き渡す(精算がある場合は、先に order_detail_settle で精算を作り、その ID を渡す)
CREATE OR REPLACE FUNCTION tests.lot_deliver(
    p_visiter_id uuid,
    p_quantity numeric,
    p_order_detail_settlement_id uuid DEFAULT NULL,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL,
    p_location_id uuid DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    PERFORM tests.visiter_issue(p_visiter_id, p_quantity, NULL, v_st.staff_id, p_location_id, NULL, p_remarks);
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_visiter => p_visiter_id,
        p_deliver => true, p_settlement => p_order_detail_settlement_id,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.lot_deliver(uuid, numeric, uuid, uuid, varchar, uuid, uuid, varchar, uuid) IS
    '顧客への引き渡し。ロットから払い出し(visiter_issue)、計画変更(deliver・精算)を記録する(1トランザクション)';

-- ---------------------------------------------------------------------
-- 5. 精算(途中の請求。精算1件 = 請求書1行)
-- ---------------------------------------------------------------------

CREATE OR REPLACE FUNCTION tests.order_detail_settle(
    p_order_detail_id uuid,
    p_settlement_kind_id uuid,
    p_amount numeric,
    p_quantity numeric DEFAULT NULL,
    p_settle_at timestamp DEFAULT NULL,
    p_plan_change_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_order_detail_settlement AS $$
DECLARE
    v_st record; v_kind_hist uuid; v_row tests.trans_order_detail_settlement;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    IF NOT EXISTS (SELECT 1 FROM tests.trans_order_detail WHERE trans_order_detail_id = p_order_detail_id AND remove IS FALSE) THEN
        RAISE EXCEPTION '受注明細が見つかりません (%)', p_order_detail_id USING ERRCODE = 'OPR01';
    END IF;
    v_kind_hist := tests.op_hist_settlement_kind(p_settlement_kind_id);
    IF v_kind_hist IS NULL THEN
        RAISE EXCEPTION '精算区分が見つかりません (%)', p_settlement_kind_id USING ERRCODE = 'OPR00';
    END IF;
    IF p_amount IS NULL THEN
        RAISE EXCEPTION '金額は必須です' USING ERRCODE = 'OPR02';
    END IF;
    IF p_quantity IS NOT NULL AND p_quantity < 0 THEN
        RAISE EXCEPTION '数量は 0 以上にしてください: %', p_quantity USING ERRCODE = 'OPR02';
    END IF;
    INSERT INTO tests.trans_order_detail_settlement (
        trans_order_detail_id, settlement_kind_history_id, settlement_kind_id, settle_at, quantity, amount,
        trans_plan_change_id, reason, staff_history_id, staff_id, remarks, update_user_id, update_user_history_id)
    VALUES (p_order_detail_id, v_kind_hist, p_settlement_kind_id, COALESCE(p_settle_at, now()), p_quantity, p_amount,
        p_plan_change_id, p_reason, v_st.staff_history_id, v_st.staff_id, p_remarks, v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_row;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.order_detail_settle(uuid, uuid, numeric, numeric, timestamp, uuid, varchar, uuid, varchar) IS
    '受注明細の精算(精算1件 = 請求書1行)。精算区分の履歴を引いて登録する。引き渡す区分(delivery)なら、続けて lot_deliver を呼ぶ';

-- ---------------------------------------------------------------------
-- 6. 返品(伝票・明細・ロットのつなぎを1トランザクションで)
--   p_details は jsonb の配列。要素:
--     item_id(必須)・quantity(必須・> 0)・replacement(代品あり)
--     受注側: order_detail_id / shipping_order_detail_record_id   発注側: purchase_detail_id / purchase_rec_id
--     origin_visiter_id(元のロット)
--     lot_id(返品区分の receive = false のとき、このロットから quantity を払い出して、その - の行をつなぐ)
--     visiter_ids(つなぐ既存の棚ビジターの配列。receive = true のとき、先に入庫した + の行をつなぐ)
--   receive = true(顧客から)の + の行は、入庫の関数(受入・入庫の登録)で先に作る。ここでは作らない。
-- ---------------------------------------------------------------------

CREATE OR REPLACE FUNCTION tests.return_register(
    p_return_kind_id uuid,
    p_stakeholder_id uuid,
    p_details jsonb,
    p_order_id uuid DEFAULT NULL,
    p_purchase_id uuid DEFAULT NULL,
    p_plan_change_id uuid DEFAULT NULL,
    p_complaint_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_code varchar DEFAULT NULL,
    p_return_at timestamp DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL,
    p_location_id uuid DEFAULT NULL
) RETURNS tests.trans_return AS $$
DECLARE
    v_st record; v_kind_hist uuid; v_receive boolean; v_stake_hist uuid;
    v_ret tests.trans_return; v_det tests.trans_return_detail; d jsonb; v_issued tests.trans_visiter; v_vid text;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    v_kind_hist := tests.op_hist_return_kind(p_return_kind_id);
    IF v_kind_hist IS NULL THEN
        RAISE EXCEPTION '返品区分が見つかりません (%)', p_return_kind_id USING ERRCODE = 'OPR00';
    END IF;
    SELECT h.receive INTO v_receive FROM tests.history_mstr_return_kind AS h WHERE h.history_id = v_kind_hist;
    v_stake_hist := tests.mrp_hist_stakeholder(p_stakeholder_id);
    IF v_stake_hist IS NULL THEN
        RAISE EXCEPTION '相手先が見つかりません (%)', p_stakeholder_id USING ERRCODE = 'OPR00';
    END IF;
    IF p_details IS NULL OR jsonb_typeof(p_details) <> 'array' OR jsonb_array_length(p_details) = 0 THEN
        RAISE EXCEPTION '明細(p_details)は1件以上の配列で渡してください' USING ERRCODE = 'OPR02';
    END IF;
    IF num_nonnulls(p_order_id, p_purchase_id) > 1 THEN
        RAISE EXCEPTION '受注と発注は、どちらか一方だけを指定してください' USING ERRCODE = 'OPR02';
    END IF;

    INSERT INTO tests.trans_return (code, return_kind_history_id, return_kind_id, return_at, stakeholder_history_id, stakeholder_id,
        trans_order_id, trans_purchase_id, trans_plan_change_id, trans_complaint_id, reason,
        staff_history_id, staff_id, remarks, update_user_id, update_user_history_id)
    VALUES (p_code, v_kind_hist, p_return_kind_id, COALESCE(p_return_at, now()), v_stake_hist, p_stakeholder_id,
        p_order_id, p_purchase_id, p_plan_change_id, p_complaint_id, p_reason,
        v_st.staff_history_id, v_st.staff_id, p_remarks, v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_ret;

    FOR d IN SELECT * FROM jsonb_array_elements(p_details) LOOP
        IF (d->>'item_id') IS NULL OR COALESCE((d->>'quantity')::numeric, 0) <= 0 THEN
            RAISE EXCEPTION '明細には item_id と、0 より大きい quantity が必要です' USING ERRCODE = 'OPR02';
        END IF;
        INSERT INTO tests.trans_return_detail (trans_return_id, item_history_id, item_id, quantity, replacement,
            trans_order_detail_id, trans_shipping_order_detail_record_id, trans_purchase_detail_id, trans_purchase_rec_id,
            origin_trans_visiter_id, update_user_id, update_user_history_id)
        VALUES (v_ret.trans_return_id, tests.mrp_hist_item((d->>'item_id')::uuid), (d->>'item_id')::uuid,
            (d->>'quantity')::numeric, COALESCE((d->>'replacement')::boolean, false),
            (d->>'order_detail_id')::uuid, (d->>'shipping_order_detail_record_id')::uuid,
            (d->>'purchase_detail_id')::uuid, (d->>'purchase_rec_id')::uuid,
            (d->>'origin_visiter_id')::uuid, v_st.staff_id, v_st.staff_history_id)
        RETURNING * INTO v_det;

        -- 仕入先・外注先への返品: ロットから払い出して、その - の行をつなぐ
        IF NOT v_receive AND (d->>'lot_id') IS NOT NULL THEN
            v_issued := tests.visiter_issue((d->>'lot_id')::uuid, (d->>'quantity')::numeric, NULL, v_st.staff_id, p_location_id, NULL, p_remarks);
            INSERT INTO tests.trans_return_visiter (trans_return_detail_id, trans_visiter_id, update_user_id, update_user_history_id)
            VALUES (v_det.trans_return_detail_id, v_issued.trans_visiter_id, v_st.staff_id, v_st.staff_history_id);
        END IF;
        -- 既存の棚ビジター(先に入庫した + の行など)をつなぐ
        IF d ? 'visiter_ids' THEN
            FOR v_vid IN SELECT jsonb_array_elements_text(d->'visiter_ids') LOOP
                INSERT INTO tests.trans_return_visiter (trans_return_detail_id, trans_visiter_id, update_user_id, update_user_history_id)
                VALUES (v_det.trans_return_detail_id, v_vid::uuid, v_st.staff_id, v_st.staff_history_id);
            END LOOP;
        END IF;
    END LOOP;
    RETURN v_ret;
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.return_register(uuid, uuid, jsonb, uuid, uuid, uuid, uuid, varchar, varchar, timestamp, uuid, varchar, uuid) IS
    '返品の登録(伝票・明細・ロットのつなぎ)。仕入先への返品はロットから払い出す(1トランザクション)。p_details は jsonb の配列。戻り値は伝票';

-- ---------------------------------------------------------------------
-- 7. 支給(伝票・明細・ロットのつなぎを1トランザクションで)
--   p_receive / p_counterpart_owns / p_company_owns は、画面の「場面」から決める(DB には場面を持たない)。
--   p_details は jsonb の配列。要素:
--     item_id(必須)・quantity(必須・> 0)・unit_price(有償)・scheduled_at(支給予定日)
--     order_detail_id または purchase_detail_id(どちらか一方)・resource_plan_id(充てる資材計画。受注の時点では空でよい)
--     lot_id と container_id(p_receive = false のとき、選んだコンテナへ移した + の行をつなぐ。仮止めにするなら hold = true)
--     lot_id だけ(p_receive = false で container_id が無い: ロットから quantity を払い出した - の行をつなぐ)
--     visiter_ids(つなぐ既存の棚ビジター。顧客からの受け入れの + の行など)
--   支給予定(ロットがつながっていない)は、visiter 系を渡さずに登録する。
-- ---------------------------------------------------------------------

CREATE OR REPLACE FUNCTION tests.supply_register(
    p_stakeholder_id uuid,
    p_receive boolean,
    p_counterpart_owns boolean,
    p_company_owns boolean,
    p_details jsonb,
    p_order_id uuid DEFAULT NULL,
    p_purchase_id uuid DEFAULT NULL,
    p_plan_change_id uuid DEFAULT NULL,
    p_complaint_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_code varchar DEFAULT NULL,
    p_supply_at timestamp DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL,
    p_location_id uuid DEFAULT NULL
) RETURNS tests.trans_supply AS $$
DECLARE
    v_st record; v_stake_hist uuid; v_sup tests.trans_supply; v_det tests.trans_supply_detail; d jsonb;
    v_line tests.trans_visiter; v_vid text;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    v_stake_hist := tests.mrp_hist_stakeholder(p_stakeholder_id);
    IF v_stake_hist IS NULL THEN
        RAISE EXCEPTION '相手先が見つかりません (%)', p_stakeholder_id USING ERRCODE = 'OPR00';
    END IF;
    IF p_receive IS NULL OR p_counterpart_owns IS NULL OR p_company_owns IS NULL THEN
        RAISE EXCEPTION 'receive・counterpart_owns・company_owns は必須です' USING ERRCODE = 'OPR02';
    END IF;
    IF p_counterpart_owns AND p_company_owns THEN
        RAISE EXCEPTION 'counterpart_owns と company_owns は、両方 true にできません' USING ERRCODE = 'OPR02';
    END IF;
    IF num_nonnulls(p_order_id, p_purchase_id) > 1 THEN
        RAISE EXCEPTION '受注と発注は、どちらか一方だけを指定してください' USING ERRCODE = 'OPR02';
    END IF;
    IF p_details IS NULL OR jsonb_typeof(p_details) <> 'array' OR jsonb_array_length(p_details) = 0 THEN
        RAISE EXCEPTION '明細(p_details)は1件以上の配列で渡してください' USING ERRCODE = 'OPR02';
    END IF;

    INSERT INTO tests.trans_supply (code, supply_at, stakeholder_history_id, stakeholder_id, receive, counterpart_owns, company_owns,
        trans_order_id, trans_purchase_id, trans_plan_change_id, trans_complaint_id, reason,
        staff_history_id, staff_id, remarks, update_user_id, update_user_history_id)
    VALUES (p_code, COALESCE(p_supply_at, now()), v_stake_hist, p_stakeholder_id, p_receive, p_counterpart_owns, p_company_owns,
        p_order_id, p_purchase_id, p_plan_change_id, p_complaint_id, p_reason,
        v_st.staff_history_id, v_st.staff_id, p_remarks, v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_sup;

    FOR d IN SELECT * FROM jsonb_array_elements(p_details) LOOP
        IF (d->>'item_id') IS NULL OR COALESCE((d->>'quantity')::numeric, 0) <= 0 THEN
            RAISE EXCEPTION '明細には item_id と、0 より大きい quantity が必要です' USING ERRCODE = 'OPR02';
        END IF;
        INSERT INTO tests.trans_supply_detail (trans_supply_id, item_history_id, item_id, quantity, unit_price, scheduled_at,
            trans_order_detail_id, trans_purchase_detail_id, trans_resource_plan_id, update_user_id, update_user_history_id)
        VALUES (v_sup.trans_supply_id, tests.mrp_hist_item((d->>'item_id')::uuid), (d->>'item_id')::uuid,
            (d->>'quantity')::numeric, (d->>'unit_price')::numeric, (d->>'scheduled_at')::timestamp,
            (d->>'order_detail_id')::uuid, (d->>'purchase_detail_id')::uuid, (d->>'resource_plan_id')::uuid,
            v_st.staff_id, v_st.staff_history_id)
        RETURNING * INTO v_det;

        IF NOT p_receive AND (d->>'lot_id') IS NOT NULL THEN
            IF (d->>'container_id') IS NOT NULL THEN
                -- 選んだコンテナへ移した + の行(発注先へ渡す・発注先へ有償で渡す・無償 → 有償の切り替えなど)
                v_line := tests.visiter_move((d->>'lot_id')::uuid, (d->>'container_id')::uuid, (d->>'quantity')::numeric,
                    COALESCE((d->>'hold')::boolean, false), v_st.staff_id, p_location_id, NULL, p_remarks);
            ELSE
                -- ロットから払い出した - の行(顧客へ返す)
                v_line := tests.visiter_issue((d->>'lot_id')::uuid, (d->>'quantity')::numeric, NULL, v_st.staff_id, p_location_id, NULL, p_remarks);
            END IF;
            INSERT INTO tests.trans_supply_visiter (trans_supply_detail_id, trans_visiter_id, update_user_id, update_user_history_id)
            VALUES (v_det.trans_supply_detail_id, v_line.trans_visiter_id, v_st.staff_id, v_st.staff_history_id);
        END IF;
        IF d ? 'visiter_ids' THEN
            FOR v_vid IN SELECT jsonb_array_elements_text(d->'visiter_ids') LOOP
                INSERT INTO tests.trans_supply_visiter (trans_supply_detail_id, trans_visiter_id, update_user_id, update_user_history_id)
                VALUES (v_det.trans_supply_detail_id, v_vid::uuid, v_st.staff_id, v_st.staff_history_id);
            END LOOP;
        END IF;
    END LOOP;
    RETURN v_sup;
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.supply_register(uuid, boolean, boolean, boolean, jsonb, uuid, uuid, uuid, uuid, varchar, varchar, timestamp, uuid, varchar, uuid) IS
    '支給の登録(伝票・明細・ロットのつなぎ)。渡すときはロットを移す・払い出す(1トランザクション)。所有者はトリガーが決める。p_details は jsonb の配列。戻り値は伝票';

-- ---------------------------------------------------------------------
-- 権限(一般ユーザー・管理者が実行できる)。内部の補助関数(op_*)は一般に公開しない
-- ---------------------------------------------------------------------
GRANT EXECUTE ON FUNCTION
    tests.order_detail_cancel(uuid, numeric, uuid, varchar, uuid, uuid, uuid, varchar),
    tests.order_detail_set_stop(uuid, boolean, uuid, varchar, uuid, uuid, uuid, varchar),
    tests.order_detail_change(uuid, numeric, timestamp, uuid, varchar, uuid, uuid, uuid, varchar),
    tests.purchase_detail_cancel(uuid, numeric, uuid, varchar, uuid, uuid, uuid, varchar),
    tests.purchase_detail_set_stop(uuid, boolean, uuid, varchar, uuid, uuid, uuid, varchar),
    tests.purchase_detail_change(uuid, numeric, timestamp, uuid, varchar, uuid, uuid, uuid, varchar),
    tests.operations_plan_set_stop(uuid, boolean, uuid, varchar, uuid, uuid, uuid, varchar),
    tests.operations_plan_discontinue(uuid, uuid, varchar, uuid, uuid, uuid, varchar),
    tests.inventory_request_release(uuid, uuid, varchar, uuid, uuid, varchar),
    tests.inventory_request_hold(uuid, uuid, uuid, varchar, uuid, uuid, varchar, uuid),
    tests.lot_release(uuid, uuid, varchar, uuid, uuid, varchar),
    tests.lot_hold(uuid, uuid, numeric, uuid, varchar, uuid, uuid, varchar, uuid),
    tests.lot_scrap(uuid, numeric, uuid, varchar, uuid, uuid, varchar, uuid),
    tests.lot_deliver(uuid, numeric, uuid, uuid, varchar, uuid, uuid, varchar, uuid),
    tests.order_detail_settle(uuid, uuid, numeric, numeric, timestamp, uuid, varchar, uuid, varchar),
    tests.return_register(uuid, uuid, jsonb, uuid, uuid, uuid, uuid, varchar, varchar, timestamp, uuid, varchar, uuid),
    tests.supply_register(uuid, boolean, boolean, boolean, jsonb, uuid, uuid, uuid, uuid, varchar, varchar, timestamp, uuid, varchar, uuid)
TO pms_user, pms_admin;

GRANT EXECUTE ON FUNCTION
    tests.op_staff(uuid), tests.op_hist_change_reason(uuid), tests.op_hist_settlement_kind(uuid), tests.op_hist_return_kind(uuid),
    tests.op_add_plan_change
TO pms_user, pms_admin;
-- ↑ 補助関数は、呼ぶ関数と同じロールで実行されるため、実行権限だけを与える(@omit なので PostGraphile には出ない)
