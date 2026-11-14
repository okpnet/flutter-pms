\c test_avocado
-- ============================================================================
-- 12_cancel_supply_constraints.sql  キャンセル・停止・返品・支給・所有のチェック制約と検索用インデックス
--   設計: claude/130_cancel_return_design_rev2.md / claude/131_supply_ownership_design.md / claude/132_er_review131.md
--   06 (ER から出力) の後に流す。ER 図では表せないものだけをここに置く。
--   制約名・索引名は ER の出力と重ならないよう _CK / _IX9x にしている。
--   計画変更 → MRP の外部キー (trans_plan_change_FK91 / FK92) は 06_cteate_test.sql(MRP の関数と同じ出力)に入れた。
-- ============================================================================

-- ---- 06 の出力では既定値のある列に NOT NULL が付かないため、計算に使う列だけここで付ける ----
-- (キャンセル数量が NULL だと、受注明細・発注明細の残の計算が NULL になる)
update tests.trans_order_detail set cancel_quantity = 0 where cancel_quantity is null;
update tests.trans_purchase_detail set cancel_quantity = 0 where cancel_quantity is null;
alter table tests.trans_order_detail alter column cancel_quantity set not null;
alter table tests.trans_purchase_detail alter column cancel_quantity set not null;

-- ---- 受注明細・発注明細: キャンセル数量は 0 以上、数量以下 ----
alter table tests.trans_order_detail add constraint trans_order_detail_CK1
    check (cancel_quantity >= 0 and cancel_quantity <= quantity);
alter table tests.trans_purchase_detail add constraint trans_purchase_detail_CK1
    check (cancel_quantity >= 0 and cancel_quantity <= coalesce(quantity, 0));

-- ---- 計画変更 ----
-- 対象は 受注明細 / 発注明細 / 生産計画 / 引当予約 / 棚ビジター / 出荷オーダー明細 のどれか1つ
alter table tests.trans_plan_change add constraint trans_plan_change_CK1 check (num_nonnulls(
    trans_order_detail_id, trans_purchase_detail_id, trans_operations_plan_id,
    trans_inventory_request_id, trans_visiter_id, trans_shipping_order_detail_id) = 1);
alter table tests.trans_plan_change add constraint trans_plan_change_CK2 check (cancel_quantity >= 0);
-- 保管(hold)のときは保管先のコンテナが必須
alter table tests.trans_plan_change add constraint trans_plan_change_CK3 check (not hold or trans_container_id is not null);
create index trans_plan_change_IX91 on tests.trans_plan_change (trans_order_detail_id);
create index trans_plan_change_IX92 on tests.trans_plan_change (trans_purchase_detail_id);
create index trans_plan_change_IX93 on tests.trans_plan_change (trans_operations_plan_id);
create index trans_plan_change_IX94 on tests.trans_plan_change (parent_trans_plan_change_id);

-- ---- 受注明細精算 ----
create index trans_order_detail_settlement_IX91 on tests.trans_order_detail_settlement (trans_order_detail_id);

-- ---- 返却 ----
alter table tests.trans_return_detail add constraint trans_return_detail_CK1 check (quantity > 0);
-- 受注側(受注明細・出荷明細実績)と発注側(発注明細・受入実績)を混ぜない
alter table tests.trans_return_detail add constraint trans_return_detail_CK2 check (
    num_nonnulls(trans_order_detail_id, trans_shipping_order_detail_record_id) = 0
    or num_nonnulls(trans_purchase_detail_id, trans_purchase_rec_id) = 0);
create index trans_return_detail_IX91 on tests.trans_return_detail (trans_return_id);
create index trans_return_detail_IX92 on tests.trans_return_detail (trans_order_detail_id);
create index trans_return_detail_IX93 on tests.trans_return_detail (trans_purchase_detail_id);
create index trans_return_visiter_IX91 on tests.trans_return_visiter (trans_return_detail_id);
create index trans_return_visiter_IX92 on tests.trans_return_visiter (trans_visiter_id);

-- ---- 支給 ----
alter table tests.trans_supply add constraint trans_supply_CK1 check (num_nonnulls(trans_order_id, trans_purchase_id) <= 1);
-- 両方 false = 所有は変えない。両方 true は不可
alter table tests.trans_supply add constraint trans_supply_CK2 check (not (counterpart_owns and company_owns));
alter table tests.trans_supply_detail add constraint trans_supply_detail_CK1 check (quantity > 0);
alter table tests.trans_supply_detail add constraint trans_supply_detail_CK2
    check (num_nonnulls(trans_order_detail_id, trans_purchase_detail_id) <= 1);
create index trans_supply_detail_IX91 on tests.trans_supply_detail (trans_supply_id);
create index trans_supply_detail_IX92 on tests.trans_supply_detail (trans_order_detail_id);
create index trans_supply_detail_IX93 on tests.trans_supply_detail (trans_purchase_detail_id);
create index trans_supply_detail_IX94 on tests.trans_supply_detail (trans_resource_plan_id);
create index trans_supply_visiter_IX91 on tests.trans_supply_visiter (trans_supply_detail_id);
create index trans_supply_visiter_IX92 on tests.trans_supply_visiter (trans_visiter_id);

-- ---- 棚ビジター所有者 (有効な所有者) ----
-- 決めたもの(支給明細 または 受注明細)はどちらか1つ。所有者は履歴ID・IDの組で入れる(NULL = 自社)
alter table tests.trans_visiter_owner add constraint trans_visiter_owner_CK1
    check (num_nonnulls(trans_supply_detail_id, trans_order_detail_id) = 1);
alter table tests.trans_visiter_owner add constraint trans_visiter_owner_CK2
    check (num_nonnulls(owner_stakeholder_history_id, owner_stakeholder_id) in (0, 2));
create index trans_visiter_owner_IX91 on tests.trans_visiter_owner (owner_stakeholder_id);
