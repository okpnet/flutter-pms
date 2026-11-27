-- 20261127_0003 為替レートの登録・変更は管理者だけ(ADM01)。06_cteate_test.sql に取り込み済みの差分(既存の DB に当てる)
-- 一般ユーザー(ロール pms_user のメンバーで、管理者でない)の登録・変更を止める。DB の所有者・初期化のスクリプトは止めない

CREATE OR REPLACE FUNCTION tests.trg_00_admin_only_table() RETURNS trigger AS
$BODY$
-- 表の登録・変更は、管理者(ロール pms_admin)だけが行える。一般ユーザー(ロール pms_user のメンバーで、管理者でない)が行おうとしたら止める。
-- DB の所有者・初期化のスクリプト(pms_user のメンバーでない)は止めない。
DECLARE
    v_user boolean;
    v_admin boolean;
BEGIN
    SELECT COALESCE(bool_or(pg_has_role(current_user, r.oid, 'member')) FILTER (WHERE r.rolname = 'pms_user'), false),
           COALESCE(bool_or(pg_has_role(current_user, r.oid, 'member')) FILTER (WHERE r.rolname = 'pms_admin'), false)
    INTO v_user, v_admin FROM pg_roles AS r WHERE r.rolname IN ('pms_user', 'pms_admin');
    IF v_user AND NOT v_admin THEN
        RAISE EXCEPTION '管理者だけが登録・変更できる表です (%)', TG_TABLE_NAME USING ERRCODE = 'ADM01';
    END IF;
    RETURN NEW;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_00_admin_only_exchange_rate BEFORE INSERT OR UPDATE ON tests.trans_exchange_rate FOR EACH ROW EXECUTE FUNCTION tests.trg_00_admin_only_table();

COMMENT ON FUNCTION tests.trg_00_admin_only_table() IS '@omit
管理者(ロール pms_admin)だけが登録・変更できる表の保護(ADM01)';

