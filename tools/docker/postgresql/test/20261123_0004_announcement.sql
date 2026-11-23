-- 20261123_0004 通知の関数(announcement_register・announcement_mark_read・audit_notify_due)と target_symbol 列の検査 N1〜N6
-- 実行: node runtest.js <.env> NONE 20261123_0004_announcement_ddl.sql 20261123_0004_announcement.sql
--   列・関数が DB に適用済みなら、このファイルだけでよい。最後に ROLLBACK するのでデータは変わらない。
-- 前提: 検証用 DB。担当者 ADMIN・TANAKA(履歴がある)。
DO $$
DECLARE adm uuid; adm_h uuid; me uuid; other uuid; n int; a1 uuid; r tests.trans_announcement; v_title text;
BEGIN
    SELECT info_staff_id INTO adm FROM tests.info_staff WHERE code = 'ADMIN' LIMIT 1;
    SELECT history_id INTO adm_h FROM tests.history_info_staff WHERE info_staff_id = adm ORDER BY revision DESC LIMIT 1;
    SELECT info_staff_id INTO me FROM tests.info_staff WHERE code = 'TANAKA' LIMIT 1;
    SELECT info_staff_id INTO other FROM tests.info_staff WHERE info_staff_id NOT IN (adm, me) AND remove IS FALSE LIMIT 1;
    PERFORM set_config('jwt.claims.staff_id', adm::text, true);

    -- N1: 登録(言語別の文を直接登録。対象は symbol)。宛先ごとに 1 件
    n := tests.announcement_register(ARRAY[me, adm], 'test', '{"ja":"テスト通知","en":"Test"}'::jsonb, '{"ja":"本文","en":"Body"}'::jsonb, 'ZZ-TEST-1', NULL, adm, adm_h);
    IF n <> 2 THEN RAISE EXCEPTION 'N1 NG: % 件', n; END IF;
    SELECT count(*) INTO n FROM tests.trans_announcement WHERE category = 'test' AND target_symbol = 'ZZ-TEST-1';
    IF n <> 2 THEN RAISE EXCEPTION 'N1 NG: 行が % 件', n; END IF;
    RAISE NOTICE 'N1 OK';

    -- N2: 題名は、言語別の値で読める
    SELECT lv.label_value INTO v_title
      FROM tests.trans_announcement AS a
      INNER JOIN tests.trans_label_value AS lv ON lv.trans_label_id = a.titles
      INNER JOIN tests.shared_language_code AS l ON l.shared_language_code_id = lv.shared_language_code_id AND lower(l.code) = 'en'
     WHERE a.to_staff_id = me AND a.category = 'test' AND a.target_symbol = 'ZZ-TEST-1';
    IF v_title IS DISTINCT FROM 'Test' THEN RAISE EXCEPTION 'N2 NG: %', v_title; END IF;
    RAISE NOTICE 'N2 OK';

    -- N3: 同じ宛先・区分・対象は、もう作らない(冪等)。対象が無ければ作る
    n := tests.announcement_register(ARRAY[me], 'test', '{"ja":"テスト通知"}'::jsonb, NULL, 'ZZ-TEST-1', NULL, adm, adm_h);
    IF n <> 0 THEN RAISE EXCEPTION 'N3 NG: 重複 % 件', n; END IF;
    n := tests.announcement_register(ARRAY[me], 'test', '{"ja":"対象なし"}'::jsonb, NULL, NULL, NULL, adm, adm_h);
    IF n <> 1 THEN RAISE EXCEPTION 'N3 NG: 対象なし % 件', n; END IF;
    RAISE NOTICE 'N3 OK';

    -- N4: 区分・題名が無いと、ANN02
    BEGIN
        PERFORM tests.announcement_register(ARRAY[me], '', '{"ja":"x"}'::jsonb, NULL, NULL, NULL, adm, adm_h);
        RAISE EXCEPTION 'N4 NG: 区分なしが通った';
    EXCEPTION WHEN SQLSTATE 'ANN02' THEN NULL; END;
    BEGIN
        PERFORM tests.announcement_register(ARRAY[me], 'test', NULL, NULL, NULL, NULL, adm, adm_h);
        RAISE EXCEPTION 'N4 NG: 題名なしが通った';
    EXCEPTION WHEN SQLSTATE 'ANN02' THEN NULL; END;
    RAISE NOTICE 'N4 OK';

    -- N5: 既読は、自分宛てだけ(他の人の通知は ANN01)
    SELECT trans_announcement_id INTO a1 FROM tests.trans_announcement WHERE to_staff_id = me AND category = 'test' AND target_symbol = 'ZZ-TEST-1';
    BEGIN
        PERFORM tests.announcement_mark_read(a1, adm);
        RAISE EXCEPTION 'N5 NG: 他の人の通知を既読にできた';
    EXCEPTION WHEN SQLSTATE 'ANN01' THEN NULL; END;
    r := tests.announcement_mark_read(a1, me);
    IF r.is_read IS NOT TRUE THEN RAISE EXCEPTION 'N5 NG: 既読にならない'; END IF;
    RAISE NOTICE 'N5 OK';

    -- N6: 監査の通知は、冪等(2 回目は 0 件)。区分 audit・対象は監査実施詳細の symbol
    PERFORM tests.audit_notify_due(3650, adm, adm_h);
    n := tests.audit_notify_due(3650, adm, adm_h);
    IF n <> 0 THEN RAISE EXCEPTION 'N6 NG: 2 回目に % 件', n; END IF;
    SELECT count(*) INTO n FROM tests.trans_announcement AS a
      WHERE a.category = 'audit' AND NOT EXISTS (SELECT 1 FROM tests.trans_audit_details d WHERE d.symbol = a.target_symbol);
    IF n <> 0 THEN RAISE EXCEPTION 'N6 NG: 対象の無い監査の通知が % 件', n; END IF;
    RAISE NOTICE 'N6 OK';
END $$;
