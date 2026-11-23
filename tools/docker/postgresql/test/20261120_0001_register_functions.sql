-- 20261120_0001 実績登録・受入検品の DB 関数とビュー(適用ファイル。**検査してから PERO・06 に取り込む**)
--
-- 方針(issue/202611.md#20261120_0001 の 1): 作業実績の開始・終了と、受入検品(発注・非計上発注)は、同じ動きをする。
--   「実績の記録 + 合格の入庫 + 不合格の異常と入庫」を共通にして、関数の総数を減らす。
--   - visiter_receive    (内部。@omit)  分割元の無い入庫(新しいロット)。作業実績・受入実績へつなぐ
--   - work_record_start  (公開)        作業の開始 = 実績の登録 + コンテナからの払出(visiter_issue)
--   - inspection_register(公開)        作業の終了 と 受入検品 の共通。対象は 作業実績 または 発注明細 のどちらか 1 つ
--   ビュー v_register_target は、作業指示(工程)と発注明細を 1 つの形で返す(バーコード・実績登録の照会に使う)。
--   発注と非計上発注は、どちらも発注明細(trans_purchase_detail)で、非計上かは資材計画の元(trans_unrecognized_detail_id)の違いだけ。
--   受入の動きは同じなので、関数・ビューとも分けない。
-- 戻り値は RETURNS TABLE(PERO は複合型を持てない。06 に RETURNS TABLE の前例がある)。出力列の名前は、表の列と重ならないものにする。
-- 状態・区分はコード値で持たない(判定は boolean と列の有無)。errcode は OPR00〜OPR03 に合わせる。
-- 適用先: スキーマ tests(06 のあと、09 の前)。PostGraphile の再起動が要る。

-- ---------------------------------------------------------------------------------------------
-- 1. 内部: 分割元の無い入庫(新しいロット)
-- ---------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.visiter_receive(
    p_container_id uuid,
    p_qty numeric,
    p_hold boolean DEFAULT false,
    p_work_record_id uuid DEFAULT NULL,
    p_purchase_rec_id uuid DEFAULT NULL,
    p_parent uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_location_id uuid DEFAULT NULL,
    p_at timestamp DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_visiter AS $$
DECLARE
    v_st record; v_loc record; v_out tests.trans_visiter;
BEGIN
    v_st := tests.visiter_staff(p_staff_id);
    IF p_qty IS NULL OR p_qty <= 0 THEN
        RAISE EXCEPTION '入庫数量は 0 より大きくしてください (%)', p_qty USING ERRCODE = 'VIS02';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM tests.trans_container AS c WHERE c.trans_container_id = p_container_id AND c.remove IS FALSE) THEN
        RAISE EXCEPTION '入庫先の棚が見つかりません (%)', p_container_id USING ERRCODE = 'VIS06';
    END IF;
    IF p_work_record_id IS NOT NULL AND p_purchase_rec_id IS NOT NULL THEN
        RAISE EXCEPTION '作業実績と受入実績は、どちらか一方にしてください' USING ERRCODE = 'VIS02';
    END IF;
    v_loc := tests.visiter_location(p_container_id, p_location_id);

    -- 仮止め(p_hold)のときは入出庫を許可しない(release = false)。不合格・検品待ちのロット
    INSERT INTO tests.trans_visiter (parent_trans_visiter_id, trans_container_id, quantity, release, remarks,
                                     update_user_id, update_user_history_id)
    VALUES (p_parent, p_container_id, p_qty, p_hold IS NOT TRUE, p_remarks, v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_out;
    PERFORM tests.visiter_add_convey(v_out.trans_visiter_id, v_loc.location_id, v_loc.location_history_id,
                                     v_st.staff_id, v_st.staff_history_id, p_at, p_remarks);
    IF p_work_record_id IS NOT NULL THEN
        INSERT INTO tests.trans_work_record_visiter (trans_visiter_id, trans_work_record_id, update_user_id, update_user_history_id)
        VALUES (v_out.trans_visiter_id, p_work_record_id, v_st.staff_id, v_st.staff_history_id);
    ELSIF p_purchase_rec_id IS NOT NULL THEN
        INSERT INTO tests.trans_purchase_rec_visiter (trans_visiter_id, trans_purchase_rec_id, update_user_id, update_user_history_id)
        VALUES (v_out.trans_visiter_id, p_purchase_rec_id, v_st.staff_id, v_st.staff_history_id);
    END IF;
    RETURN v_out;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.visiter_receive(uuid, numeric, boolean, uuid, uuid, uuid, uuid, uuid, timestamp, varchar) IS '@omit';

-- ---------------------------------------------------------------------------------------------
-- 2. ビュー: 登録の対象(作業指示と発注明細を 1 つの形で)
-- ---------------------------------------------------------------------------------------------
CREATE VIEW tests.v_register_target AS
SELECT
    wp.trans_work_plan_id AS target_id
    , wp.symbol
    , wp.trans_work_plan_id
    , NULL::uuid AS trans_purchase_detail_id
    , TRUE AS is_work_plan
    , FALSE AS is_purchase_detail
    , rp.item_id
    , COALESCE(op.quantity, 0) AS quantity
    , COALESCE(w.done, 0) AS done_quantity
    , GREATEST(COALESCE(op.quantity, 0) - COALESCE(w.done, 0) - COALESCE(w.taken_open, 0), 0) AS remaining_quantity
    , COALESCE(w.has_open, FALSE) AS in_progress
    , r.stopped
    , r.closed
    -- 登録できるか: 停止・打ち切り・全部キャンセルでなく、残りがある
    , (r.registrable AND COALESCE(op.quantity, 0) - COALESCE(w.done, 0) - COALESCE(w.taken_open, 0) > 0) AS registrable
FROM tests.trans_work_plan AS wp
INNER JOIN tests.trans_operations_plan AS op ON op.trans_operations_plan_id = wp.trans_operations_plan_id
INNER JOIN tests.trans_resource_plan AS rp ON rp.trans_resource_plan_id = op.trans_resource_plan_id
INNER JOIN tests.v_work_plan_registrable AS r ON r.trans_work_plan_id = wp.trans_work_plan_id
LEFT JOIN LATERAL (
    SELECT
        SUM(wr.qty) FILTER (WHERE wr.stop_at IS NOT NULL) AS done
        , COALESCE(SUM(tk.q) FILTER (WHERE wr.stop_at IS NULL), 0) AS taken_open
        , BOOL_OR(wr.stop_at IS NULL) AS has_open
    FROM tests.trans_work_record AS wr
    LEFT JOIN LATERAL (
        -- 取り出した数量 = 作業実績につないだ払出(- の行)の合計
        SELECT -SUM(v.quantity) AS q
        FROM tests.trans_work_record_visiter AS wrv
        INNER JOIN tests.trans_visiter AS v ON v.trans_visiter_id = wrv.trans_visiter_id AND v.quantity < 0
        WHERE wrv.trans_work_record_id = wr.trans_work_record_id AND wrv.remove IS FALSE
    ) AS tk ON TRUE
    WHERE wr.trans_work_plan_id = wp.trans_work_plan_id AND wr.remove IS FALSE
) AS w ON TRUE
WHERE wp.remove IS FALSE
UNION ALL
SELECT
    b.trans_purchase_detail_id AS target_id
    , b.symbol
    , NULL::uuid AS trans_work_plan_id
    , b.trans_purchase_detail_id
    , FALSE
    , TRUE
    , b.item_id
    , b.quantity
    , b.received_quantity AS done_quantity
    , b.remaining_quantity
    , FALSE AS in_progress
    , b.stop AS stopped
    , b.cancel_closed AS closed
    , (NOT b.stop AND NOT b.cancel_closed AND b.remaining_quantity > 0) AS registrable
FROM tests.v_purchase_detail_balance AS b;

COMMENT ON VIEW tests.v_register_target IS '@primaryKey target_id
@unique symbol
@foreignKey (trans_work_plan_id) references trans_work_plan (trans_work_plan_id)
@foreignKey (trans_purchase_detail_id) references trans_purchase_detail (trans_purchase_detail_id)
@foreignKey (item_id) references mstr_item (mstr_item_id)
実績を登録する対象(作業指示の工程と発注明細。発注・非計上発注は同じ発注明細)。登録できるか・残り・実施中を列で持つ(画面で計算・判定しない)';

-- ---------------------------------------------------------------------------------------------
-- 3. 公開: 作業の開始(実績の登録 + コンテナからの払出)
-- ---------------------------------------------------------------------------------------------
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

-- ---------------------------------------------------------------------------------------------
-- 4. 公開: 作業の終了 と 受入検品 の共通(実績の記録 + 合格の入庫 + 不合格の異常と入庫)
-- ---------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.inspection_register(
    p_pass_qty numeric,
    p_container_id uuid,
    p_work_record_id uuid DEFAULT NULL,
    p_purchase_detail_id uuid DEFAULT NULL,
    p_fail_qty numeric DEFAULT 0,
    p_fail_container_id uuid DEFAULT NULL,
    p_reason varchar DEFAULT NULL,
    p_return_container_id uuid DEFAULT NULL,
    p_return_reason varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_location_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS TABLE (
    work_record_id uuid,        -- 終了した作業実績(受入のときは NULL)
    purchase_rec_id uuid,       -- 登録した受入実績(作業のときは NULL)
    pass_visiter_id uuid,       -- 合格を入庫したロット(合格 0 のときは NULL)
    fail_visiter_id uuid,       -- 不合格を入庫したロット(不合格 0 のときは NULL)
    return_visiter_id uuid,     -- 意図的な差を返したロット(差が無いときは NULL)
    complaint_id uuid,          -- 登録した異常(不合格 0 のときは NULL)
    return_quantity numeric     -- 返した数量(差が無いときは 0)
) AS $$
DECLARE
    v_st record;
    v_pass numeric := COALESCE(p_pass_qty, 0); v_fail numeric := COALESCE(p_fail_qty, 0);
    v_taken numeric; v_return numeric := 0; v_origin uuid; v_origin_container uuid;
    v_b tests.v_purchase_detail_balance; v_rec tests.trans_purchase_rec; v_wr tests.trans_work_record;
    v_title uuid; v_detail uuid; v_complaint uuid; v_lot tests.trans_visiter;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    IF (p_work_record_id IS NULL) = (p_purchase_detail_id IS NULL) THEN
        RAISE EXCEPTION '作業実績と発注明細は、どちらか一方だけを渡してください' USING ERRCODE = 'OPR02';
    END IF;
    IF v_pass < 0 OR v_fail < 0 OR v_pass + v_fail <= 0 THEN
        RAISE EXCEPTION '合格・不合格の数量は 0 以上で、合計は 0 より大きくしてください (合格 %、不合格 %)', v_pass, v_fail USING ERRCODE = 'OPR02';
    END IF;
    IF v_pass > 0 AND p_container_id IS NULL THEN
        RAISE EXCEPTION '合格の入庫先のコンテナを渡してください' USING ERRCODE = 'OPR02';
    END IF;
    IF v_fail > 0 AND (p_fail_container_id IS NULL OR NULLIF(btrim(COALESCE(p_reason, '')), '') IS NULL) THEN
        RAISE EXCEPTION '不合格は、入庫先のコンテナと理由を渡してください' USING ERRCODE = 'OPR02';
    END IF;

    IF p_work_record_id IS NOT NULL THEN
        -- 作業の終了: 実施中の実績。完了(合格 + 不合格)は取り出した数量以内、差は払出元へ返す(意図的な差)
        SELECT * INTO v_wr FROM tests.trans_work_record
        WHERE trans_work_record_id = p_work_record_id AND remove IS FALSE FOR UPDATE;
        IF NOT FOUND THEN
            RAISE EXCEPTION '作業実績が見つかりません (%)', p_work_record_id USING ERRCODE = 'OPR01';
        END IF;
        IF v_wr.stop_at IS NOT NULL THEN
            RAISE EXCEPTION 'この作業実績はすでに終了しています' USING ERRCODE = 'OPR03';
        END IF;
        SELECT -SUM(v.quantity), (ARRAY_AGG(v.parent_trans_visiter_id ORDER BY v.update_at))[1],
               (ARRAY_AGG(v.trans_container_id ORDER BY v.update_at))[1]
          INTO v_taken, v_origin, v_origin_container
        FROM tests.trans_work_record_visiter AS wrv
        INNER JOIN tests.trans_visiter AS v ON v.trans_visiter_id = wrv.trans_visiter_id AND v.quantity < 0
        WHERE wrv.trans_work_record_id = p_work_record_id AND wrv.remove IS FALSE;
        v_taken := COALESCE(v_taken, 0);
        IF v_pass + v_fail > v_taken THEN
            RAISE EXCEPTION '取り出した数量を超えています (取り出し %、完了 %)', v_taken, v_pass + v_fail USING ERRCODE = 'OPR02';
        END IF;
        v_return := v_taken - v_pass - v_fail;
        IF v_return > 0 AND v_fail = 0 AND NULLIF(btrim(COALESCE(p_return_reason, '')), '') IS NULL THEN
            RAISE EXCEPTION '少ない完了数量(意図的な差)は、理由を渡してください' USING ERRCODE = 'OPR02';
        END IF;
        UPDATE tests.trans_work_record
        SET qty = v_pass + v_fail, stop_at = now(), update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id,
            remarks = COALESCE(p_remarks, remarks)
        WHERE trans_work_record_id = p_work_record_id;
        work_record_id := p_work_record_id;
    ELSE
        -- 受入検品(発注・非計上発注): 残り以内。停止中・全部キャンセルは受け入れない
        SELECT * INTO v_b FROM tests.v_purchase_detail_balance WHERE trans_purchase_detail_id = p_purchase_detail_id;
        IF NOT FOUND THEN
            RAISE EXCEPTION '発注明細が見つかりません (%)', p_purchase_detail_id USING ERRCODE = 'OPR01';
        END IF;
        IF v_b.stop OR v_b.cancel_closed THEN
            RAISE EXCEPTION '停止中・全部キャンセル済みの発注明細は、受け入れできません' USING ERRCODE = 'OPR03';
        END IF;
        IF v_pass + v_fail > v_b.remaining_quantity THEN
            RAISE EXCEPTION '発注の残りを超えています (残り %、受入 %)', v_b.remaining_quantity, v_pass + v_fail USING ERRCODE = 'OPR02';
        END IF;
        INSERT INTO tests.trans_purchase_rec (trans_purchase_detail_id, receive_at, quantity, remarks, update_user_id, update_user_history_id)
        VALUES (p_purchase_detail_id, now(), v_pass + v_fail, p_remarks, v_st.staff_id, v_st.staff_history_id)
        RETURNING * INTO v_rec;
        purchase_rec_id := v_rec.trans_purchase_rec_id;
    END IF;

    -- 合格の入庫
    IF v_pass > 0 THEN
        v_lot := tests.visiter_receive(p_container_id, v_pass, false, p_work_record_id, purchase_rec_id,
                                       NULL, v_st.staff_id, p_location_id, NULL, p_remarks);
        pass_visiter_id := v_lot.trans_visiter_id;
    END IF;

    -- 不合格: 異常(工程異常・受入異常)を登録し、仮止めで入庫して異常につなぐ
    IF v_fail > 0 THEN
        v_title := (tests.trans_label_save(NULL, jsonb_build_object('ja', p_reason), v_st.staff_id, v_st.staff_history_id)).trans_label_id;
        v_detail := (tests.trans_text_save(NULL, jsonb_build_object('ja', p_reason), v_st.staff_id, v_st.staff_history_id)).trans_text_id;
        INSERT INTO tests.trans_complaint (titles, details, reporter_staff_history_id, reporter_staff_id, update_user_id, update_user_history_id)
        VALUES (v_title, v_detail, v_st.staff_history_id, v_st.staff_id, v_st.staff_id, v_st.staff_history_id)
        RETURNING trans_complaint_id INTO v_complaint;
        IF p_work_record_id IS NOT NULL THEN
            INSERT INTO tests.trans_complaint_work (trans_complaint_id, trans_work_record_id, quantity, update_user_id, update_user_history_id)
            VALUES (v_complaint, p_work_record_id, v_fail, v_st.staff_id, v_st.staff_history_id);
        ELSE
            INSERT INTO tests.trans_complaint_purchase_rec (trans_complaint_id, trans_purchase_rec_id, quantity, update_user_id, update_user_history_id)
            VALUES (v_complaint, purchase_rec_id, v_fail, v_st.staff_id, v_st.staff_history_id);
        END IF;
        v_lot := tests.visiter_receive(p_fail_container_id, v_fail, true, p_work_record_id, purchase_rec_id,
                                       NULL, v_st.staff_id, p_location_id, NULL, p_reason);
        INSERT INTO tests.trans_complaint_visiter (trans_complaint_id, trans_visiter_id, quantity, update_user_id, update_user_history_id)
        VALUES (v_complaint, v_lot.trans_visiter_id, v_fail, v_st.staff_id, v_st.staff_history_id);
        fail_visiter_id := v_lot.trans_visiter_id;
        complaint_id := v_complaint;
    END IF;

    -- 作業の終了で、完了が取り出しより少ない差は、払出元(または指定)のコンテナへ返す。次の開始で、引継ぎとして取り出せる
    IF v_return > 0 THEN
        v_lot := tests.visiter_receive(COALESCE(p_return_container_id, v_origin_container), v_return, false, p_work_record_id, NULL,
                                       v_origin, v_st.staff_id, p_location_id, NULL, COALESCE(p_return_reason, p_reason));
        return_visiter_id := v_lot.trans_visiter_id;
    END IF;
    return_quantity := v_return;
    RETURN NEXT;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.inspection_register(numeric, uuid, uuid, uuid, numeric, uuid, varchar, uuid, varchar, uuid, uuid, varchar) IS '作業の終了 と 受入検品(発注・非計上発注)の共通の登録(1トランザクション)。作業実績(p_work_record_id)または発注明細(p_purchase_detail_id)のどちらか 1 つを渡す。作業実績は終了(完了 = 合格 + 不合格)、発注明細は受入実績を登録する。合格(p_pass_qty)はコンテナ(p_container_id)へ入庫、不合格(p_fail_qty)は異常(理由 p_reason)を登録して仮止めで p_fail_container_id へ入庫し異常につなぐ。作業の終了で完了が取り出しより少ない差は、払出元(または p_return_container_id)へ返す(理由 p_return_reason)。errcode: OPR00 担当者 / OPR01 対象が無い / OPR02 数量・引数 / OPR03 今の状態では登録できない。入庫は VIS05・VIS06';

-- ---------------------------------------------------------------------------------------------
-- 5. 検査(接続できる環境で。ROLLBACK するので、データは変わらない)
-- ---------------------------------------------------------------------------------------------
-- T1: v_register_target の件数が、作業指示(trans_work_plan)+ 発注明細(trans_purchase_detail)の件数と一致する
--   SELECT (SELECT count(*) FROM tests.v_register_target) = (SELECT count(*) FROM tests.trans_work_plan WHERE remove IS FALSE)
--                                                         + (SELECT count(*) FROM tests.trans_purchase_detail WHERE remove IS FALSE);
-- T2: 受入(発注)。残りが 10 の発注明細に、合格 6・不合格 2 → 受入実績 8、残り 2、異常 1、不合格のロットは仮止め
-- T3: 受入の超過(残り 2 に 3)が OPR02、停止中の発注明細が OPR03
-- T4: 作業の開始 → 終了。取り出し 10 → 合格 7・不合格 1(差 2 は払出元へ返る)。実績の qty = 8、stop_at が入る、返したロットの親 = 払出元
-- T5: 取り出しより多い完了(OPR02)、すでに終了(OPR03)、実施中の指示への 2 回目の開始(OPR03)、残り超過の開始(OPR02)
-- T6: 非計上発注(資材計画の元が非計上明細)の発注明細でも、T2 と同じに動く
-- T7: 一般ユーザーで実行できる(09 の GRANT。関数は VOLATILE・SECURITY INVOKER)。work_record の更新・受入実績の登録の権限
