-- 操作の DB 関数の追加・差し替え(案)。1. 押さえた(仮止めの)ロットの、あとからの処置 2. 出荷オーダー明細の取り消し。対象のスキーマ: tests。DB には入れていない(doc/query/README.md)。
--
-- 【1. 押さえたロットの処置】
-- 見つかった問題(20261116_0006_stage1_tests.sql の T5-6): lot_hold で押さえたロットは release = false(仮止め)のため、
--   ・lot_scrap(廃棄)・lot_deliver(引き渡し)は、visiter_issue が「この在庫は取り出せません (hold)」で止める。
--   ・lot_release(在庫にする)は、計画変更(release)を記録するだけで、ロットは仮止めのまま(MRP は仮止めを使えない)。
-- 仕様(issue/change_request.md 3-2)は、押さえた品(交渉中)を、あとで引き渡す・廃棄する・在庫にする、であり、仮止めを外す関数が無い。
--
-- 提案(方針: 関数を増やさない。処置の関数が、自分で押さえた仮止めを外す):
--   ・補助 op_unhold(@omit): lot_hold・inventory_request_hold で押さえたロット(仮止めを押さえる計画変更が残っているロット)だけ、
--     release = true にする。受け入れ検品の仮止め・異常による保留(trans_complaint_visiter)は外さない(異常は v_visiter_issuable が別に止める)。
--   ・lot_release・lot_scrap・lot_deliver が、処置の前に op_unhold を呼ぶ(同じトランザクション。あとの処理が失敗すれば、仮止めの解除も戻る)。
-- 押さえたロットの判定(op_unhold の EXISTS)は、v_cancel_open_item の「押さえたままの品」と同じ条件。変えるときは両方をそろえる。

CREATE OR REPLACE FUNCTION tests.op_unhold(p_visiter_id uuid, p_staff uuid, p_staff_hist uuid) RETURNS void AS $$
    UPDATE tests.trans_visiter
    SET release = TRUE, update_user_id = p_staff, update_user_history_id = p_staff_hist
    WHERE trans_visiter_id = p_visiter_id AND release IS FALSE AND remove IS FALSE
      AND EXISTS (SELECT 1 FROM tests.trans_plan_change AS pc
                  WHERE pc.hold AND pc.remove IS FALSE
                    AND (pc.trans_visiter_id = p_visiter_id
                         OR pc.trans_inventory_request_id IN (SELECT rq.trans_inventory_request_id
                                                                FROM tests.trans_inventory_request AS rq
                                                               WHERE rq.trans_visiter_id = p_visiter_id)));
$$ LANGUAGE sql VOLATILE;
COMMENT ON FUNCTION tests.op_unhold(uuid, uuid, uuid) IS '@omit';

-- 在庫にする(処置の記録。押さえていたロットは、仮止めを外して在庫にする)
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
    PERFORM tests.op_unhold(p_visiter_id, v_st.staff_id, v_st.staff_history_id);
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_visiter => p_visiter_id,
        p_release => true, p_change_reason_id => p_change_reason_id, p_reason => p_reason,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.lot_release(uuid, uuid, varchar, uuid, uuid, varchar) IS
    'キャンセル後の品物を在庫にする(処置の記録)。押さえていたロットは仮止めを外す。計画変更(release)を記録する(1トランザクション)';

-- 廃棄(押さえていたロットは、仮止めを外してから払い出す)
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
    PERFORM tests.op_unhold(p_visiter_id, v_st.staff_id, v_st.staff_history_id);
    PERFORM tests.visiter_issue(p_visiter_id, p_quantity, NULL, v_st.staff_id, p_location_id, NULL, p_remarks);
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_visiter => p_visiter_id,
        p_scrap => true, p_change_reason_id => p_change_reason_id, p_reason => p_reason,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.lot_scrap(uuid, numeric, uuid, varchar, uuid, uuid, varchar, uuid) IS
    '品物の廃棄。押さえていたロットは仮止めを外してから、ロットから払い出し(visiter_issue)、計画変更(scrap)を記録する(1トランザクション)';

-- 顧客へ引き渡す(精算がある場合は、先に order_detail_settle で精算を作り、その ID を渡す。押さえていたロットは、仮止めを外してから払い出す)
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
    PERFORM tests.op_unhold(p_visiter_id, v_st.staff_id, v_st.staff_history_id);
    PERFORM tests.visiter_issue(p_visiter_id, p_quantity, NULL, v_st.staff_id, p_location_id, NULL, p_remarks);
    RETURN tests.op_add_plan_change(v_st.staff_id, v_st.staff_history_id, p_visiter => p_visiter_id,
        p_deliver => true, p_settlement => p_order_detail_settlement_id,
        p_change_reason_id => p_change_reason_id, p_reason => p_reason,
        p_parent => p_parent_plan_change_id, p_remarks => p_remarks);
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.lot_deliver(uuid, numeric, uuid, uuid, varchar, uuid, uuid, varchar, uuid) IS
    '顧客への引き渡し。押さえていたロットは仮止めを外してから、ロットから払い出し(visiter_issue)、計画変更(deliver・精算)を記録する(1トランザクション)';

-- ---------------------------------------------------------------------
-- 【2. 出荷オーダー明細の取り消し】
-- 見つかった欠け: 計画変更(trans_plan_change)は出荷オーダー明細(trans_shipping_order_detail_id)を対象にできるが、
--   op_add_plan_change に出荷オーダー明細の引数が無く、取り消す関数も無い。未処置一覧の「未出荷の出荷オーダー」を処置できない。
-- 提案: 出荷実績が無い出荷オーダー明細を取り消す(論理削除)関数。本体の更新と計画変更の記録を 1 トランザクションで行う
--   (PostGraphile は複数の mutation を 1 トランザクションにしないため、関数にする)。出荷実績があるときは OPR03。
--   出荷オーダーの数量は書き換えない(キャンセルする数量は cancel_quantity に残す)。
-- ---------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.shipping_order_detail_cancel(
    p_shipping_order_detail_id uuid,
    p_change_reason_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_parent_plan_change_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_plan_change AS $$
DECLARE
    v_st record; v_sd tests.trans_shipping_order_detail; v_reason_hist uuid; v_row tests.trans_plan_change;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_sd FROM tests.trans_shipping_order_detail
    WHERE trans_shipping_order_detail_id = p_shipping_order_detail_id FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '出荷オーダー明細が見つかりません (%)', p_shipping_order_detail_id USING ERRCODE = 'OPR01';
    END IF;
    IF v_sd.remove IS TRUE THEN
        RAISE EXCEPTION 'すでに取り消し済みの出荷オーダー明細です' USING ERRCODE = 'OPR03';
    END IF;
    IF EXISTS (SELECT 1 FROM tests.trans_shipping_order_detail_record AS r
               WHERE r.trans_shipping_order_detail_id = p_shipping_order_detail_id AND r.remove IS FALSE) THEN
        RAISE EXCEPTION '出荷実績がある出荷オーダー明細は取り消せません' USING ERRCODE = 'OPR03';
    END IF;
    IF p_change_reason_id IS NOT NULL THEN
        v_reason_hist := tests.op_hist_change_reason(p_change_reason_id);
        IF v_reason_hist IS NULL THEN
            RAISE EXCEPTION '変更理由が見つかりません (%)', p_change_reason_id USING ERRCODE = 'OPR00';
        END IF;
    END IF;
    UPDATE tests.trans_shipping_order_detail
    SET remove = TRUE, update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_shipping_order_detail_id = p_shipping_order_detail_id;
    INSERT INTO tests.trans_plan_change (
        parent_trans_plan_change_id, change_at, trans_shipping_order_detail_id,
        old_quantity, new_quantity, cancel_quantity,
        change_reason_history_id, change_reason_id, reason,
        staff_history_id, staff_id, remarks, update_user_id, update_user_history_id)
    VALUES (
        p_parent_plan_change_id, now(), p_shipping_order_detail_id,
        v_sd.shipping_quantity, 0, v_sd.shipping_quantity,
        v_reason_hist, p_change_reason_id, p_reason,
        v_st.staff_history_id, v_st.staff_id, p_remarks, v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_row;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.shipping_order_detail_cancel(uuid, uuid, varchar, uuid, uuid, varchar) IS
    '未出荷の出荷オーダー明細の取り消し(出荷実績があるときは不可)。論理削除し、計画変更(キャンセル数量)を記録する(1トランザクション)。戻り値は計画変更';
