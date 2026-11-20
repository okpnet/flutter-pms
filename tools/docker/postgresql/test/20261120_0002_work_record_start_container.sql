-- work_record_start を、ロットまたはコンテナを渡せる形にする(引数の並びが変わるため、旧い関数を消してから作る)。
-- ゼロから再構築するときは不要(06 に含まれる)。既存の DB に当てるときだけ使う。PostGraphile の再起動が要る。
DROP FUNCTION IF EXISTS tests.work_record_start(uuid, uuid, numeric, uuid, uuid, uuid, varchar);

CREATE OR REPLACE FUNCTION tests.work_record_start(
    p_work_plan_id uuid,
    p_qty numeric,
    p_visiter_id uuid DEFAULT NULL,
    p_container_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_equipment_id uuid DEFAULT NULL,
    p_location_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_work_record AS $$
DECLARE
    v_st record; v_t tests.v_register_target; v_eq_hist uuid; v_rec tests.trans_work_record; v_nth smallint;
    v_lot record; v_need numeric; v_take numeric;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_t FROM tests.v_register_target WHERE trans_work_plan_id = p_work_plan_id;
    IF NOT FOUND THEN
        RAISE EXCEPTION '作業指示が見つかりません (%)', p_work_plan_id USING ERRCODE = 'OPR01';
    END IF;
    IF p_qty IS NULL OR p_qty <= 0 THEN
        RAISE EXCEPTION '開始数量は 0 より大きくしてください (%)', p_qty USING ERRCODE = 'OPR02';
    END IF;
    IF (p_visiter_id IS NULL) = (p_container_id IS NULL) THEN
        RAISE EXCEPTION '払い出すロット(p_visiter_id)かコンテナ(p_container_id)の、どちらか一方だけを渡してください' USING ERRCODE = 'OPR02';
    END IF;
    IF v_t.stopped OR v_t.closed THEN
        RAISE EXCEPTION '停止中・終わっている作業指示は、実績を登録できません' USING ERRCODE = 'OPR03';
    END IF;
    IF v_t.in_progress THEN
        RAISE EXCEPTION 'この作業指示は実施中です。終了を登録してから、開始してください' USING ERRCODE = 'OPR03';
    END IF;
    IF p_qty > v_t.remaining_quantity THEN
        RAISE EXCEPTION '計画の残りを超えています (残り %、開始 %)', v_t.remaining_quantity, p_qty USING ERRCODE = 'OPR02';
    END IF;
    IF p_equipment_id IS NOT NULL THEN
        SELECT h.history_id INTO v_eq_hist FROM tests.history_mstr_equipment AS h
        WHERE h.mstr_equipment_id = p_equipment_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
        IF v_eq_hist IS NULL THEN
            RAISE EXCEPTION '設備が見つかりません (%)', p_equipment_id USING ERRCODE = 'OPR01';
        END IF;
    END IF;
    SELECT COALESCE(MAX(nth_time), 0) + 1 INTO v_nth FROM tests.trans_work_record
    WHERE trans_work_plan_id = p_work_plan_id AND remove IS FALSE;

    -- 実施中の実績(終了 = NULL。終了で埋める)
    INSERT INTO tests.trans_work_record (trans_work_plan_id, nth_time, start_at, stop_at, qty,
                                         staff_history_id, staff_id, equipment_history_id, equipment_id, remarks,
                                         update_user_id, update_user_history_id)
    VALUES (p_work_plan_id, v_nth, now(), NULL, 0, v_st.staff_history_id, v_st.staff_id, v_eq_hist, p_equipment_id, p_remarks,
            v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_rec;
    -- 材料の払出。在庫・仮止め・異常の検査は visiter_issue が行う(VIS03・VIS04)。作業実績につなぐ
    IF p_visiter_id IS NOT NULL THEN
        PERFORM tests.visiter_issue(p_visiter_id, p_qty, v_rec.trans_work_record_id, v_st.staff_id, p_location_id, NULL, p_remarks);
    ELSE
        -- コンテナから払い出す: 取り出せるロットを古い順に、必要な数量になるまで(複数のロットにまたがってよい)
        v_need := p_qty;
        FOR v_lot IN
            SELECT i.trans_visiter_id, i.quantity FROM tests.v_visiter_issuable AS i
            INNER JOIN tests.trans_visiter AS v ON v.trans_visiter_id = i.trans_visiter_id
            WHERE i.trans_container_id = p_container_id AND i.issuable AND i.quantity > 0
            ORDER BY v.update_at, i.trans_visiter_id
        LOOP
            v_take := LEAST(v_need, v_lot.quantity);
            PERFORM tests.visiter_issue(v_lot.trans_visiter_id, v_take, v_rec.trans_work_record_id, v_st.staff_id, p_location_id, NULL, p_remarks);
            v_need := v_need - v_take;
            EXIT WHEN v_need <= 0;
        END LOOP;
        IF v_need > 0 THEN
            RAISE EXCEPTION 'コンテナから取り出せる数量が足りません (不足 %)', v_need USING ERRCODE = 'VIS03';
        END IF;
    END IF;
    RETURN v_rec;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.work_record_start(uuid, numeric, uuid, uuid, uuid, uuid, uuid, varchar) IS '作業の開始。作業実績(実施中。終了は NULL)を登録し、材料を払い出して作業実績につなぐ(1トランザクション)。払い出すロット(p_visiter_id)かコンテナ(p_container_id)のどちらか 1 つを渡す。コンテナを渡したときは、取り出せるロットを古い順に、数量になるまで複数のロットから払い出す。数量は計画の残り(v_register_target.remaining_quantity)以内、停止・打ち切り・全部キャンセルの作業指示と、実施中の作業指示は登録しない。errcode: OPR01 対象が無い / OPR02 数量・引数 / OPR03 登録できない。払出は VIS03(在庫が足りない)・VIS04(取り出せない)';
