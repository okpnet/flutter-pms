-- 20261123_0005 異常の種類のビューと登録の関数の DDL(06_cteate_test.sql の追加分。PERO から出力される内容と同じ)。ビュー v_complaint_kind は、列を末尾に足すだけなので CREATE OR REPLACE
CREATE OR REPLACE VIEW tests.v_complaint_kind AS
SELECT
    t.complaint_kind_id
    , t.trans_complaint_id
    , c.symbol
    , c.occurent_at
    , c.titles
    , c.details
    , c.reporter_staff_id
    , c.approvals
    , c.remarks
    , t.kind_symbol
    , t.kind_name
    , t.is_external
    , t.is_claim
    , t.stakeholder_id
    , t.trans_order_id
    , t.mstr_equipment_id
    , t.mstr_task_id
    , t.trans_purchase_rec_id
    , t.trans_visiter_id
    , t.trans_work_record_id
    , t.target_symbol
FROM (
    -- 内部の異常
    SELECT e.trans_complaint_equipment_id AS complaint_kind_id, e.trans_complaint_id, e.symbol AS kind_symbol
        , '設備の点検で発見された異常' AS kind_name, FALSE AS is_external, FALSE AS is_claim
        , NULL::uuid AS stakeholder_id, NULL::uuid AS trans_order_id, e.equipment_id AS mstr_equipment_id
        , NULL::uuid AS mstr_task_id, NULL::uuid AS trans_purchase_rec_id, NULL::uuid AS trans_visiter_id
        , NULL::uuid AS trans_work_record_id, q.symbol AS target_symbol
    FROM tests.trans_complaint_equipment AS e
    LEFT JOIN tests.mstr_equipment AS q ON q.mstr_equipment_id = e.equipment_id
    WHERE e.remove IS FALSE
    UNION ALL
    SELECT p.trans_complaint_process_id AS complaint_kind_id, p.trans_complaint_id, p.symbol AS kind_symbol
        , '工程で発見された異常' AS kind_name, FALSE AS is_external, FALSE AS is_claim
        , NULL::uuid AS stakeholder_id, NULL::uuid AS trans_order_id, NULL::uuid AS mstr_equipment_id
        , p.mstr_task_id AS mstr_task_id, NULL::uuid AS trans_purchase_rec_id, NULL::uuid AS trans_visiter_id
        , NULL::uuid AS trans_work_record_id, q.symbol AS target_symbol
    FROM tests.trans_complaint_process AS p
    LEFT JOIN tests.mstr_task AS q ON q.mstr_task_id = p.mstr_task_id
    WHERE p.remove IS FALSE
    UNION ALL
    SELECT w.trans_complaint_work_id AS complaint_kind_id, w.trans_complaint_id, w.symbol AS kind_symbol
        , '作業実績で発見された異常' AS kind_name, FALSE AS is_external, FALSE AS is_claim
        , NULL::uuid AS stakeholder_id, NULL::uuid AS trans_order_id, NULL::uuid AS mstr_equipment_id
        , NULL::uuid AS mstr_task_id, NULL::uuid AS trans_purchase_rec_id, NULL::uuid AS trans_visiter_id
        , w.trans_work_record_id AS trans_work_record_id, q.symbol AS target_symbol
    FROM tests.trans_complaint_work AS w
    LEFT JOIN tests.trans_work_record AS q ON q.trans_work_record_id = w.trans_work_record_id
    WHERE w.remove IS FALSE
    UNION ALL
    SELECT r.trans_complaint_purchase_rec_id AS complaint_kind_id, r.trans_complaint_id, r.symbol AS kind_symbol
        , '購買・委託品の受入で発見された異常' AS kind_name, FALSE AS is_external, FALSE AS is_claim
        , NULL::uuid AS stakeholder_id, NULL::uuid AS trans_order_id, NULL::uuid AS mstr_equipment_id
        , NULL::uuid AS mstr_task_id, r.trans_purchase_rec_id AS trans_purchase_rec_id, NULL::uuid AS trans_visiter_id
        , NULL::uuid AS trans_work_record_id, q.symbol AS target_symbol
    FROM tests.trans_complaint_purchase_rec AS r
    LEFT JOIN tests.trans_purchase_rec AS q ON q.trans_purchase_rec_id = r.trans_purchase_rec_id
    WHERE r.remove IS FALSE
    UNION ALL
    SELECT v.trans_complaint_visiter_id AS complaint_kind_id, v.trans_complaint_id, v.symbol AS kind_symbol
        , '棚移動で発見された異常' AS kind_name, FALSE AS is_external, FALSE AS is_claim
        , NULL::uuid AS stakeholder_id, NULL::uuid AS trans_order_id, NULL::uuid AS mstr_equipment_id
        , NULL::uuid AS mstr_task_id, NULL::uuid AS trans_purchase_rec_id, v.trans_visiter_id AS trans_visiter_id
        , NULL::uuid AS trans_work_record_id, q.symbol AS target_symbol
    FROM tests.trans_complaint_visiter AS v
    LEFT JOIN tests.trans_visiter AS q ON q.trans_visiter_id = v.trans_visiter_id
    WHERE v.remove IS FALSE
    UNION ALL
    -- 外部の異常: 顧客クレーム(クレーム)と、供給者・顧客からの苦情(クレームではない)
    SELECT o.trans_complaint_order_id AS complaint_kind_id, o.trans_complaint_id, o.symbol AS kind_symbol
        , '顧客クレーム' AS kind_name, TRUE AS is_external, TRUE AS is_claim
        , ord.stakeholder_id AS stakeholder_id, o.trans_order_id AS trans_order_id, NULL::uuid AS mstr_equipment_id
        , NULL::uuid AS mstr_task_id, NULL::uuid AS trans_purchase_rec_id, NULL::uuid AS trans_visiter_id
        , NULL::uuid AS trans_work_record_id, ord.symbol AS target_symbol
    FROM tests.trans_complaint_order AS o
    LEFT JOIN tests.trans_order AS ord ON ord.trans_order_id = o.trans_order_id
    WHERE o.remove IS FALSE
    UNION ALL
    SELECT s.trans_complaint_stakeholder_id AS complaint_kind_id, s.trans_complaint_id, s.symbol AS kind_symbol
        , '利害関係者の苦情' AS kind_name, TRUE AS is_external, FALSE AS is_claim
        , s.stakeholder_id AS stakeholder_id, NULL::uuid AS trans_order_id, NULL::uuid AS mstr_equipment_id
        , NULL::uuid AS mstr_task_id, NULL::uuid AS trans_purchase_rec_id, NULL::uuid AS trans_visiter_id
        , NULL::uuid AS trans_work_record_id, q.symbol AS target_symbol
    FROM tests.trans_complaint_stakeholder AS s
    LEFT JOIN tests.mstr_stakeholder AS q ON q.mstr_stakeholder_id = s.stakeholder_id
    WHERE s.remove IS FALSE
) AS t
INNER JOIN tests.trans_complaint AS c ON c.trans_complaint_id = t.trans_complaint_id AND c.remove IS FALSE;

COMMENT ON VIEW tests.v_complaint_kind IS '@primaryKey complaint_kind_id
@foreignKey (trans_complaint_id) references trans_complaint (trans_complaint_id)
@foreignKey (stakeholder_id) references mstr_stakeholder (mstr_stakeholder_id)
@foreignKey (trans_order_id) references trans_order (trans_order_id)
@foreignKey (mstr_equipment_id) references mstr_equipment (mstr_equipment_id)
@foreignKey (mstr_task_id) references mstr_task (mstr_task_id)
@foreignKey (trans_purchase_rec_id) references trans_purchase_rec (trans_purchase_rec_id)
@foreignKey (trans_visiter_id) references trans_visiter (trans_visiter_id)
@foreignKey (trans_work_record_id) references trans_work_record (trans_work_record_id)
異常の種類別の一覧(1 行 = 異常 × 種類)。種類は 7 つ: 設備の点検・工程・作業実績・購買/委託品の受入・棚移動で発見された異常(内部の異常)、顧客クレーム・利害関係者の苦情(外部の異常)。種類は、子の表(trans_complaint_equipment など)に行があるかで決まる。種類の名称・外部か(is_external)・クレームか(is_claim)は、このビューだけで定義する(画面で決めない)。target_symbol は対象の表の symbol(画面へ進むために使う)';

COMMENT ON COLUMN tests.v_complaint_kind.complaint_kind_id IS '異常の種類の行ID(子の表の主キー)';
COMMENT ON COLUMN tests.v_complaint_kind.trans_complaint_id IS '異常ID';
COMMENT ON COLUMN tests.v_complaint_kind.symbol IS '異常のシンボル';
COMMENT ON COLUMN tests.v_complaint_kind.occurent_at IS '発生日時';
COMMENT ON COLUMN tests.v_complaint_kind.titles IS '題名(ラベルID)';
COMMENT ON COLUMN tests.v_complaint_kind.details IS '内容(文章ID)';
COMMENT ON COLUMN tests.v_complaint_kind.reporter_staff_id IS '報告者の担当者ID';
COMMENT ON COLUMN tests.v_complaint_kind.approvals IS '承認実行パターンID';
COMMENT ON COLUMN tests.v_complaint_kind.remarks IS '備考';
COMMENT ON COLUMN tests.v_complaint_kind.kind_symbol IS '種類の行のシンボル';
COMMENT ON COLUMN tests.v_complaint_kind.kind_name IS '種類の名称';
COMMENT ON COLUMN tests.v_complaint_kind.is_external IS '外部の異常(顧客クレーム・利害関係者の苦情)';
COMMENT ON COLUMN tests.v_complaint_kind.is_claim IS 'クレーム(顧客クレームだけ。利害関係者の苦情はクレームではない)';
COMMENT ON COLUMN tests.v_complaint_kind.stakeholder_id IS '利害関係者ID(利害関係者の苦情・顧客クレームの受注の顧客)';
COMMENT ON COLUMN tests.v_complaint_kind.trans_order_id IS '受注ID';
COMMENT ON COLUMN tests.v_complaint_kind.mstr_equipment_id IS '設備ID';
COMMENT ON COLUMN tests.v_complaint_kind.mstr_task_id IS '工程ID';
COMMENT ON COLUMN tests.v_complaint_kind.trans_purchase_rec_id IS '受入実績ID';
COMMENT ON COLUMN tests.v_complaint_kind.trans_visiter_id IS '棚ビジターID';
COMMENT ON COLUMN tests.v_complaint_kind.trans_work_record_id IS '作業実績ID';
COMMENT ON COLUMN tests.v_complaint_kind.target_symbol IS '対象の表のシンボル';

CREATE VIEW tests.v_complaint AS
SELECT
    c.trans_complaint_id
    , c.symbol
    , c.occurent_at
    , c.titles
    , c.details
    , c.reporter_staff_id
    , c.approvals
    , c.remarks
    , COALESCE(k.kind_count, 0)::integer AS kind_count
    , COALESCE(k.has_equipment, FALSE) AS has_equipment
    , COALESCE(k.has_process, FALSE) AS has_process
    , COALESCE(k.has_work, FALSE) AS has_work
    , COALESCE(k.has_purchase_rec, FALSE) AS has_purchase_rec
    , COALESCE(k.has_visiter, FALSE) AS has_visiter
    , COALESCE(k.has_order, FALSE) AS has_order
    , COALESCE(k.has_stakeholder, FALSE) AS has_stakeholder
    , COALESCE(k.is_external, FALSE) AS is_external
    , COALESCE(k.is_claim, FALSE) AS is_claim
    , k.kind_names
FROM tests.trans_complaint AS c
LEFT JOIN LATERAL (
    SELECT
        count(*) AS kind_count
        , bool_or(v.mstr_equipment_id IS NOT NULL) AS has_equipment
        , bool_or(v.mstr_task_id IS NOT NULL) AS has_process
        , bool_or(v.trans_work_record_id IS NOT NULL) AS has_work
        , bool_or(v.trans_purchase_rec_id IS NOT NULL) AS has_purchase_rec
        , bool_or(v.trans_visiter_id IS NOT NULL) AS has_visiter
        , bool_or(v.trans_order_id IS NOT NULL) AS has_order
        , bool_or(v.is_external AND NOT v.is_claim) AS has_stakeholder
        , bool_or(v.is_external) AS is_external
        , bool_or(v.is_claim) AS is_claim
        , string_agg(DISTINCT v.kind_name, ' / ') AS kind_names
    FROM tests.v_complaint_kind AS v
    WHERE v.trans_complaint_id = c.trans_complaint_id
) AS k ON TRUE
WHERE c.remove IS FALSE;

COMMENT ON VIEW tests.v_complaint IS '@primaryKey trans_complaint_id
@unique symbol
@foreignKey (trans_complaint_id) references trans_complaint (trans_complaint_id)
@foreignKey (titles) references trans_label (trans_label_id)
@foreignKey (details) references trans_text (trans_text_id)
@foreignKey (reporter_staff_id) references info_staff (info_staff_id)
異常の一覧(1 行 = 異常)。種類は、子の表に行があるか(has_*)で分かる(1 つの異常が複数の種類を持てる)。外部か・クレームかは、種類のビュー v_complaint_kind の値。種類の名称 kind_names も同じビューの値(画面で決めない)';

COMMENT ON COLUMN tests.v_complaint.trans_complaint_id IS '異常ID';
COMMENT ON COLUMN tests.v_complaint.symbol IS 'リニアシンボル';
COMMENT ON COLUMN tests.v_complaint.occurent_at IS '発生日時';
COMMENT ON COLUMN tests.v_complaint.titles IS '題名(ラベルID)';
COMMENT ON COLUMN tests.v_complaint.details IS '内容(文章ID)';
COMMENT ON COLUMN tests.v_complaint.reporter_staff_id IS '報告者の担当者ID';
COMMENT ON COLUMN tests.v_complaint.approvals IS '承認実行パターンID';
COMMENT ON COLUMN tests.v_complaint.remarks IS '備考';
COMMENT ON COLUMN tests.v_complaint.kind_count IS '種類の件数';
COMMENT ON COLUMN tests.v_complaint.has_equipment IS '設備の点検で発見された異常がある';
COMMENT ON COLUMN tests.v_complaint.has_process IS '工程で発見された異常がある';
COMMENT ON COLUMN tests.v_complaint.has_work IS '作業実績で発見された異常がある';
COMMENT ON COLUMN tests.v_complaint.has_purchase_rec IS '受入で発見された異常がある';
COMMENT ON COLUMN tests.v_complaint.has_visiter IS '棚移動で発見された異常がある';
COMMENT ON COLUMN tests.v_complaint.has_order IS '顧客クレームがある';
COMMENT ON COLUMN tests.v_complaint.has_stakeholder IS '利害関係者の苦情がある';
COMMENT ON COLUMN tests.v_complaint.is_external IS '外部の異常がある';
COMMENT ON COLUMN tests.v_complaint.is_claim IS 'クレームがある';
COMMENT ON COLUMN tests.v_complaint.kind_names IS '種類の名称(" / " 区切り)';

CREATE OR REPLACE FUNCTION tests.complaint_register(
    p_titles jsonb,
    p_details jsonb DEFAULT NULL,
    p_occurred_at timestamp DEFAULT NULL,
    p_equipment_id uuid DEFAULT NULL,
    p_task_id uuid DEFAULT NULL,
    p_purchase_rec_id uuid DEFAULT NULL,
    p_visiter_id uuid DEFAULT NULL,
    p_work_record_id uuid DEFAULT NULL,
    p_order_id uuid DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_quantity numeric DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.trans_complaint AS $$
DECLARE
    v_st record;
    v_label uuid;
    v_text uuid;
    v_hist uuid;
    v_row tests.trans_complaint;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    IF p_titles IS NULL OR p_titles = '{}'::jsonb THEN
        RAISE EXCEPTION '異常の題名を指定してください' USING ERRCODE = 'OPR02';
    END IF;
    -- 種類は、対象の ID のどれが入っているかで決まる(1 つだけ)
    IF num_nonnulls(p_equipment_id, p_task_id, p_purchase_rec_id, p_visiter_id, p_work_record_id, p_order_id, p_stakeholder_id) <> 1 THEN
        RAISE EXCEPTION '異常の対象は、設備・工程・受入・ロット・作業実績・受注・利害関係者のうち 1 つだけを指定してください' USING ERRCODE = 'OPR02';
    END IF;
    IF p_visiter_id IS NOT NULL AND COALESCE(p_quantity, 0) <= 0 THEN
        RAISE EXCEPTION 'ロットの異常は、数量(0 より大きい)を指定してください' USING ERRCODE = 'OPR02';
    END IF;
    -- 対象の存在(履歴が要る対象は、最新の履歴を引く)
    IF p_equipment_id IS NOT NULL THEN
        SELECT h.history_id INTO v_hist FROM tests.history_mstr_equipment AS h
         WHERE h.mstr_equipment_id = p_equipment_id ORDER BY h.revision DESC LIMIT 1;
        IF v_hist IS NULL THEN RAISE EXCEPTION '設備が見つかりません (%)', p_equipment_id USING ERRCODE = 'OPR01'; END IF;
    ELSIF p_stakeholder_id IS NOT NULL THEN
        SELECT h.history_id INTO v_hist FROM tests.history_mstr_stakeholder AS h
         WHERE h.mstr_stakeholder_id = p_stakeholder_id ORDER BY h.revision DESC LIMIT 1;
        IF v_hist IS NULL THEN RAISE EXCEPTION '利害関係者が見つかりません (%)', p_stakeholder_id USING ERRCODE = 'OPR01'; END IF;
    ELSIF p_task_id IS NOT NULL THEN
        IF NOT EXISTS (SELECT 1 FROM tests.mstr_task WHERE mstr_task_id = p_task_id AND remove IS FALSE) THEN
            RAISE EXCEPTION '工程が見つかりません (%)', p_task_id USING ERRCODE = 'OPR01';
        END IF;
    ELSIF p_purchase_rec_id IS NOT NULL THEN
        IF NOT EXISTS (SELECT 1 FROM tests.trans_purchase_rec WHERE trans_purchase_rec_id = p_purchase_rec_id AND remove IS FALSE) THEN
            RAISE EXCEPTION '受入実績が見つかりません (%)', p_purchase_rec_id USING ERRCODE = 'OPR01';
        END IF;
    ELSIF p_visiter_id IS NOT NULL THEN
        IF NOT EXISTS (SELECT 1 FROM tests.trans_visiter WHERE trans_visiter_id = p_visiter_id AND remove IS FALSE) THEN
            RAISE EXCEPTION 'ロット(棚ビジター)が見つかりません (%)', p_visiter_id USING ERRCODE = 'OPR01';
        END IF;
    ELSIF p_work_record_id IS NOT NULL THEN
        IF NOT EXISTS (SELECT 1 FROM tests.trans_work_record WHERE trans_work_record_id = p_work_record_id AND remove IS FALSE) THEN
            RAISE EXCEPTION '作業実績が見つかりません (%)', p_work_record_id USING ERRCODE = 'OPR01';
        END IF;
    ELSIF p_order_id IS NOT NULL THEN
        IF NOT EXISTS (SELECT 1 FROM tests.trans_order WHERE trans_order_id = p_order_id AND remove IS FALSE) THEN
            RAISE EXCEPTION '受注が見つかりません (%)', p_order_id USING ERRCODE = 'OPR01';
        END IF;
    END IF;

    SELECT t.trans_label_id INTO v_label FROM tests.trans_label_save(NULL, p_titles, v_st.staff_id, v_st.staff_history_id) AS t;
    SELECT t.trans_text_id INTO v_text FROM tests.trans_text_save(NULL, COALESCE(NULLIF(p_details, '{}'::jsonb), p_titles), v_st.staff_id, v_st.staff_history_id) AS t;
    INSERT INTO tests.trans_complaint (occurent_at, titles, details, reporter_staff_history_id, reporter_staff_id, update_user_id, update_user_history_id)
    VALUES (COALESCE(p_occurred_at, now()), v_label, v_text, v_st.staff_history_id, v_st.staff_id, v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_row;

    IF p_equipment_id IS NOT NULL THEN
        INSERT INTO tests.trans_complaint_equipment (trans_complaint_id, equipment_history_id, equipment_id, update_user_id, update_user_history_id)
        VALUES (v_row.trans_complaint_id, v_hist, p_equipment_id, v_st.staff_id, v_st.staff_history_id);
    ELSIF p_task_id IS NOT NULL THEN
        INSERT INTO tests.trans_complaint_process (trans_complaint_id, mstr_task_id, update_user_id, update_user_history_id)
        VALUES (v_row.trans_complaint_id, p_task_id, v_st.staff_id, v_st.staff_history_id);
    ELSIF p_purchase_rec_id IS NOT NULL THEN
        INSERT INTO tests.trans_complaint_purchase_rec (trans_complaint_id, trans_purchase_rec_id, quantity, update_user_id, update_user_history_id)
        VALUES (v_row.trans_complaint_id, p_purchase_rec_id, COALESCE(p_quantity, 1), v_st.staff_id, v_st.staff_history_id);
    ELSIF p_visiter_id IS NOT NULL THEN
        INSERT INTO tests.trans_complaint_visiter (trans_complaint_id, trans_visiter_id, quantity, update_user_id, update_user_history_id)
        VALUES (v_row.trans_complaint_id, p_visiter_id, p_quantity, v_st.staff_id, v_st.staff_history_id);
    ELSIF p_work_record_id IS NOT NULL THEN
        INSERT INTO tests.trans_complaint_work (trans_complaint_id, trans_work_record_id, quantity, update_user_id, update_user_history_id)
        VALUES (v_row.trans_complaint_id, p_work_record_id, COALESCE(p_quantity, 1), v_st.staff_id, v_st.staff_history_id);
    ELSIF p_order_id IS NOT NULL THEN
        INSERT INTO tests.trans_complaint_order (trans_complaint_id, trans_order_id, update_user_id, update_user_history_id)
        VALUES (v_row.trans_complaint_id, p_order_id, v_st.staff_id, v_st.staff_history_id);
    ELSE
        INSERT INTO tests.trans_complaint_stakeholder (trans_complaint_id, stakeholder_history_id, stakeholder_id, update_user_id, update_user_history_id)
        VALUES (v_row.trans_complaint_id, v_hist, p_stakeholder_id, v_st.staff_id, v_st.staff_history_id);
    END IF;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.complaint_register(jsonb, jsonb, timestamp, uuid, uuid, uuid, uuid, uuid, uuid, uuid, numeric, uuid) IS '異常を登録する(1 トランザクション: 題名・内容のラベルと文章・異常本体・種類の子の表)。題名・内容は言語別の値(JSON。内容が空のときは題名と同じ)。種類は、対象の ID(設備・工程・受入・ロット・作業実績・受注・利害関係者)のうち 1 つだけを渡すことで決まる(コード値では分岐しない)。ロットは数量が必須、受入・作業実績の数量は省略で 1。承認パターンがあれば、DB のトリガーが申請にする。既存の異常へ種類を足すときは、子の表のミューテーションを使う。担当者は引数、省略時は JWT の staff_id。errcode: OPR00 担当者が無い / OPR01 対象が無い / OPR02 題名・対象・数量が不正';
