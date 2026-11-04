\c test_avocado
-- ============================================================================
-- 07_visiter_functions.sql  棚ビジターの払出・移動・棚卸し (1回の呼び出し = 1トランザクション)
--   06_cteate_test.sql の後、08_mrp.sql の前に実行する
--   方針: claude/118_issue_visiter_quantity_policy.md
--     ・数量は棚ビジターだけ (+入庫 / -出庫)。出庫・分割は親(parent_trans_visiter_id)で表す
--     ・棚ビジターの行ごとに受払実績(いつ・どこで・誰が)を1件作る
--
--   出しすぎの防止 (2段構え)
--     1. 関数 (visiter_issue / visiter_move): ロットを FOR UPDATE で押さえ、今の数量を超える払出・移動を VIS03 で止める
--     2. トリガー trg_05_visiter_balance: 関数を通さずに棚ビジターを直接登録・更新した場合も、
--        ロットの今の数量がマイナスになる変更を VIS03 で止める (自動CRUDの mutation・手入力・移行スクリプト)
--        ※ 旧データの移行などで一時的に許す場合だけ、同じトランザクションで
--           SET LOCAL visiter.allow_negative = 'on' とする
--     v_visiter_ledger_issue の negative_balance は、トリガー導入前のデータと上の例外を拾う最後の点検として残す
--     ※ 仮止め・異常の判定(VIS04)は関数だけで行う (トリガーでは払出と移動を見分けられないため)。
--        出庫・移動の行は関数で作り、棚ビジターの直接登録は入庫(+の行)だけに使う
--
--   公開する関数 (PostGraphile の mutation)
--     visiter_issue  : 払出・出荷・製造への材料投入    → - の行 + 受払実績 (+ 作業実績ビジター)
--     visiter_move   : 移動・分割・隔離(保留)          → 元に - の行 + 移動先に + の行 + 受払実績 2件
--     visiter_adjust : 棚卸し (数えた数に合わせる)      → 調整の行 + 受払実績 (差が無ければ何もしない)
--
--   共通
--     ・対象の在庫(ロット)の行を FOR UPDATE で押さえてから数量を確かめる (同じロットへの同時の払出を直列にする)
--     ・担当者: p_staff_id。省略時は JWT の staff_id (current_setting('jwt.claims.staff_id'))
--     ・場所(受払実績の場所): 棚(trans_container)の場所。棚に場所が無い場合は p_location_id を渡す
--     ・エラー (extendedErrors の errcode で判定できる)
--         VIS00 担当者が無い / VIS01 在庫(ロット)が無い / VIS02 数量が不正 / VIS03 数量が足りない
--         VIS04 取り出せない(仮止め・未解除の異常) / VIS05 場所が無い / VIS06 棚が無い / VIS07 作業実績が無い
-- ============================================================================

-- ---- 内部用 -----------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.visiter_staff(p_staff_id uuid, OUT staff_id uuid, OUT staff_history_id uuid) AS $$
BEGIN
    staff_id := COALESCE(p_staff_id, NULLIF(current_setting('jwt.claims.staff_id', true), '')::uuid);
    SELECT h.history_id INTO staff_history_id FROM tests.history_info_staff AS h
    WHERE h.info_staff_id = staff_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
    IF staff_history_id IS NULL THEN
        RAISE EXCEPTION '担当者が見つかりません (%)', staff_id USING ERRCODE = 'VIS00';
    END IF;
END
$$ LANGUAGE plpgsql STABLE;

-- 受払実績の場所 (棚の場所、無ければ p_location_id)
CREATE OR REPLACE FUNCTION tests.visiter_location(p_container_id uuid, p_location_id uuid,
                                                  OUT location_id uuid, OUT location_history_id uuid) AS $$
BEGIN
    SELECT COALESCE(p_location_id, c.mstr_location_id) INTO location_id
    FROM tests.trans_container AS c WHERE c.trans_container_id = p_container_id;
    location_id := COALESCE(location_id, p_location_id);
    SELECT h.history_id INTO location_history_id FROM tests.history_mstr_location AS h
    WHERE h.mstr_location_id = location_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
    IF location_history_id IS NULL THEN
        RAISE EXCEPTION '受払実績の場所が決まりません。棚に場所を設定するか、p_location_id を指定してください (棚 %)', p_container_id
            USING ERRCODE = 'VIS05';
    END IF;
END
$$ LANGUAGE plpgsql STABLE;

-- 在庫(ロット)を押さえて、今の数量と取り出し可否を返す
CREATE OR REPLACE FUNCTION tests.visiter_lock_lot(p_lot uuid)
RETURNS tests.v_visiter_issuable AS $$
DECLARE
    v_row tests.trans_visiter;
    v_iss tests.v_visiter_issuable;
BEGIN
    SELECT * INTO v_row FROM tests.trans_visiter WHERE trans_visiter_id = p_lot FOR UPDATE;
    IF NOT FOUND OR v_row.remove IS NOT FALSE OR v_row.quantity <= 0 OR v_row.adjustment IS TRUE THEN
        RAISE EXCEPTION '在庫(ロット)の棚ビジターではありません (%)', p_lot
            USING ERRCODE = 'VIS01', HINT = '出庫・棚卸しの行ではなく、+ の行(在庫)を指定してください';
    END IF;
    SELECT * INTO v_iss FROM tests.v_visiter_issuable WHERE trans_visiter_id = p_lot;
    RETURN v_iss;
END
$$ LANGUAGE plpgsql VOLATILE;

CREATE OR REPLACE FUNCTION tests.visiter_add_convey(p_visiter uuid, p_location_id uuid, p_location_history_id uuid,
                                                    p_staff_id uuid, p_staff_history_id uuid,
                                                    p_at timestamp, p_remarks varchar) RETURNS uuid AS $$
DECLARE v_id uuid;
BEGIN
    INSERT INTO tests.trans_convey (trans_visiter_id, convey_at, location_history_id, location_id,
                                    staff_history_id, staff_id, remarks, update_user_id, update_user_history_id)
    VALUES (p_visiter, COALESCE(p_at, now()), p_location_history_id, p_location_id,
            p_staff_history_id, p_staff_id, p_remarks, p_staff_id, p_staff_history_id)
    RETURNING trans_convey_id INTO v_id;
    RETURN v_id;
END
$$ LANGUAGE plpgsql VOLATILE;

-- ---- 払出 -------------------------------------------------------------------
-- 在庫(ロット) p_src から p_qty を払い出す。p_work_record_id を渡すと、製造への材料投入として作業実績につなぐ
-- 戻り値: 作った - の行
CREATE OR REPLACE FUNCTION tests.visiter_issue(
    p_src uuid,
    p_qty numeric,
    p_work_record_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_location_id uuid DEFAULT NULL,
    p_at timestamp DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_visiter AS $$
DECLARE
    v_st record; v_loc record; v_lot tests.v_visiter_issuable; v_out tests.trans_visiter;
BEGIN
    v_st := tests.visiter_staff(p_staff_id);
    IF p_qty IS NULL OR p_qty <= 0 THEN
        RAISE EXCEPTION '払出数量は 0 より大きくしてください (%)', p_qty USING ERRCODE = 'VIS02';
    END IF;
    v_lot := tests.visiter_lock_lot(p_src);
    IF NOT v_lot.issuable AND v_lot.block_reason IN ('hold', 'complaint') THEN
        RAISE EXCEPTION 'この在庫は取り出せません (%)', v_lot.block_reason
            USING ERRCODE = 'VIS04',
                  HINT = CASE v_lot.block_reason WHEN 'hold' THEN '仮止め(入出庫許可なし)です'
                         ELSE '未解除の異常があります(分割元を含む)。異常を解除してから払い出してください' END;
    END IF;
    IF v_lot.quantity < p_qty THEN
        RAISE EXCEPTION '在庫の数量が足りません (今の数量 %、払出 %)', v_lot.quantity, p_qty USING ERRCODE = 'VIS03';
    END IF;
    IF p_work_record_id IS NOT NULL AND NOT EXISTS (
           SELECT 1 FROM tests.trans_work_record AS w WHERE w.trans_work_record_id = p_work_record_id AND w.remove IS FALSE) THEN
        RAISE EXCEPTION '作業実績が見つかりません (%)', p_work_record_id USING ERRCODE = 'VIS07';
    END IF;
    v_loc := tests.visiter_location(v_lot.trans_container_id, p_location_id);

    INSERT INTO tests.trans_visiter (parent_trans_visiter_id, trans_container_id, quantity, remarks,
                                     update_user_id, update_user_history_id)
    VALUES (p_src, v_lot.trans_container_id, -p_qty, p_remarks, v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_out;
    PERFORM tests.visiter_add_convey(v_out.trans_visiter_id, v_loc.location_id, v_loc.location_history_id, v_st.staff_id, v_st.staff_history_id, p_at, p_remarks);
    IF p_work_record_id IS NOT NULL THEN
        INSERT INTO tests.trans_work_record_visiter (trans_visiter_id, trans_work_record_id, update_user_id, update_user_history_id)
        VALUES (v_out.trans_visiter_id, p_work_record_id, v_st.staff_id, v_st.staff_history_id);
    END IF;
    RETURN v_out;
END
$$ LANGUAGE plpgsql VOLATILE;

-- ---- 移動・分割・隔離 ---------------------------------------------------------
-- 在庫(ロット) p_src から p_qty を棚 p_container_id へ移す (全数なら移動、一部なら分割)
--   p_hold = true : 移動先を仮止め(release = false)にする (隔離棚への移動)
--   元が仮止めなら、移動先も仮止めのまま。未解除の異常は分割元から引き継がれる (取り出し可否に効く)
--   仮止め・異常のある在庫も移動できる (隔離棚への移動のため)
--   p_location_id : 移動先の棚に場所が無いときの、移動先の場所
-- 戻り値: 移動先に作った + の行 (新しい在庫)
CREATE OR REPLACE FUNCTION tests.visiter_move(
    p_src uuid,
    p_container_id uuid,
    p_qty numeric,
    p_hold boolean DEFAULT false,
    p_staff_id uuid DEFAULT NULL,
    p_location_id uuid DEFAULT NULL,
    p_at timestamp DEFAULT NULL,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_visiter AS $$
DECLARE
    v_st record; v_src_loc record; v_dst_loc record; v_lot tests.v_visiter_issuable;
    v_out tests.trans_visiter; v_line uuid;
BEGIN
    v_st := tests.visiter_staff(p_staff_id);
    IF p_qty IS NULL OR p_qty <= 0 THEN
        RAISE EXCEPTION '移動数量は 0 より大きくしてください (%)', p_qty USING ERRCODE = 'VIS02';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM tests.trans_container AS c WHERE c.trans_container_id = p_container_id AND c.remove IS FALSE) THEN
        RAISE EXCEPTION '移動先の棚が見つかりません (%)', p_container_id USING ERRCODE = 'VIS06';
    END IF;
    v_lot := tests.visiter_lock_lot(p_src);
    IF v_lot.quantity < p_qty THEN
        RAISE EXCEPTION '在庫の数量が足りません (今の数量 %、移動 %)', v_lot.quantity, p_qty USING ERRCODE = 'VIS03';
    END IF;
    v_src_loc := tests.visiter_location(v_lot.trans_container_id, NULL);
    v_dst_loc := tests.visiter_location(p_container_id, p_location_id);

    -- 元の棚から出す (-)
    INSERT INTO tests.trans_visiter (parent_trans_visiter_id, trans_container_id, quantity, remarks,
                                     update_user_id, update_user_history_id)
    VALUES (p_src, v_lot.trans_container_id, -p_qty, p_remarks, v_st.staff_id, v_st.staff_history_id)
    RETURNING trans_visiter_id INTO v_line;
    PERFORM tests.visiter_add_convey(v_line, v_src_loc.location_id, v_src_loc.location_history_id, v_st.staff_id, v_st.staff_history_id, p_at, p_remarks);

    -- 移動先に入れる (+、親 = 元の在庫)
    INSERT INTO tests.trans_visiter (parent_trans_visiter_id, trans_container_id, quantity, release, remarks,
                                     update_user_id, update_user_history_id)
    VALUES (p_src, p_container_id, p_qty, (v_lot.release IS TRUE AND p_hold IS NOT TRUE), p_remarks,
            v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_out;
    PERFORM tests.visiter_add_convey(v_out.trans_visiter_id, v_dst_loc.location_id, v_dst_loc.location_history_id, v_st.staff_id, v_st.staff_history_id, p_at, p_remarks);
    RETURN v_out;
END
$$ LANGUAGE plpgsql VOLATILE;

-- ---- 棚卸し -------------------------------------------------------------------
-- 在庫(ロット) p_lot を数えた数 p_counted に合わせる。差の分の調整の行(adjustment = true)を作る
-- 戻り値: 作った調整の行。差が無ければ NULL (何も作らない)
CREATE OR REPLACE FUNCTION tests.visiter_adjust(
    p_lot uuid,
    p_counted numeric,
    p_staff_id uuid DEFAULT NULL,
    p_location_id uuid DEFAULT NULL,
    p_at timestamp DEFAULT NULL,
    p_remarks varchar DEFAULT '棚卸し'
) RETURNS tests.trans_visiter AS $$
DECLARE
    v_st record; v_loc record; v_lot tests.v_visiter_issuable; v_out tests.trans_visiter; v_diff numeric;
BEGIN
    v_st := tests.visiter_staff(p_staff_id);
    IF p_counted IS NULL OR p_counted < 0 THEN
        RAISE EXCEPTION '数えた数は 0 以上にしてください (%)', p_counted USING ERRCODE = 'VIS02';
    END IF;
    v_lot := tests.visiter_lock_lot(p_lot);
    v_diff := p_counted - v_lot.quantity;
    IF v_diff = 0 THEN
        RETURN NULL;
    END IF;
    v_loc := tests.visiter_location(v_lot.trans_container_id, p_location_id);

    INSERT INTO tests.trans_visiter (parent_trans_visiter_id, trans_container_id, quantity, adjustment, remarks,
                                     update_user_id, update_user_history_id)
    VALUES (p_lot, v_lot.trans_container_id, v_diff, TRUE, p_remarks, v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_out;
    PERFORM tests.visiter_add_convey(v_out.trans_visiter_id, v_loc.location_id, v_loc.location_history_id, v_st.staff_id, v_st.staff_history_id, p_at, p_remarks);
    RETURN v_out;
END
$$ LANGUAGE plpgsql VOLATILE;


-- ---- 出しすぎの防止 (トリガー) ---------------------------------------------------
-- 棚ビジターの行を登録・更新・削除したあと、影響するロット(出庫・棚卸しの行なら親、ロットの行なら自分)を押さえて
-- 今の数量を数え直し、マイナスなら止める。同じロットへの同時の登録は FOR UPDATE で順番に処理される
CREATE OR REPLACE FUNCTION tests.trg_05_visiter_balance() RETURNS trigger AS $$
DECLARE
    v_lots uuid[] := ARRAY[]::uuid[];
    v_lot uuid;
    v_bal numeric;
BEGIN
    IF COALESCE(current_setting('visiter.allow_negative', true), '') = 'on' THEN
        RETURN NULL;
    END IF;
    -- 新しい行と(更新・削除なら)前の行が影響するロット
    IF TG_OP <> 'DELETE' THEN
        v_lots := v_lots || CASE WHEN NEW.quantity > 0 AND NEW.adjustment IS NOT TRUE
                                 THEN NEW.trans_visiter_id ELSE NEW.parent_trans_visiter_id END;
    END IF;
    IF TG_OP <> 'INSERT' THEN
        v_lots := v_lots || CASE WHEN OLD.quantity > 0 AND OLD.adjustment IS NOT TRUE
                                 THEN OLD.trans_visiter_id ELSE OLD.parent_trans_visiter_id END;
    END IF;
    FOREACH v_lot IN ARRAY v_lots LOOP
        CONTINUE WHEN v_lot IS NULL;
        PERFORM 1 FROM tests.trans_visiter WHERE trans_visiter_id = v_lot FOR UPDATE;
        SELECT v.quantity + COALESCE((
                   SELECT SUM(r.quantity) FROM tests.trans_visiter AS r
                   WHERE r.parent_trans_visiter_id = v.trans_visiter_id AND r.remove IS FALSE
                     AND (r.quantity < 0 OR r.adjustment IS TRUE)), 0)
          INTO v_bal
          FROM tests.trans_visiter AS v
         WHERE v.trans_visiter_id = v_lot AND v.remove IS FALSE AND v.quantity > 0 AND v.adjustment IS NOT TRUE;
        IF v_bal < 0 THEN
            RAISE EXCEPTION 'ロットの数量がマイナスになります (ロット %、今の数量 %)', v_lot, v_bal
                USING ERRCODE = 'VIS03',
                      HINT = '払出・移動は visiter_issue / visiter_move で行うと、登録前に数量を確かめます';
        END IF;
    END LOOP;
    RETURN NULL;
END
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_05_visiter_balance ON tests.trans_visiter;
CREATE TRIGGER trg_05_visiter_balance
    AFTER INSERT OR UPDATE OF quantity, adjustment, parent_trans_visiter_id, remove OR DELETE ON tests.trans_visiter
    FOR EACH ROW EXECUTE PROCEDURE tests.trg_05_visiter_balance();

COMMENT ON FUNCTION tests.visiter_staff(uuid) IS '@omit';
COMMENT ON FUNCTION tests.visiter_location(uuid, uuid) IS '@omit';
COMMENT ON FUNCTION tests.visiter_lock_lot(uuid) IS '@omit';
COMMENT ON FUNCTION tests.visiter_add_convey(uuid, uuid, uuid, uuid, uuid, timestamp, varchar) IS '@omit';
COMMENT ON FUNCTION tests.trg_05_visiter_balance() IS '@omit';
COMMENT ON FUNCTION tests.visiter_issue(uuid, numeric, uuid, uuid, uuid, timestamp, varchar) IS
E'棚ビジターの払出。在庫(ロット)から - の行と受払実績を作る。作業実績を渡すと製造への材料投入としてつなぐ。戻り値は - の行';
COMMENT ON FUNCTION tests.visiter_move(uuid, uuid, numeric, boolean, uuid, uuid, timestamp, varchar) IS
E'棚ビジターの移動・分割・隔離。元に - の行、移動先に + の行(親 = 元の在庫)と受払実績2件を作る。p_hold で移動先を仮止め。戻り値は移動先の在庫';
COMMENT ON FUNCTION tests.visiter_adjust(uuid, numeric, uuid, uuid, timestamp, varchar) IS
E'棚卸し。数えた数に合わせる調整の行と受払実績を作る。差が無ければ何もしない(NULL)';
