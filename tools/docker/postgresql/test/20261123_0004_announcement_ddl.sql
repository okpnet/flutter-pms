-- 20261123_0004 通知の target_symbol 列と関数の DDL(06_cteate_test.sql の追加分。PERO から出力される内容と同じ)。DB へ適用する前に、ROLLBACK 付きで検査するときに先に流す
ALTER TABLE tests.trans_announcement ADD COLUMN target_symbol varchar(16);

COMMENT ON COLUMN tests.trans_announcement.target_symbol IS '通知の対象(対象の表の symbol。外部キーではない。アプリは symbol のショートカットで画面へ進む)';

CREATE OR REPLACE FUNCTION tests.announcement_register(
    p_to_staff_ids uuid[],
    p_category varchar,
    p_titles jsonb,
    p_messages jsonb DEFAULT NULL,
    p_target_symbol varchar DEFAULT NULL,
    p_expiration_date timestamp DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_staff_history_id uuid DEFAULT NULL
) RETURNS integer AS $$
DECLARE
    v_staff record;
    v_label uuid;
    v_text uuid;
    v_to uuid;
    v_hist uuid;
    v_n integer := 0;
BEGIN
    SELECT * INTO v_staff FROM tests.apl_staff(p_staff_id, p_staff_history_id);
    IF NULLIF(btrim(p_category), '') IS NULL THEN
        RAISE EXCEPTION '通知区分がありません' USING ERRCODE = 'ANN02';
    END IF;
    IF p_titles IS NULL OR p_titles = '{}'::jsonb THEN
        RAISE EXCEPTION '通知の題名がありません' USING ERRCODE = 'ANN02';
    END IF;
    FOREACH v_to IN ARRAY COALESCE(p_to_staff_ids, ARRAY[]::uuid[]) LOOP
        -- 対象(target_symbol)があるとき、同じ宛先・同じ区分・同じ対象の通知は、1 件だけ(冪等)
        CONTINUE WHEN p_target_symbol IS NOT NULL AND EXISTS (
            SELECT 1 FROM tests.trans_announcement AS n
            WHERE n.to_staff_id = v_to AND n.category = p_category AND n.target_symbol = p_target_symbol AND n.remove IS FALSE
        );
        SELECT h.history_id INTO v_hist FROM tests.history_info_staff AS h
         WHERE h.info_staff_id = v_to ORDER BY h.revision DESC LIMIT 1;
        CONTINUE WHEN v_hist IS NULL; -- 履歴の無い担当者には作らない
        IF v_label IS NULL THEN
            -- 題名・本文は、宛先に共通の 1 組(言語別の値)。作る必要が出たときに作る(重複だけのときは作らない)
            v_label := (tests.trans_label_save(NULL, p_titles, v_staff.staff_id, v_staff.staff_history_id)).trans_label_id;
            IF p_messages IS NOT NULL AND p_messages <> '{}'::jsonb THEN
                v_text := (tests.trans_text_save(NULL, p_messages, v_staff.staff_id, v_staff.staff_history_id)).trans_text_id;
            END IF;
        END IF;
        INSERT INTO tests.trans_announcement (to_staff_history_id, to_staff_id, category, titles, messages, expiration_date, target_symbol, update_user_id, update_user_history_id)
        VALUES (v_hist, v_to, p_category, v_label, v_text, COALESCE(p_expiration_date, CURRENT_DATE + 30), p_target_symbol, v_staff.staff_id, v_staff.staff_history_id);
        v_n := v_n + 1;
    END LOOP;
    RETURN v_n;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.announcement_register(uuid[], varchar, jsonb, jsonb, varchar, timestamp, uuid, uuid) IS '通知を、宛先(担当者の配列)ごとに 1 件ずつ作る(1 トランザクション)。通知の文は、言語別の値(JSON。例 {"ja":"…","en":"…"})を直接登録する(題名 p_titles は必須、本文 p_messages は任意)。対象は汎用の p_target_symbol(対象の表の symbol。外部キーではない。アプリは symbol のショートカットで画面へ進む)。対象があるとき、同じ宛先・区分・対象の通知は 1 件だけ(冪等)。履歴の無い担当者には作らない。戻り値は作った件数。担当者は引数、省略時は JWT の staff_id。errcode: APL00 担当者・言語が無い / ANN02 区分・題名が無い';

CREATE OR REPLACE FUNCTION tests.announcement_mark_read(
    p_announcement_id uuid,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.trans_announcement AS $$
DECLARE
    v_me uuid := COALESCE(p_staff_id, NULLIF(current_setting('jwt.claims.staff_id', true), '')::uuid);
    v_row tests.trans_announcement;
BEGIN
    -- 自分宛ての通知だけを既読にする
    UPDATE tests.trans_announcement SET is_read = TRUE
     WHERE trans_announcement_id = p_announcement_id AND to_staff_id = v_me AND remove IS FALSE
    RETURNING * INTO v_row;
    IF v_row.trans_announcement_id IS NULL THEN
        RAISE EXCEPTION '通知が見つかりません (%)', p_announcement_id USING ERRCODE = 'ANN01';
    END IF;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.announcement_mark_read(uuid, uuid) IS '自分宛て(担当者は引数、省略時は JWT の staff_id)の通知を既読にする。他の人の通知・削除済みは ANN01。戻り値は更新後の通知';

CREATE OR REPLACE FUNCTION tests.audit_notify_due(
    p_days_before integer DEFAULT 3,
    p_staff_id uuid DEFAULT NULL,
    p_staff_history_id uuid DEFAULT NULL
) RETURNS integer AS $$
DECLARE
    r record;
    v_n integer := 0;
BEGIN
    -- 予定日が p_days_before 日以内(または過ぎた)で、未終了の監査実施詳細の監査員へ、通知(区分 audit。対象 = 監査実施詳細の symbol)を 1 件ずつ作る
    FOR r IN
        SELECT a.staff_id, a.symbol, a.scheduled_at, a.is_overdue
        FROM tests.v_audit_assignment AS a
        WHERE NOT a.is_done AND a.scheduled_at IS NOT NULL
          AND a.scheduled_at < now() + make_interval(days => p_days_before)
    LOOP
        v_n := v_n + tests.announcement_register(
            ARRAY[r.staff_id], 'audit',
            jsonb_build_object(
                'ja', CASE WHEN r.is_overdue THEN '監査の予定日を過ぎています' ELSE '監査の予定があります' END,
                'en', CASE WHEN r.is_overdue THEN 'An audit is overdue' ELSE 'An audit is scheduled' END),
            jsonb_build_object(
                'ja', '予定日時: ' || to_char(r.scheduled_at, 'YYYY-MM-DD HH24:MI'),
                'en', 'Scheduled at: ' || to_char(r.scheduled_at, 'YYYY-MM-DD HH24:MI')),
            r.symbol, NULL, p_staff_id, p_staff_history_id);
    END LOOP;
    RETURN v_n;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.audit_notify_due(integer, uuid, uuid) IS '監査の予定の通知を作る(冪等。アプリのログイン時、または外部のスケジューラから呼ぶ)。予定日時が p_days_before 日以内(または過ぎた)で未終了の監査実施詳細の監査員へ、区分 audit の通知を、監査実施詳細ごとに 1 人 1 件だけ作る(対象 target_symbol = 監査実施詳細の symbol)。戻り値は作った件数。いまの audit_notice(通知の行を作らない)は、通知の行が使えるようになるまで残す';
