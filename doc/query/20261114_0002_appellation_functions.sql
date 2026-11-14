-- 呼称(多言語の辞書)を持つマスタの登録・更新を、1回の呼び出し = 1トランザクションにまとめる DB 関数(案)。
-- 対象のスキーマ: tests。適用前の案であり、DB には入れていない(doc/query/README.md)。
--
-- 【後で入れ替える印】これを適用するまで、呼称を持つ機能(system の単位、shared_master の利害関係者、ほか)の
-- 取得元(GraphQL 版)は読み取り専用にしている(各機能の CLAUDE.md「取得元」。issue/202611.md の 2-1 の
-- 「呼称の DB 関数」)。適用したら、モデル(`kind: function` の `~PageCall`)を足し、取得元の `save` をこの関数の呼び出しに
-- 入れ替えて、`viewOnly` を外す。
--
-- 背景: 辞書・値・呼称・本体の複数の表へ登録するため、PostGraphile の自動 CRUD を順に呼ぶと、途中で失敗したときに辞書・呼称の
-- 孤児が残る(PostGraphile v4 は1つのドキュメントの複数の mutation を1トランザクションにしない)。
--
-- 値の渡し方: 言語コード → 値 の JSON オブジェクト。例 {"ja": "キログラム", "en": "kilogram"}。
-- jsonb の引数は、GraphQL の JSON で、PostGraphile v4 は JSON の文字列として受け取る(CLAUDE.md「操作の DB 関数」)。
-- 更新は、渡した言語の値だけを入れ替える(渡さない言語の値は残す)。名称(p_name)の ja は、新規のとき必須。
--
-- エラー(errcode): APL00 担当者・言語コードが無い / APL01 対象が無い / APL02 必須の値が無い / APL03 コードの重複
--
-- 注意: 履歴のトリガー(trg_02_history_*)は、INSERT 時に履歴の行を作る。そのため ON CONFLICT は使わず、
-- 先に UPDATE し、行が無ければ INSERT する(ON CONFLICT だと使われない ID の履歴が残り、外部キー違反になる)。

-- ---------------------------------------------------------------------------
-- 補助(公開しない。@omit)
-- ---------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION tests.ap_staff(p_staff_id uuid, OUT staff_id uuid, OUT staff_history_id uuid) AS $$
BEGIN
    staff_id := COALESCE(p_staff_id, NULLIF(current_setting('jwt.claims.staff_id', true), '')::uuid);
    SELECT h.history_id INTO staff_history_id FROM tests.history_info_staff AS h
    WHERE h.info_staff_id = staff_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
    IF staff_history_id IS NULL THEN
        RAISE EXCEPTION '担当者が見つかりません (%)', staff_id USING ERRCODE = 'APL00';
    END IF;
END
$$ LANGUAGE plpgsql STABLE;

COMMENT ON FUNCTION tests.ap_staff(uuid) IS '@omit';

-- 言語コードの ID(大文字小文字を区別しない)
CREATE OR REPLACE FUNCTION tests.ap_language(p_code text) RETURNS uuid AS $$
DECLARE
    v_id uuid;
BEGIN
    SELECT shared_language_code_id INTO v_id FROM tests.shared_language_code
    WHERE lower(code) = lower(p_code) AND remove = false;
    IF v_id IS NULL THEN
        RAISE EXCEPTION '言語コードがありません (%)', p_code USING ERRCODE = 'APL00';
    END IF;
    RETURN v_id;
END
$$ LANGUAGE plpgsql STABLE;

COMMENT ON FUNCTION tests.ap_language(text) IS '@omit';

-- 辞書(言語別の値)を作る・値を入れ替える。p_dictionary_id が NULL なら辞書も作る。辞書の ID を返す。
CREATE OR REPLACE FUNCTION tests.ap_dictionary_set(
    p_dictionary_id uuid, p_values jsonb, p_staff_id uuid, p_staff_history_id uuid
) RETURNS uuid AS $$
DECLARE
    v_id uuid := p_dictionary_id;
    v_item record;
    v_lang uuid;
BEGIN
    IF v_id IS NULL THEN
        INSERT INTO tests.shared_dictionary (update_user_id, update_user_history_id)
        VALUES (p_staff_id, p_staff_history_id) RETURNING shared_dictionary_id INTO v_id;
    END IF;
    FOR v_item IN SELECT key, value FROM jsonb_each_text(COALESCE(p_values, '{}'::jsonb)) LOOP
        v_lang := tests.ap_language(v_item.key);
        UPDATE tests.shared_dictionary_value
           SET dictionary_value = COALESCE(v_item.value, ''), remove = false,
               update_user_id = p_staff_id, update_user_history_id = p_staff_history_id
         WHERE shared_dictionary_id = v_id AND shared_language_code_id = v_lang;
        IF NOT FOUND THEN
            INSERT INTO tests.shared_dictionary_value
                (shared_language_code_id, shared_dictionary_id, dictionary_value, update_user_id, update_user_history_id)
            VALUES (v_lang, v_id, COALESCE(v_item.value, ''), p_staff_id, p_staff_history_id);
        END IF;
    END LOOP;
    RETURN v_id;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.ap_dictionary_set(uuid, jsonb, uuid, uuid) IS '@omit';

-- 文章(言語別の値。先頭の文と文字数も入れる)を作る・値を入れ替える。p_text_id が NULL なら文章も作る。文章の ID を返す。
CREATE OR REPLACE FUNCTION tests.ap_text_set(
    p_text_id uuid, p_values jsonb, p_staff_id uuid, p_staff_history_id uuid
) RETURNS uuid AS $$
DECLARE
    v_id uuid := p_text_id;
    v_item record;
    v_lang uuid;
BEGIN
    IF v_id IS NULL THEN
        INSERT INTO tests.shared_text (update_user_id, update_user_history_id)
        VALUES (p_staff_id, p_staff_history_id) RETURNING shared_text_id INTO v_id;
    END IF;
    FOR v_item IN SELECT key, value FROM jsonb_each_text(COALESCE(p_values, '{}'::jsonb)) LOOP
        v_lang := tests.ap_language(v_item.key);
        UPDATE tests.shared_text_value
           SET text_value = COALESCE(v_item.value, ''), lead_text = left(COALESCE(v_item.value, ''), 80),
               char_count = char_length(COALESCE(v_item.value, '')), remove = false,
               update_user_id = p_staff_id, update_user_history_id = p_staff_history_id
         WHERE shared_text_id = v_id AND shared_language_code_id = v_lang;
        IF NOT FOUND THEN
            INSERT INTO tests.shared_text_value
                (shared_language_code_id, shared_text_id, text_value, lead_text, char_count, update_user_id, update_user_history_id)
            VALUES (v_lang, v_id, COALESCE(v_item.value, ''), left(COALESCE(v_item.value, ''), 80),
                    char_length(COALESCE(v_item.value, '')), p_staff_id, p_staff_history_id);
        END IF;
    END LOOP;
    RETURN v_id;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.ap_text_set(uuid, jsonb, uuid, uuid) IS '@omit';

-- 呼称(名称・読み・略称の辞書)を作る・値を入れ替える。p_appellation_id が NULL なら新規(名称の ja が必須)。呼称の ID を返す。
-- 読み・略称は、値を渡したときだけ辞書を作る。
CREATE OR REPLACE FUNCTION tests.ap_appellation_set(
    p_appellation_id uuid, p_name jsonb, p_pronunciation jsonb, p_nickname jsonb,
    p_staff_id uuid, p_staff_history_id uuid
) RETURNS uuid AS $$
DECLARE
    v_id uuid := p_appellation_id;
    v_row tests.shared_appellations%ROWTYPE;
    v_name uuid;
    v_pron uuid;
    v_nick uuid;
BEGIN
    IF v_id IS NULL THEN
        IF COALESCE(NULLIF(p_name ->> 'ja', ''), '') = '' THEN
            RAISE EXCEPTION '名称(ja)は必須です' USING ERRCODE = 'APL02';
        END IF;
        v_name := tests.ap_dictionary_set(NULL, p_name, p_staff_id, p_staff_history_id);
        IF p_pronunciation IS NOT NULL THEN v_pron := tests.ap_dictionary_set(NULL, p_pronunciation, p_staff_id, p_staff_history_id); END IF;
        IF p_nickname IS NOT NULL THEN v_nick := tests.ap_dictionary_set(NULL, p_nickname, p_staff_id, p_staff_history_id); END IF;
        INSERT INTO tests.shared_appellations
            (shared_dictionary_name_id, shared_dictionary_pronunciation_id, shared_dictionary_nickname_id,
             update_user_id, update_user_history_id)
        VALUES (v_name, v_pron, v_nick, p_staff_id, p_staff_history_id)
        RETURNING shared_appellations_id INTO v_id;
        RETURN v_id;
    END IF;

    SELECT * INTO v_row FROM tests.shared_appellations WHERE shared_appellations_id = v_id;
    IF NOT FOUND THEN
        RAISE EXCEPTION '呼称が見つかりません (%)', v_id USING ERRCODE = 'APL01';
    END IF;
    v_name := tests.ap_dictionary_set(v_row.shared_dictionary_name_id, p_name, p_staff_id, p_staff_history_id);
    v_pron := v_row.shared_dictionary_pronunciation_id;
    v_nick := v_row.shared_dictionary_nickname_id;
    IF p_pronunciation IS NOT NULL THEN v_pron := tests.ap_dictionary_set(v_pron, p_pronunciation, p_staff_id, p_staff_history_id); END IF;
    IF p_nickname IS NOT NULL THEN v_nick := tests.ap_dictionary_set(v_nick, p_nickname, p_staff_id, p_staff_history_id); END IF;
    IF (v_pron, v_nick) IS DISTINCT FROM (v_row.shared_dictionary_pronunciation_id, v_row.shared_dictionary_nickname_id) THEN
        UPDATE tests.shared_appellations
           SET shared_dictionary_pronunciation_id = v_pron, shared_dictionary_nickname_id = v_nick,
               update_user_id = p_staff_id, update_user_history_id = p_staff_history_id
         WHERE shared_appellations_id = v_id;
    END IF;
    RETURN v_id;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.ap_appellation_set(uuid, jsonb, jsonb, jsonb, uuid, uuid) IS '@omit';

-- ---------------------------------------------------------------------------
-- 単位(shared_unit)の登録・更新。p_unit_id が NULL なら新規。戻り値: shared_unit_id
-- 備考(p_remarks)は渡した値に置き換える(NULL で消す)。名称・読み・略称・詳細は、渡した言語の値だけ入れ替える。
-- 削除は、自動 CRUD の更新(remove = true)で行う。
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.unit_save(
    p_unit_id uuid DEFAULT NULL,
    p_name jsonb DEFAULT NULL,
    p_pronunciation jsonb DEFAULT NULL,
    p_nickname jsonb DEFAULT NULL,
    p_detail jsonb DEFAULT NULL,
    p_remarks varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS uuid AS $$
DECLARE
    v_staff record;
    v_row tests.shared_unit%ROWTYPE;
    v_names uuid;
    v_details uuid;
    v_id uuid := p_unit_id;
BEGIN
    SELECT * INTO v_staff FROM tests.ap_staff(p_staff_id);
    IF v_id IS NULL THEN
        v_names := tests.ap_appellation_set(NULL, p_name, p_pronunciation, p_nickname, v_staff.staff_id, v_staff.staff_history_id);
        IF p_detail IS NOT NULL THEN v_details := tests.ap_text_set(NULL, p_detail, v_staff.staff_id, v_staff.staff_history_id); END IF;
        INSERT INTO tests.shared_unit (names, details, remarks, update_user_id, update_user_history_id)
        VALUES (v_names, v_details, p_remarks, v_staff.staff_id, v_staff.staff_history_id)
        RETURNING shared_unit_id INTO v_id;
        RETURN v_id;
    END IF;

    SELECT * INTO v_row FROM tests.shared_unit WHERE shared_unit_id = v_id AND remove = false;
    IF NOT FOUND THEN
        RAISE EXCEPTION '単位が見つかりません (%)', v_id USING ERRCODE = 'APL01';
    END IF;
    PERFORM tests.ap_appellation_set(v_row.names, p_name, p_pronunciation, p_nickname, v_staff.staff_id, v_staff.staff_history_id);
    v_details := v_row.details;
    IF p_detail IS NOT NULL THEN v_details := tests.ap_text_set(v_details, p_detail, v_staff.staff_id, v_staff.staff_history_id); END IF;
    UPDATE tests.shared_unit
       SET details = v_details, remarks = p_remarks,
           update_user_id = v_staff.staff_id, update_user_history_id = v_staff.staff_history_id
     WHERE shared_unit_id = v_id;
    RETURN v_id;
END
$$ LANGUAGE plpgsql VOLATILE;

-- ---------------------------------------------------------------------------
-- 利害関係者(mstr_stakeholder)の登録・更新。p_stakeholder_id が NULL なら新規。戻り値: mstr_stakeholder_id
-- コード(p_code)は新規のとき必須。削除していない行の中で重複させない(APL03)。役割の3つの真偽は、NULL を false として扱う。
-- 住所(info_address_id)は、この関数では扱わない(更新では今の値を残す)。窓口(担当者)は別の実体。
-- 削除は、自動 CRUD の更新(remove = true)で行う。
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.stakeholder_save(
    p_stakeholder_id uuid DEFAULT NULL,
    p_code varchar DEFAULT NULL,
    p_control_code varchar DEFAULT NULL,
    p_name jsonb DEFAULT NULL,
    p_pronunciation jsonb DEFAULT NULL,
    p_nickname jsonb DEFAULT NULL,
    p_is_customer boolean DEFAULT false,
    p_is_supplier boolean DEFAULT false,
    p_is_logistics boolean DEFAULT false,
    p_mail varchar DEFAULT NULL,
    p_shipping_kind_id uuid DEFAULT NULL,
    p_remarks varchar DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS uuid AS $$
DECLARE
    v_staff record;
    v_row tests.mstr_stakeholder%ROWTYPE;
    v_names uuid;
    v_id uuid := p_stakeholder_id;
BEGIN
    SELECT * INTO v_staff FROM tests.ap_staff(p_staff_id);
    IF COALESCE(p_code, '') = '' AND v_id IS NULL THEN
        RAISE EXCEPTION 'コードは必須です' USING ERRCODE = 'APL02';
    END IF;
    IF p_code IS NOT NULL AND EXISTS (
        SELECT 1 FROM tests.mstr_stakeholder
        WHERE code = p_code AND remove = false AND mstr_stakeholder_id IS DISTINCT FROM v_id
    ) THEN
        RAISE EXCEPTION 'コードが重複しています (%)', p_code USING ERRCODE = 'APL03';
    END IF;

    IF v_id IS NULL THEN
        v_names := tests.ap_appellation_set(NULL, p_name, p_pronunciation, p_nickname, v_staff.staff_id, v_staff.staff_history_id);
        INSERT INTO tests.mstr_stakeholder
            (is_customer, is_supplier, is_logistics, code, control_code, names, mail, mstr_shipping_kind_id, remarks,
             update_user_id, update_user_history_id)
        VALUES (COALESCE(p_is_customer, false), COALESCE(p_is_supplier, false), COALESCE(p_is_logistics, false),
                p_code, p_control_code, v_names, p_mail, p_shipping_kind_id, p_remarks,
                v_staff.staff_id, v_staff.staff_history_id)
        RETURNING mstr_stakeholder_id INTO v_id;
        RETURN v_id;
    END IF;

    SELECT * INTO v_row FROM tests.mstr_stakeholder WHERE mstr_stakeholder_id = v_id AND remove = false;
    IF NOT FOUND THEN
        RAISE EXCEPTION '利害関係者が見つかりません (%)', v_id USING ERRCODE = 'APL01';
    END IF;
    PERFORM tests.ap_appellation_set(v_row.names, p_name, p_pronunciation, p_nickname, v_staff.staff_id, v_staff.staff_history_id);
    UPDATE tests.mstr_stakeholder
       SET is_customer = COALESCE(p_is_customer, false), is_supplier = COALESCE(p_is_supplier, false),
           is_logistics = COALESCE(p_is_logistics, false), code = COALESCE(p_code, code), control_code = p_control_code,
           mail = p_mail, mstr_shipping_kind_id = p_shipping_kind_id, remarks = p_remarks,
           update_user_id = v_staff.staff_id, update_user_history_id = v_staff.staff_history_id
     WHERE mstr_stakeholder_id = v_id;
    RETURN v_id;
END
$$ LANGUAGE plpgsql VOLATILE;
