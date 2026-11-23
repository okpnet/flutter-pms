-- v_complaint に、利害関係者(party_stakeholder_id・party_count)と対象のシンボル(target_symbols)を足す差分。適用済みの DB へ流し、PostGraphile を再起動する(06 を作り直す場合は不要)。列を末尾に足すだけなので CREATE OR REPLACE
CREATE OR REPLACE VIEW tests.v_complaint AS
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
    , k.party_stakeholder_id
    , COALESCE(k.party_count, 0)::integer AS party_count
    , k.target_symbols
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
        -- 利害関係者(顧客クレームの受注の顧客・利害関係者の苦情の相手)。複数あるときは、最初の 1 つ(種類の行のシンボル順)と件数
        , (array_agg(v.stakeholder_id ORDER BY v.kind_symbol) FILTER (WHERE v.stakeholder_id IS NOT NULL))[1] AS party_stakeholder_id
        , count(DISTINCT v.stakeholder_id) AS party_count
        -- 対象の表のシンボル(設備・工程・受入・ロット・作業実績・受注・利害関係者)。複数あるときは " / " でつなぐ
        , string_agg(DISTINCT v.target_symbol, ' / ' ORDER BY v.target_symbol) AS target_symbols
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
@foreignKey (party_stakeholder_id) references mstr_stakeholder (mstr_stakeholder_id)
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
COMMENT ON COLUMN tests.v_complaint.party_stakeholder_id IS '利害関係者ID(最初の 1 つ。名前は関連でたどる)';
COMMENT ON COLUMN tests.v_complaint.party_count IS '利害関係者の件数';
COMMENT ON COLUMN tests.v_complaint.target_symbols IS '対象の表のシンボル(" / " 区切り)';
