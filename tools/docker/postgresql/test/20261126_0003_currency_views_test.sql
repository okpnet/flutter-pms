-- 20261126_0003 通貨の換算(金額のビュー)の SQL テスト(V1〜V6)
-- 実行: 06 → 07_dummy → 09 で作った DB に、20261126_0002_currency_ddl.sql・20261126_0003_currency_views_ddl.sql を当てたあと
-- (06 に取り込んだあとは DDL は不要)。1 つのトランザクションで行い、最後に ROLLBACK する(DB は変わらない)。
--   psql -v ON_ERROR_STOP=1 -d postgres -f 20261126_0003_currency_views_test.sql
-- 外部キーは DEFERRABLE INITIALLY DEFERRED で、ROLLBACK のため検査されない(最小の行だけで確かめる)。
-- V1 出荷実績: 顧客(USD・検収日 25)の出荷日が検収日までは当月のレート、後は翌月のレート。通貨の金額はそのまま
-- V2 受入実績: 仕入先(USD・検収日 NULL = 月末)は常に当月。レートが無い月は、最新の月で代用して provisional
-- V3 レートが無いとき amount_base は NULL
-- V4 受注・発注明細の目安: 最新の月のレートで換算(基準通貨の顧客は、そのまま)
-- V5 仕入先の単価と標準原価(v_item_unit_cost): 仕入先の通貨から基準通貨へ換算。レートが無いと rate_missing
-- V6 取引時の通貨は、相手先の履歴のもの(あとで利害関係者の通貨を変えても、過去の取引は変わらない)
\getenv db_test_svr DB_TEST_SVR
\connect :"db_test_svr"
SET search_path TO tests, public;

BEGIN;

CREATE OR REPLACE FUNCTION pg_temp.nm2(p_ja varchar) RETURNS uuid AS $$
DECLARE d uuid; a uuid;
BEGIN
    INSERT INTO tests.shared_dictionary (remarks) VALUES (NULL) RETURNING shared_dictionary_id INTO d;
    INSERT INTO tests.shared_dictionary_value (shared_dictionary_id, shared_language_code_id, dictionary_value)
    SELECT d, l.shared_language_code_id, p_ja FROM tests.shared_language_code AS l WHERE l.code = 'ja' AND l.remove IS FALSE;
    INSERT INTO tests.shared_appellations (shared_dictionary_name_id) VALUES (d) RETURNING shared_appellations_id INTO a;
    RETURN a;
END $$ LANGUAGE plpgsql;

DO $$
DECLARE
    v_jpy uuid; v_usd uuid; v_cust uuid; v_supp uuid; v_hist uuid; v_hist_s uuid;
    v_order uuid; v_od uuid; v_so uuid; v_sd uuid; v_pur uuid; v_pd uuid; v_item uuid; v_r record; v_x numeric;
    v_ih uuid := gen_random_uuid();
BEGIN
    SELECT mstr_currency_id INTO v_jpy FROM tests.info_app WHERE remove IS FALSE ORDER BY update_at LIMIT 1;
    INSERT INTO tests.mstr_currency (code, names, currency_symbol, minor_unit, rate_auto)
    VALUES ('TUS', pg_temp.nm2('米ドル'), '$', 2, true) RETURNING mstr_currency_id INTO v_usd;
    INSERT INTO tests.trans_exchange_rate (mstr_currency_id, rate_month, rate) VALUES
        (v_usd, DATE '2026-10-01', 150), (v_usd, DATE '2026-11-01', 160);

    -- 顧客(USD・検収日 25)・仕入先(USD・検収日 NULL)。既存の利害関係者を使う
    SELECT mstr_stakeholder_id INTO v_cust FROM tests.mstr_stakeholder WHERE remove IS FALSE ORDER BY code LIMIT 1;
    SELECT mstr_stakeholder_id INTO v_supp FROM tests.mstr_stakeholder WHERE remove IS FALSE AND mstr_stakeholder_id <> v_cust ORDER BY code LIMIT 1;
    UPDATE tests.mstr_stakeholder SET mstr_currency_id = v_usd, acceptance_day = 25 WHERE mstr_stakeholder_id = v_cust;
    UPDATE tests.mstr_stakeholder SET mstr_currency_id = v_usd, acceptance_day = NULL WHERE mstr_stakeholder_id = v_supp;
    SELECT history_id INTO v_hist FROM tests.history_mstr_stakeholder WHERE mstr_stakeholder_id = v_cust ORDER BY revision DESC LIMIT 1;
    SELECT history_id INTO v_hist_s FROM tests.history_mstr_stakeholder WHERE mstr_stakeholder_id = v_supp ORDER BY revision DESC LIMIT 1;
    SELECT mstr_item_id INTO v_item FROM tests.mstr_item WHERE remove IS FALSE LIMIT 1;

    -- 受注(顧客の履歴つき)・明細(数量 10・単価 5.00・調整 1.00)・出荷オーダー・出荷明細・出荷実績 2 件(11/25 と 11/26)
    INSERT INTO tests.trans_order (order_number, stakeholder_history_id, stakeholder_id) VALUES ('V-ORD', v_hist, v_cust) RETURNING trans_order_id INTO v_order;
    INSERT INTO tests.trans_order_detail (trans_order_id, item_history_id, item_id, quantity, unit_price, price_adjustment)
    VALUES (v_order, v_ih, v_item, 10, 5.00, 1.00) RETURNING trans_order_detail_id INTO v_od;
    INSERT INTO tests.trans_shipping_order (trans_order_id, estimated_shipping_date, code, estimated_arrival_date)
    VALUES (v_order, TIMESTAMP '2026-11-25 10:00', 'V-SO', DATE '2026-11-27') RETURNING trans_shipping_order_id INTO v_so;
    INSERT INTO tests.trans_shipping_order_detail (trans_shipping_order_id, trans_order_detail_id, shipping_quantity)
    VALUES (v_so, v_od, 10) RETURNING trans_shipping_order_detail_id INTO v_sd;
    INSERT INTO tests.trans_shipping_order_detail_record (trans_shipping_order_detail_id, shipping_date, shipping_quantity) VALUES
        (v_sd, TIMESTAMP '2026-11-25 18:00', 4), (v_sd, TIMESTAMP '2026-11-26 09:00', 6);

    -- V1: 4 個 = 4*5 + 1*(4/10) = 20.40(USD)。11/25(検収日)は 11 月のレート 160、11/26 は 12 月(レートが無いので 11 月で代用・仮)
    SELECT * INTO v_r FROM tests.v_shipping_record_amount WHERE trans_order_detail_id = v_od AND shipping_quantity = 4;
    IF v_r.amount <> 20.40 THEN RAISE EXCEPTION 'V1 通貨の金額 (%)', v_r.amount; END IF;
    IF v_r.rate_month <> DATE '2026-11-01' OR v_r.rate <> 160 OR v_r.provisional THEN RAISE EXCEPTION 'V1 検収日当日は 11 月 (% % %)', v_r.rate_month, v_r.rate, v_r.provisional; END IF;
    IF v_r.amount_base <> ROUND(20.40 * 160, (SELECT minor_unit FROM tests.mstr_currency WHERE mstr_currency_id = v_jpy)) THEN RAISE EXCEPTION 'V1 基準通貨の金額 (%)', v_r.amount_base; END IF;
    SELECT * INTO v_r FROM tests.v_shipping_record_amount WHERE trans_order_detail_id = v_od AND shipping_quantity = 6;
    IF v_r.rate_month <> DATE '2026-12-01' OR v_r.rate <> 160 OR NOT v_r.provisional THEN RAISE EXCEPTION 'V1 検収日の翌日は翌月(仮) (% % %)', v_r.rate_month, v_r.rate, v_r.provisional; END IF;

    -- 発注(仕入先の履歴つき。検収日 NULL)・明細(数量 5・単価 2.00)・受入実績(10/31 と 11/30)
    INSERT INTO tests.trans_purchase (stakeholder_history_id, stakeholder_id) VALUES (v_hist_s, v_supp) RETURNING trans_purchase_id INTO v_pur;
    INSERT INTO tests.trans_purchase_detail (trans_purchase_id, item_history_id, item_id, quantity, unit_price)
    VALUES (v_pur, v_ih, v_item, 5, 2.00) RETURNING trans_purchase_detail_id INTO v_pd;
    INSERT INTO tests.trans_purchase_rec (trans_purchase_detail_id, receive_at, quantity) VALUES
        (v_pd, TIMESTAMP '2026-10-31 12:00', 2), (v_pd, TIMESTAMP '2026-11-30 12:00', 3);
    -- V2: 検収日 NULL は常に当月
    SELECT * INTO v_r FROM tests.v_purchase_rec_amount WHERE trans_purchase_detail_id = v_pd AND received_quantity = 2;
    IF v_r.rate_month <> DATE '2026-10-01' OR v_r.rate <> 150 OR v_r.provisional OR v_r.amount <> 4.00 THEN RAISE EXCEPTION 'V2 10 月 (% % % %)', v_r.rate_month, v_r.rate, v_r.provisional, v_r.amount; END IF;
    SELECT * INTO v_r FROM tests.v_purchase_rec_amount WHERE trans_purchase_detail_id = v_pd AND received_quantity = 3;
    IF v_r.rate_month <> DATE '2026-11-01' OR v_r.rate <> 160 OR v_r.amount <> 6.00 THEN RAISE EXCEPTION 'V2 11 月 (% % %)', v_r.rate_month, v_r.rate, v_r.amount; END IF;

    -- V3: レートが無い(最初の月より前)とき amount_base は NULL
    INSERT INTO tests.trans_purchase_rec (trans_purchase_detail_id, receive_at, quantity) VALUES (v_pd, TIMESTAMP '2026-08-15 12:00', 1);
    SELECT * INTO v_r FROM tests.v_purchase_rec_amount WHERE trans_purchase_detail_id = v_pd AND received_quantity = 1;
    IF v_r.amount_base IS NOT NULL OR v_r.rate IS NOT NULL THEN RAISE EXCEPTION 'V3 レートが無いのに換算された'; END IF;

    -- V4: 目安(最新の月のレート。今日の月以前で最新 = 11 月の 160)
    SELECT * INTO v_r FROM tests.v_order_detail_amount WHERE trans_order_detail_id = v_od;
    IF v_r.amount <> 51.00 THEN RAISE EXCEPTION 'V4 受注明細の通貨の金額 (%)', v_r.amount; END IF;
    IF v_r.rate <> 160 THEN RAISE EXCEPTION 'V4 受注明細のレート (%)', v_r.rate; END IF;
    SELECT * INTO v_r FROM tests.v_purchase_detail_amount WHERE trans_purchase_detail_id = v_pd;
    IF v_r.amount <> 10.00 OR v_r.amount_base IS NULL THEN RAISE EXCEPTION 'V4 発注明細 (% %)', v_r.amount, v_r.amount_base; END IF;
    -- 基準通貨の顧客は、そのまま(レート 1)
    UPDATE tests.mstr_stakeholder SET mstr_currency_id = v_jpy WHERE mstr_stakeholder_id = v_supp;
    INSERT INTO tests.trans_purchase (stakeholder_history_id, stakeholder_id)
    SELECT h.history_id, h.mstr_stakeholder_id FROM tests.history_mstr_stakeholder AS h
     WHERE h.mstr_stakeholder_id = v_supp ORDER BY h.revision DESC LIMIT 1 RETURNING trans_purchase_id INTO v_pur;
    INSERT INTO tests.trans_purchase_detail (trans_purchase_id, item_history_id, item_id, quantity, unit_price)
    VALUES (v_pur, v_ih, v_item, 2, 3.00) RETURNING trans_purchase_detail_id INTO v_pd;
    SELECT * INTO v_r FROM tests.v_purchase_detail_amount WHERE trans_purchase_detail_id = v_pd;
    IF v_r.rate <> 1 OR v_r.provisional OR v_r.amount_base <> ROUND(6.00, (SELECT minor_unit FROM tests.mstr_currency WHERE mstr_currency_id = v_jpy)) THEN
        RAISE EXCEPTION 'V4 基準通貨の発注 (% % %)', v_r.rate, v_r.provisional, v_r.amount_base;
    END IF;

    -- V6: 取引時の通貨は履歴のもの。顧客の通貨をあとで JPY に変えても、過去の出荷実績は USD のまま
    UPDATE tests.mstr_stakeholder SET mstr_currency_id = v_jpy WHERE mstr_stakeholder_id = v_cust;
    SELECT * INTO v_r FROM tests.v_shipping_record_amount WHERE trans_order_detail_id = v_od AND shipping_quantity = 4;
    IF v_r.mstr_currency_id <> v_usd OR v_r.currency_code <> 'TUS' THEN RAISE EXCEPTION 'V6 過去の取引の通貨が変わった (%)', v_r.currency_code; END IF;

    -- V5: 仕入先の単価と標準原価
    UPDATE tests.mstr_stakeholder SET mstr_currency_id = v_usd WHERE mstr_stakeholder_id = v_supp;
    DELETE FROM tests.mstr_item_supplier WHERE mstr_item_id = v_item;
    INSERT INTO tests.mstr_item_supplier (mstr_stakeholder_id, mstr_item_id, minimum_lot_size, cost, priority) VALUES (v_supp, v_item, 1, 2.50, 1);
    SELECT * INTO v_r FROM tests.v_item_supplier_cost WHERE item_id = v_item;
    IF v_r.cost <> 2.50 OR v_r.rate <> 160 OR v_r.cost_base <> ROUND(2.50 * 160, (SELECT minor_unit FROM tests.mstr_currency WHERE mstr_currency_id = v_jpy)) THEN
        RAISE EXCEPTION 'V5 仕入先の単価 (% % %)', v_r.cost, v_r.rate, v_r.cost_base;
    END IF;
    SELECT purchase_cost, rate_missing INTO v_x, v_r.provisional FROM tests.v_item_unit_cost WHERE item_id = v_item;
    IF v_x <> ROUND(2.50 * 160, (SELECT minor_unit FROM tests.mstr_currency WHERE mstr_currency_id = v_jpy)) THEN RAISE EXCEPTION 'V5 標準原価 (%)', v_x; END IF;
    IF v_r.provisional THEN RAISE EXCEPTION 'V5 レートがあるのに rate_missing'; END IF;
    -- レートが無い通貨の仕入先は、purchase_cost が 0 で rate_missing が true
    INSERT INTO tests.mstr_currency (code, names, currency_symbol, minor_unit) VALUES ('TEU', pg_temp.nm2('ユーロ'), 'TEU', 2);
    UPDATE tests.mstr_stakeholder SET mstr_currency_id = (SELECT mstr_currency_id FROM tests.mstr_currency WHERE code = 'TEU' AND remove IS FALSE) WHERE mstr_stakeholder_id = v_supp;
    SELECT purchase_cost, rate_missing INTO v_x, v_r.provisional FROM tests.v_item_unit_cost WHERE item_id = v_item;
    IF v_x <> 0 OR NOT v_r.provisional THEN RAISE EXCEPTION 'V5 レートが無いとき (% %)', v_x, v_r.provisional; END IF;

    RAISE NOTICE 'V1〜V6 OK';
END $$;

ROLLBACK;
