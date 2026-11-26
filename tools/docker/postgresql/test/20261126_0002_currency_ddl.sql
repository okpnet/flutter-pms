-- 20261126_0002 海外取引(通貨・為替): 通貨・為替レートの表と、利害関係者・基準通貨の列(06_cteate_test.sql の追加分。PERO から出力される内容と同じ)
-- 既存の DB に当てるときは、先に標準の通貨(JPY)を作り、既存の行に入れてから NOT NULL にする(下の DO ブロック)。再構築するときは 07_dummy.sql が入れる。
-- 実行: ROLLBACK 付きで検査する(20261126_0002_currency_test.sql と同じトランザクション)

-- 1. 通貨マスタ(履歴つき。shared_unit と同じ形)
CREATE TABLE tests.mstr_currency (
  mstr_currency_id uuid DEFAULT gen_random_uuid() NOT NULL,
  code varchar(3) NOT NULL,
  names uuid NOT NULL,
  currency_symbol varchar(8) NOT NULL,
  minor_unit smallint DEFAULT 0 NOT NULL,
  rate_auto boolean DEFAULT false NOT NULL,
  revision integer DEFAULT 1,
  symbol varchar(16) DEFAULT '',
  remarks varchar(1024),
  update_at timestamp DEFAULT now(),
  update_user_id uuid,
  update_user_history_id uuid,
  remove boolean DEFAULT false,
  CONSTRAINT mstr_currency_pk PRIMARY KEY (mstr_currency_id),
  CONSTRAINT mstr_currency_ck_minor_unit CHECK (minor_unit BETWEEN 0 AND 4)
);
ALTER TABLE tests.mstr_currency ADD CONSTRAINT mstr_currency_ix1 UNIQUE (symbol);
CREATE UNIQUE INDEX IF NOT EXISTS mstr_currency_ix_code_active ON tests.mstr_currency (code) WHERE remove = false;
COMMENT ON TABLE tests.mstr_currency IS '通貨マスタ';
COMMENT ON COLUMN tests.mstr_currency.mstr_currency_id IS '通貨ID';
COMMENT ON COLUMN tests.mstr_currency.code IS '通貨コード(ISO 4217)';
COMMENT ON COLUMN tests.mstr_currency.names IS '通貨名称';
COMMENT ON COLUMN tests.mstr_currency.currency_symbol IS '通貨記号';
COMMENT ON COLUMN tests.mstr_currency.minor_unit IS '小数の桁数';
COMMENT ON COLUMN tests.mstr_currency.rate_auto IS 'レートの自動取得の対象';
COMMENT ON COLUMN tests.mstr_currency.revision IS 'レビジョン';
COMMENT ON COLUMN tests.mstr_currency.symbol IS 'リニアシンボル';
COMMENT ON COLUMN tests.mstr_currency.remarks IS '備考';
COMMENT ON COLUMN tests.mstr_currency.update_at IS '更新日時';
COMMENT ON COLUMN tests.mstr_currency.update_user_id IS '更新者ID';
COMMENT ON COLUMN tests.mstr_currency.update_user_history_id IS '更新者履歴ID';
COMMENT ON COLUMN tests.mstr_currency.remove IS '削除';

CREATE TABLE tests.history_mstr_currency (
  history_id uuid DEFAULT gen_random_uuid() NOT NULL,
  mstr_currency_id uuid NOT NULL,
  code varchar(3) NOT NULL,
  names uuid NOT NULL,
  currency_symbol varchar(8) NOT NULL,
  minor_unit smallint DEFAULT 0 NOT NULL,
  rate_auto boolean DEFAULT false NOT NULL,
  revision integer DEFAULT 1,
  symbol varchar(16) DEFAULT '',
  remarks varchar(1024),
  update_at timestamp DEFAULT now(),
  update_user_id uuid,
  update_user_history_id uuid,
  remove boolean DEFAULT false,
  CONSTRAINT history_mstr_currency_pk PRIMARY KEY (history_id, mstr_currency_id)
);
ALTER TABLE tests.history_mstr_currency ADD CONSTRAINT history_mstr_currency_ix1 UNIQUE (mstr_currency_id, revision);
COMMENT ON TABLE tests.history_mstr_currency IS '通貨マスタ履歴';
COMMENT ON COLUMN tests.history_mstr_currency.history_id IS '履歴ID';
COMMENT ON COLUMN tests.history_mstr_currency.mstr_currency_id IS '通貨ID';

ALTER TABLE tests.history_mstr_currency ADD CONSTRAINT history_mstr_currency_fk1 FOREIGN KEY (mstr_currency_id) REFERENCES tests.mstr_currency (mstr_currency_id) DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE tests.history_mstr_currency ADD CONSTRAINT history_mstr_currency_fk2 FOREIGN KEY (update_user_history_id, update_user_id) REFERENCES tests.history_info_staff (history_id, info_staff_id) DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE tests.mstr_currency ADD CONSTRAINT mstr_currency_fk1 FOREIGN KEY (names) REFERENCES tests.shared_appellations (shared_appellations_id) DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE tests.mstr_currency ADD CONSTRAINT mstr_currency_fk2 FOREIGN KEY (update_user_history_id, update_user_id) REFERENCES tests.history_info_staff (history_id, info_staff_id) DEFERRABLE INITIALLY DEFERRED;

CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_mstr_currency() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.mstr_currency_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_01_updatetimes_mstr_currency BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_currency FOR EACH ROW EXECUTE FUNCTION tests.trg_01_updatetimes_mstr_currency();

CREATE TRIGGER trg_04_symbol_mstr_currency BEFORE INSERT ON tests.mstr_currency FOR EACH ROW EXECUTE FUNCTION tests.trg_gen_symbol_seq();

CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_currency() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_currency WHERE mstr_currency_id=NEW.mstr_currency_id;
        IF (revisions >= 0) THEN
            IF (
                NEW.mstr_currency_id,
                NEW.code,
                NEW.names,
                NEW.currency_symbol,
                NEW.minor_unit,
                NEW.rate_auto,
                NEW.symbol,
                NEW.remarks,
                NEW.remove
            ) IS NOT DISTINCT FROM (
                OLD.mstr_currency_id,
                OLD.code,
                OLD.names,
                OLD.currency_symbol,
                OLD.minor_unit,
                OLD.rate_auto,
                OLD.symbol,
                OLD.remarks,
                OLD.remove
            )
            THEN
                RETURN NULL;
            END IF;
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_currency (
            mstr_currency_id,
            code,
            names,
            currency_symbol,
            minor_unit,
            rate_auto,
            revision,
            symbol,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_currency_id,
            NEW.code,
            NEW.names,
            NEW.currency_symbol,
            NEW.minor_unit,
            NEW.rate_auto,
            NEW.revision,
            NEW.symbol,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_02_history_mstr_currency BEFORE INSERT OR UPDATE OR DELETE ON tests.mstr_currency FOR EACH ROW EXECUTE FUNCTION tests.trg_02_history_mstr_currency();

CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_history_mstr_currency() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.history_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_01_updatetimes_history_mstr_currency BEFORE INSERT OR UPDATE OR DELETE ON tests.history_mstr_currency FOR EACH ROW EXECUTE FUNCTION tests.trg_01_updatetimes_history_mstr_currency();

CREATE TRIGGER trg_04_symbol_history_mstr_currency BEFORE INSERT ON tests.history_mstr_currency FOR EACH ROW EXECUTE FUNCTION tests.trg_gen_symbol_seq();

-- 2. 為替レート(追記のみ。月ごとの概算レート)
CREATE TABLE tests.trans_exchange_rate (
  trans_exchange_rate_id uuid DEFAULT gen_random_uuid() NOT NULL,
  mstr_currency_id uuid NOT NULL,
  rate_month date NOT NULL,
  rate numeric(18,8) NOT NULL,
  auto_fetched boolean DEFAULT false NOT NULL,
  source varchar(255),
  symbol varchar(16) DEFAULT '',
  remarks varchar(1024),
  update_at timestamp DEFAULT now(),
  update_user_id uuid,
  update_user_history_id uuid,
  remove boolean DEFAULT false,
  CONSTRAINT trans_exchange_rate_pk PRIMARY KEY (trans_exchange_rate_id),
  CONSTRAINT trans_exchange_rate_ck_rate CHECK (rate > 0),
  CONSTRAINT trans_exchange_rate_ck_month CHECK (rate_month = date_trunc('month', rate_month)::date)
);
ALTER TABLE tests.trans_exchange_rate ADD CONSTRAINT trans_exchange_rate_ix1 UNIQUE (symbol);
CREATE INDEX IF NOT EXISTS trans_exchange_rate_ix_lookup ON tests.trans_exchange_rate (mstr_currency_id, rate_month DESC) WHERE remove = false;
COMMENT ON TABLE tests.trans_exchange_rate IS '為替レート(月ごとの概算。追記のみ)';
COMMENT ON COLUMN tests.trans_exchange_rate.trans_exchange_rate_id IS '為替レートID';
COMMENT ON COLUMN tests.trans_exchange_rate.mstr_currency_id IS '通貨ID';
COMMENT ON COLUMN tests.trans_exchange_rate.rate_month IS '適用する月(月の初日)';
COMMENT ON COLUMN tests.trans_exchange_rate.rate IS 'レート(1 単位の通貨 = 基準通貨いくら)';
COMMENT ON COLUMN tests.trans_exchange_rate.auto_fetched IS '自動取得';
COMMENT ON COLUMN tests.trans_exchange_rate.source IS '取得元';
COMMENT ON COLUMN tests.trans_exchange_rate.symbol IS 'リニアシンボル';
COMMENT ON COLUMN tests.trans_exchange_rate.remarks IS '備考';
COMMENT ON COLUMN tests.trans_exchange_rate.update_at IS '更新日時';
COMMENT ON COLUMN tests.trans_exchange_rate.update_user_id IS '更新者ID';
COMMENT ON COLUMN tests.trans_exchange_rate.update_user_history_id IS '更新者履歴ID';
COMMENT ON COLUMN tests.trans_exchange_rate.remove IS '削除';

ALTER TABLE tests.trans_exchange_rate ADD CONSTRAINT trans_exchange_rate_fk1 FOREIGN KEY (mstr_currency_id) REFERENCES tests.mstr_currency (mstr_currency_id) DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE tests.trans_exchange_rate ADD CONSTRAINT trans_exchange_rate_fk2 FOREIGN KEY (update_user_history_id, update_user_id) REFERENCES tests.history_info_staff (history_id, info_staff_id) DEFERRABLE INITIALLY DEFERRED;

CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_exchange_rate() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_exchange_rate_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_01_updatetimes_trans_exchange_rate BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_exchange_rate FOR EACH ROW EXECUTE FUNCTION tests.trg_01_updatetimes_trans_exchange_rate();

CREATE TRIGGER trg_04_symbol_trans_exchange_rate BEFORE INSERT ON tests.trans_exchange_rate FOR EACH ROW EXECUTE FUNCTION tests.trg_gen_symbol_by_month();

-- 3. 利害関係者(マスタ・履歴): 取引の通貨・検収日。既存の行は、標準の通貨(最初の通貨)で埋めてから NOT NULL にする
ALTER TABLE tests.mstr_stakeholder ADD COLUMN mstr_currency_id uuid;
ALTER TABLE tests.mstr_stakeholder ADD COLUMN acceptance_day smallint;
ALTER TABLE tests.history_mstr_stakeholder ADD COLUMN mstr_currency_id uuid;
ALTER TABLE tests.history_mstr_stakeholder ADD COLUMN acceptance_day smallint;
ALTER TABLE tests.info_app ADD COLUMN mstr_currency_id uuid;
ALTER TABLE tests.history_info_app ADD COLUMN mstr_currency_id uuid;

-- 既存の DB への適用: 通貨が 1 件も無ければ JPY を作り、既存の行に入れる(履歴のトリガーは、列が増えたあとに入れ替える。下の 4)
DO $$
DECLARE v_cur uuid; v_names uuid; v_dict uuid;
BEGIN
    IF NOT EXISTS (SELECT 1 FROM tests.mstr_currency WHERE remove IS FALSE) THEN
        INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO v_dict;
        INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
        SELECT v_dict, l.shared_language_code_id, v.val
        FROM (VALUES ('ja', '日本円'), ('en', 'Japanese yen')) AS v(code, val)
        INNER JOIN tests.shared_language_code AS l ON l.code = v.code AND l.remove IS FALSE;
        INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (v_dict) RETURNING shared_appellations_id INTO v_names;
        INSERT INTO tests.mstr_currency (code, names, currency_symbol, minor_unit, rate_auto)
        VALUES ('JPY', v_names, '円', 0, false) RETURNING mstr_currency_id INTO v_cur;
    ELSE
        SELECT mstr_currency_id INTO v_cur FROM tests.mstr_currency WHERE remove IS FALSE ORDER BY update_at LIMIT 1;
    END IF;
    ALTER TABLE tests.mstr_stakeholder DISABLE TRIGGER USER;
    ALTER TABLE tests.history_mstr_stakeholder DISABLE TRIGGER USER;
    ALTER TABLE tests.info_app DISABLE TRIGGER USER;
    ALTER TABLE tests.history_info_app DISABLE TRIGGER USER;
    UPDATE tests.mstr_stakeholder SET mstr_currency_id = v_cur WHERE mstr_currency_id IS NULL;
    UPDATE tests.history_mstr_stakeholder SET mstr_currency_id = v_cur WHERE mstr_currency_id IS NULL;
    UPDATE tests.info_app SET mstr_currency_id = v_cur WHERE mstr_currency_id IS NULL;
    UPDATE tests.history_info_app SET mstr_currency_id = v_cur WHERE mstr_currency_id IS NULL;
    ALTER TABLE tests.mstr_stakeholder ENABLE TRIGGER USER;
    ALTER TABLE tests.history_mstr_stakeholder ENABLE TRIGGER USER;
    ALTER TABLE tests.info_app ENABLE TRIGGER USER;
    ALTER TABLE tests.history_info_app ENABLE TRIGGER USER;
END $$;

ALTER TABLE tests.mstr_stakeholder ALTER COLUMN mstr_currency_id SET NOT NULL;
ALTER TABLE tests.history_mstr_stakeholder ALTER COLUMN mstr_currency_id SET NOT NULL;
ALTER TABLE tests.info_app ALTER COLUMN mstr_currency_id SET NOT NULL;
ALTER TABLE tests.history_info_app ALTER COLUMN mstr_currency_id SET NOT NULL;
ALTER TABLE tests.mstr_stakeholder ADD CONSTRAINT mstr_stakeholder_ck_acceptance_day CHECK (acceptance_day IS NULL OR acceptance_day BETWEEN 1 AND 31);
ALTER TABLE tests.history_mstr_stakeholder ADD CONSTRAINT history_mstr_stakeholder_ck_acceptance_day CHECK (acceptance_day IS NULL OR acceptance_day BETWEEN 1 AND 31);
ALTER TABLE tests.mstr_stakeholder ADD CONSTRAINT mstr_stakeholder_fk_currency FOREIGN KEY (mstr_currency_id) REFERENCES tests.mstr_currency (mstr_currency_id) DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE tests.info_app ADD CONSTRAINT info_app_fk_currency FOREIGN KEY (mstr_currency_id) REFERENCES tests.mstr_currency (mstr_currency_id) DEFERRABLE INITIALLY DEFERRED;
COMMENT ON COLUMN tests.mstr_stakeholder.mstr_currency_id IS '取引の通貨ID';
COMMENT ON COLUMN tests.mstr_stakeholder.acceptance_day IS '検収日(月の日。NULL は月末)';
COMMENT ON COLUMN tests.history_mstr_stakeholder.mstr_currency_id IS '取引の通貨ID';
COMMENT ON COLUMN tests.history_mstr_stakeholder.acceptance_day IS '検収日(月の日。NULL は月末)';
COMMENT ON COLUMN tests.info_app.mstr_currency_id IS '基準通貨ID(標準の通貨)';
COMMENT ON COLUMN tests.history_info_app.mstr_currency_id IS '基準通貨ID(標準の通貨)';

-- 4. 履歴のトリガー(3 か所を直す)
CREATE OR REPLACE FUNCTION tests.trg_02_history_mstr_stakeholder() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_mstr_stakeholder WHERE mstr_stakeholder_id=NEW.mstr_stakeholder_id;
        IF (revisions >= 0) THEN
            IF (
                NEW.mstr_stakeholder_id,
                NEW.is_customer,
                NEW.is_supplier,
                NEW.is_logistics,
                NEW.code,
                NEW.control_code,
                NEW.names,
                NEW.mail,
                NEW.info_address_id,
                NEW.mstr_shipping_kind_id,
                NEW.mstr_currency_id,
                NEW.acceptance_day,
                NEW.symbol,
                NEW.remarks,
                NEW.remove
            ) IS NOT DISTINCT FROM (
                OLD.mstr_stakeholder_id,
                OLD.is_customer,
                OLD.is_supplier,
                OLD.is_logistics,
                OLD.code,
                OLD.control_code,
                OLD.names,
                OLD.mail,
                OLD.info_address_id,
                OLD.mstr_shipping_kind_id,
                OLD.mstr_currency_id,
                OLD.acceptance_day,
                OLD.symbol,
                OLD.remarks,
                OLD.remove
            )
            THEN
                RETURN NULL;
            END IF;
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_mstr_stakeholder (
            mstr_stakeholder_id,
            is_customer,
            is_supplier,
            is_logistics,
            code,
            control_code,
            names,
            mail,
            info_address_id,
            mstr_shipping_kind_id,
            mstr_currency_id,
            acceptance_day,
            revision,
            symbol,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.mstr_stakeholder_id,
            NEW.is_customer,
            NEW.is_supplier,
            NEW.is_logistics,
            NEW.code,
            NEW.control_code,
            NEW.names,
            NEW.mail,
            NEW.info_address_id,
            NEW.mstr_shipping_kind_id,
            NEW.mstr_currency_id,
            NEW.acceptance_day,
            NEW.revision,
            NEW.symbol,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE OR REPLACE FUNCTION tests.trg_02_history_info_app() RETURNS trigger AS
$BODY$
DECLARE
    revisions int;
BEGIN
    IF (TG_OP = 'UPDATE') OR (TG_OP='INSERT') THEN
        SELECT Max(revision) INTO revisions FROM tests.history_info_app WHERE info_app_id=NEW.info_app_id;
        IF (revisions >= 0) THEN
            IF (
                NEW.info_app_id,
                NEW.info_company_id,
                NEW.name,
                NEW.settings,
                NEW.document_approval_pattern_id,
                NEW.order_approval_pattern_id,
                NEW.purchase_approval_pattern_id,
                NEW.unrecognized_approval_pattern_id,
                NEW.shipping_order_approval_pattern_id,
                NEW.complaint_approval_pattern_id,
                NEW.disposal_approval_pattern_id,
                NEW.recurrence_prevention_approval_pattern_id,
                NEW.mstr_currency_id,
                NEW.symbol,
                NEW.remarks,
                NEW.remove
            ) IS NOT DISTINCT FROM (
                OLD.info_app_id,
                OLD.info_company_id,
                OLD.name,
                OLD.settings,
                OLD.document_approval_pattern_id,
                OLD.order_approval_pattern_id,
                OLD.purchase_approval_pattern_id,
                OLD.unrecognized_approval_pattern_id,
                OLD.shipping_order_approval_pattern_id,
                OLD.complaint_approval_pattern_id,
                OLD.disposal_approval_pattern_id,
                OLD.recurrence_prevention_approval_pattern_id,
                OLD.mstr_currency_id,
                OLD.symbol,
                OLD.remarks,
                OLD.remove
            )
            THEN
                RETURN NULL;
            END IF;
            NEW.revision := revisions + 1;
        ELSE
            NEW.revision := 1;
        END IF;
        INSERT INTO tests.history_info_app (
            info_app_id,
            info_company_id,
            name,
            revision,
            settings,
            document_approval_pattern_id,
            order_approval_pattern_id,
            purchase_approval_pattern_id,
            unrecognized_approval_pattern_id,
            shipping_order_approval_pattern_id,
            complaint_approval_pattern_id,
            disposal_approval_pattern_id,
            recurrence_prevention_approval_pattern_id,
            mstr_currency_id,
            symbol,
            remarks,
            update_at,
            update_user_id,
            update_user_history_id,
            remove
        )
        VALUES
        (
            NEW.info_app_id,
            NEW.info_company_id,
            NEW.name,
            NEW.revision,
            NEW.settings,
            NEW.document_approval_pattern_id,
            NEW.order_approval_pattern_id,
            NEW.purchase_approval_pattern_id,
            NEW.unrecognized_approval_pattern_id,
            NEW.shipping_order_approval_pattern_id,
            NEW.complaint_approval_pattern_id,
            NEW.disposal_approval_pattern_id,
            NEW.recurrence_prevention_approval_pattern_id,
            NEW.mstr_currency_id,
            NEW.symbol,
            NEW.remarks,
            NEW.update_at,
            NEW.update_user_id,
            NEW.update_user_history_id,
            NEW.remove
        );
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

-- 5. 基準通貨の変更の保護: 為替レートが 1 件でもあれば変えられない
CREATE OR REPLACE FUNCTION tests.trg_currency_base_guard() RETURNS trigger AS
$BODY$
BEGIN
    IF NEW.mstr_currency_id IS DISTINCT FROM OLD.mstr_currency_id
       AND EXISTS (SELECT 1 FROM tests.trans_exchange_rate WHERE remove IS FALSE) THEN
        RAISE EXCEPTION '為替レートが登録されているため、基準通貨は変更できません' USING ERRCODE = 'CUR01';
    END IF;
    RETURN NEW;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_00_currency_base_guard BEFORE UPDATE ON tests.info_app FOR EACH ROW EXECUTE FUNCTION tests.trg_currency_base_guard();

COMMENT ON FUNCTION tests.trg_currency_base_guard() IS '@omit
基準通貨(info_app.mstr_currency_id)の変更の保護。為替レートがあれば CUR01';

-- 6. 関数(読み取り。補助は @omit)
CREATE OR REPLACE FUNCTION tests.currency_base_id() RETURNS uuid AS $$
    SELECT a.mstr_currency_id FROM tests.info_app AS a WHERE a.remove IS FALSE ORDER BY a.update_at LIMIT 1
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.currency_base_id() IS '@omit
基準通貨の ID(info_app)';

CREATE OR REPLACE FUNCTION tests.currency_rate_at(p_currency_id uuid, p_date date) RETURNS numeric AS $$
    SELECT CASE
        WHEN p_currency_id IS NULL THEN NULL
        WHEN p_currency_id = tests.currency_base_id() THEN 1::numeric
        ELSE (
            SELECT r.rate FROM tests.trans_exchange_rate AS r
            WHERE r.mstr_currency_id = p_currency_id AND r.remove IS FALSE
              AND r.rate_month <= date_trunc('month', p_date)::date
            ORDER BY r.rate_month DESC, r.update_at DESC LIMIT 1
        )
    END
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.currency_rate_at(uuid, date) IS '@omit
その月以前で最新のレート(1 単位の通貨 = 基準通貨いくら)。基準通貨は 1。無ければ NULL';

CREATE OR REPLACE FUNCTION tests.currency_rate_provisional(p_currency_id uuid, p_date date) RETURNS boolean AS $$
    SELECT CASE
        WHEN p_currency_id IS NULL THEN false
        WHEN p_currency_id = tests.currency_base_id() THEN false
        ELSE NOT EXISTS (
            SELECT 1 FROM tests.trans_exchange_rate AS r
            WHERE r.mstr_currency_id = p_currency_id AND r.remove IS FALSE
              AND r.rate_month = date_trunc('month', p_date)::date
        )
    END
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.currency_rate_provisional(uuid, date) IS '@omit
その月のレートが登録されていない(別の月のレートで代用している)とき true。基準通貨は false';

CREATE OR REPLACE FUNCTION tests.acceptance_month(p_acceptance_day smallint, p_date date) RETURNS date AS $$
    SELECT CASE
        WHEN p_date IS NULL THEN NULL
        WHEN p_acceptance_day IS NULL THEN date_trunc('month', p_date)::date
        WHEN extract(day FROM p_date)::int <= LEAST(
            p_acceptance_day::int,
            extract(day FROM (date_trunc('month', p_date) + interval '1 month' - interval '1 day'))::int
        ) THEN date_trunc('month', p_date)::date
        ELSE (date_trunc('month', p_date) + interval '1 month')::date
    END
$$ LANGUAGE sql IMMUTABLE;
COMMENT ON FUNCTION tests.acceptance_month(smallint, date) IS '@omit
検収日を考慮した換算の月(月の初日)。検収日までは当月、後は翌月。NULL は月末(常に当月)。検収日が月の日数より大きいときは月末';

CREATE OR REPLACE FUNCTION tests.currency_to_base(p_amount numeric, p_currency_id uuid, p_date date) RETURNS numeric AS $$
    SELECT ROUND(p_amount * tests.currency_rate_at(p_currency_id, p_date),
        COALESCE((SELECT c.minor_unit FROM tests.mstr_currency AS c WHERE c.mstr_currency_id = tests.currency_base_id()), 0))
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.currency_to_base(numeric, uuid, date) IS '@omit
金額を基準通貨に換算する(基準通貨の小数の桁数で四捨五入)。レートが無ければ NULL';

-- 7. ビュー: 通貨ごとの最新のレート
CREATE OR REPLACE VIEW tests.v_currency_rate_latest AS
SELECT DISTINCT ON (c.mstr_currency_id)
       c.mstr_currency_id
     , c.code
     , c.currency_symbol
     , c.minor_unit
     , c.rate_auto
     , (c.mstr_currency_id = tests.currency_base_id()) AS is_base
     , r.rate_month
     , CASE WHEN c.mstr_currency_id = tests.currency_base_id() THEN 1::numeric ELSE r.rate END AS rate
     , r.auto_fetched
     , r.source
     , c.symbol
FROM tests.mstr_currency AS c
LEFT JOIN tests.trans_exchange_rate AS r
       ON r.mstr_currency_id = c.mstr_currency_id AND r.remove IS FALSE
WHERE c.remove IS FALSE
ORDER BY c.mstr_currency_id, r.rate_month DESC NULLS LAST, r.update_at DESC;

COMMENT ON VIEW tests.v_currency_rate_latest IS '@primaryKey mstr_currency_id
@foreignKey (mstr_currency_id) references mstr_currency (mstr_currency_id)
通貨ごとの最新のレート(月ごとの概算)';
