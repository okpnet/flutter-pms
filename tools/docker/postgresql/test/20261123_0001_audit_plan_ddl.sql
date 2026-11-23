-- 20261123_0001 監査計画の登録の関数の DDL(06_cteate_test.sql の追加分。PERO から出力される内容と同じ)。DB へ適用する前に、ROLLBACK 付きで検査するときに先に流す
CREATE OR REPLACE FUNCTION tests.audit_plan_register(
    p_titles jsonb,
    p_details jsonb,
    p_audit_std_id uuid,
    p_lines jsonb,
    p_department_id uuid DEFAULT NULL,
    p_stakeholder_id uuid DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.trans_audit AS $$
DECLARE
    v_st record; v_std_h uuid; v_label uuid; v_text uuid; v_audit tests.trans_audit;
    v_line jsonb; v_team uuid; v_team_label uuid; v_detail_label uuid; v_aud uuid; v_aud_h uuid; v_names jsonb;
    v_s timestamp; v_e timestamp; v_start timestamp; v_end timestamp;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    IF p_titles IS NULL OR p_titles = '{}'::jsonb THEN
        RAISE EXCEPTION '監査の題名を指定してください' USING ERRCODE = 'AUD07';
    END IF;
    SELECT h.history_id INTO v_std_h
    FROM tests.history_mstr_audit_std AS h
    INNER JOIN tests.mstr_audit_std AS s ON s.mstr_audit_std_id = h.mstr_audit_std_id AND s.remove IS FALSE
    WHERE h.mstr_audit_std_id = p_audit_std_id
    ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
    IF v_std_h IS NULL THEN
        RAISE EXCEPTION '監査標準が見つかりません (%)', p_audit_std_id USING ERRCODE = 'AUD02';
    END IF;
    IF p_lines IS NULL OR jsonb_typeof(p_lines) <> 'array' OR jsonb_array_length(p_lines) = 0 THEN
        RAISE EXCEPTION 'チームと予定の行を指定してください' USING ERRCODE = 'AUD08';
    END IF;
    -- 登録の前に、すべての行を検査する(途中で止まると、呼称だけが残るため)
    FOR v_line IN SELECT value FROM jsonb_array_elements(p_lines) LOOP
        IF jsonb_typeof(v_line->'team_names') IS DISTINCT FROM 'object'
           OR NOT EXISTS (SELECT 1 FROM jsonb_each_text(v_line->'team_names') AS t WHERE t.value <> '') THEN
            RAISE EXCEPTION 'チーム名を指定してください' USING ERRCODE = 'AUD08';
        END IF;
        IF jsonb_typeof(v_line->'auditor_ids') IS DISTINCT FROM 'array' OR jsonb_array_length(v_line->'auditor_ids') = 0 THEN
            RAISE EXCEPTION '監査員を指定してください' USING ERRCODE = 'AUD08';
        END IF;
        FOR v_aud IN SELECT DISTINCT x::uuid FROM jsonb_array_elements_text(v_line->'auditor_ids') AS x LOOP
            IF NOT EXISTS (SELECT 1 FROM tests.info_staff AS f WHERE f.info_staff_id = v_aud AND f.remove IS FALSE) THEN
                RAISE EXCEPTION '監査員が見つかりません (%)', v_aud USING ERRCODE = 'AUD08';
            END IF;
        END LOOP;
        v_s := NULLIF(v_line->>'scheduled_at', '')::timestamp;
        v_e := NULLIF(v_line->>'expected_end_at', '')::timestamp;
        IF v_s IS NOT NULL AND v_e IS NOT NULL AND v_e < v_s THEN
            RAISE EXCEPTION '終了予定日時が予定日時より前です' USING ERRCODE = 'AUD09';
        END IF;
        v_start := LEAST(v_start, v_s);
        v_end := GREATEST(v_end, v_e);
    END LOOP;

    SELECT t.trans_label_id INTO v_label FROM tests.trans_label_save(NULL, p_titles, v_st.staff_id, v_st.staff_history_id) AS t;
    SELECT t.trans_text_id INTO v_text
    FROM tests.trans_text_save(NULL, COALESCE(NULLIF(p_details, '{}'::jsonb), p_titles), v_st.staff_id, v_st.staff_history_id) AS t;
    INSERT INTO tests.trans_audit (
        audit_std_history_id, audit_std_id, staff_history_id, staff_id, scheduled_start_date, expected_end_date,
        titles, details, info_department_id, mstr_stakeholder_id, update_user_id, update_user_history_id
    )
    VALUES (
        v_std_h, p_audit_std_id, v_st.staff_history_id, v_st.staff_id, v_start, v_end,
        v_label, v_text, p_department_id, p_stakeholder_id, v_st.staff_id, v_st.staff_history_id
    )
    RETURNING * INTO v_audit;

    FOR v_line IN SELECT value FROM jsonb_array_elements(p_lines) LOOP
        SELECT t.trans_label_id INTO v_team_label
        FROM tests.trans_label_save(NULL, v_line->'team_names', v_st.staff_id, v_st.staff_history_id) AS t;
        INSERT INTO tests.trans_audit_team (trans_audit_id, names, update_user_id, update_user_history_id)
        VALUES (v_audit.trans_audit_id, v_team_label, v_st.staff_id, v_st.staff_history_id)
        RETURNING trans_audit_team_id INTO v_team;
        FOR v_aud IN SELECT DISTINCT x::uuid FROM jsonb_array_elements_text(v_line->'auditor_ids') AS x LOOP
            SELECT h.history_id INTO v_aud_h FROM tests.history_info_staff AS h
            WHERE h.info_staff_id = v_aud ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
            INSERT INTO tests.trans_auditor (
                trans_audit_team_id, audit_std_history_id, audit_std_id, staff_history_id, staff_id, update_user_id, update_user_history_id
            )
            VALUES (v_team, v_std_h, p_audit_std_id, v_aud_h, v_aud, v_st.staff_id, v_st.staff_history_id);
        END LOOP;
        -- 監査実施詳細の名称 = 題名 + チーム名(言語ごと)
        SELECT COALESCE(jsonb_object_agg(
            k, CASE WHEN p_titles ? k THEN (p_titles->>k) || ' ' || (v_line->'team_names'->>k) ELSE v_line->'team_names'->>k END
        ), '{}'::jsonb) INTO v_names
        FROM jsonb_object_keys(v_line->'team_names') AS k;
        SELECT t.trans_label_id INTO v_detail_label FROM tests.trans_label_save(NULL, v_names, v_st.staff_id, v_st.staff_history_id) AS t;
        INSERT INTO tests.trans_audit_details (
            trans_audit_id, audit_std_history_id, audit_std_id, names, trans_audit_team_id, scheduled_at, expected_end_at,
            update_user_id, update_user_history_id
        )
        VALUES (
            v_audit.trans_audit_id, v_std_h, p_audit_std_id, v_detail_label, v_team,
            NULLIF(v_line->>'scheduled_at', '')::timestamp, NULLIF(v_line->>'expected_end_at', '')::timestamp,
            v_st.staff_id, v_st.staff_history_id
        );
    END LOOP;
    RETURN v_audit;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.audit_plan_register(jsonb, jsonb, uuid, jsonb, uuid, uuid, uuid) IS '監査計画を登録する(1 トランザクション): 監査(題名・詳細・監査標準・責任者 = 担当者)・チーム・監査員・監査実施詳細(予定日時・終了予定日時)。p_lines は jsonb の配列で、1 行 = チーム 1 つ + 監査員 + 監査実施詳細 1 件({"team_names": {"ja": "…"}, "auditor_ids": ["…"], "scheduled_at": "…", "expected_end_at": "…"})。題名・詳細・チーム名は言語別の値の JSON。監査実施詳細の名称は「題名 + チーム名」。担当者は引数、省略時は JWT の staff_id。errcode: OPR00 担当者が無い / AUD02 監査標準が無い / AUD07 題名が無い / AUD08 行・チーム名・監査員が無い(監査員が見つからない)/ AUD09 終了予定日時が予定日時より前。戻り値は監査';
