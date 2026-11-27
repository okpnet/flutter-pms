-- 20261127_0002 為替レートの確定(確定日以前のレートの登録・変更・取り消しを止める)。06_cteate_test.sql に取り込み済みの差分(既存の DB に当てる)
-- 確定日は info_app.settings の exchange.lockedUntil(yyyy-MM-dd)。前へ戻せない(CUR03)・未来や不正な日付は不可(CUR04)・確定日以前のレートは登録・変更・取り消しできない(CUR02)

CREATE OR REPLACE FUNCTION tests.exchange_rate_locked_until() RETURNS date AS $$
    SELECT NULLIF(a.settings #>> '{exchange,lockedUntil}', '')::date
    FROM tests.info_app AS a
    WHERE a.remove IS FALSE
    ORDER BY a.update_at
    LIMIT 1
$$ LANGUAGE sql STABLE;

COMMENT ON FUNCTION tests.exchange_rate_locked_until() IS '@omit
為替レートの確定日(info_app.settings の exchange.lockedUntil)。無ければ NULL。この日以前のレートは登録・変更・取り消しできない';

CREATE OR REPLACE FUNCTION tests.trg_exchange_rate_lock_guard() RETURNS trigger AS
$BODY$
DECLARE
    v_locked date := tests.exchange_rate_locked_until();
BEGIN
    IF v_locked IS NULL THEN
        RETURN NEW;
    END IF;
    IF TG_OP = 'INSERT' THEN
        IF NEW.rate_date <= v_locked THEN
            RAISE EXCEPTION '確定済みの期間(% まで)のレートは登録できません', v_locked USING ERRCODE = 'CUR02';
        END IF;
    ELSIF OLD.rate_date <= v_locked
          AND (NEW.rate IS DISTINCT FROM OLD.rate
               OR NEW.rate_date IS DISTINCT FROM OLD.rate_date
               OR NEW.remove IS DISTINCT FROM OLD.remove
               OR NEW.mstr_currency_id IS DISTINCT FROM OLD.mstr_currency_id) THEN
        RAISE EXCEPTION '確定済みの期間(% まで)のレートは変更・取り消しできません', v_locked USING ERRCODE = 'CUR02';
    ELSIF NEW.rate_date <= v_locked AND NEW.rate_date IS DISTINCT FROM OLD.rate_date THEN
        RAISE EXCEPTION '確定済みの期間(% まで)へレートの日付を変えられません', v_locked USING ERRCODE = 'CUR02';
    END IF;
    RETURN NEW;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_00_exchange_rate_lock_guard BEFORE INSERT OR UPDATE ON tests.trans_exchange_rate FOR EACH ROW EXECUTE FUNCTION tests.trg_exchange_rate_lock_guard();

COMMENT ON FUNCTION tests.trg_exchange_rate_lock_guard() IS '@omit
確定済みの期間のレートの登録・変更・取り消しの保護。CUR02';

CREATE OR REPLACE FUNCTION tests.trg_exchange_lock_settings_guard() RETURNS trigger AS
$BODY$
DECLARE
    v_old text := OLD.settings #>> '{exchange,lockedUntil}';
    v_new text := NEW.settings #>> '{exchange,lockedUntil}';
    v_old_d date;
    v_new_d date;
BEGIN
    IF v_new IS NOT DISTINCT FROM v_old THEN
        RETURN NEW;
    END IF;
    IF COALESCE(v_new, '') <> '' THEN
        BEGIN
            v_new_d := v_new::date;
        EXCEPTION WHEN others THEN
            RAISE EXCEPTION '確定日の形式が正しくありません (%)', v_new USING ERRCODE = 'CUR04';
        END;
        IF v_new_d > CURRENT_DATE THEN
            RAISE EXCEPTION '未来の日付は確定できません (%)', v_new USING ERRCODE = 'CUR04';
        END IF;
    END IF;
    IF COALESCE(v_old, '') <> '' THEN
        v_old_d := v_old::date;
        IF v_new_d IS NULL OR v_new_d < v_old_d THEN
            RAISE EXCEPTION '確定日は前へ戻せません (% → %)', v_old, COALESCE(v_new, '') USING ERRCODE = 'CUR03';
        END IF;
    END IF;
    RETURN NEW;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_00_exchange_lock_settings_guard BEFORE UPDATE ON tests.info_app FOR EACH ROW EXECUTE FUNCTION tests.trg_exchange_lock_settings_guard();

COMMENT ON FUNCTION tests.trg_exchange_lock_settings_guard() IS '@omit
為替レートの確定日(info_app.settings の exchange.lockedUntil)の保護。前へ戻せない(CUR03)・未来や不正な日付は不可(CUR04)';

