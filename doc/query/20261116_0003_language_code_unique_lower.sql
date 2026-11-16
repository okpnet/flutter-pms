-- 言語コードの一意制約を、大文字小文字を区別しない形にする(DDL)。対象のスキーマ: tests。
--
-- 共通関数(20261116_0001_common_functions.sql の apl_language)は、言語コードを「完全一致を先に、なければ大文字小文字を区別せず」引く。
-- そのとき `ja` と `JA` が別の行として並ぶと、どちらの言語か決まらないため、DB 側で止める(issue/20261116_0001.md の B)。
-- 制約(UNIQUE (code))は式を持てないため、同じ名前の一意索引(lower(code))に置き換える。
-- 外部キーはこの制約を参照していない(確認済み)。適用前に、`lower(code)` の重複が無いことを確認する。
-- PERO のデータ(tools/database/ER/pms_test.pero)の該当の表の一意索引(shared_language_code_ix1)も同じに直す。

ALTER TABLE tests.shared_language_code DROP CONSTRAINT IF EXISTS shared_language_code_ix1;
DROP INDEX IF EXISTS tests.shared_language_code_ix1;
CREATE UNIQUE INDEX shared_language_code_ix1 ON tests.shared_language_code (lower(code));
