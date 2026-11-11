-- 環境変数 → psql 変数 (09_grant_test.sql と同じ。09 の後に流すので、オーナーと権限はこのファイルで付ける)
\getenv db_test_svr    DB_TEST_SVR
\getenv app_owner_id   APP_OWNER_ID
\getenv app_user_id    APP_USER_ID
\getenv app_admin_id   APP_ADMIN_ID

\connect :"db_test_svr"
-- ============================================================================
-- 13_visiter_owner.sql  棚ビジターの有効な所有者 (trans_visiter_owner) を保つ関数・トリガー
--   設計: claude/131_supply_ownership_design.md
--   06 の後に流す (12 の後)。最後に visiter_owner_rebuild() を呼ぶので、データ(10/11)の後に流しても所有者がそろう。
--   09 (オーナーの付け替え・権限) の後に流すため、このファイルの関数は末尾でオーナーロールに付け替え、権限を付ける  claude/134
--     ・SECURITY DEFINER の関数がスーパーユーザーの権限で動かないように、オーナーを APP_OWNER_ID にする
--     ・トリガーの関数は呼び出したロールの権限で動くので、visiter_owner_refresh の EXECUTE を一般ユーザー・管理者に付ける
--       (付けないと visiter_move・支給の登録などで permission denied になる)
--     ・visiter_owner_rebuild (全件の決め直し) は管理者だけ
--   visiter_owner_refresh は SECURITY DEFINER: アプリのロールに trans_visiter_owner の書き込み権限が無くても、
--   支給・分割・作業実績の登録で所有者を書き込める (アプリからの直接の書き込みは 09 の権限・PostGraphile の @omit で止める)。
--
--   所有者は「書くときに決めて、読むときは表を引くだけ」にする (読むたびに最新の支給をたどらない)。
--   行が無い、または owner_stakeholder_id が NULL のロットは自社の所有。
--
--   ロットの所有者の決め方 (上から順に、最初に当てはまったもの)
--     1. そのロットに直接つながる支給のうち、所有を変える支給 (counterpart_owns / company_owns) の最新
--          counterpart_owns = true → 相手先の所有 / company_owns = true → 自社の所有
--     2. 分割元のロットの所有者 (移動・分割でできたロットは元の所有を引き継ぐ)
--     3. 作業実績で作られたロット: 受注明細の customer_property = true なら、その受注の顧客の所有
--        (生産計画 → 資材計画 → 親の生産計画 … とたどって、いちばん上の受注明細で判定する)
--     4. どれも無ければ自社 (行を消す)
--   ロットの所有者が変わったら、分割先のロットも決め直す (自分の支給を持つロットはそちらが優先)。
--
--   トリガー
--     trans_supply_visiter : 登録・更新 → つないだロットを決め直す
--     trans_supply         : 所有の列・相手先・日時・削除の更新 → その支給のロットを決め直す
--     trans_visiter        : 分割元のある + の行の登録 → 決め直す (分割元の所有を引き継ぐ)
--     trans_work_record_visiter : 登録・更新 → 決め直す (受注明細の顧客所有)
--   受注明細の customer_property や受注の顧客を後から変えたときは visiter_owner_rebuild() を呼ぶ。
-- ============================================================================

-- ---- ロット1件の所有者を決め直す ------------------------------------------------
CREATE OR REPLACE FUNCTION tests.visiter_owner_refresh(p_lot uuid, p_depth integer DEFAULT 0) RETURNS void
SECURITY DEFINER SET search_path = tests, pg_catalog AS $$
DECLARE
    v_lot tests.trans_visiter;
    v_owner_hist uuid; v_owner uuid; v_sd uuid; v_od uuid; v_at timestamp;
    v_found boolean := false;
    r record; c record;
    v_op uuid; v_rp record; v_guard integer := 0;
BEGIN
    IF p_lot IS NULL OR p_depth > 50 THEN RETURN; END IF;
    SELECT * INTO v_lot FROM tests.trans_visiter WHERE trans_visiter_id = p_lot;
    -- 在庫(ロット)の行だけが対象 (出庫・棚卸しの行は所有者を持たない)
    IF NOT FOUND OR v_lot.quantity <= 0 OR v_lot.adjustment IS TRUE THEN RETURN; END IF;

    -- 1. 直接つながる、所有を変える支給の最新
    SELECT s.counterpart_owns, s.stakeholder_history_id, s.stakeholder_id, sd.trans_supply_detail_id, s.supply_at
      INTO r
      FROM tests.trans_supply_visiter AS sv
     INNER JOIN tests.trans_supply_detail AS sd
        ON sd.trans_supply_detail_id = sv.trans_supply_detail_id AND sd.remove IS FALSE
     INNER JOIN tests.trans_supply AS s
        ON s.trans_supply_id = sd.trans_supply_id AND s.remove IS FALSE
       AND (s.counterpart_owns IS TRUE OR s.company_owns IS TRUE)
     WHERE sv.trans_visiter_id = p_lot AND sv.remove IS FALSE
     ORDER BY s.supply_at DESC, sv.update_at DESC
     LIMIT 1;
    IF FOUND THEN
        v_found := true;
        v_sd := r.trans_supply_detail_id; v_at := r.supply_at;
        IF r.counterpart_owns THEN
            v_owner_hist := r.stakeholder_history_id; v_owner := r.stakeholder_id;
        END IF;
    END IF;

    -- 2. 分割元の所有者
    IF NOT v_found AND v_lot.parent_trans_visiter_id IS NOT NULL THEN
        SELECT o.* INTO r FROM tests.trans_visiter_owner AS o
         WHERE o.trans_visiter_id = v_lot.parent_trans_visiter_id AND o.remove IS FALSE;
        IF FOUND THEN
            v_found := true;
            v_owner_hist := r.owner_stakeholder_history_id; v_owner := r.owner_stakeholder_id;
            v_sd := r.trans_supply_detail_id; v_od := r.trans_order_detail_id; v_at := r.effective_at;
        END IF;
    END IF;

    -- 3. 作業実績で作られたロット: いちばん上の受注明細が顧客所有なら、その受注の顧客
    IF NOT v_found THEN
        SELECT wp.trans_operations_plan_id INTO v_op
          FROM tests.trans_work_record_visiter AS wrv
         INNER JOIN tests.trans_work_record AS wr ON wr.trans_work_record_id = wrv.trans_work_record_id AND wr.remove IS FALSE
         INNER JOIN tests.trans_work_plan AS wp ON wp.trans_work_plan_id = wr.trans_work_plan_id
         WHERE wrv.trans_visiter_id = p_lot AND wrv.remove IS FALSE
         LIMIT 1;
        WHILE v_op IS NOT NULL AND v_guard < 30 LOOP
            v_guard := v_guard + 1;
            SELECT rp.trans_order_detail_id, rp.parent_trans_operations_plan_id INTO v_rp
              FROM tests.trans_operations_plan AS op
             INNER JOIN tests.trans_resource_plan AS rp ON rp.trans_resource_plan_id = op.trans_resource_plan_id
             WHERE op.trans_operations_plan_id = v_op;
            EXIT WHEN NOT FOUND;
            IF v_rp.trans_order_detail_id IS NOT NULL THEN
                SELECT od.trans_order_detail_id, o.stakeholder_history_id, o.stakeholder_id INTO r
                  FROM tests.trans_order_detail AS od
                 INNER JOIN tests.trans_order AS o ON o.trans_order_id = od.trans_order_id
                 WHERE od.trans_order_detail_id = v_rp.trans_order_detail_id
                   AND od.customer_property IS TRUE AND o.stakeholder_id IS NOT NULL;
                IF FOUND THEN
                    v_found := true;
                    v_owner_hist := r.stakeholder_history_id; v_owner := r.stakeholder_id;
                    v_od := r.trans_order_detail_id; v_at := now();
                END IF;
                EXIT;
            END IF;
            v_op := v_rp.parent_trans_operations_plan_id;
        END LOOP;
    END IF;

    -- 書き込み (無ければ消す = 自社)
    IF v_found THEN
        INSERT INTO tests.trans_visiter_owner AS t (trans_visiter_id, owner_stakeholder_history_id, owner_stakeholder_id,
                                                    trans_supply_detail_id, trans_order_detail_id, effective_at)
        VALUES (p_lot, v_owner_hist, v_owner, v_sd, v_od, COALESCE(v_at, now()))
        ON CONFLICT (trans_visiter_id) DO UPDATE
        SET owner_stakeholder_history_id = EXCLUDED.owner_stakeholder_history_id,
            owner_stakeholder_id = EXCLUDED.owner_stakeholder_id,
            trans_supply_detail_id = EXCLUDED.trans_supply_detail_id,
            trans_order_detail_id = EXCLUDED.trans_order_detail_id,
            effective_at = EXCLUDED.effective_at,
            remove = FALSE
        WHERE (t.owner_stakeholder_id, t.trans_supply_detail_id, t.trans_order_detail_id, t.remove)
              IS DISTINCT FROM (EXCLUDED.owner_stakeholder_id, EXCLUDED.trans_supply_detail_id, EXCLUDED.trans_order_detail_id, FALSE);
    ELSE
        DELETE FROM tests.trans_visiter_owner WHERE trans_visiter_id = p_lot;
    END IF;

    -- 分割先のロットも決め直す
    FOR c IN
        SELECT v.trans_visiter_id FROM tests.trans_visiter AS v
         WHERE v.parent_trans_visiter_id = p_lot AND v.remove IS FALSE
           AND v.quantity > 0 AND v.adjustment IS NOT TRUE
    LOOP
        PERFORM tests.visiter_owner_refresh(c.trans_visiter_id, p_depth + 1);
    END LOOP;
END
$$ LANGUAGE plpgsql VOLATILE;
REVOKE ALL ON FUNCTION tests.visiter_owner_refresh(uuid, integer) FROM PUBLIC;

-- ---- 全件を決め直す (受注明細の customer_property・受注の顧客を後から変えたとき、移行時) ----
CREATE OR REPLACE FUNCTION tests.visiter_owner_rebuild() RETURNS integer
SECURITY DEFINER SET search_path = tests, pg_catalog AS $$
DECLARE
    c record; n integer := 0;
BEGIN
    DELETE FROM tests.trans_visiter_owner;
    -- 分割元の無いロットから順に (分割先は refresh の中で決め直される)
    FOR c IN
        SELECT v.trans_visiter_id FROM tests.trans_visiter AS v
         WHERE v.remove IS FALSE AND v.quantity > 0 AND v.adjustment IS NOT TRUE
           AND v.parent_trans_visiter_id IS NULL
    LOOP
        PERFORM tests.visiter_owner_refresh(c.trans_visiter_id);
        n := n + 1;
    END LOOP;
    RETURN n;
END
$$ LANGUAGE plpgsql VOLATILE;

-- ---- トリガー ---------------------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.trg_06_visiter_owner_supply_visiter() RETURNS trigger AS $$
BEGIN
    IF TG_OP <> 'INSERT' AND OLD.trans_visiter_id IS DISTINCT FROM NEW.trans_visiter_id THEN
        PERFORM tests.visiter_owner_refresh(OLD.trans_visiter_id);
    END IF;
    PERFORM tests.visiter_owner_refresh(NEW.trans_visiter_id);
    RETURN NULL;
END
$$ LANGUAGE plpgsql;
CREATE TRIGGER trg_06_visiter_owner AFTER INSERT OR UPDATE ON tests.trans_supply_visiter
    FOR EACH ROW EXECUTE PROCEDURE tests.trg_06_visiter_owner_supply_visiter();

CREATE OR REPLACE FUNCTION tests.trg_06_visiter_owner_supply() RETURNS trigger AS $$
DECLARE c record;
BEGIN
    FOR c IN
        SELECT DISTINCT sv.trans_visiter_id FROM tests.trans_supply_visiter AS sv
         INNER JOIN tests.trans_supply_detail AS sd ON sd.trans_supply_detail_id = sv.trans_supply_detail_id
         WHERE sd.trans_supply_id = NEW.trans_supply_id AND sv.remove IS FALSE
    LOOP
        PERFORM tests.visiter_owner_refresh(c.trans_visiter_id);
    END LOOP;
    RETURN NULL;
END
$$ LANGUAGE plpgsql;
CREATE TRIGGER trg_06_visiter_owner AFTER UPDATE OF counterpart_owns, company_owns, stakeholder_id, supply_at, remove
    ON tests.trans_supply FOR EACH ROW EXECUTE PROCEDURE tests.trg_06_visiter_owner_supply();

CREATE OR REPLACE FUNCTION tests.trg_06_visiter_owner_supply_detail() RETURNS trigger AS $$
DECLARE c record;
BEGIN
    FOR c IN
        SELECT sv.trans_visiter_id FROM tests.trans_supply_visiter AS sv
         WHERE sv.trans_supply_detail_id = NEW.trans_supply_detail_id AND sv.remove IS FALSE
    LOOP
        PERFORM tests.visiter_owner_refresh(c.trans_visiter_id);
    END LOOP;
    RETURN NULL;
END
$$ LANGUAGE plpgsql;
CREATE TRIGGER trg_06_visiter_owner AFTER UPDATE OF remove ON tests.trans_supply_detail
    FOR EACH ROW EXECUTE PROCEDURE tests.trg_06_visiter_owner_supply_detail();

CREATE OR REPLACE FUNCTION tests.trg_06_visiter_owner_visiter() RETURNS trigger AS $$
BEGIN
    IF NEW.parent_trans_visiter_id IS NOT NULL AND NEW.quantity > 0 AND NEW.adjustment IS NOT TRUE THEN
        PERFORM tests.visiter_owner_refresh(NEW.trans_visiter_id);
    END IF;
    RETURN NULL;
END
$$ LANGUAGE plpgsql;
CREATE TRIGGER trg_06_visiter_owner AFTER INSERT ON tests.trans_visiter
    FOR EACH ROW EXECUTE PROCEDURE tests.trg_06_visiter_owner_visiter();

CREATE OR REPLACE FUNCTION tests.trg_06_visiter_owner_work_record_visiter() RETURNS trigger AS $$
BEGIN
    PERFORM tests.visiter_owner_refresh(NEW.trans_visiter_id);
    RETURN NULL;
END
$$ LANGUAGE plpgsql;
CREATE TRIGGER trg_06_visiter_owner AFTER INSERT OR UPDATE ON tests.trans_work_record_visiter
    FOR EACH ROW EXECUTE PROCEDURE tests.trg_06_visiter_owner_work_record_visiter();

COMMENT ON FUNCTION tests.visiter_owner_refresh(uuid, integer) IS '@omit';
COMMENT ON FUNCTION tests.trg_06_visiter_owner_supply_visiter() IS '@omit';
COMMENT ON FUNCTION tests.trg_06_visiter_owner_supply() IS '@omit';
COMMENT ON FUNCTION tests.trg_06_visiter_owner_supply_detail() IS '@omit';
COMMENT ON FUNCTION tests.trg_06_visiter_owner_visiter() IS '@omit';
COMMENT ON FUNCTION tests.trg_06_visiter_owner_work_record_visiter() IS '@omit';
COMMENT ON FUNCTION tests.visiter_owner_rebuild() IS '棚ビジターの所有者をすべて決め直す(受注明細の顧客所有・受注の顧客を後から変えたとき)';

-- ---- オーナーと権限 (09 の後に作った関数なので、ここで付ける)  claude/134 ----
ALTER FUNCTION tests.visiter_owner_refresh(uuid, integer) OWNER TO :"app_owner_id";
ALTER FUNCTION tests.visiter_owner_rebuild() OWNER TO :"app_owner_id";
ALTER FUNCTION tests.trg_06_visiter_owner_supply_visiter() OWNER TO :"app_owner_id";
ALTER FUNCTION tests.trg_06_visiter_owner_supply() OWNER TO :"app_owner_id";
ALTER FUNCTION tests.trg_06_visiter_owner_supply_detail() OWNER TO :"app_owner_id";
ALTER FUNCTION tests.trg_06_visiter_owner_visiter() OWNER TO :"app_owner_id";
ALTER FUNCTION tests.trg_06_visiter_owner_work_record_visiter() OWNER TO :"app_owner_id";

REVOKE ALL ON FUNCTION tests.visiter_owner_refresh(uuid, integer) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION tests.visiter_owner_refresh(uuid, integer) TO :"app_user_id", :"app_admin_id";
REVOKE ALL ON FUNCTION tests.visiter_owner_rebuild() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION tests.visiter_owner_rebuild() TO :"app_admin_id";
GRANT EXECUTE ON FUNCTION tests.trg_06_visiter_owner_supply_visiter(), tests.trg_06_visiter_owner_supply(),
                          tests.trg_06_visiter_owner_supply_detail(), tests.trg_06_visiter_owner_visiter(),
                          tests.trg_06_visiter_owner_work_record_visiter()
    TO :"app_user_id", :"app_admin_id";

-- 棚ビジター所有者はトリガー(SECURITY DEFINER)だけが書く。アプリのロールは読み取りだけ  claude/135
-- (09 で一般ユーザーに INSERT・UPDATE・DELETE、管理者に ALL を付けているので、ここで外す)
REVOKE INSERT, UPDATE, DELETE, TRUNCATE ON tests.trans_visiter_owner FROM :"app_user_id", :"app_admin_id";

-- 既にある棚ビジター(10/11 のダミーデータなど)の所有者をそろえる
SELECT tests.visiter_owner_rebuild() AS lots_checked;
