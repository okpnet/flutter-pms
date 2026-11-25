-- 20261126_0001 文書の承認の申請(案 A)の適用差分【下書き。DB 未接続のため、未適用・未検証】
-- 目的: 文書の登録で通知を出さず、「承認を申請」の操作(document_request_approval)で、最初の順位の段の該当者へ通知する。
-- 適用順: ① PERO(tools/database/ER/pms_test.pero)に同じ内容を入れ、06_cteate_test.sql へ出力 → ② この差分を、ROLLBACK 付きの 1 トランザクションで試す → ③ 適用。
-- 他の対象(受注・発注ほか)は、これまでどおり「登録が申請」(通知つき)のまま。文書だけが通知を後ろへ回す。

-- 1. approval_start に p_notify(既定 true = 従来どおり)。引数が増えるため、古い定義を先に消す
DROP FUNCTION IF EXISTS tests.approval_start(uuid, uuid, uuid);

CREATE OR REPLACE FUNCTION tests.approval_start(
    p_pattern_id uuid,
    p_staff_id uuid DEFAULT NULL,
    p_staff_history_id uuid DEFAULT NULL,
    p_notify boolean DEFAULT true
) RETURNS uuid AS $$
DECLARE
    v_tp uuid; v_min smallint;
BEGIN
    INSERT INTO tests.trans_approval_pattern (mstr_approval_pattern_id, update_user_id, update_user_history_id)
    VALUES (p_pattern_id, p_staff_id, p_staff_history_id) RETURNING trans_approval_pattern_id INTO v_tp;
    INSERT INTO tests.trans_preapproval (trans_approval_pattern_id, mstr_approval_id, update_user_id, update_user_history_id)
    SELECT v_tp, d.mstr_approval_id, p_staff_id, p_staff_history_id
    FROM tests.mstr_approval_pattern_detail AS d
    WHERE d.mstr_approval_pattern_id = p_pattern_id AND d.remove IS FALSE;
    IF p_notify IS TRUE THEN
        SELECT min(a.priority) INTO v_min
        FROM tests.trans_preapproval AS q INNER JOIN tests.mstr_approval AS a ON a.mstr_approval_id = q.mstr_approval_id
        WHERE q.trans_approval_pattern_id = v_tp;
        IF v_min IS NOT NULL THEN
            PERFORM tests.approval_notify(v_tp, v_min, p_staff_id, p_staff_history_id);
        END IF;
    END IF;
    RETURN v_tp;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.approval_start(uuid, uuid, uuid, boolean) IS '@omit
承認の実行を始める(承認パターンから、承認実行パターンと、段ごとの承認前を作り、p_notify が true なら最初の段の該当者へ通知する)。対象の登録のトリガー(trg_05_approval_request)が呼ぶ。文書は p_notify = false(通知は document_request_approval で行う)';

-- 2. 登録のトリガー関数: TG_ARGV[2] = 'false' のとき、通知しない(省略は従来どおり通知する)
CREATE OR REPLACE FUNCTION tests.trg_05_approval_request() RETURNS trigger AS
$BODY$
-- 引数: TG_ARGV[0] = このテーブルの承認実行パターンの列、TG_ARGV[1] = 承認パターンを持つ info_app の列(対象ごとの標準の承認パターン)、
--       TG_ARGV[2] = 'false' のとき、登録で通知しない(省略は通知する)
-- info_app の列が NULL・承認パターンが削除済みのときは、承認不要
DECLARE
    v_col text := TG_ARGV[0];
    v_src text := TG_ARGV[1];
    v_notify boolean := COALESCE(TG_ARGV[2], 'true') <> 'false';
    v_pattern uuid;
    v_tp uuid;
BEGIN
    IF (to_jsonb(NEW) ->> v_col) IS NOT NULL THEN
        RETURN NEW;
    END IF;
    EXECUTE format(
        'SELECT p.mstr_approval_pattern_id FROM tests.info_app AS a '
        || 'INNER JOIN tests.mstr_approval_pattern AS p ON p.mstr_approval_pattern_id = a.%I AND p.remove IS FALSE '
        || 'WHERE a.remove IS FALSE ORDER BY a.update_at LIMIT 1', v_src)
    INTO v_pattern;
    IF v_pattern IS NULL THEN
        RETURN NEW;
    END IF;
    v_tp := tests.approval_start(v_pattern, NEW.update_user_id, NEW.update_user_history_id, v_notify);
    NEW := jsonb_populate_record(NEW, jsonb_build_object(v_col, v_tp));
    RETURN NEW;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

-- 文書だけ、登録で通知しない
DROP TRIGGER IF EXISTS trg_01_approval_request_mstr_document ON tests.mstr_document;
CREATE TRIGGER trg_01_approval_request_mstr_document BEFORE INSERT ON tests.mstr_document FOR EACH ROW
    EXECUTE FUNCTION tests.trg_05_approval_request('trans_approval_pattern_id', 'document_approval_pattern_id', 'false');

-- 3. 承認の申請: 最初の順位の、まだ判断されていない段の該当者へ通知する(冪等。同じ段・同じ人には重複して作らない)
CREATE OR REPLACE FUNCTION tests.document_request_approval(
    p_document_id uuid,
    p_staff_id uuid DEFAULT NULL
) RETURNS integer AS $$
DECLARE
    v_st record; v_doc tests.mstr_document; v_min smallint;
BEGIN
    SELECT * INTO v_st FROM tests.op_staff(p_staff_id);
    SELECT * INTO v_doc FROM tests.mstr_document WHERE mstr_document_id = p_document_id AND remove IS FALSE;
    IF NOT FOUND THEN
        RAISE EXCEPTION '文書が見つかりません (%)', p_document_id USING ERRCODE = 'OPR01';
    END IF;
    -- 承認の段が無い(承認不要)・すでに公開済みの文書は、申請できない
    IF NOT EXISTS (SELECT 1 FROM tests.trans_preapproval AS q WHERE q.trans_approval_pattern_id = v_doc.trans_approval_pattern_id AND q.remove IS FALSE) THEN
        RAISE EXCEPTION '承認の段が無い文書は申請できません' USING ERRCODE = 'OPR03';
    END IF;
    IF COALESCE((SELECT p.published FROM tests.v_document_publication AS p WHERE p.mstr_document_id = p_document_id), false) THEN
        RAISE EXCEPTION 'すでに公開されています' USING ERRCODE = 'OPR03';
    END IF;
    -- 申請できるのは、編集の権限のある担当者(画面と取得元が検査する。DB は担当者の存在だけ確かめる)
    SELECT min(a.priority) INTO v_min
    FROM tests.trans_preapproval AS q INNER JOIN tests.mstr_approval AS a ON a.mstr_approval_id = q.mstr_approval_id
    WHERE q.trans_approval_pattern_id = v_doc.trans_approval_pattern_id AND q.remove IS FALSE
      AND NOT COALESCE((SELECT r.approved FROM tests.trans_approved AS r WHERE r.trans_preapproval_id = q.trans_preapproval_id AND r.remove IS FALSE
                        ORDER BY r.update_at DESC LIMIT 1), false);
    IF v_min IS NULL THEN
        RETURN 0;
    END IF;
    RETURN tests.approval_notify(v_doc.trans_approval_pattern_id, v_min, v_st.staff_id, v_st.staff_history_id);
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.document_request_approval(uuid, uuid) IS '文書の承認を申請する(通知だけ。承認自体は承認の画面で行う)。まだ判断されていない最小の順位の段の該当者へ通知する(同じ段・同じ人には重複して作らない。冪等)。戻り値は作った通知の件数。担当者は引数、省略時は JWT の staff_id。errcode: OPR01 文書が無い / OPR03 承認の段が無い・すでに公開済み';
