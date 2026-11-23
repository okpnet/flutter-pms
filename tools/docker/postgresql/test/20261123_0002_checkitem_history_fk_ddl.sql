-- 20261123_0002 の前提(DDL)。PERO の出力(06_cteate_test.sql)を適用済みなら不要。1 トランザクションの中で流す。
ALTER TABLE tests.history_mstr_audit_std_checkitem ADD CONSTRAINT history_mstr_audit_std_checkitem_fk3 FOREIGN KEY (names) REFERENCES tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE tests.history_mstr_audit_std_checkitem ADD CONSTRAINT history_mstr_audit_std_checkitem_fk4 FOREIGN KEY (details) REFERENCES tests.shared_text (shared_text_id) DEFERRABLE INITIALLY DEFERRED;
