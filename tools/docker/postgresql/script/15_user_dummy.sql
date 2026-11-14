-- =====================================================================
-- 15_user_dummy.sql
-- App の一般の利用者に対応する担当者(info_staff)のダミーデータ
--
-- tools/init/test_user_init.bat が、管理者以外の担当者を PocketBase のユーザーに追加し、
-- 担当者のID(info_staff_id、UUID)を app_user_id に入れる。username は担当者のコード(小文字)。
--
-- ■ 実行順   05 → 06 → 09 → 10 → 11 → 12 → 13 → 14_app_admin_dummy.sql → 本ファイル
--   ・TANAKA(田中 太郎)・SUZUKI(鈴木 一郎)・SATO(佐藤 花子)を作る
--   ・既にあるコードの担当者は作らない(何度流しても同じ)。言語・会社は、無ければ作る
--       psql -d test_avocado -f 15_user_dummy.sql
-- =====================================================================

\c test_avocado

-- 呼称を作る(辞書 → 辞書の値(ja/en) → 呼称)。このセッションだけの一時関数
CREATE OR REPLACE FUNCTION pg_temp.nm(p_ja varchar, p_en varchar DEFAULT NULL) RETURNS uuid AS $$
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

DO $$
DECLARE
    c uuid;
    r record;
BEGIN
    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'ja') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('ja', '日本語', 1, true);
        RAISE NOTICE '言語コード ja を作りました';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'en') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('en', 'English', 2, false);
        RAISE NOTICE '言語コード en を作りました';
    END IF;

    SELECT info_company_id INTO c FROM tests.info_company WHERE remove IS FALSE ORDER BY update_at LIMIT 1;
    IF c IS NULL THEN
        INSERT INTO tests.info_company (names) VALUES (pg_temp.nm('株式会社サンプル', 'Sample Co., Ltd.'))
        RETURNING info_company_id INTO c;
        RAISE NOTICE '会社 (株式会社サンプル) を作りました';
    END IF;

    FOR r IN
        SELECT * FROM (VALUES
            ('TANAKA', '田中 太郎', 'Taro Tanaka'),
            ('SUZUKI', '鈴木 一郎', 'Ichiro Suzuki'),
            ('SATO',   '佐藤 花子', 'Hanako Sato')
        ) AS v(code, ja, en)
    LOOP
        IF EXISTS (SELECT 1 FROM tests.info_staff WHERE upper(code) = r.code AND remove IS FALSE) THEN
            RAISE NOTICE '担当者 % は作成済みです', r.code;
        ELSE
            INSERT INTO tests.info_staff (info_company_id, code, names)
            VALUES (c, r.code, pg_temp.nm(r.ja, r.en));
            RAISE NOTICE '担当者 % を作りました', r.code;
        END IF;
    END LOOP;
END $$;

SELECT code AS "担当者のコード", info_staff_id AS "担当者のID(PocketBase の app_user_id)"
FROM tests.info_staff
WHERE upper(code) IN ('TANAKA', 'SUZUKI', 'SATO') AND remove IS FALSE
ORDER BY code;
