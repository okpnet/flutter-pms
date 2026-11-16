-- 共通の部品(呼称・文章・ラベル)の保存関数(案。1 つのファイル)。対象のスキーマ: tests。
-- 06_cteate_test.sql(PERO 出力)で試験した結果(shared_appellation_save が毎回失敗する、ほか)を反映した版。
--
-- 方針(issue/20261115_0001.md・issue/20261116_0001.md):
--   1. 共通の部品(呼称・文章・ラベル)だけ関数にする(4 本)。マスタ・Info・trans の本体は、ミューテーション(自動 CRUD)で扱う。
--   2. 新規も更新も同じ関数を通す。言語ごとの追加・更新は、保存の時点で行を引いて DB が判定する。
--   3. 補助は、既存の op_staff・visiter_staff と同じ形で、apl_staff・apl_language・apl_value(いずれも @omit)にまとめる。
--
-- 規則:
--   言語の値は、言語コード → 値 の JSON(例 {"en": "kilogram"})。値は文字列か null。それ以外(数値・オブジェクトなど)は APL03。値の全体(p_name・p_values など)は、オブジェクトか SQL の NULL のみ(それ以外は APL03)。
--   渡した言語の値だけ入れ替える(渡さない言語は残す)。
--   値を消す: 空文字(または JSON の null)を渡すと、値が空文字になる。論理削除(remove = true)にはしない(行は残す)。
--     読み込み側は、行なしと空文字を同じ「未入力」として代替する(localized_values パッケージ)。
--   名称は、ja の必須ではなく、「いずれかの言語に空でない値が 1 つ以上ある」(新規・更新とも。APL02)。
--   言語コード: 完全一致を優先し、無ければ大文字小文字を区別せずに探す(同じ綴りの行が複数あっても、結果は決まる)。
--     DB 側の依頼: shared_language_code の一意制約を UNIQUE (lower(code)) にそろえる(issue/20261116_0001.md)。
--   先頭の文・文字数(lead_text・char_count)は、トリガー(trg_00_text_summary_*)だけが計算する。この関数では書かない。
--   更新者: p_staff_id・p_staff_history_id(クライアントの CurrentUserHolder が渡す)。省略時は、JWT の staff_id と最新の履歴を引く。
--   行の有無は、UPDATE の FOUND では判定しない(同じ値の更新を履歴のトリガーが握りつぶして 0 行になる)。先に行を引く。
--   同時実行: 親の行(辞書・文章・ラベル)を FOR UPDATE でロックして、同じ言語の同時保存を順番に処理する(一意制約違反 23505 にしない)。
--   更新の対象が論理削除(remove = true)なら APL01(見つからない)。
--   戻り値は、保存した行(表の型)。返った ID を、本体の create・update の列(names・details など)に渡す。
--   2 回の呼び出しは別のトランザクション。本体の登録が失敗すると、孤児(参照されない呼称など)が残る(許容。あとから整理する)。
--   エラー(errcode): APL00 担当者・言語コードが無い / APL01 対象が無い / APL02 名称に空でない値が無い / APL03 言語の値・引数の型が不正。

-- ---------------------------------------------------------------------------
-- 補助(公開しない。@omit。署名を COMMENT に書く)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.apl_staff(
    p_staff_id uuid, p_staff_history_id uuid, OUT staff_id uuid, OUT staff_history_id uuid
) AS $$
BEGIN
    staff_id := COALESCE(p_staff_id, NULLIF(current_setting('jwt.claims.staff_id', true), '')::uuid);
    staff_history_id := p_staff_history_id;
    IF staff_history_id IS NULL THEN
        SELECT h.history_id INTO staff_history_id FROM tests.history_info_staff AS h
        WHERE h.info_staff_id = staff_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
    END IF;
    IF staff_id IS NULL OR staff_history_id IS NULL THEN
        RAISE EXCEPTION '担当者が見つかりません (%)', staff_id USING ERRCODE = 'APL00';
    END IF;
END
$$ LANGUAGE plpgsql STABLE;

COMMENT ON FUNCTION tests.apl_staff(uuid, uuid) IS '@omit';

-- 言語コードの ID。完全一致を優先し、無ければ大文字小文字を区別しない(複数あっても決まった行を返す)
CREATE OR REPLACE FUNCTION tests.apl_language(p_code text) RETURNS uuid AS $$
DECLARE
    v_id uuid;
BEGIN
    SELECT l.shared_language_code_id INTO v_id FROM tests.shared_language_code AS l
    WHERE l.remove = false AND lower(l.code) = lower(p_code)
    ORDER BY (l.code = p_code) DESC, l.shared_language_code_id LIMIT 1;
    IF v_id IS NULL THEN
        RAISE EXCEPTION '言語コードがありません (%)', p_code USING ERRCODE = 'APL00';
    END IF;
    RETURN v_id;
END
$$ LANGUAGE plpgsql STABLE;

COMMENT ON FUNCTION tests.apl_language(text) IS '@omit';

-- 言語の値(JSON)を文字列にする。null は空文字。文字列以外は APL03
CREATE OR REPLACE FUNCTION tests.apl_value(p_value jsonb) RETURNS text AS $$
BEGIN
    IF p_value IS NULL OR jsonb_typeof(p_value) = 'null' THEN
        RETURN '';
    ELSIF jsonb_typeof(p_value) = 'string' THEN
        RETURN p_value #>> '{}';
    END IF;
    RAISE EXCEPTION '言語の値は文字列にしてください (%)', p_value USING ERRCODE = 'APL03';
END
$$ LANGUAGE plpgsql IMMUTABLE;

COMMENT ON FUNCTION tests.apl_value(jsonb) IS '@omit';

-- 言語の値の全体は、オブジェクトか SQL の NULL のみ。それ以外(配列・文字列など)は APL03
CREATE OR REPLACE FUNCTION tests.apl_check_object(p_values jsonb) RETURNS void AS $$
BEGIN
    IF p_values IS NOT NULL AND jsonb_typeof(p_values) <> 'object' THEN
        RAISE EXCEPTION '言語の値は、言語コード → 値 のオブジェクトにしてください (%)', p_values USING ERRCODE = 'APL03';
    END IF;
END
$$ LANGUAGE plpgsql IMMUTABLE;

COMMENT ON FUNCTION tests.apl_check_object(jsonb) IS '@omit';

-- ---------------------------------------------------------------------------
-- 呼称(shared_appellations。名称・読み・略称の辞書)
-- p_appellation_id が NULL なら新規。読み・略称は、値を渡したときだけ辞書を作る。
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.shared_appellation_save(
    p_appellation_id uuid DEFAULT NULL,
    p_name jsonb DEFAULT NULL,
    p_pronunciation jsonb DEFAULT NULL,
    p_nickname jsonb DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_staff_history_id uuid DEFAULT NULL
) RETURNS tests.shared_appellations AS $$
DECLARE
    v_staff record;
    v_id uuid := p_appellation_id;
    v_row tests.shared_appellations%ROWTYPE;
    v_ids uuid[] := ARRAY[NULL, NULL, NULL]::uuid[];  -- 名称・読み・略称の辞書
    v_vals jsonb[] := ARRAY[p_name, p_pronunciation, p_nickname];
    v_new_id uuid;
    v_changed boolean := false;
    v_item record;
    v_lang uuid;
    v_value_id uuid;
    i int;
BEGIN
    SELECT * INTO v_staff FROM tests.apl_staff(p_staff_id, p_staff_history_id);
    PERFORM tests.apl_check_object(p_name);
    PERFORM tests.apl_check_object(p_pronunciation);
    PERFORM tests.apl_check_object(p_nickname);

    IF v_id IS NOT NULL THEN
        SELECT * INTO v_row FROM tests.shared_appellations WHERE shared_appellations_id = v_id FOR UPDATE;
        IF v_row.shared_appellations_id IS NULL OR v_row.remove THEN
            RAISE EXCEPTION '呼称が見つかりません (%)', v_id USING ERRCODE = 'APL01';
        END IF;
        v_ids := ARRAY[v_row.shared_dictionary_name_id, v_row.shared_dictionary_pronunciation_id, v_row.shared_dictionary_nickname_id];
    END IF;

    FOR i IN 1..3 LOOP
        -- 名称は、新規なら必ず辞書を作る。読み・略称は、値を渡したときだけ
        IF v_ids[i] IS NULL AND (v_vals[i] IS NOT NULL OR (i = 1 AND v_id IS NULL)) THEN
            INSERT INTO tests.shared_dictionary (update_user_id, update_user_history_id)
            VALUES (v_staff.staff_id, v_staff.staff_history_id) RETURNING shared_dictionary_id INTO v_new_id;
            v_ids[i] := v_new_id;
            v_changed := true;
        ELSIF v_ids[i] IS NOT NULL THEN
            PERFORM 1 FROM tests.shared_dictionary WHERE shared_dictionary_id = v_ids[i] FOR UPDATE;
        END IF;
        FOR v_item IN SELECT key, value FROM jsonb_each(COALESCE(v_vals[i], '{}'::jsonb)) LOOP
            v_lang := tests.apl_language(v_item.key);
            SELECT shared_dictionary_value_id INTO v_value_id FROM tests.shared_dictionary_value
             WHERE shared_dictionary_id = v_ids[i] AND shared_language_code_id = v_lang;
            IF v_value_id IS NULL THEN
                INSERT INTO tests.shared_dictionary_value
                    (shared_language_code_id, shared_dictionary_id, dictionary_value, update_user_id, update_user_history_id)
                VALUES (v_lang, v_ids[i], tests.apl_value(v_item.value), v_staff.staff_id, v_staff.staff_history_id);
            ELSE
                UPDATE tests.shared_dictionary_value
                   SET dictionary_value = tests.apl_value(v_item.value), remove = false,
                       update_user_id = v_staff.staff_id, update_user_history_id = v_staff.staff_history_id
                 WHERE shared_dictionary_value_id = v_value_id;
            END IF;
        END LOOP;
    END LOOP;

    -- 名称は、いずれかの言語に空でない値が必要(ja の必須ではない)。違反は、ここまでの変更ごと取り消される
    IF NOT EXISTS (SELECT 1 FROM tests.shared_dictionary_value
                    WHERE shared_dictionary_id = v_ids[1] AND remove = false AND dictionary_value <> '') THEN
        RAISE EXCEPTION '名称には、いずれかの言語に値が必要です' USING ERRCODE = 'APL02';
    END IF;

    IF v_id IS NULL THEN
        INSERT INTO tests.shared_appellations
            (shared_dictionary_name_id, shared_dictionary_pronunciation_id, shared_dictionary_nickname_id,
             update_user_id, update_user_history_id)
        VALUES (v_ids[1], v_ids[2], v_ids[3], v_staff.staff_id, v_staff.staff_history_id)
        RETURNING shared_appellations_id INTO v_id;
    ELSIF v_changed THEN
        UPDATE tests.shared_appellations
           SET shared_dictionary_pronunciation_id = v_ids[2], shared_dictionary_nickname_id = v_ids[3],
               update_user_id = v_staff.staff_id, update_user_history_id = v_staff.staff_history_id
         WHERE shared_appellations_id = v_id;
    END IF;
    SELECT * INTO v_row FROM tests.shared_appellations WHERE shared_appellations_id = v_id;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.shared_appellation_save(uuid, jsonb, jsonb, jsonb, uuid, uuid) IS '呼称(名称・読み・略称)を、言語別の値(JSON)で作る・渡した言語の値だけ入れ替える。返った ID を、本体の names 列に渡す';

-- ---------------------------------------------------------------------------
-- 文章(shared_text。詳細など)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.shared_text_save(
    p_text_id uuid DEFAULT NULL,
    p_values jsonb DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_staff_history_id uuid DEFAULT NULL
) RETURNS tests.shared_text AS $$
DECLARE
    v_staff record;
    v_id uuid := p_text_id;
    v_item record;
    v_lang uuid;
    v_value_id uuid;
    v_row tests.shared_text%ROWTYPE;
BEGIN
    SELECT * INTO v_staff FROM tests.apl_staff(p_staff_id, p_staff_history_id);
    PERFORM tests.apl_check_object(p_values);
    IF v_id IS NULL THEN
        INSERT INTO tests.shared_text (update_user_id, update_user_history_id)
        VALUES (v_staff.staff_id, v_staff.staff_history_id) RETURNING shared_text_id INTO v_id;
    ELSE
        SELECT * INTO v_row FROM tests.shared_text WHERE shared_text_id = v_id FOR UPDATE;
        IF v_row.shared_text_id IS NULL OR v_row.remove THEN
            RAISE EXCEPTION '文章が見つかりません (%)', v_id USING ERRCODE = 'APL01';
        END IF;
    END IF;
    FOR v_item IN SELECT key, value FROM jsonb_each(COALESCE(p_values, '{}'::jsonb)) LOOP
        v_lang := tests.apl_language(v_item.key);
        SELECT shared_text_value_id INTO v_value_id FROM tests.shared_text_value
         WHERE shared_text_id = v_id AND shared_language_code_id = v_lang;
        IF v_value_id IS NULL THEN
            INSERT INTO tests.shared_text_value
                (shared_language_code_id, shared_text_id, text_value, update_user_id, update_user_history_id)
            VALUES (v_lang, v_id, tests.apl_value(v_item.value), v_staff.staff_id, v_staff.staff_history_id);
        ELSE
            UPDATE tests.shared_text_value
               SET text_value = tests.apl_value(v_item.value), remove = false,
                   update_user_id = v_staff.staff_id, update_user_history_id = v_staff.staff_history_id
             WHERE shared_text_value_id = v_value_id;
        END IF;
    END LOOP;
    SELECT * INTO v_row FROM tests.shared_text WHERE shared_text_id = v_id;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.shared_text_save(uuid, jsonb, uuid, uuid) IS '文章(詳細など)を、言語別の値(JSON)で作る・渡した言語の値だけ入れ替える。返った ID を、本体の details 列に渡す';

-- ---------------------------------------------------------------------------
-- trans のラベル(trans_label。題名・名称。値は trans_label_value)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.trans_label_save(
    p_label_id uuid DEFAULT NULL,
    p_values jsonb DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_staff_history_id uuid DEFAULT NULL
) RETURNS tests.trans_label AS $$
DECLARE
    v_staff record;
    v_id uuid := p_label_id;
    v_item record;
    v_lang uuid;
    v_value_id uuid;
    v_row tests.trans_label%ROWTYPE;
BEGIN
    SELECT * INTO v_staff FROM tests.apl_staff(p_staff_id, p_staff_history_id);
    PERFORM tests.apl_check_object(p_values);
    IF v_id IS NULL THEN
        INSERT INTO tests.trans_label (update_user_id, update_user_history_id)
        VALUES (v_staff.staff_id, v_staff.staff_history_id) RETURNING trans_label_id INTO v_id;
    ELSE
        SELECT * INTO v_row FROM tests.trans_label WHERE trans_label_id = v_id FOR UPDATE;
        IF v_row.trans_label_id IS NULL OR v_row.remove THEN
            RAISE EXCEPTION 'ラベルが見つかりません (%)', v_id USING ERRCODE = 'APL01';
        END IF;
    END IF;
    FOR v_item IN SELECT key, value FROM jsonb_each(COALESCE(p_values, '{}'::jsonb)) LOOP
        v_lang := tests.apl_language(v_item.key);
        SELECT trans_label_value_id INTO v_value_id FROM tests.trans_label_value
         WHERE trans_label_id = v_id AND shared_language_code_id = v_lang;
        IF v_value_id IS NULL THEN
            INSERT INTO tests.trans_label_value (trans_label_id, shared_language_code_id, label_value, update_user_id, update_user_history_id)
            VALUES (v_id, v_lang, tests.apl_value(v_item.value), v_staff.staff_id, v_staff.staff_history_id);
        ELSE
            UPDATE tests.trans_label_value
               SET label_value = tests.apl_value(v_item.value), remove = false,
                   update_user_id = v_staff.staff_id, update_user_history_id = v_staff.staff_history_id
             WHERE trans_label_value_id = v_value_id;
        END IF;
    END LOOP;
    SELECT * INTO v_row FROM tests.trans_label WHERE trans_label_id = v_id;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.trans_label_save(uuid, jsonb, uuid, uuid) IS 'trans のラベル(題名・名称)を、言語別の値(JSON)で作る・渡した言語の値だけ入れ替える。返った ID を、本体の題名・名称の列に渡す';

-- ---------------------------------------------------------------------------
-- trans の文章(trans_text。詳細など。値は trans_text_value)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.trans_text_save(
    p_text_id uuid DEFAULT NULL,
    p_values jsonb DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL,
    p_staff_history_id uuid DEFAULT NULL
) RETURNS tests.trans_text AS $$
DECLARE
    v_staff record;
    v_id uuid := p_text_id;
    v_item record;
    v_lang uuid;
    v_value_id uuid;
    v_row tests.trans_text%ROWTYPE;
BEGIN
    SELECT * INTO v_staff FROM tests.apl_staff(p_staff_id, p_staff_history_id);
    PERFORM tests.apl_check_object(p_values);
    IF v_id IS NULL THEN
        INSERT INTO tests.trans_text (update_user_id, update_user_history_id)
        VALUES (v_staff.staff_id, v_staff.staff_history_id) RETURNING trans_text_id INTO v_id;
    ELSE
        SELECT * INTO v_row FROM tests.trans_text WHERE trans_text_id = v_id FOR UPDATE;
        IF v_row.trans_text_id IS NULL OR v_row.remove THEN
            RAISE EXCEPTION '文章が見つかりません (%)', v_id USING ERRCODE = 'APL01';
        END IF;
    END IF;
    FOR v_item IN SELECT key, value FROM jsonb_each(COALESCE(p_values, '{}'::jsonb)) LOOP
        v_lang := tests.apl_language(v_item.key);
        SELECT trans_text_value_id INTO v_value_id FROM tests.trans_text_value
         WHERE trans_text_id = v_id AND shared_language_code_id = v_lang;
        IF v_value_id IS NULL THEN
            INSERT INTO tests.trans_text_value
                (trans_text_id, shared_language_code_id, text_value, update_user_id, update_user_history_id)
            VALUES (v_id, v_lang, tests.apl_value(v_item.value), v_staff.staff_id, v_staff.staff_history_id);
        ELSE
            UPDATE tests.trans_text_value
               SET text_value = tests.apl_value(v_item.value), remove = false,
                   update_user_id = v_staff.staff_id, update_user_history_id = v_staff.staff_history_id
             WHERE trans_text_value_id = v_value_id;
        END IF;
    END LOOP;
    SELECT * INTO v_row FROM tests.trans_text WHERE trans_text_id = v_id;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.trans_text_save(uuid, jsonb, uuid, uuid) IS 'trans の文章(詳細など)を、言語別の値(JSON)で作る・渡した言語の値だけ入れ替える。返った ID を、本体の details 系の列に渡す';

-- ---------------------------------------------------------------------------
-- 外す(移行のあと。適用済みの DB だけ。マスタごとの保存関数と、旧の補助 ap_*。順に実行する。実行は、取得元の入れ替えが済んでから)
-- ---------------------------------------------------------------------------
-- DROP FUNCTION IF EXISTS tests.unit_save(uuid, jsonb, jsonb, jsonb, jsonb, varchar, uuid);
-- DROP FUNCTION IF EXISTS tests.stakeholder_save(uuid, varchar, varchar, jsonb, jsonb, jsonb, boolean, boolean, boolean, varchar, uuid, varchar, uuid, boolean);
-- DROP FUNCTION IF EXISTS tests.ap_appellation_set(uuid, jsonb, jsonb, jsonb, uuid, uuid);
-- DROP FUNCTION IF EXISTS tests.ap_text_set(uuid, jsonb, uuid, uuid);
-- DROP FUNCTION IF EXISTS tests.ap_dictionary_set(uuid, jsonb, uuid, uuid);
-- DROP FUNCTION IF EXISTS tests.ap_language(text);
-- DROP FUNCTION IF EXISTS tests.ap_staff(uuid);
