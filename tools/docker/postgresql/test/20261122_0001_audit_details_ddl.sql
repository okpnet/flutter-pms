-- 20261122_0001 監査の実施記録の DDL(06_cteate_test.sql の追加分。PERO から出力される内容と同じ)。DB の再構築前に、ROLLBACK 付きで検査するときに先に流す
ALTER TABLE tests.trans_audit_team ADD CONSTRAINT trans_audit_team_ix2 UNIQUE (trans_audit_team_id, trans_audit_id);

CREATE TABLE tests.trans_audit_details (
  trans_audit_details_id uuid DEFAULT gen_random_uuid() NOT NULL,
  trans_audit_id uuid NOT NULL,
  audit_std_history_id uuid NOT NULL,
  audit_std_id uuid NOT NULL,
  names uuid NOT NULL,
  trans_audit_team_id uuid NOT NULL,
  scheduled_at timestamp,
  expected_end_at timestamp,
  performed_date date,
  ended_at timestamp,
  conclusion uuid,
  symbol varchar(16) DEFAULT '',
  remarks varchar(1024),
  update_at timestamp DEFAULT now(),
  update_user_id uuid,
  update_user_history_id uuid,
  remove boolean DEFAULT false,
  CONSTRAINT trans_audit_details_pk PRIMARY KEY (trans_audit_details_id),
  CONSTRAINT trans_audit_details_ck1 CHECK (expected_end_at IS NULL OR scheduled_at IS NULL OR expected_end_at >= scheduled_at),
  CONSTRAINT trans_audit_details_ck2 CHECK (ended_at IS NULL OR performed_date IS NULL OR ended_at >= performed_date)
);

CREATE INDEX trans_audit_details_ix91 ON tests.trans_audit_details (trans_audit_id);

ALTER TABLE tests.trans_audit_details ADD CONSTRAINT trans_audit_details_ix1 UNIQUE (symbol);

COMMENT ON TABLE tests.trans_audit_details IS '監査実施詳細(監査の計画と実施の記録。1 つの監査に複数。監査標準・監査名・チーム・予定と実績)';

COMMENT ON COLUMN tests.trans_audit_details.trans_audit_details_id IS '監査実施詳細ID';

COMMENT ON COLUMN tests.trans_audit_details.trans_audit_id IS '監査ID';

COMMENT ON COLUMN tests.trans_audit_details.audit_std_history_id IS '監査標準履歴ID';

COMMENT ON COLUMN tests.trans_audit_details.audit_std_id IS '監査標準ID';

COMMENT ON COLUMN tests.trans_audit_details.names IS '監査名(ラベル)';

COMMENT ON COLUMN tests.trans_audit_details.trans_audit_team_id IS 'チームID';

COMMENT ON COLUMN tests.trans_audit_details.scheduled_at IS '予定日時';

COMMENT ON COLUMN tests.trans_audit_details.expected_end_at IS '終了予定日時';

COMMENT ON COLUMN tests.trans_audit_details.performed_date IS '実施日';

COMMENT ON COLUMN tests.trans_audit_details.ended_at IS '終了日時';

COMMENT ON COLUMN tests.trans_audit_details.conclusion IS '監査結論(文章)';

COMMENT ON COLUMN tests.trans_audit_details.symbol IS 'リニアシンボル';

COMMENT ON COLUMN tests.trans_audit_details.remarks IS '備考';

COMMENT ON COLUMN tests.trans_audit_details.update_at IS '更新日時';

COMMENT ON COLUMN tests.trans_audit_details.update_user_id IS '更新者ID';

COMMENT ON COLUMN tests.trans_audit_details.update_user_history_id IS '更新者履歴ID';

COMMENT ON COLUMN tests.trans_audit_details.remove IS '削除';


CREATE TABLE tests.trans_audit_detail_check_items (
  trans_audit_detail_check_items_id uuid DEFAULT gen_random_uuid() NOT NULL,
  trans_audit_details_id uuid NOT NULL,
  audit_std_checkitem_history_id uuid NOT NULL,
  audit_std_checkitem_id uuid NOT NULL,
  formula_value jsonb,
  findings uuid,
  symbol varchar(16) DEFAULT '',
  remarks varchar(1024),
  update_at timestamp DEFAULT now(),
  update_user_id uuid,
  update_user_history_id uuid,
  remove boolean DEFAULT false,
  CONSTRAINT trans_audit_detail_check_items_pk PRIMARY KEY (trans_audit_detail_check_items_id)
);

CREATE INDEX trans_audit_detail_check_items_ix91 ON tests.trans_audit_detail_check_items (trans_audit_details_id);

ALTER TABLE tests.trans_audit_detail_check_items ADD CONSTRAINT trans_audit_detail_check_items_ix1 UNIQUE (symbol);

COMMENT ON TABLE tests.trans_audit_detail_check_items IS '監査実施詳細項目(計画と実施に紐付く基準(監査標準項目)と事実(式に対する値・所見))';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.trans_audit_detail_check_items_id IS '監査実施詳細項目ID';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.trans_audit_details_id IS '監査実施詳細ID';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.audit_std_checkitem_history_id IS '監査標準項目履歴ID';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.audit_std_checkitem_id IS '監査標準項目ID';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.formula_value IS '式に対する値(JSON。監査標準項目の式 formula_class に対する実測・判定の値)';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.findings IS '所見(文章)';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.symbol IS 'リニアシンボル';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.remarks IS '備考';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.update_at IS '更新日時';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.update_user_id IS '更新者ID';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.update_user_history_id IS '更新者履歴ID';

COMMENT ON COLUMN tests.trans_audit_detail_check_items.remove IS '削除';


CREATE TABLE tests.trans_audit_complaint (
  trans_audit_complaint_id uuid DEFAULT gen_random_uuid() NOT NULL,
  trans_complaint_id uuid NOT NULL,
  trans_audit_detail_check_items_id uuid NOT NULL,
  symbol varchar(16) DEFAULT '',
  remarks varchar(1024),
  update_at timestamp DEFAULT now(),
  update_user_id uuid,
  update_user_history_id uuid,
  remove boolean DEFAULT false,
  CONSTRAINT trans_audit_complaint_pk PRIMARY KEY (trans_audit_complaint_id)
);

CREATE INDEX trans_audit_complaint_ix91 ON tests.trans_audit_complaint (trans_complaint_id);

ALTER TABLE tests.trans_audit_complaint ADD CONSTRAINT trans_audit_complaint_ix1 UNIQUE (symbol);

COMMENT ON TABLE tests.trans_audit_complaint IS '監査の異常(事実が異常・不適合のとき、是正処置を求めるための異常 trans_complaint と、監査実施詳細項目のつなぎ)';

COMMENT ON COLUMN tests.trans_audit_complaint.trans_audit_complaint_id IS '監査の異常ID';

COMMENT ON COLUMN tests.trans_audit_complaint.trans_complaint_id IS '異常ID';

COMMENT ON COLUMN tests.trans_audit_complaint.trans_audit_detail_check_items_id IS '監査実施詳細項目ID';

COMMENT ON COLUMN tests.trans_audit_complaint.symbol IS 'リニアシンボル';

COMMENT ON COLUMN tests.trans_audit_complaint.remarks IS '備考';

COMMENT ON COLUMN tests.trans_audit_complaint.update_at IS '更新日時';

COMMENT ON COLUMN tests.trans_audit_complaint.update_user_id IS '更新者ID';

COMMENT ON COLUMN tests.trans_audit_complaint.update_user_history_id IS '更新者履歴ID';

COMMENT ON COLUMN tests.trans_audit_complaint.remove IS '削除';


ALTER TABLE tests.trans_audit_details ADD CONSTRAINT trans_audit_details_fk1 FOREIGN KEY (trans_audit_id) REFERENCES tests.trans_audit (trans_audit_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_details ADD CONSTRAINT trans_audit_details_fk2 FOREIGN KEY (audit_std_history_id, audit_std_id) REFERENCES tests.history_mstr_audit_std (history_id, mstr_audit_std_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_details ADD CONSTRAINT trans_audit_details_fk3 FOREIGN KEY (names) REFERENCES tests.trans_label (trans_label_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_details ADD CONSTRAINT trans_audit_details_fk4 FOREIGN KEY (trans_audit_team_id, trans_audit_id) REFERENCES tests.trans_audit_team (trans_audit_team_id, trans_audit_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_details ADD CONSTRAINT trans_audit_details_fk5 FOREIGN KEY (conclusion) REFERENCES tests.trans_text (trans_text_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_details ADD CONSTRAINT trans_audit_details_fk6 FOREIGN KEY (update_user_history_id, update_user_id) REFERENCES tests.history_info_staff (history_id, info_staff_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_detail_check_items ADD CONSTRAINT trans_audit_detail_check_items_fk1 FOREIGN KEY (trans_audit_details_id) REFERENCES tests.trans_audit_details (trans_audit_details_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_detail_check_items ADD CONSTRAINT trans_audit_detail_check_items_fk2 FOREIGN KEY (audit_std_checkitem_history_id, audit_std_checkitem_id) REFERENCES tests.history_mstr_audit_std_checkitem (history_id, mstr_audit_std_checkitem_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_detail_check_items ADD CONSTRAINT trans_audit_detail_check_items_fk3 FOREIGN KEY (findings) REFERENCES tests.trans_text (trans_text_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_detail_check_items ADD CONSTRAINT trans_audit_detail_check_items_fk4 FOREIGN KEY (update_user_history_id, update_user_id) REFERENCES tests.history_info_staff (history_id, info_staff_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_complaint ADD CONSTRAINT trans_audit_complaint_fk1 FOREIGN KEY (trans_complaint_id) REFERENCES tests.trans_complaint (trans_complaint_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_complaint ADD CONSTRAINT trans_audit_complaint_fk2 FOREIGN KEY (trans_audit_detail_check_items_id) REFERENCES tests.trans_audit_detail_check_items (trans_audit_detail_check_items_id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE tests.trans_audit_complaint ADD CONSTRAINT trans_audit_complaint_fk3 FOREIGN KEY (update_user_history_id, update_user_id) REFERENCES tests.history_info_staff (history_id, info_staff_id) DEFERRABLE INITIALLY DEFERRED;

CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_audit_details() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_audit_details_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_01_updatetimes_trans_audit_details BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_audit_details FOR EACH ROW EXECUTE FUNCTION tests.trg_01_updatetimes_trans_audit_details();

CREATE TRIGGER trg_04_symbol_trans_audit_details BEFORE INSERT ON tests.trans_audit_details FOR EACH ROW EXECUTE FUNCTION tests.trg_gen_symbol_by_month();

CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_audit_detail_check_items() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_audit_detail_check_items_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_01_updatetimes_trans_audit_detail_check_items BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_audit_detail_check_items FOR EACH ROW EXECUTE FUNCTION tests.trg_01_updatetimes_trans_audit_detail_check_items();

CREATE TRIGGER trg_04_symbol_trans_audit_detail_check_items BEFORE INSERT ON tests.trans_audit_detail_check_items FOR EACH ROW EXECUTE FUNCTION tests.trg_gen_symbol_by_month();

CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_audit_complaint() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_audit_complaint_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER trg_01_updatetimes_trans_audit_complaint BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_audit_complaint FOR EACH ROW EXECUTE FUNCTION tests.trg_01_updatetimes_trans_audit_complaint();

CREATE TRIGGER trg_04_symbol_trans_audit_complaint BEFORE INSERT ON tests.trans_audit_complaint FOR EACH ROW EXECUTE FUNCTION tests.trg_gen_symbol_by_month();

CREATE OR REPLACE FUNCTION tests.trg_03_audit_check_item_std() RETURNS trigger AS
$BODY$
BEGIN
    -- 監査標準項目は、監査実施詳細の監査標準に属すものだけ(別の監査標準の項目は登録できない)
    IF NOT EXISTS (
        SELECT 1
        FROM tests.trans_audit_details AS d
        JOIN tests.history_mstr_audit_std_checkitem AS h
            ON h.history_id = NEW.audit_std_checkitem_history_id
            AND h.mstr_audit_std_checkitem_id = NEW.audit_std_checkitem_id
        WHERE d.trans_audit_details_id = NEW.trans_audit_details_id
            AND h.mstr_audit_std_id = d.audit_std_id
    ) THEN
        RAISE EXCEPTION '監査標準項目が、監査実施詳細の監査標準に属していません' USING ERRCODE = 'AUD01';
    END IF;
    RETURN NEW;
END
$BODY$
LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.trg_03_audit_check_item_std() IS '@omit
監査標準項目が、監査実施詳細の監査標準に属すことを検査するトリガー関数';

CREATE TRIGGER trg_03_audit_check_item_std BEFORE INSERT OR UPDATE ON tests.trans_audit_detail_check_items FOR EACH ROW EXECUTE FUNCTION tests.trg_03_audit_check_item_std();


-- [追加] 監査の実施記録の重複(削除済み remove = true は再登録できる)
CREATE UNIQUE INDEX IF NOT EXISTS trans_audit_detail_check_items_ix_active ON tests.trans_audit_detail_check_items (trans_audit_details_id, audit_std_checkitem_id) WHERE remove = false;
CREATE UNIQUE INDEX IF NOT EXISTS trans_audit_complaint_ix_active ON tests.trans_audit_complaint (trans_complaint_id, trans_audit_detail_check_items_id) WHERE remove = false;
