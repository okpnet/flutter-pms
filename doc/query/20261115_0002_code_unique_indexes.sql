-- コードの部分一意索引(DDL。案)。対象のスキーマ: tests。DB には入れていない(doc/query/README.md)。
--
-- 方針(issue/20261115_0001.md): マスタ・Info は、ミューテーション(自動 CRUD)で登録・更新する。保存関数の中で検査しない代わりに、
-- コードの重複は DB の一意索引で止める(関数を通らない登録・同時登録でも止まる)。
-- 削除済み(remove = true)のコードは再利用できる仕様のため、削除していない行だけに効く部分一意索引にする。
-- 索引の名前は `<表>_ix_code_active` にそろえる。重複したときのエラーは 23505(`duplicate key value violates unique constraint "<索引名>"`)で、
-- クライアントは、索引の名前(`_ix_code_active`)で、コードの重複(`EntityFieldError.duplicate`)に変換する。
-- 対象は、画面の定義(uniqueKeys)でコードの重複を認めない実体。ほかの実体(設備・点検など)は、同じ形で足す。
-- 適用前に、重複が無いことを確認する(検証用 DB は、該当の表が空または重複なし)。PERO のデータ(pms_test.pero)にも取り込む。

CREATE UNIQUE INDEX IF NOT EXISTS mstr_stakeholder_ix_code_active ON tests.mstr_stakeholder (code) WHERE remove = false;
CREATE UNIQUE INDEX IF NOT EXISTS mstr_capability_ix_code_active ON tests.mstr_capability (code) WHERE remove = false;
CREATE UNIQUE INDEX IF NOT EXISTS mstr_license_ix_code_active ON tests.mstr_license (code) WHERE remove = false AND code IS NOT NULL;
CREATE UNIQUE INDEX IF NOT EXISTS mstr_location_ix_code_active ON tests.mstr_location (code) WHERE remove = false AND code IS NOT NULL;
CREATE UNIQUE INDEX IF NOT EXISTS info_staff_ix_code_active ON tests.info_staff (code) WHERE remove = false AND code IS NOT NULL;
CREATE UNIQUE INDEX IF NOT EXISTS info_office_ix_code_active ON tests.info_office (code) WHERE remove = false;
CREATE UNIQUE INDEX IF NOT EXISTS info_department_ix_code_active ON tests.info_department (code) WHERE remove = false;
