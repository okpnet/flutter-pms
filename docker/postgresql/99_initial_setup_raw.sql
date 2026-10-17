-- =====================================================================
-- 07_initial_setup_raw.sql
-- 初期データ登録（生のクエリ版）。07_initial_setup.sql と同じ内容を、
-- パラメーターではなく値を直接書く形にしたもの。psql 等でそのまま実行できる。
--
-- ■ 使い方
--   ・値は先頭の prm（1行だけのCTE）にまとめてある。ここだけ書き換えて実行する。
--   ・任意項目は NULL にすると、その行は作られない（07_initial_setup.sql と同じ）。
--
-- ■ 初回以外でも実行できるようにした点
--   ・言語コード：同じ code が登録済みなら追加せず、既存の行を使う。
--   ・会社／App／担当者：同じ名前の App（info_app.name）が登録済みなら、
--     言語以外は何も登録しない（result = 'スキップ'）。二重登録にならない。
--   ・App名を変えて実行すると、既存の言語を使って会社・App・Administrator・
--     アクセスパス（ダミー5件）を新しく登録する。
--   ・既存の言語がある場合、日本語を標準（is_default）にする設定は既存の行のまま。
-- =====================================================================

WITH
prm AS (
    SELECT
        'ja'::varchar                                AS lang_ja_code,
        '日本語'::varchar                               AS lang_ja_label,
        'en'::varchar                                AS lang_en_code,
        'English'::varchar                           AS lang_en_label,
        '株式会社サンプル'::varchar                          AS company_name_ja,
        'Sample Co., Ltd.'::varchar                  AS company_name_en,
        'カブシキガイシャサンプル'::varchar                      AS company_kana_ja,
        'サンプル'::varchar                              AS company_nickname_ja,
        'Sample'::varchar                            AS company_nickname_en,
        'https://example.com'::varchar               AS company_web_page,
        '山田 太郎'::varchar                             AS ceo_name_ja,
        'Taro Yamada'::varchar                       AS ceo_name_en,
        'ヤマダ タロウ'::varchar                           AS ceo_kana_ja,
        'JP'::varchar                                AS address_country,
        '100-0001'::varchar                          AS address_zip_code,
        '東京都千代田区'::varchar                           AS address1_ja,
        'Chiyoda-ku, Tokyo'::varchar                 AS address1_en,
        '千代田1-1'::varchar                            AS address2_ja,
        '1-1 Chiyoda'::varchar                       AS address2_en,
        'サンプルビル5F'::varchar                          AS building_ja,
        'Sample Bldg. 5F'::varchar                   AS building_en,
        '03-0000-0000'::varchar                      AS address_phone,
        '03-0000-0001'::varchar                      AS address_fax_number,
        'PMS'::varchar                               AS app_name,
        '2026-11-01 00:00'::timestamp                AS app_plan_date,
        '2026-11-01 00:00'::timestamp                AS app_start_date,
        '管理者'::varchar                               AS staff_name_ja,
        'Administrator'::varchar                     AS staff_name_en,
        'カンリシャ'::varchar                             AS staff_kana_ja,
        '管理者'::varchar                               AS staff_nickname_ja,
        'Admin'::varchar                             AS staff_nickname_en,
        'ADMIN'::varchar                             AS staff_code,
        NULL::varchar                                AS staff_sex,
        '03-0000-0000'::varchar                      AS staff_phone,
        NULL::varchar                                AS staff_private_phone,
        'admin'::varchar                             AS sign_code,
        'admin@example.com'::varchar                 AS sign_mail,
        1::smallint                                  AS sign_role,
        0::smallint                                  AS access_path_classes,
        1::smallint                                  AS access_permit,
        'dummy_path_1'::varchar                      AS access_path1_name,
        '/dummy/1'::varchar                          AS access_path1_path,
        'dummy_path_2'::varchar                      AS access_path2_name,
        '/dummy/2'::varchar                          AS access_path2_path,
        'dummy_path_3'::varchar                      AS access_path3_name,
        '/dummy/3'::varchar                          AS access_path3_path,
        'dummy_path_4'::varchar                      AS access_path4_name,
        '/dummy/4'::varchar                          AS access_path4_path,
        'dummy_path_5'::varchar                      AS access_path5_name,
        '/dummy/5'::varchar                          AS access_path5_path
),
-- App が未登録のときだけ 1 行になる（会社・App・担当者などの登録条件）
gate AS (
    SELECT 1 AS ok
    WHERE NOT EXISTS (SELECT 1 FROM tests.info_app WHERE name = (SELECT app_name FROM prm))
),
-- ---------------------------------------------------------------------
-- 1. 言語コード
-- ---------------------------------------------------------------------
lang_new AS (
    INSERT INTO tests.shared_language_code (code, label, priority, is_default)
    SELECT v.code, v.label, v.priority, v.is_default
    FROM (VALUES
        ((SELECT lang_ja_code FROM prm), (SELECT lang_ja_label FROM prm), 1::smallint, true),
        ((SELECT lang_en_code FROM prm), (SELECT lang_en_label FROM prm), 2::smallint, false)
    ) AS v(code, label, priority, is_default)
    WHERE NOT EXISTS (SELECT 1 FROM tests.shared_language_code l WHERE l.code = v.code)
    RETURNING shared_language_code_id, code
),
-- 登録済みの言語はそのまま使う（同じ文の中では新規行はRETURNINGからしか見えないため両方を合わせる）
lang AS (
    SELECT shared_language_code_id, code FROM lang_new
    UNION ALL
    SELECT shared_language_code_id, code FROM tests.shared_language_code
    WHERE code IN ((SELECT lang_ja_code FROM prm), (SELECT lang_en_code FROM prm))
),
lang_ja AS (SELECT shared_language_code_id AS id FROM lang WHERE code = (SELECT lang_ja_code FROM prm)),
lang_en AS (SELECT shared_language_code_id AS id FROM lang WHERE code = (SELECT lang_en_code FROM prm)),

-- ---------------------------------------------------------------------
-- 2. 辞書（1つの呼称・住所行ごとに1件。値がすべてNULLなら作らない）
-- ---------------------------------------------------------------------
d_company_name     AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate)
                       RETURNING shared_dictionary_id AS id),
d_company_kana     AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate) AND (SELECT company_kana_ja FROM prm) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_company_nickname AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate) AND COALESCE((SELECT company_nickname_ja FROM prm), (SELECT company_nickname_en FROM prm)) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_ceo_name         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate) AND (SELECT ceo_name_ja FROM prm) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_ceo_kana         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate) AND (SELECT ceo_name_ja FROM prm) IS NOT NULL AND (SELECT ceo_kana_ja FROM prm) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_address1         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate) AND COALESCE((SELECT address1_ja FROM prm), (SELECT address1_en FROM prm)) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_address2         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate) AND COALESCE((SELECT address2_ja FROM prm), (SELECT address2_en FROM prm)) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_building         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate) AND COALESCE((SELECT building_ja FROM prm), (SELECT building_en FROM prm)) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_staff_name       AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate)
                       RETURNING shared_dictionary_id AS id),
d_staff_kana       AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate) AND (SELECT staff_kana_ja FROM prm) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_staff_nickname   AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE EXISTS (SELECT 1 FROM gate) AND COALESCE((SELECT staff_nickname_ja FROM prm), (SELECT staff_nickname_en FROM prm)) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),

-- 辞書の値（言語ごと。値がNULLの行は登録しない）
dict_value AS (
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT v.dict_id, v.lang_id, v.val
    FROM (
                  SELECT (SELECT id FROM d_company_name),     (SELECT id FROM lang_ja), (SELECT company_name_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_company_name),     (SELECT id FROM lang_en), (SELECT company_name_en FROM prm)
        UNION ALL SELECT (SELECT id FROM d_company_kana),     (SELECT id FROM lang_ja), (SELECT company_kana_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_company_nickname), (SELECT id FROM lang_ja), (SELECT company_nickname_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_company_nickname), (SELECT id FROM lang_en), (SELECT company_nickname_en FROM prm)
        UNION ALL SELECT (SELECT id FROM d_ceo_name),         (SELECT id FROM lang_ja), (SELECT ceo_name_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_ceo_name),         (SELECT id FROM lang_en), (SELECT ceo_name_en FROM prm)
        UNION ALL SELECT (SELECT id FROM d_ceo_kana),         (SELECT id FROM lang_ja), (SELECT ceo_kana_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_address1),         (SELECT id FROM lang_ja), (SELECT address1_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_address1),         (SELECT id FROM lang_en), (SELECT address1_en FROM prm)
        UNION ALL SELECT (SELECT id FROM d_address2),         (SELECT id FROM lang_ja), (SELECT address2_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_address2),         (SELECT id FROM lang_en), (SELECT address2_en FROM prm)
        UNION ALL SELECT (SELECT id FROM d_building),         (SELECT id FROM lang_ja), (SELECT building_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_building),         (SELECT id FROM lang_en), (SELECT building_en FROM prm)
        UNION ALL SELECT (SELECT id FROM d_staff_name),       (SELECT id FROM lang_ja), (SELECT staff_name_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_staff_name),       (SELECT id FROM lang_en), (SELECT staff_name_en FROM prm)
        UNION ALL SELECT (SELECT id FROM d_staff_kana),       (SELECT id FROM lang_ja), (SELECT staff_kana_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_staff_nickname),   (SELECT id FROM lang_ja), (SELECT staff_nickname_ja FROM prm)
        UNION ALL SELECT (SELECT id FROM d_staff_nickname),   (SELECT id FROM lang_en), (SELECT staff_nickname_en FROM prm)
    ) AS v(dict_id, lang_id, val)
    WHERE v.dict_id IS NOT NULL AND v.val IS NOT NULL
    RETURNING shared_dictionary_value_id
),

-- ---------------------------------------------------------------------
-- 3. 呼称（名称・読み・略称の組み合わせ）
-- ---------------------------------------------------------------------
a_company AS (
    INSERT INTO tests.shared_appellations
        (shared_dictionary_name_id, shared_dictionary_pronunciation_id, shared_dictionary_nickname_id)
    SELECT (SELECT id FROM d_company_name), (SELECT id FROM d_company_kana), (SELECT id FROM d_company_nickname)
    WHERE EXISTS (SELECT 1 FROM gate)
    RETURNING shared_appellations_id AS id
),
a_ceo AS (
    INSERT INTO tests.shared_appellations
        (shared_dictionary_name_id, shared_dictionary_pronunciation_id)
    SELECT id, (SELECT id FROM d_ceo_kana) FROM d_ceo_name
    RETURNING shared_appellations_id AS id
),
a_address1 AS (
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id)
    SELECT id FROM d_address1
    RETURNING shared_appellations_id AS id
),
a_address2 AS (
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id)
    SELECT id FROM d_address2
    RETURNING shared_appellations_id AS id
),
a_building AS (
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id)
    SELECT id FROM d_building
    RETURNING shared_appellations_id AS id
),
a_staff AS (
    INSERT INTO tests.shared_appellations
        (shared_dictionary_name_id, shared_dictionary_pronunciation_id, shared_dictionary_nickname_id)
    SELECT (SELECT id FROM d_staff_name), (SELECT id FROM d_staff_kana), (SELECT id FROM d_staff_nickname)
    WHERE EXISTS (SELECT 1 FROM gate)
    RETURNING shared_appellations_id AS id
),

-- ---------------------------------------------------------------------
-- 4. 住所・会社
-- ---------------------------------------------------------------------
address AS (
    INSERT INTO tests.info_address
        (iso3166_3, zip_code, address1, address2, building, phone, fax_number)
    SELECT COALESCE((SELECT address_country FROM prm), 'JP'),
           (SELECT address_zip_code FROM prm),
           (SELECT id FROM a_address1),
           (SELECT id FROM a_address2),
           (SELECT id FROM a_building),
           (SELECT address_phone FROM prm),
           (SELECT address_fax_number FROM prm)
    WHERE EXISTS (SELECT 1 FROM gate)
      AND (COALESCE((SELECT address_zip_code FROM prm), (SELECT address_phone FROM prm), (SELECT address_fax_number FROM prm)) IS NOT NULL
       OR EXISTS (SELECT 1 FROM a_address1) OR EXISTS (SELECT 1 FROM a_address2) OR EXISTS (SELECT 1 FROM a_building))
    RETURNING info_address_id AS id
),
company AS (
    INSERT INTO tests.info_company (names, info_address_id, web_page, ceo_names)
    SELECT (SELECT id FROM a_company),
           (SELECT id FROM address),
           (SELECT company_web_page FROM prm),
           (SELECT id FROM a_ceo)
    WHERE EXISTS (SELECT 1 FROM gate)
    RETURNING info_company_id AS id
),

-- ---------------------------------------------------------------------
-- 5. App・アプリステータス
-- ---------------------------------------------------------------------
app AS (
    INSERT INTO tests.info_app (info_company_id, name)
    SELECT id, (SELECT app_name FROM prm) FROM company
    RETURNING info_app_id AS id
),
app_status AS (
    INSERT INTO tests.info_app_status (info_app_id, status, plan_date, start_date)
    SELECT id, 0, (SELECT app_plan_date FROM prm), (SELECT app_start_date FROM prm) FROM app
    RETURNING info_app_status_id
),

-- ---------------------------------------------------------------------
-- 6. 担当者（Administrator）・サイン
-- ---------------------------------------------------------------------
staff AS (
    INSERT INTO tests.info_staff (info_company_id, code, names, sex, phone, private_phone)
    SELECT (SELECT id FROM company),
           (SELECT staff_code FROM prm),
           (SELECT id FROM a_staff),
           (SELECT staff_sex FROM prm),
           (SELECT staff_phone FROM prm),
           (SELECT staff_private_phone FROM prm)
    WHERE EXISTS (SELECT 1 FROM gate)
    RETURNING info_staff_id AS id
),
sign AS (
    INSERT INTO tests.mstr_sign (info_staff_id, auth_subject_id, code, mail, role)
    SELECT id, NULL, (SELECT sign_code FROM prm), (SELECT sign_mail FROM prm), (SELECT sign_role FROM prm) FROM staff
    RETURNING mstr_sign_id
),

-- ---------------------------------------------------------------------
-- 7. アクセスパス（ダミー5件）・Administratorのアクセス許可
-- ---------------------------------------------------------------------
access_path AS (
    INSERT INTO tests.info_access_path (info_app_id, name, usecase_path1, classes, sequence)
    SELECT app.id, p.name, p.path, COALESCE((SELECT access_path_classes FROM prm), 0), p.seq
    FROM app
    CROSS JOIN (VALUES
        ((SELECT access_path1_name FROM prm), (SELECT access_path1_path FROM prm), 1::smallint),
        ((SELECT access_path2_name FROM prm), (SELECT access_path2_path FROM prm), 2::smallint),
        ((SELECT access_path3_name FROM prm), (SELECT access_path3_path FROM prm), 3::smallint),
        ((SELECT access_path4_name FROM prm), (SELECT access_path4_path FROM prm), 4::smallint),
        ((SELECT access_path5_name FROM prm), (SELECT access_path5_path FROM prm), 5::smallint)
    ) AS p(name, path, seq)
    RETURNING info_access_path_id AS id
),
staff_permission AS (
    INSERT INTO tests.info_staff_access_permission (info_access_path_id, info_staff_id, permit)
    SELECT access_path.id, staff.id, (SELECT access_permit FROM prm)
    FROM access_path CROSS JOIN staff
    RETURNING info_staff_access_permission_id
)

-- ---------------------------------------------------------------------
-- 登録結果（作成したIDと件数）
-- ---------------------------------------------------------------------
SELECT
    CASE WHEN EXISTS (SELECT 1 FROM gate) THEN '登録' ELSE 'スキップ（同名のAppが登録済み）' END AS result,
    (SELECT id FROM company)                     AS info_company_id,
    (SELECT id FROM app)                         AS info_app_id,
    (SELECT id FROM staff)                       AS info_staff_id,
    (SELECT mstr_sign_id FROM sign)              AS mstr_sign_id,
    (SELECT count(*) FROM lang_new)              AS language_new_count,
    (SELECT count(*) FROM dict_value)            AS dictionary_value_count,
    (SELECT count(*) FROM app_status)            AS app_status_count,
    (SELECT count(*) FROM access_path)           AS access_path_count,
    (SELECT count(*) FROM staff_permission)      AS staff_permission_count;
