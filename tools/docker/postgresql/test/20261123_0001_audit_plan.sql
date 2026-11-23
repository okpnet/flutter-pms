-- 20261123_0001 監査計画の登録の関数 audit_plan_register の検査 C1〜C8
-- 実行: node runtest.js <.env> NONE 20261123_0001_audit_plan_ddl.sql 20261123_0001_audit_plan.sql
--   関数が DB に適用済みなら、このファイルだけでよい。1 トランザクションで流し、最後に ROLLBACK するのでデータは変わらない。
-- 前提: 検証用 DB。担当者 ADMIN・TANAKA。監査標準は、このファイルが作る。一般ユーザー(pms_user)の資格で実行する。

CREATE TEMP TABLE c_ctx (k text PRIMARY KEY, v uuid);
GRANT ALL ON c_ctx TO PUBLIC;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA tests TO pms_user;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA tests TO pms_user;

DO $$
DECLARE adm uuid; adm_h uuid; me uuid; other uuid; a1 uuid; std uuid;
BEGIN
    SELECT info_staff_id INTO adm FROM tests.info_staff WHERE code = 'ADMIN' LIMIT 1;
    SELECT history_id INTO adm_h FROM tests.history_info_staff WHERE info_staff_id = adm ORDER BY revision DESC LIMIT 1;
    SELECT info_staff_id INTO me FROM tests.info_staff WHERE code = 'TANAKA' LIMIT 1;
    SELECT info_staff_id INTO other FROM tests.info_staff WHERE info_staff_id NOT IN (adm, me) AND remove IS FALSE LIMIT 1;
    PERFORM set_config('jwt.claims.staff_id', adm::text, true);
    SELECT shared_appellations_id INTO a1 FROM tests.shared_appellation_save(NULL, '{"ja":"C 監査標準"}'::jsonb, NULL, NULL, adm, adm_h);
    INSERT INTO tests.mstr_audit_std (code, names) VALUES ('C-STD', a1) RETURNING mstr_audit_std_id INTO std;
    INSERT INTO tests.mstr_audit_std_checkitem (mstr_audit_std_id, code, names, type_class, formula_class) VALUES (std, 'C1', a1, 1, 1);
    INSERT INTO c_ctx VALUES ('me', me), ('other', other), ('adm', adm), ('std', std);
END $$;

CREATE FUNCTION pg_temp.c(k text) RETURNS uuid AS $$ SELECT v FROM c_ctx WHERE k = $1 $$ LANGUAGE sql;
GRANT EXECUTE ON FUNCTION pg_temp.c(text) TO PUBLIC;
CREATE FUNCTION pg_temp.expect(name text, ok boolean) RETURNS void AS $$
BEGIN IF ok IS NOT TRUE THEN RAISE EXCEPTION '% NG', name; END IF; RAISE NOTICE '% OK', name; END $$ LANGUAGE plpgsql;
GRANT EXECUTE ON FUNCTION pg_temp.expect(text, boolean) TO PUBLIC;

SET LOCAL ROLE pms_user;
SELECT set_config('jwt.claims.staff_id', (SELECT v::text FROM c_ctx WHERE k = 'adm'), true);

-- C1: 登録 = 監査・チーム・監査員・監査実施詳細が 1 回で作られる
DO $$
DECLARE a tests.trans_audit; lines jsonb;
BEGIN
    lines := jsonb_build_array(
        jsonb_build_object('team_names', '{"ja":"チームA"}'::jsonb, 'auditor_ids', jsonb_build_array(pg_temp.c('me'), pg_temp.c('adm'), pg_temp.c('me')),
                           'scheduled_at', '2026-12-01 09:00', 'expected_end_at', '2026-12-01 17:00'),
        jsonb_build_object('team_names', '{"ja":"チームB"}'::jsonb, 'auditor_ids', jsonb_build_array(pg_temp.c('adm')),
                           'scheduled_at', '2026-12-05 09:00')
    );
    a := tests.audit_plan_register('{"ja":"2026 年度 内部監査"}'::jsonb, '{"ja":"年度計画"}'::jsonb, pg_temp.c('std'), lines);
    INSERT INTO c_ctx VALUES ('audit', a.trans_audit_id);
    PERFORM pg_temp.expect('C1a 監査が作られる(責任者 = 担当者、symbol が採番される)', a.staff_id = pg_temp.c('adm') AND a.symbol <> '' AND a.audit_std_id = pg_temp.c('std'));
    PERFORM pg_temp.expect('C1b チームが 2 つ', (SELECT count(*) FROM tests.trans_audit_team WHERE trans_audit_id = a.trans_audit_id) = 2);
    PERFORM pg_temp.expect('C1c 監査員は、チームごとに重複なし(A に 2 人、B に 1 人)',
        (SELECT count(*) FROM tests.trans_auditor au JOIN tests.trans_audit_team t USING (trans_audit_team_id) WHERE t.trans_audit_id = a.trans_audit_id) = 3);
    PERFORM pg_temp.expect('C1d 監査実施詳細が 2 件(予定日時・終了予定日時つき)',
        (SELECT count(*) FROM tests.trans_audit_details WHERE trans_audit_id = a.trans_audit_id) = 2
        AND EXISTS (SELECT 1 FROM tests.trans_audit_details WHERE trans_audit_id = a.trans_audit_id AND scheduled_at = '2026-12-01 09:00' AND expected_end_at = '2026-12-01 17:00'));
    PERFORM pg_temp.expect('C1e 監査の開始予定・終了予定は、行の最小・最大',
        a.scheduled_start_date = '2026-12-01 09:00' AND a.expected_end_date = '2026-12-01 17:00');
END $$;

-- C2: 監査実施詳細の名称は「題名 + チーム名」。題名・詳細・チーム名のラベル・文章が作られる
DO $$
BEGIN
    PERFORM pg_temp.expect('C2a 名称は「題名 チーム名」',
        EXISTS (SELECT 1 FROM tests.trans_audit_details d JOIN tests.trans_label_value v ON v.trans_label_id = d.names
                WHERE d.trans_audit_id = pg_temp.c('audit') AND v.label_value = '2026 年度 内部監査 チームA'));
    PERFORM pg_temp.expect('C2b 詳細の文章が保存される',
        EXISTS (SELECT 1 FROM tests.trans_audit a JOIN tests.trans_text_value v ON v.trans_text_id = a.details WHERE a.trans_audit_id = pg_temp.c('audit') AND v.text_value = '年度計画'));
END $$;

-- C3: 作った計画は、監査員(TANAKA)の「自分の監査」に出る(v_audit_assignment)
DO $$
BEGIN
    PERFORM set_config('jwt.claims.staff_id', pg_temp.c('me')::text, true);
    PERFORM pg_temp.expect('C3 TANAKA のチーム A の監査実施詳細が見え、B は見えない',
        (SELECT count(*) FROM tests.v_audit_assignment WHERE staff_id = pg_temp.c('me') AND trans_audit_id = pg_temp.c('audit')) = 1);
    PERFORM set_config('jwt.claims.staff_id', pg_temp.c('adm')::text, true);
END $$;

-- C4: 詳細が無いときは、詳細に題名を使う
DO $$
DECLARE a tests.trans_audit;
BEGIN
    a := tests.audit_plan_register('{"ja":"題名だけ"}'::jsonb, NULL, pg_temp.c('std'),
        jsonb_build_array(jsonb_build_object('team_names', '{"ja":"T"}'::jsonb, 'auditor_ids', jsonb_build_array(pg_temp.c('me')))));
    PERFORM pg_temp.expect('C4 詳細が無くても登録でき、予定は無し(NULL)',
        a.details IS NOT NULL AND a.scheduled_start_date IS NULL AND a.expected_end_date IS NULL);
END $$;

-- C5: 入力の誤りは、何も作らずに止まる(題名 AUD07・監査標準 AUD02・行 AUD08・予定の前後 AUD09)
DO $$
DECLARE n0 integer; ok jsonb;
BEGIN
    SELECT count(*) INTO n0 FROM tests.trans_audit;
    ok := jsonb_build_array(jsonb_build_object('team_names', '{"ja":"T"}'::jsonb, 'auditor_ids', jsonb_build_array(pg_temp.c('me'))));
    BEGIN PERFORM tests.audit_plan_register('{}'::jsonb, NULL, pg_temp.c('std'), ok); RAISE EXCEPTION 'C5a NG';
    EXCEPTION WHEN SQLSTATE 'AUD07' THEN RAISE NOTICE 'C5a OK: 題名が無い(AUD07)'; END;
    BEGIN PERFORM tests.audit_plan_register('{"ja":"x"}'::jsonb, NULL, gen_random_uuid(), ok); RAISE EXCEPTION 'C5b NG';
    EXCEPTION WHEN SQLSTATE 'AUD02' THEN RAISE NOTICE 'C5b OK: 監査標準が無い(AUD02)'; END;
    BEGIN PERFORM tests.audit_plan_register('{"ja":"x"}'::jsonb, NULL, pg_temp.c('std'), '[]'::jsonb); RAISE EXCEPTION 'C5c NG';
    EXCEPTION WHEN SQLSTATE 'AUD08' THEN RAISE NOTICE 'C5c OK: 行が無い(AUD08)'; END;
    BEGIN PERFORM tests.audit_plan_register('{"ja":"x"}'::jsonb, NULL, pg_temp.c('std'),
              jsonb_build_array(jsonb_build_object('team_names', '{"ja":""}'::jsonb, 'auditor_ids', jsonb_build_array(pg_temp.c('me')))));
        RAISE EXCEPTION 'C5d NG';
    EXCEPTION WHEN SQLSTATE 'AUD08' THEN RAISE NOTICE 'C5d OK: チーム名が空(AUD08)'; END;
    BEGIN PERFORM tests.audit_plan_register('{"ja":"x"}'::jsonb, NULL, pg_temp.c('std'),
              jsonb_build_array(jsonb_build_object('team_names', '{"ja":"T"}'::jsonb, 'auditor_ids', '[]'::jsonb)));
        RAISE EXCEPTION 'C5e NG';
    EXCEPTION WHEN SQLSTATE 'AUD08' THEN RAISE NOTICE 'C5e OK: 監査員が無い(AUD08)'; END;
    BEGIN PERFORM tests.audit_plan_register('{"ja":"x"}'::jsonb, NULL, pg_temp.c('std'),
              jsonb_build_array(jsonb_build_object('team_names', '{"ja":"T"}'::jsonb, 'auditor_ids', jsonb_build_array(gen_random_uuid()))));
        RAISE EXCEPTION 'C5f NG';
    EXCEPTION WHEN SQLSTATE 'AUD08' THEN RAISE NOTICE 'C5f OK: 監査員が見つからない(AUD08)'; END;
    BEGIN PERFORM tests.audit_plan_register('{"ja":"x"}'::jsonb, NULL, pg_temp.c('std'),
              jsonb_build_array(jsonb_build_object('team_names', '{"ja":"T"}'::jsonb, 'auditor_ids', jsonb_build_array(pg_temp.c('me')),
                                                   'scheduled_at', '2026-12-02 09:00', 'expected_end_at', '2026-12-01 09:00')));
        RAISE EXCEPTION 'C5g NG';
    EXCEPTION WHEN SQLSTATE 'AUD09' THEN RAISE NOTICE 'C5g OK: 終了予定が予定より前(AUD09)'; END;
    PERFORM pg_temp.expect('C5h 誤りのときは、監査が増えない', (SELECT count(*) FROM tests.trans_audit) = n0);
END $$;

-- C6: 担当者が無い(JWT なし・引数なし)ときは OPR00
DO $$
BEGIN
    PERFORM set_config('jwt.claims.staff_id', '', true);
    BEGIN
        PERFORM tests.audit_plan_register('{"ja":"x"}'::jsonb, NULL, pg_temp.c('std'),
            jsonb_build_array(jsonb_build_object('team_names', '{"ja":"T"}'::jsonb, 'auditor_ids', jsonb_build_array(pg_temp.c('me')))));
        RAISE EXCEPTION 'C6 NG';
    EXCEPTION WHEN SQLSTATE 'OPR00' THEN RAISE NOTICE 'C6 OK: 担当者が無いと登録できない(OPR00)'; END;
END $$;
