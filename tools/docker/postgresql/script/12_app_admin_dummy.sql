-- =====================================================================
-- 12_app_admin_dummy.sql
-- App の管理者ユーザーに対応する担当者(info_staff)のダミーデータ
--
-- PocketBase の管理者ユーザー(role=admin)の app_user_id は、この担当者のID(info_staff_id、UUID)。
-- tools/init/test_init.bat が、担当者のコードを PocketBase のユーザーIDと同じ(大文字小文字を区別しない)
-- ものから探して、PocketBase の app_user_id に設定する(無ければコード ADMIN)。
--
-- ■ 実行順   06_cteate_test.sql → 08_mrp.sql → 10_mrp_dummy.sql → 本ファイル
--   ・10_mrp_dummy.sql は、担当者 ADMIN を作る。PocketBase の管理者のユーザーIDが admin なら、本ファイルは不要
--   ・PocketBase の管理者のユーザーIDが admin 以外(例: administrator)のとき、同じコードの担当者を作る:
--       psql -d test_avocado -v admin_code=ADMINISTRATOR -f 12_app_admin_dummy.sql
--   ・既にあるコードの担当者は作らない(何度流しても同じ)。言語・会社は、無ければ作る
--   ・担当者のIDは trg_01 が採番する。実行後に、コードとIDを表示する
-- =====================================================================

\if :{?admin_code}
\else
  \set admin_code ADMIN
\endif

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
    code_ text := :'admin_code';
    c uuid;
BEGIN
    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'ja') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('ja', '日本語', 1, true);
        RAISE NOTICE '言語コード ja を作りました';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM tests.shared_language_code WHERE code = 'en') THEN
        INSERT INTO tests.shared_language_code (code, label, priority, is_default) VALUES ('en', 'English', 2, false);
        RAISE NOTICE '言語コード en を作りました';
    END IF;

    IF EXISTS (SELECT 1 FROM tests.info_staff WHERE upper(code) = upper(code_) AND remove IS FALSE) THEN
        RAISE NOTICE '担当者 % は作成済みです', code_;
        RETURN;
    END IF;

    SELECT info_company_id INTO c FROM tests.info_company WHERE remove IS FALSE ORDER BY update_at LIMIT 1;
    IF c IS NULL THEN
        INSERT INTO tests.info_company (names) VALUES (pg_temp.nm('株式会社サンプル', 'Sample Co., Ltd.'))
        RETURNING info_company_id INTO c;
        RAISE NOTICE '会社 (株式会社サンプル) を作りました';
    END IF;
    INSERT INTO tests.info_staff (info_company_id, code, names)
    VALUES (c, upper(code_), pg_temp.nm('管理者', 'Administrator'));
    RAISE NOTICE '担当者 % を作りました', upper(code_);
END $$;

SELECT code AS "担当者のコード", info_staff_id AS "担当者のID(PocketBase の app_user_id)"
FROM tests.info_staff
WHERE upper(code) = upper(:'admin_code') AND remove IS FALSE;
