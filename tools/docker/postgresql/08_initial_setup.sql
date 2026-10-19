-- =====================================================================
-- 07_initial_setup.sql
-- PMS（06_cteate_test.sql）のサービス開始に必要な初期データ登録
--
--   1. 言語コード      : 日本語（標準・priority 1）、英語（priority 2）
--   2. 会社            : 名称・読み・略称、代表者名、住所
--   3. App             : アプリ情報、アプリステータス（status = 0）
--   4. 担当者          : Administrator、サイン（role = 1、OIDCはNULL）
--   5. アクセスパス    : ダミー5件、Administratorへのアクセス許可5件
--
-- ■ 実行方法
--   ・Npgsql 形式のパラメーター（@name）を使用。1文（データ変更CTE）なので、
--     NpgsqlCommand 1回で実行する。途中で失敗した場合は全件ロールバックされる。
--   ・主キーは trg_01 が INSERT 時に必ず採番し直すため、IDは指定せず
--     INSERT ... RETURNING で受け取ったIDを次の INSERT に渡している。
--   ・更新者列（update_user_id / update_user_history_id）は NULL のまま
--     （システムによる初期登録扱い）。
--   ・2回目の実行は shared_language_code.code / info_app.name の UNIQUE で失敗する
--     （二重登録の防止）。
--   ・任意項目のパラメーターに DBNull.Value を渡すと、その行は作られない
--     （呼称の読み・略称、英語名、住所の各行など）。
--
-- ■ パラメーター一覧（型 / 必須 / 例）
--   言語
--     @lang_ja_code            varchar  必須  'ja'
--     @lang_ja_label           varchar  必須  '日本語'
--     @lang_en_code            varchar  必須  'en'
--     @lang_en_label           varchar  必須  'English'
--   会社
--     @company_name_ja         varchar  必須  '株式会社サンプル'
--     @company_name_en         varchar  任意  'Sample Co., Ltd.'
--     @company_kana_ja         varchar  任意  'カブシキガイシャサンプル'
--     @company_nickname_ja     varchar  任意  'サンプル'
--     @company_nickname_en     varchar  任意  'Sample'
--     @company_web_page        varchar  任意  'https://example.com'
--     @ceo_name_ja             varchar  任意  '山田 太郎'（NULLなら代表者名を作らない）
--     @ceo_name_en             varchar  任意  'Taro Yamada'
--     @ceo_kana_ja             varchar  任意  'ヤマダ タロウ'
--   住所
--     @address_country         varchar  任意  'JP'（2文字。NULLなら列の既定値 'JP'）
--     @address_zip_code        varchar  任意  '100-0001'
--     @address1_ja             varchar  任意  '東京都千代田区'
--     @address1_en             varchar  任意  'Chiyoda-ku, Tokyo'
--     @address2_ja             varchar  任意  '千代田1-1'
--     @address2_en             varchar  任意  '1-1 Chiyoda'
--     @building_ja             varchar  任意  'サンプルビル5F'
--     @building_en             varchar  任意  'Sample Bldg. 5F'
--     @address_phone           varchar  任意  '03-0000-0000'
--     @address_fax_number      varchar  任意  '03-0000-0001'
--   App
--     @app_name                varchar  必須  'PMS'
--     @app_plan_date           timestamp 必須 '2026-11-01 00:00'
--     @app_start_date          timestamp 必須 '2026-11-01 00:00'
--   担当者（Administrator）
--     @staff_name_ja           varchar  必須  '管理者'
--     @staff_name_en           varchar  任意  'Administrator'
--     @staff_kana_ja           varchar  任意  'カンリシャ'
--     @staff_nickname_ja       varchar  任意  '管理者'
--     @staff_nickname_en       varchar  任意  'Admin'
--     @staff_code              varchar  任意  'ADMIN'（16文字まで）
--     @staff_sex               varchar  任意  NULL
--     @staff_phone             varchar  任意  '03-0000-0000'
--     @staff_private_phone     varchar  任意  NULL
--   サイン
--     @sign_code               varchar  任意  'admin'
--     @sign_mail               varchar  任意  'admin@example.com'
--     @sign_role               smallint 必須  1
--   アクセスパス（ダミー）
--     @access_path1_name .. @access_path5_name   varchar  必須  'dummy_path_1' .. 'dummy_path_5'
--     @access_path1_path .. @access_path5_path   varchar  任意  '/dummy/1' .. '/dummy/5'（usecase_path1）
--     @access_path_classes     smallint 任意  0
--     @access_permit           smallint 任意  1（Administratorのパーミット値）
-- =====================================================================
-- =====================================================================
-- 07_initial_setup_sample.sql
-- 07_initial_setup.sql のパラメーターにサンプル値を代入したもの（psql等でそのまま実行可）
--
-- ■ 代入した値
--   @lang_ja_code           = 'ja'
--   @lang_ja_label          = '日本語'
--   @lang_en_code           = 'en'
--   @lang_en_label          = 'English'
--   @company_name_ja        = '株式会社サンプル'
--   @company_name_en        = 'Sample Co., Ltd.'
--   @company_kana_ja        = 'カブシキガイシャサンプル'
--   @company_nickname_ja    = 'サンプル'
--   @company_nickname_en    = 'Sample'
--   @company_web_page       = 'https://example.com'
--   @ceo_name_ja            = '山田 太郎'
--   @ceo_name_en            = 'Taro Yamada'
--   @ceo_kana_ja            = 'ヤマダ タロウ'
--   @address_country        = 'JP'
--   @address_zip_code       = '100-0001'
--   @address1_ja            = '東京都千代田区'
--   @address1_en            = 'Chiyoda-ku, Tokyo'
--   @address2_ja            = '千代田1-1'
--   @address2_en            = '1-1 Chiyoda'
--   @building_ja            = 'サンプルビル5F'
--   @building_en            = 'Sample Bldg. 5F'
--   @address_phone          = '03-0000-0000'
--   @address_fax_number     = '03-0000-0001'
--   @app_name               = 'PMS'
--   @app_plan_date          = '2026-11-01 00:00'
--   @app_start_date         = '2026-11-01 00:00'
--   @staff_name_ja          = '管理者'
--   @staff_name_en          = 'Administrator'
--   @staff_kana_ja          = 'カンリシャ'
--   @staff_nickname_ja      = '管理者'
--   @staff_nickname_en      = 'Admin'
--   @staff_code             = 'ADMIN'
--   @staff_sex              = NULL
--   @staff_phone            = '03-0000-0000'
--   @staff_private_phone    = NULL
--   @sign_code              = 'admin'
--   @sign_mail              = 'admin@example.com'
--   @sign_role              = 1
--   @access_path_classes    = 0
--   @access_permit          = 1
--   @access_path1_name      = 'dummy_path_1'
--   @access_path1_path      = '/dummy/1'
--   @access_path2_name      = 'dummy_path_2'
--   @access_path2_path      = '/dummy/2'
--   @access_path3_name      = 'dummy_path_3'
--   @access_path3_path      = '/dummy/3'
--   @access_path4_name      = 'dummy_path_4'
--   @access_path4_path      = '/dummy/4'
--   @access_path5_name      = 'dummy_path_5'
--   @access_path5_path      = '/dummy/5'
--
-- ※ 06_cteate_test.sql を適用した空のDBで実行すること（2回目は UNIQUE 制約で失敗する）。
-- ※ 型を明示するキャスト（'...'::varchar 等）は元のSQLのまま残している。
-- =====================================================================
WITH
-- ---------------------------------------------------------------------
-- 1. 言語コード
-- ---------------------------------------------------------------------
lang AS (
    INSERT INTO tests.shared_language_code (code, label, priority, is_default)
    VALUES
        (@lang_ja_code::varchar, @lang_ja_label::varchar, 1, true),
        (@lang_en_code::varchar, @lang_en_label::varchar, 2, false)
    RETURNING shared_language_code_id, code
),
lang_ja AS (SELECT shared_language_code_id AS id FROM lang WHERE code = @lang_ja_code::varchar),
lang_en AS (SELECT shared_language_code_id AS id FROM lang WHERE code = @lang_en_code::varchar),

-- ---------------------------------------------------------------------
-- 2. 辞書（1つの呼称・住所行ごとに1件。値がすべてNULLなら作らない）
-- ---------------------------------------------------------------------
d_company_name     AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       RETURNING shared_dictionary_id AS id),
d_company_kana     AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE @company_kana_ja::varchar IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_company_nickname AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE COALESCE(@company_nickname_ja::varchar, @company_nickname_en::varchar) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_ceo_name         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE @ceo_name_ja::varchar IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_ceo_kana         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE @ceo_name_ja::varchar IS NOT NULL AND @ceo_kana_ja::varchar IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_address1         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE COALESCE(@address1_ja::varchar, @address1_en::varchar) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_address2         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE COALESCE(@address2_ja::varchar, @address2_en::varchar) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_building         AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE COALESCE(@building_ja::varchar, @building_en::varchar) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_staff_name       AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       RETURNING shared_dictionary_id AS id),
d_staff_kana       AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE @staff_kana_ja::varchar IS NOT NULL
                       RETURNING shared_dictionary_id AS id),
d_staff_nickname   AS (INSERT INTO tests.shared_dictionary (remarks) SELECT NULL
                       WHERE COALESCE(@staff_nickname_ja::varchar, @staff_nickname_en::varchar) IS NOT NULL
                       RETURNING shared_dictionary_id AS id),

-- 辞書の値（言語ごと。値がNULLの行は登録しない）
dict_value AS (
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT v.dict_id, v.lang_id, v.val
    FROM (
                  SELECT (SELECT id FROM d_company_name),     (SELECT id FROM lang_ja), @company_name_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_company_name),     (SELECT id FROM lang_en), @company_name_en::varchar
        UNION ALL SELECT (SELECT id FROM d_company_kana),     (SELECT id FROM lang_ja), @company_kana_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_company_nickname), (SELECT id FROM lang_ja), @company_nickname_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_company_nickname), (SELECT id FROM lang_en), @company_nickname_en::varchar
        UNION ALL SELECT (SELECT id FROM d_ceo_name),         (SELECT id FROM lang_ja), @ceo_name_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_ceo_name),         (SELECT id FROM lang_en), @ceo_name_en::varchar
        UNION ALL SELECT (SELECT id FROM d_ceo_kana),         (SELECT id FROM lang_ja), @ceo_kana_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_address1),         (SELECT id FROM lang_ja), @address1_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_address1),         (SELECT id FROM lang_en), @address1_en::varchar
        UNION ALL SELECT (SELECT id FROM d_address2),         (SELECT id FROM lang_ja), @address2_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_address2),         (SELECT id FROM lang_en), @address2_en::varchar
        UNION ALL SELECT (SELECT id FROM d_building),         (SELECT id FROM lang_ja), @building_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_building),         (SELECT id FROM lang_en), @building_en::varchar
        UNION ALL SELECT (SELECT id FROM d_staff_name),       (SELECT id FROM lang_ja), @staff_name_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_staff_name),       (SELECT id FROM lang_en), @staff_name_en::varchar
        UNION ALL SELECT (SELECT id FROM d_staff_kana),       (SELECT id FROM lang_ja), @staff_kana_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_staff_nickname),   (SELECT id FROM lang_ja), @staff_nickname_ja::varchar
        UNION ALL SELECT (SELECT id FROM d_staff_nickname),   (SELECT id FROM lang_en), @staff_nickname_en::varchar
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
    RETURNING shared_appellations_id AS id
),

-- ---------------------------------------------------------------------
-- 4. 住所・会社
-- ---------------------------------------------------------------------
address AS (
    INSERT INTO tests.info_address
        (iso3166_3, zip_code, address1, address2, building, phone, fax_number)
    SELECT COALESCE(@address_country::varchar, 'JP'),
           @address_zip_code::varchar,
           (SELECT id FROM a_address1),
           (SELECT id FROM a_address2),
           (SELECT id FROM a_building),
           @address_phone::varchar,
           @address_fax_number::varchar
    RETURNING info_address_id AS id
),
company AS (
    INSERT INTO tests.info_company (names, info_address_id, web_page, ceo_names)
    SELECT (SELECT id FROM a_company),
           (SELECT id FROM address),
           @company_web_page::varchar,
           (SELECT id FROM a_ceo)
    RETURNING info_company_id AS id
),

-- ---------------------------------------------------------------------
-- 5. App・アプリステータス
-- ---------------------------------------------------------------------
app AS (
    INSERT INTO tests.info_app (info_company_id, name)
    SELECT id, @app_name::varchar FROM company
    RETURNING info_app_id AS id
),
app_status AS (
    INSERT INTO tests.info_app_status (info_app_id, status, plan_date, start_date)
    SELECT id, 0, @app_plan_date::timestamp, @app_start_date::timestamp FROM app
    RETURNING info_app_status_id
),

-- ---------------------------------------------------------------------
-- 6. 担当者（Administrator）・サイン
-- ---------------------------------------------------------------------
staff AS (
    INSERT INTO tests.info_staff (info_company_id, code, names, sex, phone, private_phone)
    SELECT (SELECT id FROM company),
           @staff_code::varchar,
           (SELECT id FROM a_staff),
           @staff_sex::varchar,
           @staff_phone::varchar,
           @staff_private_phone::varchar
    RETURNING info_staff_id AS id
),
sign AS (
    INSERT INTO tests.mstr_sign (info_staff_id, auth_subject_id, code, mail, role)
    SELECT id, NULL, @sign_code::varchar, @sign_mail::varchar, @sign_role::smallint FROM staff
    RETURNING mstr_sign_id
),

-- ---------------------------------------------------------------------
-- 7. アクセスパス（ダミー5件）・Administratorのアクセス許可
-- ---------------------------------------------------------------------
access_path AS (
    INSERT INTO tests.info_access_path (info_app_id, name, usecase_path1, classes, sequence)
    SELECT app.id, p.name, p.path, COALESCE(@access_path_classes::smallint, 0), p.seq
    FROM app
    CROSS JOIN (VALUES
        (@access_path1_name::varchar, @access_path1_path::varchar, 1::smallint),
        (@access_path2_name::varchar, @access_path2_path::varchar, 2::smallint),
        (@access_path3_name::varchar, @access_path3_path::varchar, 3::smallint),
        (@access_path4_name::varchar, @access_path4_path::varchar, 4::smallint),
        (@access_path5_name::varchar, @access_path5_path::varchar, 5::smallint)
    ) AS p(name, path, seq)
    RETURNING info_access_path_id AS id
),
staff_permission AS (
    INSERT INTO tests.info_staff_access_permission (info_access_path_id, info_staff_id, permit)
    SELECT access_path.id, staff.id, @access_permit::smallint
    FROM access_path CROSS JOIN staff
    RETURNING info_staff_access_permission_id
)

-- ---------------------------------------------------------------------
-- 登録結果（作成したIDと件数）
-- ---------------------------------------------------------------------
SELECT
    (SELECT id FROM company)                     AS info_company_id,
    (SELECT id FROM app)                         AS info_app_id,
    (SELECT id FROM staff)                       AS info_staff_id,
    (SELECT mstr_sign_id FROM sign)              AS mstr_sign_id,
    (SELECT count(*) FROM lang)                  AS language_count,
    (SELECT count(*) FROM dict_value)            AS dictionary_value_count,
    (SELECT count(*) FROM app_status)            AS app_status_count,
    (SELECT count(*) FROM access_path)           AS access_path_count,
    (SELECT count(*) FROM staff_permission)      AS staff_permission_count;
