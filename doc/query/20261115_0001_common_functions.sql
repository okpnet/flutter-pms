-- 共通の部品(辞書・呼称・文章・ラベル)の保存関数(案)。対象のスキーマ: tests。DB には入れていない(doc/query/README.md)。
--
-- 方針(issue/20261115_0001.md):
--   1. 共通のもの(呼称・文章・ラベルなど、複数の表にまたがる部品)は、関数にする(このファイル)。
--   2. マスタ・Info・trans は、極力ミューテーション(PostGraphile の自動 CRUD の create・update)で行う。マスタごとの保存関数は作らない
--      (マスタ・Info は同時に変更する可能性が低く、影響が限定的で、関数が増えると DB の保守性が下がるため)。
--   3. 複数の表にまたがり影響が大きいもの(MRP・棚移動・キャンセル・停止・支給・返品・精算など、trans で同時実行と金額に関わるもの)は、関数にする
--      (doc/query/20261114_0001_operation_functions.sql など)。
--
-- 使い方(クライアント。マスタ・Info・trans の呼称・文章・ラベルを持つ列):
--   新規: shared_appellation_save(...) で呼称を作り、返った shared_appellations_id を、本体の create の names 列に渡す。
--   更新: 本体の更新(update の patch)は、渡した列だけが変わる(渡さない列は今のまま、null を渡すと消える)。呼称の値を変えるときは、
--         shared_appellation_save(p_appellation_id => 本体の names, ...) で、渡した言語の値だけ入れ替える。
--   2 回の呼び出しは別のトランザクション。本体の登録が失敗すると、呼称が孤児として残る(マスタ・Info は影響が限定的なため許容する。
--   孤児は、どの本体からも参照されない呼称として、あとから一括で整理できる)。
--
-- 前提: 20261114_0003_appellation_functions_fix.sql(補助 ap_staff・ap_language・ap_dictionary_set・ap_text_set・ap_appellation_set。@omit)を適用済みであること。
-- 規則・言語の値の渡し方・エラー(APL00 担当者・言語 / APL01 対象が無い / APL02 必須・空にできない)は、そちらのヘッダーと同じ。
--   言語の値は、言語コード → 値 の JSON(例 {"ja": "…"})。渡した言語の値だけ入れ替える。空文字(または JSON の null)で値が空になる。
--   行の有無は、UPDATE の FOUND では判定しない(同じ値の更新が 0 行になる)。先に行を引く。
--   担当者は p_staff_id、省略時は JWT の staff_id。戻り値は、保存した行(表の型)。

-- ---------------------------------------------------------------------------
-- 呼称(shared_appellations。名称・読み・略称の辞書)
-- p_appellation_id が NULL なら新規(名称の ja が必須)。読み・略称は、値を渡したときだけ辞書を作る。
-- 更新では、名称の ja を空にできない(APL02)。
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.shared_appellation_save(
    p_appellation_id uuid DEFAULT NULL,
    p_name jsonb DEFAULT NULL,
    p_pronunciation jsonb DEFAULT NULL,
    p_nickname jsonb DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.shared_appellations AS $$
DECLARE
    v_staff record;
    v_id uuid;
    v_row tests.shared_appellations%ROWTYPE;
BEGIN
    SELECT * INTO v_staff FROM tests.ap_staff(p_staff_id);
    v_id := tests.ap_appellation_set(p_appellation_id, p_name, p_pronunciation, p_nickname, v_staff.staff_id, v_staff.staff_history_id);
    SELECT * INTO v_row FROM tests.shared_appellations WHERE shared_appellations_id = v_id;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.shared_appellation_save(uuid, jsonb, jsonb, jsonb, uuid) IS '呼称(名称・読み・略称)を、言語別の値(JSON)で作る・値を入れ替える。返った ID を、本体の names 列に渡す';

-- ---------------------------------------------------------------------------
-- 文章(shared_text。詳細など。値は先頭の文と文字数も持つ)
-- p_text_id が NULL なら新規。渡した言語の値だけ入れ替える。
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.shared_text_save(
    p_text_id uuid DEFAULT NULL,
    p_values jsonb DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.shared_text AS $$
DECLARE
    v_staff record;
    v_id uuid;
    v_row tests.shared_text%ROWTYPE;
BEGIN
    SELECT * INTO v_staff FROM tests.ap_staff(p_staff_id);
    IF p_text_id IS NOT NULL AND NOT EXISTS (SELECT 1 FROM tests.shared_text WHERE shared_text_id = p_text_id) THEN
        RAISE EXCEPTION '文章が見つかりません (%)', p_text_id USING ERRCODE = 'APL01';
    END IF;
    v_id := tests.ap_text_set(p_text_id, p_values, v_staff.staff_id, v_staff.staff_history_id);
    SELECT * INTO v_row FROM tests.shared_text WHERE shared_text_id = v_id;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.shared_text_save(uuid, jsonb, uuid) IS '文章(詳細など)を、言語別の値(JSON)で作る・値を入れ替える。返った ID を、本体の details 列に渡す';

-- ---------------------------------------------------------------------------
-- trans のラベル(trans_label。題名・名称。値は trans_label_value)
-- p_label_id が NULL なら新規。渡した言語の値だけ入れ替える。
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.trans_label_save(
    p_label_id uuid DEFAULT NULL,
    p_values jsonb DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.trans_label AS $$
DECLARE
    v_staff record;
    v_id uuid := p_label_id;
    v_item record;
    v_lang uuid;
    v_value_id uuid;
    v_row tests.trans_label%ROWTYPE;
BEGIN
    SELECT * INTO v_staff FROM tests.ap_staff(p_staff_id);
    IF v_id IS NULL THEN
        INSERT INTO tests.trans_label (update_user_id, update_user_history_id)
        VALUES (v_staff.staff_id, v_staff.staff_history_id) RETURNING trans_label_id INTO v_id;
    ELSIF NOT EXISTS (SELECT 1 FROM tests.trans_label WHERE trans_label_id = v_id) THEN
        RAISE EXCEPTION 'ラベルが見つかりません (%)', v_id USING ERRCODE = 'APL01';
    END IF;
    FOR v_item IN SELECT key, value FROM jsonb_each_text(COALESCE(p_values, '{}'::jsonb)) LOOP
        v_lang := tests.ap_language(v_item.key);
        SELECT trans_label_value_id INTO v_value_id FROM tests.trans_label_value
         WHERE trans_label_id = v_id AND shared_language_code_id = v_lang;
        IF v_value_id IS NULL THEN
            INSERT INTO tests.trans_label_value (trans_label_id, shared_language_code_id, label_value, update_user_id, update_user_history_id)
            VALUES (v_id, v_lang, COALESCE(v_item.value, ''), v_staff.staff_id, v_staff.staff_history_id);
        ELSE
            UPDATE tests.trans_label_value
               SET label_value = COALESCE(v_item.value, ''), remove = false,
                   update_user_id = v_staff.staff_id, update_user_history_id = v_staff.staff_history_id
             WHERE trans_label_value_id = v_value_id;
        END IF;
    END LOOP;
    SELECT * INTO v_row FROM tests.trans_label WHERE trans_label_id = v_id;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.trans_label_save(uuid, jsonb, uuid) IS 'trans のラベル(題名・名称)を、言語別の値(JSON)で作る・値を入れ替える。返った ID を、本体の labels 系の列に渡す';

-- ---------------------------------------------------------------------------
-- trans の文章(trans_text。詳細など。値は trans_text_value。先頭の文と文字数も持つ)
-- p_text_id が NULL なら新規。渡した言語の値だけ入れ替える。
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.trans_text_save(
    p_text_id uuid DEFAULT NULL,
    p_values jsonb DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS tests.trans_text AS $$
DECLARE
    v_staff record;
    v_id uuid := p_text_id;
    v_item record;
    v_lang uuid;
    v_value_id uuid;
    v_row tests.trans_text%ROWTYPE;
BEGIN
    SELECT * INTO v_staff FROM tests.ap_staff(p_staff_id);
    IF v_id IS NULL THEN
        INSERT INTO tests.trans_text (update_user_id, update_user_history_id)
        VALUES (v_staff.staff_id, v_staff.staff_history_id) RETURNING trans_text_id INTO v_id;
    ELSIF NOT EXISTS (SELECT 1 FROM tests.trans_text WHERE trans_text_id = v_id) THEN
        RAISE EXCEPTION '文章が見つかりません (%)', v_id USING ERRCODE = 'APL01';
    END IF;
    FOR v_item IN SELECT key, value FROM jsonb_each_text(COALESCE(p_values, '{}'::jsonb)) LOOP
        v_lang := tests.ap_language(v_item.key);
        SELECT trans_text_value_id INTO v_value_id FROM tests.trans_text_value
         WHERE trans_text_id = v_id AND shared_language_code_id = v_lang;
        IF v_value_id IS NULL THEN
            INSERT INTO tests.trans_text_value
                (trans_text_id, shared_language_code_id, text_value, lead_text, char_count, update_user_id, update_user_history_id)
            VALUES (v_id, v_lang, COALESCE(v_item.value, ''), left(COALESCE(v_item.value, ''), 80), char_length(COALESCE(v_item.value, '')),
                    v_staff.staff_id, v_staff.staff_history_id);
        ELSE
            UPDATE tests.trans_text_value
               SET text_value = COALESCE(v_item.value, ''), lead_text = left(COALESCE(v_item.value, ''), 80),
                   char_count = char_length(COALESCE(v_item.value, '')), remove = false,
                   update_user_id = v_staff.staff_id, update_user_history_id = v_staff.staff_history_id
             WHERE trans_text_value_id = v_value_id;
        END IF;
    END LOOP;
    SELECT * INTO v_row FROM tests.trans_text WHERE trans_text_id = v_id;
    RETURN v_row;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.trans_text_save(uuid, jsonb, uuid) IS 'trans の文章(詳細など)を、言語別の値(JSON)で作る・値を入れ替える。返った ID を、本体の details 系の列に渡す';
