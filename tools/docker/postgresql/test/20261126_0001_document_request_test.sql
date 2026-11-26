-- 20261126_0001 文書の承認の申請(案 A)の SQL テスト(K1〜K5)
-- 実行: 06 → 07_dummy → 09 で作った DB に対して。1 つのトランザクションで行い、最後に ROLLBACK する(DB は変わらない)。
--   psql -v ON_ERROR_STOP=1 -d postgres -f 20261126_0001_document_request_test.sql
--   (GitHub Actions の server-tests.yml が、使い捨ての DB で自動で実行する)
-- 失敗すると RAISE EXCEPTION で止まる(ON_ERROR_STOP=1 のとき、psql が失敗の終了コードを返す)。
-- 前提のデータ: 07_dummy の担当者 KUMICHO(役職の優先順位 1)・KAKARICHO(同 2)。
--
-- K1 文書の登録で、承認の段(承認前)は作られるが、通知は作られない
-- K2 document_request_approval: 最初の順位の段の該当者へ通知する・2 回呼んでも重複しない(冪等)・
--    承認不要(段が 0 件)の文書と公開済みの文書は OPR03・文書が無いと OPR01
-- K3 他の対象は、これまでどおり登録で通知する(approval_start の p_notify の既定は true。false なら通知しない)
-- K4 承認(document_approve)で次の順位の段へ通知する流れが変わらない
-- K5 v_document_publication の published・mstr_document_id の列が、実際のビューと合っている
\getenv db_test_svr DB_TEST_SVR
\connect :"db_test_svr"
SET search_path TO tests, public;

BEGIN;

-- 名称(呼称)を作る補助(07_dummy と同じ)
CREATE OR REPLACE FUNCTION pg_temp.nm2(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, v.val
    FROM (VALUES ('ja', p_ja), ('en', p_en)) AS v(code, val)
    INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE
    WHERE v.val IS NOT NULL;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

-- 承認実行パターン(trans_approval_pattern)に結びつく通知の件数
CREATE OR REPLACE FUNCTION pg_temp.notice_count(p_tp uuid, p_staff uuid DEFAULT NULL) RETURNS integer AS $$
    SELECT count(*)::integer
    FROM tests.trans_announcement AS n
    INNER JOIN tests.trans_preapproval AS q ON q.trans_preapproval_id = n.trans_preapproval_id
    WHERE q.trans_approval_pattern_id = p_tp AND n.remove IS FALSE
      AND (p_staff IS NULL OR n.to_staff_id = p_staff);
$$ LANGUAGE sql;

-- 期待した errcode で失敗するか
CREATE OR REPLACE FUNCTION pg_temp.fails_with(p_sql text, p_code text) RETURNS boolean AS $$
BEGIN
    EXECUTE p_sql;
    RETURN false;                       -- 失敗しなかった
EXCEPTION WHEN OTHERS THEN
    RETURN SQLSTATE = p_code;
END $$ LANGUAGE plpgsql;

DO $$
DECLARE
    v_kumicho uuid; v_kakaricho uuid; v_pos1 uuid; v_pos2 uuid;
    v_ap1 uuid; v_ap2 uuid; v_p2 uuid; v_p0 uuid; v_tier uuid;
    v_doc1 uuid; v_tp1 uuid; v_doc2 uuid; v_tp2 uuid;
    v_pre1 uuid; v_pre2 uuid; v_tp3 uuid; v_tp4 uuid;
    v_n integer; v_pub boolean;
BEGIN
    -- ---- 準備 -------------------------------------------------------------
    SELECT s.info_staff_id, ia.info_position_id INTO v_kumicho, v_pos1
    FROM tests.info_staff AS s INNER JOIN tests.info_assign AS ia ON ia.info_staff_id = s.info_staff_id AND ia.remove IS FALSE AND ia.enable IS TRUE
    WHERE upper(s.code) = 'KUMICHO' AND s.remove IS FALSE LIMIT 1;
    SELECT s.info_staff_id, ia.info_position_id INTO v_kakaricho, v_pos2
    FROM tests.info_staff AS s INNER JOIN tests.info_assign AS ia ON ia.info_staff_id = s.info_staff_id AND ia.remove IS FALSE AND ia.enable IS TRUE
    WHERE upper(s.code) = 'KAKARICHO' AND s.remove IS FALSE LIMIT 1;
    IF v_kumicho IS NULL OR v_kakaricho IS NULL THEN
        RAISE EXCEPTION '準備: 担当者 KUMICHO・KAKARICHO(07_dummy)が見つかりません';
    END IF;
    IF v_pos1 = v_pos2 THEN RAISE EXCEPTION '準備: 2 人の役職が同じです'; END IF;

    -- 承認の段: 順位 1 = 組長の役職、順位 2 = 係長の役職
    INSERT INTO tests.mstr_approval (info_position_id, priority, names) VALUES (v_pos1, 1, pg_temp.nm2('K 段1', 'K step1')) RETURNING mstr_approval_id INTO v_ap1;
    INSERT INTO tests.mstr_approval (info_position_id, priority, names) VALUES (v_pos2, 2, pg_temp.nm2('K 段2', 'K step2')) RETURNING mstr_approval_id INTO v_ap2;
    -- 承認パターン: P2 = 2 段、P0 = 段なし(承認不要)
    INSERT INTO tests.mstr_approval_pattern (names) VALUES (pg_temp.nm2('K 2段', 'K two steps')) RETURNING mstr_approval_pattern_id INTO v_p2;
    INSERT INTO tests.mstr_approval_pattern_detail (mstr_approval_id, mstr_approval_pattern_id) VALUES (v_ap1, v_p2), (v_ap2, v_p2);
    INSERT INTO tests.mstr_approval_pattern (names) VALUES (pg_temp.nm2('K 段なし', 'K no steps')) RETURNING mstr_approval_pattern_id INTO v_p0;

    SELECT t.mstr_document_tier_id INTO v_tier FROM tests.mstr_document_tier AS t WHERE t.remove IS FALSE ORDER BY t.tier_number LIMIT 1;
    IF v_tier IS NULL THEN RAISE EXCEPTION '準備: 文書レベル(mstr_document_tier)が見つかりません'; END IF;
    IF NOT EXISTS (SELECT 1 FROM tests.info_app WHERE remove IS FALSE) THEN RAISE EXCEPTION '準備: info_app の行が見つかりません'; END IF;

    -- ---- K1: 文書の登録で、段は作られるが、通知は作られない -------------------------
    UPDATE tests.info_app SET document_approval_pattern_id = v_p2 WHERE remove IS FALSE;
    INSERT INTO tests.mstr_document (code, titles, control_number, mstr_document_tier_id)
    VALUES ('K1_DOC_A', pg_temp.nm2('K 文書A', 'K doc A'), 'K-001', v_tier)
    RETURNING mstr_document_id, trans_approval_pattern_id INTO v_doc1, v_tp1;
    IF v_tp1 IS NULL THEN RAISE EXCEPTION 'K1: 文書に承認実行パターンが入っていません'; END IF;
    SELECT count(*) INTO v_n FROM tests.trans_preapproval WHERE trans_approval_pattern_id = v_tp1 AND remove IS FALSE;
    IF v_n <> 2 THEN RAISE EXCEPTION 'K1: 承認の段が 2 件作られるはずが % 件', v_n; END IF;
    IF pg_temp.notice_count(v_tp1) <> 0 THEN RAISE EXCEPTION 'K1: 文書の登録で通知が作られています'; END IF;
    RAISE NOTICE 'K1 OK: 段は作られ、通知は作られない';

    -- ---- K2: 承認の申請 -----------------------------------------------------------
    v_n := tests.document_request_approval(v_doc1, v_kumicho);
    IF v_n < 1 THEN RAISE EXCEPTION 'K2: 最初の順位の該当者へ通知されるはずが % 件', v_n; END IF;
    IF pg_temp.notice_count(v_tp1, v_kumicho) <> 1 THEN RAISE EXCEPTION 'K2: 組長(順位 1)への通知が 1 件のはず'; END IF;
    IF pg_temp.notice_count(v_tp1, v_kakaricho) <> 0 THEN RAISE EXCEPTION 'K2: 係長(順位 2)には、まだ通知しないはず'; END IF;
    IF tests.document_request_approval(v_doc1, v_kumicho) <> 0 THEN RAISE EXCEPTION 'K2: 2 回目の申請で通知が重複しています(冪等でない)'; END IF;
    IF pg_temp.notice_count(v_tp1, v_kumicho) <> 1 THEN RAISE EXCEPTION 'K2: 重複して通知が作られています'; END IF;
    -- 文書が無いと OPR01
    IF NOT pg_temp.fails_with(format('SELECT tests.document_request_approval(%L, %L)', gen_random_uuid(), v_kumicho), 'OPR01') THEN
        RAISE EXCEPTION 'K2: 文書が無いときは OPR01 のはず';
    END IF;
    -- 承認不要(段が 0 件)の文書は OPR03
    UPDATE tests.info_app SET document_approval_pattern_id = v_p0 WHERE remove IS FALSE;
    INSERT INTO tests.mstr_document (code, titles, control_number, mstr_document_tier_id)
    VALUES ('K2_DOC_B', pg_temp.nm2('K 文書B', 'K doc B'), 'K-002', v_tier)
    RETURNING mstr_document_id, trans_approval_pattern_id INTO v_doc2, v_tp2;
    IF NOT pg_temp.fails_with(format('SELECT tests.document_request_approval(%L, %L)', v_doc2, v_kumicho), 'OPR03') THEN
        RAISE EXCEPTION 'K2: 承認不要の文書は OPR03 のはず';
    END IF;
    RAISE NOTICE 'K2 OK: 通知・冪等・OPR01・OPR03(承認不要)';

    -- ---- K3: 他の対象(登録が申請)は、これまでどおり通知する ---------------------------
    v_tp3 := tests.approval_start(v_p2, v_kumicho, NULL);            -- p_notify の既定(true)
    IF pg_temp.notice_count(v_tp3) < 1 THEN RAISE EXCEPTION 'K3: 既定では通知するはず(従来どおり)'; END IF;
    v_tp4 := tests.approval_start(v_p2, v_kumicho, NULL, false);     -- 通知しない
    IF pg_temp.notice_count(v_tp4) <> 0 THEN RAISE EXCEPTION 'K3: p_notify = false なのに通知されています'; END IF;
    RAISE NOTICE 'K3 OK: 既定は通知する・false は通知しない';

    -- ---- K4: 承認で、次の順位の段へ通知する ------------------------------------------
    SELECT q.trans_preapproval_id INTO v_pre1 FROM tests.trans_preapproval AS q INNER JOIN tests.mstr_approval AS a ON a.mstr_approval_id = q.mstr_approval_id
    WHERE q.trans_approval_pattern_id = v_tp1 AND a.priority = 1;
    SELECT q.trans_preapproval_id INTO v_pre2 FROM tests.trans_preapproval AS q INNER JOIN tests.mstr_approval AS a ON a.mstr_approval_id = q.mstr_approval_id
    WHERE q.trans_approval_pattern_id = v_tp1 AND a.priority = 2;
    PERFORM tests.document_approve(v_pre1, true, NULL, v_kumicho);
    IF pg_temp.notice_count(v_tp1, v_kakaricho) <> 1 THEN RAISE EXCEPTION 'K4: 順位 1 の承認のあと、係長(順位 2)へ通知されるはず'; END IF;
    RAISE NOTICE 'K4 OK: 承認で次の順位の段へ通知する';

    -- ---- K5: ビューの列・公開済みの文書の申請 ------------------------------------------
    SELECT p.published INTO v_pub FROM tests.v_document_publication AS p WHERE p.mstr_document_id = v_doc1;
    IF v_pub IS NULL OR v_pub THEN RAISE EXCEPTION 'K5: 承認の途中の文書は、公開されていないはず(published = false)'; END IF;
    PERFORM tests.document_approve(v_pre2, true, NULL, v_kakaricho);
    SELECT p.published INTO v_pub FROM tests.v_document_publication AS p WHERE p.mstr_document_id = v_doc1;
    IF NOT COALESCE(v_pub, false) THEN RAISE EXCEPTION 'K5: すべての段が承認されたら、公開される(published = true)'; END IF;
    IF NOT pg_temp.fails_with(format('SELECT tests.document_request_approval(%L, %L)', v_doc1, v_kumicho), 'OPR03') THEN
        RAISE EXCEPTION 'K5: 公開済みの文書は OPR03 のはず';
    END IF;
    RAISE NOTICE 'K5 OK: published・公開済みは OPR03';
END $$;

ROLLBACK;
