-- 20261123_0005 異常の登録の関数 complaint_register と、種類のビュー(v_complaint・v_complaint_kind)の検査 G1〜G7
-- 実行: node runtest.js <.env> NONE 20261123_0005_complaint_ddl.sql 20261123_0005_complaint.sql
--   ビュー・関数が DB に適用済みなら、このファイルだけでよい。最後に ROLLBACK するのでデータは変わらない。
-- 前提: 検証用 DB(ダミーデータ)。担当者 ADMIN・設備・工程・利害関係者・受注がある。
DO $$
DECLARE adm uuid; tk uuid; sh uuid; od uuid; eq uuid; c1 tests.trans_complaint; c2 tests.trans_complaint; c3 tests.trans_complaint; v tests.v_complaint; n int;
BEGIN
    SELECT info_staff_id INTO adm FROM tests.info_staff WHERE code = 'ADMIN' LIMIT 1;
    PERFORM set_config('jwt.claims.staff_id', adm::text, true);
    SELECT mstr_task_id INTO tk FROM tests.mstr_task WHERE remove IS FALSE LIMIT 1;
    SELECT mstr_stakeholder_id INTO sh FROM tests.mstr_stakeholder WHERE remove IS FALSE LIMIT 1;
    SELECT trans_order_id INTO od FROM tests.trans_order WHERE remove IS FALSE LIMIT 1;
    SELECT mstr_equipment_id INTO eq FROM tests.mstr_equipment WHERE remove IS FALSE LIMIT 1;

    -- G1: 工程の異常(内部)。種類は、子の表に行があるかで分かる
    c1 := tests.complaint_register('{"ja":"寸法の外れ"}'::jsonb, NULL, NULL, NULL, tk);
    SELECT * INTO v FROM tests.v_complaint WHERE trans_complaint_id = c1.trans_complaint_id;
    IF v.kind_count <> 1 OR NOT v.has_process OR v.is_external OR v.is_claim THEN RAISE EXCEPTION 'G1 NG'; END IF;
    RAISE NOTICE 'G1 OK';

    -- G2: 利害関係者の苦情(外部・クレームではない)
    c2 := tests.complaint_register('{"ja":"納期回答が遅い"}'::jsonb, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sh);
    SELECT * INTO v FROM tests.v_complaint WHERE trans_complaint_id = c2.trans_complaint_id;
    IF NOT (v.has_stakeholder AND v.is_external AND NOT v.is_claim) THEN RAISE EXCEPTION 'G2 NG'; END IF;
    RAISE NOTICE 'G2 OK';

    -- G3: 顧客クレーム(外部・クレーム)。対象の symbol が、種類のビューに出る
    IF od IS NOT NULL THEN
        c3 := tests.complaint_register('{"ja":"梱包の破損"}'::jsonb, NULL, NULL, NULL, NULL, NULL, NULL, NULL, od);
        SELECT * INTO v FROM tests.v_complaint WHERE trans_complaint_id = c3.trans_complaint_id;
        IF NOT (v.has_order AND v.is_external AND v.is_claim) THEN RAISE EXCEPTION 'G3 NG'; END IF;
        SELECT count(*) INTO n FROM tests.v_complaint_kind k WHERE k.trans_complaint_id = c3.trans_complaint_id AND k.target_symbol IS NOT NULL;
        IF n <> 1 THEN RAISE EXCEPTION 'G3 NG: target_symbol'; END IF;
    END IF;
    RAISE NOTICE 'G3 OK';

    -- G4: 対象が 0 個・2 個、題名なし、ロットで数量なしは OPR02。存在しない対象は OPR01
    BEGIN PERFORM tests.complaint_register('{"ja":"x"}'::jsonb); RAISE EXCEPTION 'G4 NG: 対象なし';
    EXCEPTION WHEN SQLSTATE 'OPR02' THEN NULL; END;
    BEGIN PERFORM tests.complaint_register('{"ja":"x"}'::jsonb, NULL, NULL, eq, tk); RAISE EXCEPTION 'G4 NG: 対象 2 つ';
    EXCEPTION WHEN SQLSTATE 'OPR02' THEN NULL; END;
    BEGIN PERFORM tests.complaint_register(NULL, NULL, NULL, NULL, tk); RAISE EXCEPTION 'G4 NG: 題名なし';
    EXCEPTION WHEN SQLSTATE 'OPR02' THEN NULL; END;
    BEGIN PERFORM tests.complaint_register('{"ja":"x"}'::jsonb, NULL, NULL, NULL, gen_random_uuid()); RAISE EXCEPTION 'G4 NG: 存在しない工程';
    EXCEPTION WHEN SQLSTATE 'OPR01' THEN NULL; END;
    BEGIN PERFORM tests.complaint_register('{"ja":"x"}'::jsonb, NULL, NULL, NULL, NULL, NULL, gen_random_uuid()); RAISE EXCEPTION 'G4 NG: ロットで数量なし';
    EXCEPTION WHEN SQLSTATE 'OPR02' THEN NULL; END;
    RAISE NOTICE 'G4 OK';

    -- G5: 既存の異常へ種類を足す(子の表へ直接登録)と、種類が 2 つになり、種類の名称が " / " でつながる
    INSERT INTO tests.trans_complaint_stakeholder (trans_complaint_id, stakeholder_history_id, stakeholder_id)
    SELECT c1.trans_complaint_id, h.history_id, sh FROM tests.history_mstr_stakeholder h WHERE h.mstr_stakeholder_id = sh ORDER BY h.revision DESC LIMIT 1;
    SELECT * INTO v FROM tests.v_complaint WHERE trans_complaint_id = c1.trans_complaint_id;
    IF v.kind_count <> 2 OR NOT (v.has_process AND v.has_stakeholder) OR v.kind_names NOT LIKE '% / %' THEN RAISE EXCEPTION 'G5 NG: %', v.kind_names; END IF;
    RAISE NOTICE 'G5 OK';

    -- G6: 1 行 = 1 異常(種類が複数でも行は増えない)
    SELECT count(*) INTO n FROM tests.v_complaint WHERE trans_complaint_id = c1.trans_complaint_id;
    IF n <> 1 THEN RAISE EXCEPTION 'G6 NG: % 行', n; END IF;
    RAISE NOTICE 'G6 OK';

    -- G7: 利害関係者(最初の 1 つ・件数)と、対象のシンボル(" / " でつなぐ)
    SELECT * INTO v FROM tests.v_complaint WHERE trans_complaint_id = c1.trans_complaint_id;
    IF v.party_stakeholder_id IS DISTINCT FROM sh OR v.party_count <> 1 THEN RAISE EXCEPTION 'G7 NG: 利害関係者 % / %', v.party_stakeholder_id, v.party_count; END IF;
    -- 種類ごとの対象のシンボルが異なれば " / " でつながる(同じ文字なら DISTINCT で 1 つになる。ダミーの工程と利害関係者は同じ 0001)
    SELECT count(DISTINCT k.target_symbol) INTO n FROM tests.v_complaint_kind k WHERE k.trans_complaint_id = c1.trans_complaint_id AND k.target_symbol IS NOT NULL;
    IF v.target_symbols IS NULL OR (n > 1) <> (v.target_symbols LIKE '% / %') THEN RAISE EXCEPTION 'G7 NG: 対象 %', v.target_symbols; END IF;
    RAISE NOTICE 'G7 OK';
END $$;
