-- 20261122_0002 監査の実施のビュー・関数の DDL(06_cteate_test.sql の追加分。PERO から出力される内容と同じ)。DB へ適用する前に、ROLLBACK 付きで検査するときに先に流す
CREATE VIEW tests.v_audit_assignment AS
SELECT
    a.trans_auditor_id
    , a.staff_id
    , d.trans_audit_details_id
    , d.trans_audit_id
    , d.trans_audit_team_id
    , d.audit_std_id
    , d.scheduled_at
    , d.expected_end_at
    , d.performed_date
    , d.ended_at
    , (d.performed_date IS NULL AND d.ended_at IS NULL) AS is_planned
    , (d.performed_date IS NOT NULL AND d.ended_at IS NULL) AS is_in_progress
    , (d.ended_at IS NOT NULL) AS is_done
    , (d.performed_date IS NULL AND d.ended_at IS NULL AND d.scheduled_at < now()) AS is_overdue
    , COALESCE(ic.item_count, 0)::integer AS item_count
    , COALESCE(ic.answered_count, 0)::integer AS answered_count
    , COALESCE(cc.complaint_count, 0)::integer AS complaint_count
    , CASE
        WHEN d.ended_at IS NOT NULL THEN '完了'
        WHEN d.performed_date IS NOT NULL THEN '実施中'
        WHEN d.scheduled_at < now() THEN '予定超過'
        ELSE '予定'
      END AS status_label_ja
    , CASE
        WHEN d.ended_at IS NOT NULL THEN 'Done'
        WHEN d.performed_date IS NOT NULL THEN 'In progress'
        WHEN d.scheduled_at < now() THEN 'Overdue'
        ELSE 'Planned'
      END AS status_label_en
    , d.symbol
FROM
    tests.trans_audit_details AS d
    INNER JOIN tests.trans_audit_team AS t
        ON t.trans_audit_team_id = d.trans_audit_team_id
        AND t.trans_audit_id = d.trans_audit_id
        AND t.remove IS FALSE
    INNER JOIN tests.trans_auditor AS a
        ON a.trans_audit_team_id = t.trans_audit_team_id
        AND a.remove IS FALSE
    LEFT JOIN LATERAL (
        SELECT
            count(*) AS item_count
            , count(*) FILTER (WHERE i.formula_value IS NOT NULL OR i.findings IS NOT NULL) AS answered_count
        FROM tests.trans_audit_detail_check_items AS i
        WHERE i.trans_audit_details_id = d.trans_audit_details_id AND i.remove IS FALSE
    ) AS ic ON TRUE
    LEFT JOIN LATERAL (
        SELECT count(*) AS complaint_count
        FROM tests.trans_audit_complaint AS ac
        INNER JOIN tests.trans_audit_detail_check_items AS i2
            ON i2.trans_audit_detail_check_items_id = ac.trans_audit_detail_check_items_id AND i2.remove IS FALSE
        WHERE i2.trans_audit_details_id = d.trans_audit_details_id AND ac.remove IS FALSE
    ) AS cc ON TRUE
WHERE
    d.remove IS FALSE;

COMMENT ON VIEW tests.v_audit_assignment IS '@primaryKey trans_auditor_id,trans_audit_details_id
@foreignKey (trans_audit_details_id) references trans_audit_details (trans_audit_details_id)
@foreignKey (trans_audit_id) references trans_audit (trans_audit_id)
@foreignKey (trans_auditor_id) references trans_auditor (trans_auditor_id)
監査の割り当て(1 行 = 監査実施詳細 × チームの監査員)。画面は staff_id = 自分 で絞るだけ。状態は boolean と文字をこのビューで 1 か所だけ定義する';

COMMENT ON COLUMN tests.v_audit_assignment.trans_auditor_id IS '監査員ID';
COMMENT ON COLUMN tests.v_audit_assignment.staff_id IS '監査員(担当者)ID';
COMMENT ON COLUMN tests.v_audit_assignment.trans_audit_details_id IS '監査実施詳細ID';
COMMENT ON COLUMN tests.v_audit_assignment.trans_audit_id IS '監査ID';
COMMENT ON COLUMN tests.v_audit_assignment.trans_audit_team_id IS 'チームID';
COMMENT ON COLUMN tests.v_audit_assignment.audit_std_id IS '監査標準ID';
COMMENT ON COLUMN tests.v_audit_assignment.scheduled_at IS '予定日時';
COMMENT ON COLUMN tests.v_audit_assignment.expected_end_at IS '終了予定日時';
COMMENT ON COLUMN tests.v_audit_assignment.performed_date IS '実施日';
COMMENT ON COLUMN tests.v_audit_assignment.ended_at IS '終了日時';
COMMENT ON COLUMN tests.v_audit_assignment.is_planned IS '未着手(実施日も終了日時も無い)';
COMMENT ON COLUMN tests.v_audit_assignment.is_in_progress IS '実施中(実施日があり、終了日時が無い)';
COMMENT ON COLUMN tests.v_audit_assignment.is_done IS '完了(終了日時がある)';
COMMENT ON COLUMN tests.v_audit_assignment.is_overdue IS '予定超過(未着手で、予定日時を過ぎている)';
COMMENT ON COLUMN tests.v_audit_assignment.item_count IS '項目数';
COMMENT ON COLUMN tests.v_audit_assignment.answered_count IS '入力済みの項目数(値または所見がある)';
COMMENT ON COLUMN tests.v_audit_assignment.complaint_count IS '異常の件数';
COMMENT ON COLUMN tests.v_audit_assignment.status_label_ja IS '状態の文字(日本語)';
COMMENT ON COLUMN tests.v_audit_assignment.status_label_en IS '状態の文字(English)';
COMMENT ON COLUMN tests.v_audit_assignment.symbol IS 'リニアシンボル';

CREATE VIEW tests.v_audit_item AS
SELECT
    i.trans_audit_detail_check_items_id
    , i.trans_audit_details_id
    , i.audit_std_checkitem_history_id
    , i.audit_std_checkitem_id
    , h.code
    , h.names AS checkitem_names
    , h.type_class
    , h.formula_class
    , h.arg_class
    , i.formula_value
    , i.findings
    , (i.formula_value IS NOT NULL OR i.findings IS NOT NULL) AS answered
    , COALESCE(cc.complaint_count, 0)::integer AS complaint_count
    , i.symbol
FROM
    tests.trans_audit_detail_check_items AS i
    INNER JOIN tests.history_mstr_audit_std_checkitem AS h
        ON h.history_id = i.audit_std_checkitem_history_id
        AND h.mstr_audit_std_checkitem_id = i.audit_std_checkitem_id
    LEFT JOIN LATERAL (
        SELECT count(*) AS complaint_count
        FROM tests.trans_audit_complaint AS ac
        WHERE ac.trans_audit_detail_check_items_id = i.trans_audit_detail_check_items_id AND ac.remove IS FALSE
    ) AS cc ON TRUE
WHERE
    i.remove IS FALSE;

COMMENT ON VIEW tests.v_audit_item IS '@primaryKey trans_audit_detail_check_items_id
@foreignKey (trans_audit_detail_check_items_id) references trans_audit_detail_check_items (trans_audit_detail_check_items_id)
@foreignKey (trans_audit_details_id) references trans_audit_details (trans_audit_details_id)
監査実施詳細項目(基準 = 監査標準項目の履歴、事実 = 値・所見、入力済み、つないだ異常の件数)';

COMMENT ON COLUMN tests.v_audit_item.trans_audit_detail_check_items_id IS '監査実施詳細項目ID';
COMMENT ON COLUMN tests.v_audit_item.trans_audit_details_id IS '監査実施詳細ID';
COMMENT ON COLUMN tests.v_audit_item.audit_std_checkitem_history_id IS '監査標準項目履歴ID';
COMMENT ON COLUMN tests.v_audit_item.audit_std_checkitem_id IS '監査標準項目ID';
COMMENT ON COLUMN tests.v_audit_item.code IS '監査標準項目コード';
COMMENT ON COLUMN tests.v_audit_item.checkitem_names IS '標準項目名称(呼称 ID。履歴に外部キーが無い)';
COMMENT ON COLUMN tests.v_audit_item.type_class IS '型';
COMMENT ON COLUMN tests.v_audit_item.formula_class IS '式';
COMMENT ON COLUMN tests.v_audit_item.arg_class IS '引数';
COMMENT ON COLUMN tests.v_audit_item.formula_value IS '式に対する値(JSON)';
COMMENT ON COLUMN tests.v_audit_item.findings IS '所見(文章)';
COMMENT ON COLUMN tests.v_audit_item.answered IS '入力済み(値または所見がある)';
COMMENT ON COLUMN tests.v_audit_item.complaint_count IS '異常の件数';
COMMENT ON COLUMN tests.v_audit_item.symbol IS 'リニアシンボル';

CREATE OR REPLACE FUNCTION tests.audit_is_member(p_details_id uuid, p_staff_id uuid) RETURNS boolean AS $$
    SELECT EXISTS (
        SELECT 1
        FROM tests.trans_audit_details AS d
        INNER JOIN tests.trans_auditor AS a
            ON a.trans_audit_team_id = d.trans_audit_team_id AND a.remove IS FALSE
        WHERE d.trans_audit_details_id = p_details_id AND d.remove IS FALSE AND a.staff_id = p_staff_id
    ) OR pg_has_role(current_user, 'pms_admin', 'member')
$$ LANGUAGE sql STABLE;

COMMENT ON FUNCTION tests.audit_is_member(uuid, uuid) IS '@omit
担当者が、監査実施詳細のチームの監査員か(管理者は常に可)';

CREATE OR REPLACE FUNCTION tests.audit_detail_prepare(
    p_audit_details_id uuid,
    p_staff_id uuid DEFAULT NULL
) RETURNS integer AS $$
DECLARE
    v_st record; v_d tests.trans_audit_details; v_count integer;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_d FROM tests.trans_audit_details WHERE trans_audit_details_id = p_audit_details_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '監査実施詳細が見つかりません (%)', p_audit_details_id USING ERRCODE = 'AUD02';
    END IF;
    IF NOT tests.audit_is_member(v_d.trans_audit_details_id, v_st.staff_id) THEN
        RAISE EXCEPTION 'この監査のチームの監査員ではありません (%)', v_st.staff_id USING ERRCODE = 'AUD03';
    END IF;
    IF v_d.ended_at IS NOT NULL THEN
        RAISE EXCEPTION '終了した監査は変更できません' USING ERRCODE = 'AUD05';
    END IF;
    INSERT INTO tests.trans_audit_detail_check_items (
        trans_audit_details_id, audit_std_checkitem_history_id, audit_std_checkitem_id, update_user_id, update_user_history_id
    )
    SELECT p_audit_details_id, h.history_id, c.mstr_audit_std_checkitem_id, v_st.staff_id, v_st.staff_history_id
    FROM tests.mstr_audit_std_checkitem AS c
    INNER JOIN LATERAL (
        SELECT hh.history_id FROM tests.history_mstr_audit_std_checkitem AS hh
        WHERE hh.mstr_audit_std_checkitem_id = c.mstr_audit_std_checkitem_id
        ORDER BY hh.revision DESC, hh.update_at DESC LIMIT 1
    ) AS h ON TRUE
    WHERE c.mstr_audit_std_id = v_d.audit_std_id AND c.remove IS FALSE
      AND NOT EXISTS (
        SELECT 1 FROM tests.trans_audit_detail_check_items AS i
        WHERE i.trans_audit_details_id = p_audit_details_id AND i.audit_std_checkitem_id = c.mstr_audit_std_checkitem_id AND i.remove IS FALSE
      )
    ORDER BY c.code;
    GET DIAGNOSTICS v_count = ROW_COUNT;
    RETURN v_count;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.audit_detail_prepare(uuid, uuid) IS '監査標準の項目(その時点の履歴)を、まだ無いものだけ、監査実施詳細の項目として作る(冪等)。チームの監査員だけ。戻り値は作った件数。担当者は引数、省略時は JWT の staff_id。errcode: OPR00 担当者が無い / AUD02 対象が無い / AUD03 チームの監査員ではない / AUD05 終了した監査';

CREATE OR REPLACE FUNCTION tests.audit_detail_start(
    p_audit_details_id uuid,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.trans_audit_details AS $$
DECLARE
    v_st record; v_d tests.trans_audit_details;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_d FROM tests.trans_audit_details WHERE trans_audit_details_id = p_audit_details_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '監査実施詳細が見つかりません (%)', p_audit_details_id USING ERRCODE = 'AUD02';
    END IF;
    IF NOT tests.audit_is_member(v_d.trans_audit_details_id, v_st.staff_id) THEN
        RAISE EXCEPTION 'この監査のチームの監査員ではありません (%)', v_st.staff_id USING ERRCODE = 'AUD03';
    END IF;
    IF v_d.ended_at IS NOT NULL THEN
        RAISE EXCEPTION '終了した監査は変更できません' USING ERRCODE = 'AUD05';
    END IF;
    UPDATE tests.trans_audit_details
    SET performed_date = COALESCE(performed_date, current_date), update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_audit_details_id = p_audit_details_id
    RETURNING * INTO v_d;
    PERFORM tests.audit_detail_prepare(p_audit_details_id, v_st.staff_id);
    RETURN v_d;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.audit_detail_start(uuid, uuid) IS '監査の実施を開始する(実施日を今日にする。すでにあれば変えない)。項目を用意する(audit_detail_prepare)。チームの監査員だけ。担当者は引数、省略時は JWT の staff_id。errcode: OPR00 / AUD02 対象が無い / AUD03 チームの監査員ではない / AUD05 終了した監査。戻り値は監査実施詳細';

CREATE OR REPLACE FUNCTION tests.audit_detail_finish(
    p_audit_details_id uuid,
    p_conclusion jsonb DEFAULT NULL,
    p_force boolean DEFAULT FALSE,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.trans_audit_details AS $$
DECLARE
    v_st record; v_d tests.trans_audit_details; v_text uuid;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_d FROM tests.trans_audit_details WHERE trans_audit_details_id = p_audit_details_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '監査実施詳細が見つかりません (%)', p_audit_details_id USING ERRCODE = 'AUD02';
    END IF;
    IF NOT tests.audit_is_member(v_d.trans_audit_details_id, v_st.staff_id) THEN
        RAISE EXCEPTION 'この監査のチームの監査員ではありません (%)', v_st.staff_id USING ERRCODE = 'AUD03';
    END IF;
    IF v_d.ended_at IS NOT NULL THEN
        RAISE EXCEPTION '終了した監査は変更できません' USING ERRCODE = 'AUD05';
    END IF;
    IF v_d.performed_date IS NULL THEN
        RAISE EXCEPTION '実施を開始していません' USING ERRCODE = 'AUD06';
    END IF;
    IF NOT COALESCE(p_force, FALSE) AND EXISTS (
        SELECT 1 FROM tests.trans_audit_detail_check_items AS i
        WHERE i.trans_audit_details_id = p_audit_details_id AND i.remove IS FALSE AND i.formula_value IS NULL AND i.findings IS NULL
    ) THEN
        RAISE EXCEPTION '未入力の項目があります' USING ERRCODE = 'AUD04';
    END IF;
    IF p_conclusion IS NOT NULL AND p_conclusion <> '{}'::jsonb THEN
        SELECT t.trans_text_id INTO v_text FROM tests.trans_text_save(v_d.conclusion, p_conclusion, v_st.staff_id, v_st.staff_history_id) AS t;
    END IF;
    UPDATE tests.trans_audit_details
    SET ended_at = now(), conclusion = COALESCE(v_text, conclusion), update_user_id = v_st.staff_id, update_user_history_id = v_st.staff_history_id
    WHERE trans_audit_details_id = p_audit_details_id
    RETURNING * INTO v_d;
    RETURN v_d;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.audit_detail_finish(uuid, jsonb, boolean, uuid) IS '監査の実施を終了する(終了日時 = 今、結論 = 言語別の値の JSON)。未入力の項目(値も所見も無い)があれば止める(p_force で押し切れる)。チームの監査員だけ。担当者は引数、省略時は JWT の staff_id。errcode: OPR00 / AUD02 対象が無い / AUD03 チームの監査員ではない / AUD04 未入力の項目がある / AUD05 終了した監査 / AUD06 実施を開始していない。戻り値は監査実施詳細';

CREATE OR REPLACE FUNCTION tests.audit_complaint_register(
    p_item_id uuid,
    p_titles jsonb,
    p_details jsonb DEFAULT NULL,
    p_occurred_at timestamp DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.trans_audit_complaint AS $$
DECLARE
    v_st record; v_d tests.trans_audit_details; v_item tests.trans_audit_detail_check_items;
    v_label uuid; v_text uuid; v_complaint uuid; v_row tests.trans_audit_complaint;
BEGIN
    SELECT * INTO v_item FROM tests.trans_audit_detail_check_items WHERE trans_audit_detail_check_items_id = p_item_id AND remove IS FALSE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '監査実施詳細項目が見つかりません (%)', p_item_id USING ERRCODE = 'AUD02';
    END IF;
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_d FROM tests.trans_audit_details WHERE trans_audit_details_id = v_item.trans_audit_details_id AND remove IS FALSE FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '監査実施詳細が見つかりません (%)', v_item.trans_audit_details_id USING ERRCODE = 'AUD02';
    END IF;
    IF NOT tests.audit_is_member(v_d.trans_audit_details_id, v_st.staff_id) THEN
        RAISE EXCEPTION 'この監査のチームの監査員ではありません (%)', v_st.staff_id USING ERRCODE = 'AUD03';
    END IF;
    IF v_d.ended_at IS NOT NULL THEN
        RAISE EXCEPTION '終了した監査は変更できません' USING ERRCODE = 'AUD05';
    END IF;
    IF p_titles IS NULL OR p_titles = '{}'::jsonb THEN
        RAISE EXCEPTION '異常の題名を指定してください' USING ERRCODE = 'AUD07';
    END IF;
    SELECT t.trans_label_id INTO v_label FROM tests.trans_label_save(NULL, p_titles, v_st.staff_id, v_st.staff_history_id) AS t;
    SELECT t.trans_text_id INTO v_text FROM tests.trans_text_save(NULL, COALESCE(NULLIF(p_details, '{}'::jsonb), p_titles), v_st.staff_id, v_st.staff_history_id) AS t;
    INSERT INTO tests.trans_complaint (
        occurent_at, titles, details, reporter_staff_history_id, reporter_staff_id, update_user_id, update_user_history_id
    )
    VALUES (COALESCE(p_occurred_at, now()), v_label, v_text, v_st.staff_history_id, v_st.staff_id, v_st.staff_id, v_st.staff_history_id)
    RETURNING trans_complaint_id INTO v_complaint;
    INSERT INTO tests.trans_audit_complaint (trans_complaint_id, trans_audit_detail_check_items_id, update_user_id, update_user_history_id)
    VALUES (v_complaint, p_item_id, v_st.staff_id, v_st.staff_history_id)
    RETURNING * INTO v_row;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.audit_complaint_register(uuid, jsonb, jsonb, timestamp, uuid) IS '不適合の項目から、異常(題名・内容 = 言語別の値の JSON。報告者 = 担当者。承認パターンがあれば申請になる)を作り、項目につなぐ(1 トランザクション)。チームの監査員だけ。担当者は引数、省略時は JWT の staff_id。errcode: OPR00 / AUD02 項目が無い / AUD03 チームの監査員ではない / AUD05 終了した監査 / AUD07 題名が無い。戻り値は監査の異常(つなぎ)';

CREATE OR REPLACE FUNCTION tests.audit_notice(p_days_before integer DEFAULT 3)
RETURNS TABLE (
    trans_audit_details_id uuid,
    trans_audit_id uuid,
    trans_audit_team_id uuid,
    scheduled_at timestamp,
    days_until integer,
    is_overdue boolean,
    is_in_progress boolean
) AS $$
    SELECT
        a.trans_audit_details_id, a.trans_audit_id, a.trans_audit_team_id, a.scheduled_at,
        (a.scheduled_at::date - current_date), a.is_overdue, a.is_in_progress
    FROM tests.v_audit_assignment AS a
    WHERE a.staff_id = NULLIF(current_setting('jwt.claims.staff_id', true), '')::uuid
      AND NOT a.is_done
      AND a.scheduled_at IS NOT NULL
      AND a.scheduled_at < now() + make_interval(days => p_days_before)
    ORDER BY a.scheduled_at, a.trans_audit_details_id
$$ LANGUAGE sql STABLE;

COMMENT ON FUNCTION tests.audit_notice(integer) IS '監査の通知(予定日をもとに導く。行は作らない)。呼び出した人(JWT の staff_id)がチームの監査員で、未終了で、予定日時が p_days_before 日以内(または過ぎた)の監査実施詳細を返す。days_until は予定日までの日数(過ぎたものは負)。予定日を変えると結果も変わる';
