-- 20261123_0002 監査標準項目の履歴の外部キー(names → shared_appellations、details → shared_text)の検査 F1〜F3
-- 実行: node runtest.js <.env> NONE 20261123_0002_checkitem_history_fk_ddl.sql 20261123_0002_checkitem_history_fk.sql
--   外部キーが DB に適用済みなら、このファイルだけでよい。最後に ROLLBACK するのでデータは変わらない。
DO $$
DECLARE adm uuid; adm_h uuid; a1 uuid; a2 uuid; std uuid; ci uuid; n_fk int; old_name text; new_name text;
BEGIN
    SELECT info_staff_id INTO adm FROM tests.info_staff WHERE code = 'ADMIN' LIMIT 1;
    SELECT history_id INTO adm_h FROM tests.history_info_staff WHERE info_staff_id = adm ORDER BY revision DESC LIMIT 1;
    -- F1: 外部キーがある(names・details)
    SELECT count(*) INTO n_fk FROM pg_constraint
      WHERE conrelid = 'tests.history_mstr_audit_std_checkitem'::regclass AND contype = 'f'
        AND conname IN ('history_mstr_audit_std_checkitem_fk3', 'history_mstr_audit_std_checkitem_fk4');
    IF n_fk <> 2 THEN RAISE EXCEPTION 'F1 NG: 外部キーが % 本', n_fk; END IF;
    RAISE NOTICE 'F1 OK';

    SELECT shared_appellations_id INTO a1 FROM tests.shared_appellation_save(NULL, '{"ja":"旧名称"}'::jsonb, NULL, NULL, adm, adm_h);
    INSERT INTO tests.mstr_audit_std (code, names) VALUES ('F-STD', a1) RETURNING mstr_audit_std_id INTO std;
    INSERT INTO tests.mstr_audit_std_checkitem (mstr_audit_std_id, code, names, type_class, formula_class)
      VALUES (std, 'F1', a1, 1, 1) RETURNING mstr_audit_std_checkitem_id INTO ci;
    -- F2: 名称を変えるとき、新しい呼称を作ってマスタを付け替える → 履歴に、過去の呼称が残る
    SELECT shared_appellations_id INTO a2 FROM tests.shared_appellation_save(NULL, '{"ja":"新名称"}'::jsonb, NULL, NULL, adm, adm_h);
    UPDATE tests.mstr_audit_std_checkitem SET names = a2 WHERE mstr_audit_std_checkitem_id = ci;
    IF (SELECT count(DISTINCT names) FROM tests.history_mstr_audit_std_checkitem WHERE mstr_audit_std_checkitem_id = ci) <> 2 THEN
        RAISE EXCEPTION 'F2 NG: 履歴に 2 つの呼称が残っていない';
    END IF;
    RAISE NOTICE 'F2 OK';
    -- F3: 存在しない呼称の ID は、履歴へ入らない(外部キー。DEFERRABLE のため、検査を即時にして確かめる)
    BEGIN
        SET CONSTRAINTS ALL IMMEDIATE;
        UPDATE tests.mstr_audit_std_checkitem SET names = gen_random_uuid() WHERE mstr_audit_std_checkitem_id = ci;
        RAISE EXCEPTION 'F3 NG: 存在しない呼称が通った';
    EXCEPTION WHEN foreign_key_violation THEN
        RAISE NOTICE 'F3 OK';
    END;
END $$;
