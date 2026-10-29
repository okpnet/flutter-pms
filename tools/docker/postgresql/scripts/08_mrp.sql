\c test_avocado
-- ============================================================================
-- 08_mrp.sql  MRP2 (受注MRP・再MRP・発注・在庫引当・工程計画)
--   06_cteate_test.sql の後に実行する (Docker の /docker-entrypoint-initdb.d に 06 → 08 の順で置く)
--   設計: claude/91_mrp2_design.md (第3版) ＋ claude/96_mrp2_design_rev4.md (第4版)
--
--   A. テーブル        : MRP結果テーブル 5本
--   B. トリガー        : trg_01(更新日時・ID) / trg_04(シンボル) / trg_05(確定後の保護)
--   C. 補助関数        : 履歴ID・稼働カレンダー・工程の候補と日程・数量
--   D. マスタ点検      : v_mrp_master_issue / mrp_check_items / mrp_check_order_import / 計算列
--   E. MRP計算         : mrp_run
--   F. 確定・操作      : mrp_commit / mrp_execute / mrp_discard / mrp_set_decision / mrp_purge
--   G. 参照            : v_item_on_hand / mrp_equipment_load / v_resource_plan_coverage /
--                        v_mrp_purchase_plan / v_mrp_pending_suggestion
--
--   06 の前提 (第4版):
--     ・内製 / 購買: 購入品フラグ(mstr_item.catalog_item)と品目工程運用明細の有無で判定
--         フラグあり・工程なし = 購買 / フラグなし・工程あり = 内製 / どちらも無し = 購買(マスタ点検で警告)
--         フラグあり・工程あり = 内製・購買の選択: 品目体系の累積リードタイムで、納期に間に合う方。両方間に合えば上位(購買)
--     ・購買: 品目仕入先(mstr_item_supplier)。仕入先フラグ(mstr_stakeholder.is_supplier)のある仕入先を優先順位で選ぶ
--       納入日時 = 必要日時 - 標準検品時間、発注日時 = 納入日時 - デリバリータイム(どちらも暦時間)
--       数量 = 正味所要 → 最小発注ロット → 品目ロットの倍数。言い値の仕入先は単価0で発注し、備考に「言い値(単価未定)」
--     ・工程場所 1件 = 利用可能設備(内部) または 利用可能外部(外部) の1件。工程場所の priority の小さい順に使う
--     ・工程の時間: 品目工程運用明細の標準時間(ロットあたり固定)。無ければ工程の標準時間
--       内部 = 標準時間を設備の稼働カレンダーで割り付け ＋ デリバリー時間(暦時間)
--       外部 = 標準時間(暦時間) ＋ デリバリー時間(暦時間)
--     ・外注単価: mstr_item_task_cost (品目×工程場所)
--     ・外注発注明細 = 生産計画明細(trans_work_plan.trans_purchase_detail_id)から参照される発注明細
--       資材支給区分・有償支給区分は利用可能外部の値を外注発注明細に写す
--     ・発注明細の単価 = unit_price (確定単価 fixed_price・価格調整 price_adjustment は MRP では触らない)
--     ・資材計画の区分: 受注明細あり=受注 / 非計上明細あり=非計上 / 親生産計画あり=従属 / どれも無い=安全在庫
-- ============================================================================

-- ============================================================================
-- A. テーブル
-- ============================================================================

-- ---------------------------------------------------------------------------
-- A-1. MRP結果テーブル (ユーザーの判断を挟むため、一時テーブルではなく永続化する)
-- ---------------------------------------------------------------------------
create table tests.trans_mrp_run (
    trans_mrp_run_id uuid default gen_random_uuid(),
    run_mode smallint not null,
    status smallint default 0,
    run_at timestamp default now(),
    committed_at timestamp default null,
    staff_history_id uuid not null,
    staff_id uuid not null,
    params jsonb default null,
    suggestion_count integer default 0,
    pending_count integer default 0,
    late_count integer default 0,
    overload_count integer default 0,
    symbol varchar(16) default '',
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_mrp_suggestion (
    trans_mrp_suggestion_id uuid default gen_random_uuid(),
    trans_mrp_run_id uuid not null,
    parent_trans_mrp_suggestion_id uuid default null,
    seq integer not null,
    kind varchar(32) not null,
    decision smallint default 0,
    need_user boolean default 'f',
    late boolean default 'f',
    item_history_id uuid default null,
    item_id uuid default null,
    bom_level smallint default 0,
    plan_kind smallint default null,
    quantity decimal(10,2) default null,
    allocated_quantity decimal(10,2) default null,
    old_quantity decimal(10,2) default null,
    need_at timestamp default null,
    release_at timestamp default null,
    due_at timestamp default null,
    old_due_at timestamp default null,
    trans_order_detail_id uuid default null,
    trans_unrecognized_detail_id uuid default null,
    trans_resource_plan_id uuid default null,
    parent_trans_operations_plan_id uuid default null,
    trans_purchase_detail_id uuid default null,
    trans_operations_plan_id uuid default null,
    stakeholder_history_id uuid default null,
    stakeholder_id uuid default null,
    cost decimal(10,2) default null,
    asking_price boolean default 'f',
    trans_mrp_suggestion_task_id uuid default null,
    mstr_outsource_available_history_id uuid default null,
    mstr_outsource_available_id uuid default null,
    mstr_equipment_id uuid default null,
    load_date date default null,
    message varchar(1024) default null,
    applied_at timestamp default null,
    symbol varchar(16) default '',
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_mrp_suggestion_task (
    trans_mrp_suggestion_task_id uuid default gen_random_uuid(),
    trans_mrp_suggestion_id uuid not null,
    trans_work_plan_id uuid default null,
    mstr_task_id uuid not null,
    sequence integer default 1,
    mstr_equipment_available_history_id uuid default null,
    mstr_equipment_available_id uuid default null,
    mstr_outsource_available_history_id uuid default null,
    mstr_outsource_available_id uuid default null,
    outsource_trans_mrp_suggestion_id uuid default null,
    cost decimal(10,2) default null,
    interval_plan interval default null,
    start_at timestamp default null,
    completion_at timestamp default null,
    symbol varchar(16) default '',
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_mrp_pegging (
    trans_mrp_pegging_id uuid default gen_random_uuid(),
    trans_mrp_run_id uuid not null,
    demand_trans_mrp_suggestion_id uuid not null,
    supply_kind smallint not null,
    supply_trans_mrp_suggestion_id uuid default null,
    trans_purchase_detail_id uuid default null,
    trans_operations_plan_id uuid default null,
    quantity decimal(10,2) default 0,
    need_at timestamp default null,
    available_at timestamp default null,
    symbol varchar(16) default '',
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);
create table tests.trans_mrp_load (
    trans_mrp_load_id uuid default gen_random_uuid(),
    trans_mrp_run_id uuid not null,
    mstr_equipment_id uuid not null,
    load_date date not null,
    capacity_hours decimal(8,2) default 0,
    committed_hours decimal(8,2) default 0,
    planned_hours decimal(8,2) default 0,
    load_rate decimal(8,2) default null,
    symbol varchar(16) default '',
    remarks varchar(1024) default null,
    update_at timestamp default now(),
    update_user_id uuid default null,
    update_user_history_id uuid default null,
    remove boolean default 'f'
);

-- ---------------------------------------------------------------------------
-- A-2. コメント
-- ---------------------------------------------------------------------------

comment on table tests.trans_mrp_run is 'MRP実行';
comment on column tests.trans_mrp_run.trans_mrp_run_id is 'MRP実行ID';
comment on column tests.trans_mrp_run.run_mode is '実行区分(1:受注MRP 2:再MRP)';
comment on column tests.trans_mrp_run.status is '状態(0:計算済 1:確定 2:破棄 3:失効)';
comment on column tests.trans_mrp_run.run_at is '実行日時';
comment on column tests.trans_mrp_run.committed_at is '確定日時';
comment on column tests.trans_mrp_run.staff_history_id is '担当者履歴ID';
comment on column tests.trans_mrp_run.staff_id is '担当者ID';
comment on column tests.trans_mrp_run.params is '実行パラメータ';
comment on column tests.trans_mrp_run.suggestion_count is '提案件数';
comment on column tests.trans_mrp_run.pending_count is '要判断件数';
comment on column tests.trans_mrp_run.late_count is '遅れ件数';
comment on column tests.trans_mrp_run.overload_count is '過負荷件数';
comment on column tests.trans_mrp_run.symbol is 'リニアシンボル';
comment on column tests.trans_mrp_run.remarks is '備考';
comment on column tests.trans_mrp_run.update_at is '更新日時';
comment on column tests.trans_mrp_run.update_user_id is '更新者ID';
comment on column tests.trans_mrp_run.update_user_history_id is '更新者履歴ID';
comment on column tests.trans_mrp_run.remove is '削除';

comment on table tests.trans_mrp_suggestion is 'MRP提案';
comment on column tests.trans_mrp_suggestion.trans_mrp_suggestion_id is 'MRP提案ID';
comment on column tests.trans_mrp_suggestion.trans_mrp_run_id is 'MRP実行ID';
comment on column tests.trans_mrp_suggestion.parent_trans_mrp_suggestion_id is '親MRP提案ID';
comment on column tests.trans_mrp_suggestion.seq is '順';
comment on column tests.trans_mrp_suggestion.kind is '提案種別';
comment on column tests.trans_mrp_suggestion.decision is '判断(0:要判断 1:採用 2:却下 9:情報)';
comment on column tests.trans_mrp_suggestion.need_user is 'ユーザー判断が必要';
comment on column tests.trans_mrp_suggestion.late is '納期遅れ';
comment on column tests.trans_mrp_suggestion.item_history_id is '品目履歴ID';
comment on column tests.trans_mrp_suggestion.item_id is '品目ID';
comment on column tests.trans_mrp_suggestion.bom_level is '低位レベルコード';
comment on column tests.trans_mrp_suggestion.plan_kind is '計画区分(1:受注 2:非計上 3:安全在庫 4:従属)';
comment on column tests.trans_mrp_suggestion.quantity is '数量(資材計画:総所要 / 発注・生産:数量)';
comment on column tests.trans_mrp_suggestion.allocated_quantity is '在庫引当数量';
comment on column tests.trans_mrp_suggestion.old_quantity is '変更前数量';
comment on column tests.trans_mrp_suggestion.need_at is '必要日時';
comment on column tests.trans_mrp_suggestion.release_at is '発注日・着手日';
comment on column tests.trans_mrp_suggestion.due_at is '納期・完了予定';
comment on column tests.trans_mrp_suggestion.old_due_at is '変更前納期';
comment on column tests.trans_mrp_suggestion.trans_order_detail_id is '受注明細ID';
comment on column tests.trans_mrp_suggestion.trans_unrecognized_detail_id is '非計上明細ID';
comment on column tests.trans_mrp_suggestion.trans_resource_plan_id is '資材計画ID';
comment on column tests.trans_mrp_suggestion.parent_trans_operations_plan_id is '親生産計画ID';
comment on column tests.trans_mrp_suggestion.trans_purchase_detail_id is '発注明細ID';
comment on column tests.trans_mrp_suggestion.trans_operations_plan_id is '生産計画ID';
comment on column tests.trans_mrp_suggestion.stakeholder_history_id is '仕入先・外注先履歴ID';
comment on column tests.trans_mrp_suggestion.stakeholder_id is '仕入先・外注先ID';
comment on column tests.trans_mrp_suggestion.cost is '単価';
comment on column tests.trans_mrp_suggestion.asking_price is '言い値(単価未定)';
comment on column tests.trans_mrp_suggestion.trans_mrp_suggestion_task_id is '対象のMRP提案工程ID(外注切り替え)';
comment on column tests.trans_mrp_suggestion.mstr_outsource_available_history_id is '切り替え先の利用可能外部履歴ID';
comment on column tests.trans_mrp_suggestion.mstr_outsource_available_id is '切り替え先の利用可能外部ID';
comment on column tests.trans_mrp_suggestion.mstr_equipment_id is '設備ID(過負荷)';
comment on column tests.trans_mrp_suggestion.load_date is '負荷日(過負荷)';
comment on column tests.trans_mrp_suggestion.message is 'メッセージ';
comment on column tests.trans_mrp_suggestion.applied_at is '反映日時';
comment on column tests.trans_mrp_suggestion.symbol is 'リニアシンボル';
comment on column tests.trans_mrp_suggestion.remarks is '備考';
comment on column tests.trans_mrp_suggestion.update_at is '更新日時';
comment on column tests.trans_mrp_suggestion.update_user_id is '更新者ID';
comment on column tests.trans_mrp_suggestion.update_user_history_id is '更新者履歴ID';
comment on column tests.trans_mrp_suggestion.remove is '削除';

comment on table tests.trans_mrp_suggestion_task is 'MRP提案工程';
comment on column tests.trans_mrp_suggestion_task.trans_mrp_suggestion_task_id is 'MRP提案工程ID';
comment on column tests.trans_mrp_suggestion_task.trans_mrp_suggestion_id is 'MRP提案ID';
comment on column tests.trans_mrp_suggestion_task.trans_work_plan_id is '生産計画明細ID';
comment on column tests.trans_mrp_suggestion_task.mstr_task_id is '工程ID';
comment on column tests.trans_mrp_suggestion_task.sequence is '順';
comment on column tests.trans_mrp_suggestion_task.mstr_equipment_available_history_id is '利用可能設備履歴ID';
comment on column tests.trans_mrp_suggestion_task.mstr_equipment_available_id is '利用可能設備ID(内部)';
comment on column tests.trans_mrp_suggestion_task.mstr_outsource_available_history_id is '利用可能外部履歴ID';
comment on column tests.trans_mrp_suggestion_task.mstr_outsource_available_id is '利用可能外部ID(外部)';
comment on column tests.trans_mrp_suggestion_task.outsource_trans_mrp_suggestion_id is '外注発注のMRP提案ID';
comment on column tests.trans_mrp_suggestion_task.cost is '単価';
comment on column tests.trans_mrp_suggestion_task.interval_plan is '予定時間';
comment on column tests.trans_mrp_suggestion_task.start_at is '開始予定';
comment on column tests.trans_mrp_suggestion_task.completion_at is '完了予定';
comment on column tests.trans_mrp_suggestion_task.symbol is 'リニアシンボル';
comment on column tests.trans_mrp_suggestion_task.remarks is '備考';
comment on column tests.trans_mrp_suggestion_task.update_at is '更新日時';
comment on column tests.trans_mrp_suggestion_task.update_user_id is '更新者ID';
comment on column tests.trans_mrp_suggestion_task.update_user_history_id is '更新者履歴ID';
comment on column tests.trans_mrp_suggestion_task.remove is '削除';

comment on table tests.trans_mrp_pegging is 'MRPペギング';
comment on column tests.trans_mrp_pegging.trans_mrp_pegging_id is 'MRPペギングID';
comment on column tests.trans_mrp_pegging.trans_mrp_run_id is 'MRP実行ID';
comment on column tests.trans_mrp_pegging.demand_trans_mrp_suggestion_id is '需要のMRP提案ID';
comment on column tests.trans_mrp_pegging.supply_kind is '供給区分(1:在庫 2:発注残 3:生産残 4:新規発注 5:新規生産)';
comment on column tests.trans_mrp_pegging.supply_trans_mrp_suggestion_id is '供給のMRP提案ID';
comment on column tests.trans_mrp_pegging.trans_purchase_detail_id is '発注明細ID';
comment on column tests.trans_mrp_pegging.trans_operations_plan_id is '生産計画ID';
comment on column tests.trans_mrp_pegging.quantity is '数量';
comment on column tests.trans_mrp_pegging.need_at is '必要日時';
comment on column tests.trans_mrp_pegging.available_at is '供給日時';
comment on column tests.trans_mrp_pegging.symbol is 'リニアシンボル';
comment on column tests.trans_mrp_pegging.remarks is '備考';
comment on column tests.trans_mrp_pegging.update_at is '更新日時';
comment on column tests.trans_mrp_pegging.update_user_id is '更新者ID';
comment on column tests.trans_mrp_pegging.update_user_history_id is '更新者履歴ID';
comment on column tests.trans_mrp_pegging.remove is '削除';

comment on table tests.trans_mrp_load is 'MRP工程負荷';
comment on column tests.trans_mrp_load.trans_mrp_load_id is 'MRP工程負荷ID';
comment on column tests.trans_mrp_load.trans_mrp_run_id is 'MRP実行ID';
comment on column tests.trans_mrp_load.mstr_equipment_id is '設備ID';
comment on column tests.trans_mrp_load.load_date is '負荷日';
comment on column tests.trans_mrp_load.capacity_hours is '稼働時間(h)';
comment on column tests.trans_mrp_load.committed_hours is '確定済み負荷(h)';
comment on column tests.trans_mrp_load.planned_hours is '提案適用後の負荷(h)';
comment on column tests.trans_mrp_load.load_rate is '負荷率(%)';
comment on column tests.trans_mrp_load.symbol is 'リニアシンボル';
comment on column tests.trans_mrp_load.remarks is '備考';
comment on column tests.trans_mrp_load.update_at is '更新日時';
comment on column tests.trans_mrp_load.update_user_id is '更新者ID';
comment on column tests.trans_mrp_load.update_user_history_id is '更新者履歴ID';
comment on column tests.trans_mrp_load.remove is '削除';

-- ---------------------------------------------------------------------------
-- A-3. 主キー・一意制約・チェック
-- ---------------------------------------------------------------------------

create unique index trans_mrp_run_PKI
    on tests.trans_mrp_run(trans_mrp_run_id);
alter table tests.trans_mrp_run
    add constraint trans_mrp_run_PKC primary key (trans_mrp_run_id);
alter table tests.trans_mrp_run
     add constraint trans_mrp_run_IX1 unique  (symbol);

create unique index trans_mrp_suggestion_PKI
    on tests.trans_mrp_suggestion(trans_mrp_suggestion_id);
alter table tests.trans_mrp_suggestion
    add constraint trans_mrp_suggestion_PKC primary key (trans_mrp_suggestion_id);
alter table tests.trans_mrp_suggestion
     add constraint trans_mrp_suggestion_IX1 unique  (symbol);
alter table tests.trans_mrp_suggestion
     add constraint trans_mrp_suggestion_IX2 unique  (trans_mrp_run_id,seq);

create unique index trans_mrp_suggestion_task_PKI
    on tests.trans_mrp_suggestion_task(trans_mrp_suggestion_task_id);
alter table tests.trans_mrp_suggestion_task
    add constraint trans_mrp_suggestion_task_PKC primary key (trans_mrp_suggestion_task_id);
alter table tests.trans_mrp_suggestion_task
     add constraint trans_mrp_suggestion_task_IX1 unique  (symbol);
-- 内部・外部のどちらか一方 (両方NULLは工程場所が無い工程)
alter table tests.trans_mrp_suggestion_task
     add constraint trans_mrp_suggestion_task_CK1 check (num_nonnulls(mstr_equipment_available_id, mstr_outsource_available_id) <= 1);

create unique index trans_mrp_pegging_PKI
    on tests.trans_mrp_pegging(trans_mrp_pegging_id);
alter table tests.trans_mrp_pegging
    add constraint trans_mrp_pegging_PKC primary key (trans_mrp_pegging_id);
alter table tests.trans_mrp_pegging
     add constraint trans_mrp_pegging_IX1 unique  (symbol);

create unique index trans_mrp_load_PKI
    on tests.trans_mrp_load(trans_mrp_load_id);
alter table tests.trans_mrp_load
    add constraint trans_mrp_load_PKC primary key (trans_mrp_load_id);
alter table tests.trans_mrp_load
     add constraint trans_mrp_load_IX1 unique  (symbol);
alter table tests.trans_mrp_load
     add constraint trans_mrp_load_IX2 unique  (trans_mrp_run_id,mstr_equipment_id,load_date);

-- ---------------------------------------------------------------------------
-- A-4. 外部キー
-- ---------------------------------------------------------------------------

alter table tests.trans_mrp_run add constraint trans_mrp_run_FK1 foreign key (staff_history_id,staff_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_run add constraint trans_mrp_run_FK2 foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;

alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK1 foreign key (trans_mrp_run_id) references tests.trans_mrp_run (trans_mrp_run_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK2 foreign key (parent_trans_mrp_suggestion_id) references tests.trans_mrp_suggestion (trans_mrp_suggestion_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK3 foreign key (item_history_id,item_id) references tests.history_mstr_item (history_id,mstr_item_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK4 foreign key (trans_order_detail_id) references tests.trans_order_detail (trans_order_detail_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK5 foreign key (trans_unrecognized_detail_id) references tests.trans_unrecognized_detail (trans_unrecognized_detail_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK6 foreign key (trans_resource_plan_id) references tests.trans_resource_plan (trans_resource_plan_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK7 foreign key (parent_trans_operations_plan_id) references tests.trans_operations_plan (trans_operations_plan_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK8 foreign key (trans_purchase_detail_id) references tests.trans_purchase_detail (trans_purchase_detail_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK9 foreign key (trans_operations_plan_id) references tests.trans_operations_plan (trans_operations_plan_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK10 foreign key (stakeholder_history_id,stakeholder_id) references tests.history_mstr_stakeholder (history_id,mstr_stakeholder_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK11 foreign key (trans_mrp_suggestion_task_id) references tests.trans_mrp_suggestion_task (trans_mrp_suggestion_task_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK12 foreign key (mstr_outsource_available_history_id,mstr_outsource_available_id) references tests.history_mstr_outsource_available (history_id,mstr_outsource_available_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK13 foreign key (mstr_equipment_id) references tests.mstr_equipment (mstr_equipment_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion add constraint trans_mrp_suggestion_FK14 foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;

alter table tests.trans_mrp_suggestion_task add constraint trans_mrp_suggestion_task_FK1 foreign key (trans_mrp_suggestion_id) references tests.trans_mrp_suggestion (trans_mrp_suggestion_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion_task add constraint trans_mrp_suggestion_task_FK2 foreign key (trans_work_plan_id) references tests.trans_work_plan (trans_work_plan_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion_task add constraint trans_mrp_suggestion_task_FK3 foreign key (mstr_task_id) references tests.mstr_task (mstr_task_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion_task add constraint trans_mrp_suggestion_task_FK4 foreign key (mstr_equipment_available_history_id,mstr_equipment_available_id) references tests.history_mstr_equipment_available (history_id,mstr_equipment_available_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion_task add constraint trans_mrp_suggestion_task_FK5 foreign key (mstr_outsource_available_history_id,mstr_outsource_available_id) references tests.history_mstr_outsource_available (history_id,mstr_outsource_available_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion_task add constraint trans_mrp_suggestion_task_FK6 foreign key (outsource_trans_mrp_suggestion_id) references tests.trans_mrp_suggestion (trans_mrp_suggestion_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_suggestion_task add constraint trans_mrp_suggestion_task_FK7 foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;

alter table tests.trans_mrp_pegging add constraint trans_mrp_pegging_FK1 foreign key (trans_mrp_run_id) references tests.trans_mrp_run (trans_mrp_run_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_pegging add constraint trans_mrp_pegging_FK2 foreign key (demand_trans_mrp_suggestion_id) references tests.trans_mrp_suggestion (trans_mrp_suggestion_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_pegging add constraint trans_mrp_pegging_FK3 foreign key (supply_trans_mrp_suggestion_id) references tests.trans_mrp_suggestion (trans_mrp_suggestion_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_pegging add constraint trans_mrp_pegging_FK4 foreign key (trans_purchase_detail_id) references tests.trans_purchase_detail (trans_purchase_detail_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_pegging add constraint trans_mrp_pegging_FK5 foreign key (trans_operations_plan_id) references tests.trans_operations_plan (trans_operations_plan_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_pegging add constraint trans_mrp_pegging_FK6 foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;

alter table tests.trans_mrp_load add constraint trans_mrp_load_FK1 foreign key (trans_mrp_run_id) references tests.trans_mrp_run (trans_mrp_run_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_load add constraint trans_mrp_load_FK2 foreign key (mstr_equipment_id) references tests.mstr_equipment (mstr_equipment_id) DEFERRABLE INITIALLY DEFERRED;
alter table tests.trans_mrp_load add constraint trans_mrp_load_FK3 foreign key (update_user_history_id,update_user_id) references tests.history_info_staff (history_id,info_staff_id) DEFERRABLE INITIALLY DEFERRED;

-- 検索用インデックス
create index trans_mrp_suggestion_IX3 on tests.trans_mrp_suggestion (trans_resource_plan_id);
create index trans_mrp_suggestion_task_IX2 on tests.trans_mrp_suggestion_task (trans_mrp_suggestion_id);
create index trans_mrp_pegging_IX2 on tests.trans_mrp_pegging (trans_mrp_run_id, demand_trans_mrp_suggestion_id);
-- ============================================================================
-- B. トリガー
-- ============================================================================

-- trans_mrp_run update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_mrp_run() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_mrp_run_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_mrp_run BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_mrp_run FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_mrp_run();
CREATE TRIGGER trg_04_symbol_trans_mrp_run BEFORE INSERT ON tests.trans_mrp_run FOR EACH ROW EXECUTE PROCEDURE tests.trg_gen_symbol_by_month();

-- trans_mrp_suggestion update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_mrp_suggestion() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_mrp_suggestion_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_mrp_suggestion BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_mrp_suggestion FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_mrp_suggestion();
CREATE TRIGGER trg_04_symbol_trans_mrp_suggestion BEFORE INSERT ON tests.trans_mrp_suggestion FOR EACH ROW EXECUTE PROCEDURE tests.trg_gen_symbol_by_month();

-- trans_mrp_suggestion_task update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_mrp_suggestion_task() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_mrp_suggestion_task_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_mrp_suggestion_task BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_mrp_suggestion_task FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_mrp_suggestion_task();
CREATE TRIGGER trg_04_symbol_trans_mrp_suggestion_task BEFORE INSERT ON tests.trans_mrp_suggestion_task FOR EACH ROW EXECUTE PROCEDURE tests.trg_gen_symbol_by_month();

-- trans_mrp_pegging update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_mrp_pegging() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_mrp_pegging_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_mrp_pegging BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_mrp_pegging FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_mrp_pegging();
CREATE TRIGGER trg_04_symbol_trans_mrp_pegging BEFORE INSERT ON tests.trans_mrp_pegging FOR EACH ROW EXECUTE PROCEDURE tests.trg_gen_symbol_by_month();

-- trans_mrp_load update trigger
CREATE OR REPLACE FUNCTION tests.trg_01_updatetimes_trans_mrp_load() RETURNS trigger AS
$BODY$
DECLARE
    latest_row record;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP='INSERT') THEN
        NEW.trans_mrp_load_id := gen_random_uuid();
        NEW.update_at:=now();
        RETURN NEW;
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
END
$BODY$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trg_01_updatetimes_trans_mrp_load BEFORE INSERT OR UPDATE OR DELETE ON tests.trans_mrp_load FOR EACH ROW EXECUTE
PROCEDURE tests.trg_01_updatetimes_trans_mrp_load();
CREATE TRIGGER trg_04_symbol_trans_mrp_load BEFORE INSERT ON tests.trans_mrp_load FOR EACH ROW EXECUTE PROCEDURE tests.trg_gen_symbol_by_month();


-- ============================================================================
-- C. 補助関数 (履歴ID・稼働カレンダー・工程の候補と日程・数量)
--    PostGraphile: STABLE は Query、VOLATILE は Mutation。内部用は @omit で隠す。
-- ============================================================================

-- ---- 最新の履歴ID -----------------------------------------------------------
CREATE OR REPLACE FUNCTION tests.mrp_hist_item(p_id uuid) RETURNS uuid AS $$
    SELECT h.history_id FROM tests.history_mstr_item AS h
    WHERE h.mstr_item_id = p_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
$$ LANGUAGE sql STABLE;

CREATE OR REPLACE FUNCTION tests.mrp_hist_staff(p_id uuid) RETURNS uuid AS $$
    SELECT h.history_id FROM tests.history_info_staff AS h
    WHERE h.info_staff_id = p_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
$$ LANGUAGE sql STABLE;

CREATE OR REPLACE FUNCTION tests.mrp_hist_stakeholder(p_id uuid) RETURNS uuid AS $$
    SELECT h.history_id FROM tests.history_mstr_stakeholder AS h
    WHERE h.mstr_stakeholder_id = p_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
$$ LANGUAGE sql STABLE;

CREATE OR REPLACE FUNCTION tests.mrp_hist_equipment_available(p_id uuid) RETURNS uuid AS $$
    SELECT h.history_id FROM tests.history_mstr_equipment_available AS h
    WHERE h.mstr_equipment_available_id = p_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
$$ LANGUAGE sql STABLE;

CREATE OR REPLACE FUNCTION tests.mrp_hist_outsource_available(p_id uuid) RETURNS uuid AS $$
    SELECT h.history_id FROM tests.history_mstr_outsource_available AS h
    WHERE h.mstr_outsource_available_id = p_id ORDER BY h.revision DESC, h.update_at DESC LIMIT 1;
$$ LANGUAGE sql STABLE;

-- 担当者: 引数が無ければ PostGraphile の JWT (jwt.claims.staff_id) から取る
CREATE OR REPLACE FUNCTION tests.mrp_staff(p_id uuid) RETURNS uuid AS $$
    SELECT COALESCE(p_id, NULLIF(current_setting('jwt.claims.staff_id', true), '')::uuid);
$$ LANGUAGE sql STABLE;

-- ---- 稼働カレンダー -----------------------------------------------------------
-- 稼働時間(h): 設備の個別行 → 会社標準行(設備NULL) → 既定(月〜金 8h、土日 0h)
CREATE OR REPLACE FUNCTION tests.mrp_capacity(p_equipment uuid, p_date date) RETURNS numeric AS $$
    SELECT COALESCE(
        (SELECT CASE WHEN c.holiday THEN 0 ELSE EXTRACT(EPOCH FROM COALESCE(c.work_interval, INTERVAL '0')) / 3600 END
           FROM tests.mstr_work_calendar AS c
          WHERE p_equipment IS NOT NULL AND c.mstr_equipment_id = p_equipment AND c.work_date = p_date AND c.remove IS FALSE LIMIT 1),
        (SELECT CASE WHEN c.holiday THEN 0 ELSE EXTRACT(EPOCH FROM COALESCE(c.work_interval, INTERVAL '0')) / 3600 END
           FROM tests.mstr_work_calendar AS c
          WHERE c.mstr_equipment_id IS NULL AND c.work_date = p_date AND c.remove IS FALSE LIMIT 1),
        CASE WHEN EXTRACT(ISODOW FROM p_date) <= 5 THEN 8 ELSE 0 END
    )::numeric;
$$ LANGUAGE sql STABLE;

CREATE OR REPLACE FUNCTION tests.mrp_start_time(p_equipment uuid, p_date date) RETURNS time AS $$
    SELECT COALESCE(
        (SELECT c.start_time FROM tests.mstr_work_calendar AS c
          WHERE p_equipment IS NOT NULL AND c.mstr_equipment_id = p_equipment AND c.work_date = p_date AND c.remove IS FALSE LIMIT 1),
        (SELECT c.start_time FROM tests.mstr_work_calendar AS c
          WHERE c.mstr_equipment_id IS NULL AND c.work_date = p_date AND c.remove IS FALSE LIMIT 1),
        TIME '08:00');
$$ LANGUAGE sql STABLE;

-- 稼働日の加算 (n<0 で前へ)。会社標準カレンダー。購買の調達リードタイムに使う
CREATE OR REPLACE FUNCTION tests.mrp_workday_add(p_date date, p_days integer) RETURNS date AS $$
DECLARE
    d date := p_date;
    n integer := abs(p_days);
    step integer := CASE WHEN p_days < 0 THEN -1 ELSE 1 END;
    guard integer := 0;
BEGIN
    WHILE n > 0 LOOP
        d := d + step;
        IF tests.mrp_capacity(NULL, d) > 0 THEN n := n - 1; END IF;
        guard := guard + 1;
        IF guard > 3660 THEN RAISE EXCEPTION 'mrp_workday_add: 稼働日が見つかりません'; END IF;
    END LOOP;
    RETURN d;
END
$$ LANGUAGE plpgsql STABLE;

-- 日付だけの期限 (00:00) はその日の終わりとみなす
CREATE OR REPLACE FUNCTION tests.mrp_need_end(p_at timestamp) RETURNS timestamp AS $$
    SELECT CASE WHEN p_at IS NULL THEN NULL
                WHEN p_at::time = TIME '00:00' THEN p_at::date + INTERVAL '23:59:59'
                ELSE p_at END;
$$ LANGUAGE sql IMMUTABLE;

-- 逆算: p_end に終わるには何時に始めればよいか (設備の稼働時間で割り付け)
CREATE OR REPLACE FUNCTION tests.mrp_backward(p_equipment uuid, p_end timestamp, p_hours numeric) RETURNS timestamp AS $$
DECLARE
    d date := p_end::date;
    rem numeric := p_hours;
    cap numeric; day_start timestamp; day_end timestamp; work_end timestamp; avail numeric;
    guard integer := 0;
BEGIN
    IF rem IS NULL OR rem <= 0 THEN RETURN p_end; END IF;
    LOOP
        cap := tests.mrp_capacity(p_equipment, d);
        IF cap > 0 THEN
            day_start := d + tests.mrp_start_time(p_equipment, d);
            day_end := day_start + make_interval(secs => (cap * 3600)::double precision);
            work_end := LEAST(p_end, day_end);
            avail := GREATEST(0, EXTRACT(EPOCH FROM (work_end - day_start)) / 3600);
            IF avail > 0 AND rem <= avail THEN
                RETURN work_end - make_interval(secs => (rem * 3600)::double precision);
            END IF;
            rem := rem - avail;
        END IF;
        d := d - 1;
        guard := guard + 1;
        IF guard > 3660 THEN RAISE EXCEPTION 'mrp_backward: 稼働日が見つかりません'; END IF;
    END LOOP;
END
$$ LANGUAGE plpgsql STABLE;

-- 順算: p_start から始めると何時に終わるか
CREATE OR REPLACE FUNCTION tests.mrp_forward(p_equipment uuid, p_start timestamp, p_hours numeric) RETURNS timestamp AS $$
DECLARE
    d date := p_start::date;
    rem numeric := p_hours;
    cap numeric; day_start timestamp; day_end timestamp; work_start timestamp; avail numeric;
    guard integer := 0;
BEGIN
    IF rem IS NULL OR rem <= 0 THEN RETURN p_start; END IF;
    LOOP
        cap := tests.mrp_capacity(p_equipment, d);
        IF cap > 0 THEN
            day_start := d + tests.mrp_start_time(p_equipment, d);
            day_end := day_start + make_interval(secs => (cap * 3600)::double precision);
            work_start := GREATEST(p_start, day_start);
            avail := GREATEST(0, EXTRACT(EPOCH FROM (day_end - work_start)) / 3600);
            IF avail > 0 AND rem <= avail THEN
                RETURN work_start + make_interval(secs => (rem * 3600)::double precision);
            END IF;
            rem := rem - avail;
        END IF;
        d := d + 1;
        guard := guard + 1;
        IF guard > 3660 THEN RAISE EXCEPTION 'mrp_forward: 稼働日が見つかりません'; END IF;
    END LOOP;
END
$$ LANGUAGE plpgsql STABLE;

-- 期間 [p_start, p_end] の稼働時間を日別に分解 (負荷の日別配分)
CREATE OR REPLACE FUNCTION tests.mrp_spread(p_equipment uuid, p_start timestamp, p_end timestamp)
RETURNS TABLE (load_date date, hours numeric) AS $$
    SELECT x.d::date,
           GREATEST(0, EXTRACT(EPOCH FROM (
               LEAST(p_end, x.ds + make_interval(secs => (x.cap * 3600)::double precision))
             - GREATEST(p_start, x.ds))) / 3600)::numeric
    FROM (
        SELECT g.d, tests.mrp_capacity(p_equipment, g.d::date) AS cap,
               g.d::date + tests.mrp_start_time(p_equipment, g.d::date) AS ds
        FROM generate_series(p_start::date, p_end::date, INTERVAL '1 day') AS g(d)
    ) AS x
    WHERE x.cap > 0
      AND LEAST(p_end, x.ds + make_interval(secs => (x.cap * 3600)::double precision)) > GREATEST(p_start, x.ds);
$$ LANGUAGE sql STABLE;

-- ---- 工程の候補と日程 ---------------------------------------------------------
-- 内製 / 購買の区分
--   1 = 内製 (購入品フラグなし・工程あり)
--   2 = 購買 (購入品フラグあり・工程なし、またはフラグなし・工程なし ← マスタ点検で警告)
--   3 = 内製・購買の選択 (購入品フラグあり・工程あり)
CREATE OR REPLACE FUNCTION tests.mrp_proc_type(p_item uuid) RETURNS smallint AS $$
    SELECT CASE WHEN x.flag AND x.routing THEN 3
                WHEN x.routing THEN 1
                ELSE 2 END::smallint
    FROM (
        SELECT COALESCE(i.catalog_item, FALSE) AS flag,
               EXISTS (SELECT 1 FROM tests.mstr_item_operation_task AS iot
                       INNER JOIN tests.mstr_operation_task AS ot
                           ON ot.mstr_operation_task_id = iot.mstr_operation_task_id AND ot.remove IS FALSE
                       WHERE iot.mstr_item_id = i.mstr_item_id AND iot.remove IS FALSE) AS routing
        FROM tests.mstr_item AS i WHERE i.mstr_item_id = p_item
    ) AS x;
$$ LANGUAGE sql STABLE;

-- 品目の仕入先 (品目仕入先 × 仕入先フラグのある利害関係者)。優先順位 → デリバリータイム → 単価 の順
CREATE OR REPLACE FUNCTION tests.mrp_suppliers(p_item uuid)
RETURNS TABLE (mstr_item_supplier_id uuid, mstr_stakeholder_id uuid, priority integer,
               delivery_hours numeric, inspection_hours numeric, minimum_lot_size numeric,
               cost numeric, asking_price boolean, supplier_item_code varchar) AS $$
    SELECT ms.mstr_item_supplier_id, ms.mstr_stakeholder_id, COALESCE(ms.priority, 1),
           EXTRACT(EPOCH FROM COALESCE(ms.delivery_time, INTERVAL '0')) / 3600,
           EXTRACT(EPOCH FROM COALESCE(ms.quality_inspection_time, INTERVAL '0')) / 3600,
           COALESCE(ms.minimum_lot_size, 0), ms.cost, COALESCE(ms.asking_price, FALSE), ms.supplier_item_code
    FROM tests.mstr_item_supplier AS ms
    INNER JOIN tests.mstr_stakeholder AS sh
        ON sh.mstr_stakeholder_id = ms.mstr_stakeholder_id AND sh.remove IS FALSE AND sh.is_supplier IS TRUE
    WHERE ms.mstr_item_id = p_item AND ms.remove IS FALSE
    ORDER BY COALESCE(ms.priority, 1), ms.delivery_time, ms.cost;
$$ LANGUAGE sql STABLE;

-- 工程の候補 (工程場所 → 利用可能設備 / 利用可能外部)。priority の小さい順、同じ優先順は内部が先
--   kind 1 = 内部(利用可能設備) / 2 = 外部(利用可能外部)
CREATE OR REPLACE FUNCTION tests.mrp_task_candidates(p_task uuid)
RETURNS TABLE (mstr_task_location_id uuid, priority integer, kind smallint,
               mstr_equipment_available_id uuid, mstr_equipment_id uuid,
               mstr_outsource_available_id uuid, mstr_stakeholder_id uuid, delivery_hours numeric) AS $$
    SELECT x.* FROM (
        SELECT tl.mstr_task_location_id, COALESCE(tl.priority, 1), 1::smallint,
               ea.mstr_equipment_available_id, ea.mstr_equipment_id, NULL::uuid, NULL::uuid,
               EXTRACT(EPOCH FROM COALESCE(ea.delivery_interval, INTERVAL '0')) / 3600
        FROM tests.mstr_task_location AS tl
        INNER JOIN tests.mstr_equipment_available AS ea
            ON ea.mstr_task_location_id = tl.mstr_task_location_id AND ea.remove IS FALSE
        INNER JOIN tests.mstr_equipment AS e
            ON e.mstr_equipment_id = ea.mstr_equipment_id AND e.remove IS FALSE
        WHERE tl.mstr_task_id = p_task AND tl.remove IS FALSE
        UNION ALL
        SELECT tl.mstr_task_location_id, COALESCE(tl.priority, 1), 2::smallint,
               NULL::uuid, NULL::uuid, oa.mstr_outsource_available_id, oa.mstr_stakeholder_id,
               EXTRACT(EPOCH FROM COALESCE(oa.delivery_interval, INTERVAL '0')) / 3600
        FROM tests.mstr_task_location AS tl
        INNER JOIN tests.mstr_outsource_available AS oa
            ON oa.mstr_task_location_id = tl.mstr_task_location_id AND oa.remove IS FALSE
        INNER JOIN tests.mstr_stakeholder AS sh
            ON sh.mstr_stakeholder_id = oa.mstr_stakeholder_id AND sh.remove IS FALSE
        WHERE tl.mstr_task_id = p_task AND tl.remove IS FALSE
    ) AS x (mstr_task_location_id, priority, kind, mstr_equipment_available_id, mstr_equipment_id,
            mstr_outsource_available_id, mstr_stakeholder_id, delivery_hours)
    ORDER BY x.priority, x.kind;
$$ LANGUAGE sql STABLE;

-- 品目×工程場所の単価 (mstr_item_task_cost)
CREATE OR REPLACE FUNCTION tests.mrp_task_cost(p_item uuid, p_task_location uuid) RETURNS numeric AS $$
    SELECT c.cost FROM tests.mstr_item_task_cost AS c
    WHERE c.mstr_item_id = p_item AND c.mstr_task_location_id = p_task_location AND c.remove IS FALSE
    ORDER BY c.update_at DESC LIMIT 1;
$$ LANGUAGE sql STABLE;

-- 工程の時間(h) = 品目工程運用明細の標準時間(ロット固定)。無ければ工程の標準時間
CREATE OR REPLACE FUNCTION tests.mrp_task_hours(p_item uuid, p_task uuid) RETURNS numeric AS $$
    SELECT COALESCE(
        (SELECT EXTRACT(EPOCH FROM iot.default_interval) / 3600
           FROM tests.mstr_item_operation_task AS iot
           INNER JOIN tests.mstr_operation_task AS ot ON ot.mstr_operation_task_id = iot.mstr_operation_task_id
          WHERE iot.mstr_item_id = p_item AND ot.mstr_task_id = p_task AND iot.remove IS FALSE
            AND iot.default_interval IS NOT NULL
          ORDER BY iot.sequence LIMIT 1),
        (SELECT EXTRACT(EPOCH FROM t.default_time) / 3600 FROM tests.mstr_task AS t WHERE t.mstr_task_id = p_task),
        0)::numeric;
$$ LANGUAGE sql STABLE;

-- 1工程の日程を決める (mrp_run の中、一時テーブル _mrp_day がある状態で呼ぶ)
--   p_at: 逆算(p_backward)なら「この工程の品物が次に必要な日時」、順算なら「着手できる日時」
--   内部: 作業 = 標準時間を設備の稼働カレンダーで割り付け、その後デリバリー時間(暦)
--   外部: 作業 = 標準時間(暦)、その後デリバリー時間(暦)
--   候補の選び方: 一番小さい priority の候補の中で、内部があれば負荷が一番低い設備、
--                 内部が無ければデリバリー時間が短い(同じなら単価が安い)外部
--   p_fixed_ea / p_fixed_oa: 既存の生産計画明細の利用可能設備 / 利用可能外部に固定する
--   alt_*: 内部で計画したときに、外部にも出せる場合の外部の候補 (過負荷時の OUTSOURCE_OPTION 用)
CREATE OR REPLACE FUNCTION tests.mrp_plan_task(p_item uuid, p_task uuid, p_hours numeric, p_at timestamp,
                                               p_backward boolean, p_fixed_ea uuid DEFAULT NULL, p_fixed_oa uuid DEFAULT NULL)
RETURNS TABLE (kind smallint, mstr_task_location_id uuid, mstr_equipment_available_id uuid, mstr_equipment_id uuid,
               mstr_outsource_available_id uuid, mstr_stakeholder_id uuid, cost numeric,
               start_at timestamp, completion_at timestamp, ready_at timestamp,
               alt_mstr_outsource_available_id uuid, alt_mstr_stakeholder_id uuid, alt_cost numeric) AS $$
DECLARE
    c record; b record; a record;
    v_top integer;
    v_st timestamp; v_en timestamp; v_rd timestamp; v_load numeric; v_del interval;
    b_st timestamp; b_en timestamp; b_rd timestamp; b_load numeric; b_ok boolean := FALSE;
BEGIN
    p_hours := COALESCE(p_hours, 0);
    -- 固定 (既存の生産計画明細)
    IF p_fixed_oa IS NOT NULL THEN
        SELECT oa.mstr_task_location_id AS tl, oa.mstr_stakeholder_id AS sh,
               EXTRACT(EPOCH FROM COALESCE(oa.delivery_interval, INTERVAL '0')) / 3600 AS dh
          INTO b FROM tests.mstr_outsource_available AS oa WHERE oa.mstr_outsource_available_id = p_fixed_oa;
        v_del := make_interval(secs => (COALESCE(b.dh, 0) * 3600)::double precision);
        IF p_backward THEN
            v_rd := p_at; v_en := p_at - v_del; v_st := v_en - make_interval(secs => (p_hours * 3600)::double precision);
        ELSE
            v_st := p_at; v_en := p_at + make_interval(secs => (p_hours * 3600)::double precision); v_rd := v_en + v_del;
        END IF;
        RETURN QUERY SELECT 2::smallint, b.tl, NULL::uuid, NULL::uuid, p_fixed_oa, b.sh,
                            tests.mrp_task_cost(p_item, b.tl), v_st, v_en, v_rd, NULL::uuid, NULL::uuid, NULL::numeric;
        RETURN;
    END IF;

    SELECT MIN(x.priority) INTO v_top FROM tests.mrp_task_candidates(p_task) AS x;

    -- 内部の候補 (固定があればその設備だけ)
    FOR c IN
        SELECT x.* FROM tests.mrp_task_candidates(p_task) AS x
        WHERE x.kind = 1 AND p_fixed_ea IS NULL AND x.priority = v_top
        UNION ALL
        -- 固定: 工程計画で指定された利用可能設備をそのまま使う (工程の候補に無くても)
        SELECT ea.mstr_task_location_id, 1, 1::smallint, ea.mstr_equipment_available_id, ea.mstr_equipment_id,
               NULL::uuid, NULL::uuid, EXTRACT(EPOCH FROM COALESCE(ea.delivery_interval, INTERVAL '0')) / 3600
        FROM tests.mstr_equipment_available AS ea
        WHERE p_fixed_ea IS NOT NULL AND ea.mstr_equipment_available_id = p_fixed_ea
    LOOP
        v_del := make_interval(secs => (c.delivery_hours * 3600)::double precision);
        IF p_backward THEN
            v_rd := p_at; v_en := p_at - v_del;
            v_st := tests.mrp_backward(c.mstr_equipment_id, v_en, p_hours);
            v_en := LEAST(v_en, tests.mrp_forward(c.mstr_equipment_id, v_st, p_hours));
        ELSE
            v_st := p_at; v_en := tests.mrp_forward(c.mstr_equipment_id, p_at, p_hours); v_rd := v_en + v_del;
        END IF;
        SELECT COALESCE(SUM(dl.hours), 0) INTO v_load FROM _mrp_day AS dl
        WHERE dl.equipment_id = c.mstr_equipment_id AND dl.planned AND dl.load_date BETWEEN v_st::date AND v_en::date;
        IF NOT b_ok OR v_load < b_load
           OR (v_load = b_load AND ((p_backward AND v_st > b_st) OR (NOT p_backward AND v_rd < b_rd))) THEN
            b := c; b_st := v_st; b_en := v_en; b_rd := v_rd; b_load := v_load; b_ok := TRUE;
        END IF;
    END LOOP;

    IF b_ok THEN
        -- 外部にも出せるか (どの優先順でも)
        SELECT x.mstr_outsource_available_id AS oa, x.mstr_stakeholder_id AS sh, tests.mrp_task_cost(p_item, x.mstr_task_location_id) AS cost
          INTO a FROM tests.mrp_task_candidates(p_task) AS x
         WHERE x.kind = 2
         ORDER BY x.priority, x.delivery_hours, tests.mrp_task_cost(p_item, x.mstr_task_location_id) NULLS LAST LIMIT 1;
        RETURN QUERY SELECT 1::smallint, b.mstr_task_location_id, b.mstr_equipment_available_id, b.mstr_equipment_id,
                            NULL::uuid, NULL::uuid, tests.mrp_task_cost(p_item, b.mstr_task_location_id),
                            b_st, b_en, b_rd, a.oa, a.sh, a.cost;
        RETURN;
    END IF;

    -- 外部 (一番小さい priority の中で、デリバリー時間が短い → 単価が安い)
    SELECT x.* INTO c FROM tests.mrp_task_candidates(p_task) AS x
     WHERE x.kind = 2 AND x.priority = v_top
     ORDER BY x.delivery_hours, tests.mrp_task_cost(p_item, x.mstr_task_location_id) NULLS LAST LIMIT 1;
    IF FOUND THEN
        v_del := make_interval(secs => (c.delivery_hours * 3600)::double precision);
        IF p_backward THEN
            v_rd := p_at; v_en := p_at - v_del; v_st := v_en - make_interval(secs => (p_hours * 3600)::double precision);
        ELSE
            v_st := p_at; v_en := p_at + make_interval(secs => (p_hours * 3600)::double precision); v_rd := v_en + v_del;
        END IF;
        RETURN QUERY SELECT 2::smallint, c.mstr_task_location_id, NULL::uuid, NULL::uuid,
                            c.mstr_outsource_available_id, c.mstr_stakeholder_id,
                            tests.mrp_task_cost(p_item, c.mstr_task_location_id),
                            v_st, v_en, v_rd, NULL::uuid, NULL::uuid, NULL::numeric;
        RETURN;
    END IF;

    -- 工程場所なし: 会社標準カレンダーで時間だけ計画 (負荷・外注発注は出ない)
    IF p_backward THEN
        v_rd := p_at; v_en := p_at; v_st := tests.mrp_backward(NULL, p_at, p_hours);
    ELSE
        v_st := p_at; v_en := tests.mrp_forward(NULL, p_at, p_hours); v_rd := v_en;
    END IF;
    RETURN QUERY SELECT 0::smallint, NULL::uuid, NULL::uuid, NULL::uuid, NULL::uuid, NULL::uuid, NULL::numeric,
                        v_st, v_en, v_rd, NULL::uuid, NULL::uuid, NULL::numeric;
END
$$ LANGUAGE plpgsql VOLATILE;

-- ---- 数量 -------------------------------------------------------------------
-- 資材計画ごとの払出済み数量 (引当予約 → 引当 → 受払実績(払出))
CREATE OR REPLACE FUNCTION tests.mrp_issued(p_rp uuid) RETURNS numeric AS $$
    SELECT COALESCE(SUM(cv.quantity), 0)
    FROM tests.trans_inventory_request AS rq
    INNER JOIN tests.trans_inventory_apply AS ap
        ON ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE
    INNER JOIN tests.trans_convey AS cv
        ON cv.trans_convey_id = ap.convey_id AND cv.remove IS FALSE AND cv.receive IS NOT TRUE
    WHERE rq.trans_resource_plan_id = p_rp AND rq.remove IS FALSE;
$$ LANGUAGE sql STABLE;

-- 外注加工の発注明細か (生産計画明細から参照されている)
CREATE OR REPLACE FUNCTION tests.mrp_is_outsource_detail(p_pd uuid) RETURNS boolean AS $$
    SELECT EXISTS (SELECT 1 FROM tests.trans_work_plan AS wp
                   WHERE wp.trans_purchase_detail_id = p_pd AND wp.remove IS FALSE);
$$ LANGUAGE sql STABLE;

-- ---- 品目別現在庫 (棚ビジター → 受入実績・作業実績から品目を求める) --------------
--   受入(購買の発注明細)            → 在庫
--   作業実績・最終工程(sequence 最大) → 在庫(完成品)
--   作業実績・途中工程               → 仕掛品 (生産残で数えるので在庫に入れない)
--   外注加工の受入                   → 外注工程の作業実績で判定するので、ここでは数えない
--   品目が2種類以上の棚ビジター・紐づきの無い棚ビジターは数えない (マスタ点検で警告)
CREATE OR REPLACE VIEW tests.v_mrp_visiter_item AS
WITH origin AS (
    SELECT prv.trans_visiter_id, pd.item_id, TRUE AS finished
    FROM tests.trans_purchase_rec_visiter AS prv
    INNER JOIN tests.trans_purchase_rec AS r
        ON r.trans_purchase_rec_id = prv.trans_purchase_rec_id AND r.remove IS FALSE
    INNER JOIN tests.trans_purchase_detail AS pd
        ON pd.trans_purchase_detail_id = r.trans_purchase_detail_id
    WHERE prv.remove IS FALSE
      AND NOT EXISTS (SELECT 1 FROM tests.trans_work_plan AS w
                      WHERE w.trans_purchase_detail_id = pd.trans_purchase_detail_id AND w.remove IS FALSE)
    UNION ALL
    SELECT wrv.trans_visiter_id, rp.item_id,
           COALESCE(wp.sequence, 1) >= (SELECT MAX(COALESCE(w2.sequence, 1)) FROM tests.trans_work_plan AS w2
                                        WHERE w2.trans_operations_plan_id = wp.trans_operations_plan_id AND w2.remove IS FALSE)
    FROM tests.trans_work_record_visiter AS wrv
    INNER JOIN tests.trans_work_record AS wr
        ON wr.trans_work_record_id = wrv.trans_work_record_id AND wr.remove IS FALSE
    INNER JOIN tests.trans_work_plan AS wp ON wp.trans_work_plan_id = wr.trans_work_plan_id
    INNER JOIN tests.trans_operations_plan AS op ON op.trans_operations_plan_id = wp.trans_operations_plan_id
    INNER JOIN tests.trans_resource_plan AS rp ON rp.trans_resource_plan_id = op.trans_resource_plan_id
    WHERE wrv.remove IS FALSE
)
SELECT
    v.trans_visiter_id
    , MIN(o.item_id::text)::uuid AS item_id
    , COUNT(DISTINCT o.item_id)::integer AS item_count
    , COALESCE(BOOL_OR(o.finished), FALSE) AS finished
    , v.quantity
FROM tests.trans_visiter AS v
INNER JOIN tests.trans_container AS c
    ON c.trans_container_id = v.trans_container_id AND c.remove IS FALSE
LEFT JOIN origin AS o ON o.trans_visiter_id = v.trans_visiter_id
WHERE v.remove IS FALSE
GROUP BY v.trans_visiter_id, v.quantity;
COMMENT ON VIEW tests.v_mrp_visiter_item IS E'@primaryKey trans_visiter_id\n@foreignKey (trans_visiter_id) references trans_visiter (trans_visiter_id)\n@foreignKey (item_id) references mstr_item (mstr_item_id)\n棚ビジターの品目(在庫/仕掛)';

CREATE OR REPLACE VIEW tests.v_item_on_hand AS
SELECT
    vi.item_id
    , SUM(vi.quantity) AS on_hand_quantity
    , COUNT(*)::integer AS visiter_count
FROM tests.v_mrp_visiter_item AS vi
WHERE vi.finished AND vi.item_count = 1 AND vi.item_id IS NOT NULL
GROUP BY vi.item_id;
COMMENT ON VIEW tests.v_item_on_hand IS E'@primaryKey item_id\n@foreignKey (item_id) references mstr_item (mstr_item_id)\n品目別現在庫';


-- ---- 内製・購買の選択に使う累積リードタイム(時間・目安) -----------------------------
--   購買 = デリバリータイム ＋ 標準検品時間 (第一仕入先。仕入先が無ければ NULL)
--   内製 = 工程の時間 ＋ 子品目の累積リードタイムの最大
--          工程の時間: 内部は 標準時間 × 3 (1日8h稼働 → 暦24h) ＋ デリバリー時間、外部は 標準時間 ＋ デリバリー時間
--   選択の目安なので稼働カレンダーは見ない。実際の日程は計画時に稼働カレンダーで計算する
CREATE OR REPLACE FUNCTION tests.mrp_buy_hours(p_item uuid) RETURNS numeric AS $$
    SELECT s.delivery_hours + s.inspection_hours FROM tests.mrp_suppliers(p_item) AS s LIMIT 1;
$$ LANGUAGE sql STABLE;

CREATE OR REPLACE FUNCTION tests.mrp_make_hours(p_item uuid, p_depth integer DEFAULT 0) RETURNS numeric AS $$
DECLARE
    v_h numeric := 0; v_child numeric := 0; t record; c record; v_cand record;
BEGIN
    IF p_depth > 30 THEN RETURN 0; END IF;
    FOR t IN
        SELECT ot.mstr_task_id FROM tests.mstr_item_operation_task AS iot
        INNER JOIN tests.mstr_operation_task AS ot
            ON ot.mstr_operation_task_id = iot.mstr_operation_task_id AND ot.remove IS FALSE
        WHERE iot.mstr_item_id = p_item AND iot.remove IS FALSE
    LOOP
        SELECT x.kind, x.delivery_hours INTO v_cand FROM tests.mrp_task_candidates(t.mstr_task_id) AS x LIMIT 1;
        v_h := v_h + CASE WHEN v_cand.kind = 2 THEN tests.mrp_task_hours(p_item, t.mstr_task_id)
                          ELSE tests.mrp_task_hours(p_item, t.mstr_task_id) * 3 END
                   + COALESCE(v_cand.delivery_hours, 0);
    END LOOP;
    FOR c IN
        SELECT DISTINCT tr.mstr_item_id AS child FROM tests.mstr_item_tree AS tr
        INNER JOIN tests.mstr_item AS ci ON ci.mstr_item_id = tr.mstr_item_id AND ci.remove IS FALSE
        WHERE tr.parent_mstr_item_id = p_item AND tr.remove IS FALSE
    LOOP
        v_child := GREATEST(v_child, COALESCE(tests.mrp_lead_hours(c.child, p_depth + 1), 0));
    END LOOP;
    RETURN v_h + v_child;
END
$$ LANGUAGE plpgsql STABLE;

-- 品目の累積リードタイム (内製・購買の選択と同じ考え方: 購買できて購買の方が短ければ購買)
CREATE OR REPLACE FUNCTION tests.mrp_lead_hours(p_item uuid, p_depth integer DEFAULT 0) RETURNS numeric AS $$
DECLARE
    v_pt smallint := tests.mrp_proc_type(p_item);
    v_buy numeric; v_make numeric;
BEGIN
    IF v_pt = 2 THEN RETURN COALESCE(tests.mrp_buy_hours(p_item), 0); END IF;
    v_make := tests.mrp_make_hours(p_item, p_depth);
    IF v_pt = 1 THEN RETURN v_make; END IF;
    v_buy := tests.mrp_buy_hours(p_item);
    RETURN LEAST(COALESCE(v_buy, v_make), v_make);
END
$$ LANGUAGE plpgsql STABLE;

COMMENT ON FUNCTION tests.mrp_hist_item(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_hist_staff(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_hist_stakeholder(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_hist_equipment_available(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_hist_outsource_available(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_staff(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_capacity(uuid, date) IS '@omit';
COMMENT ON FUNCTION tests.mrp_start_time(uuid, date) IS '@omit';
COMMENT ON FUNCTION tests.mrp_workday_add(date, integer) IS '@omit';
COMMENT ON FUNCTION tests.mrp_need_end(timestamp) IS '@omit';
COMMENT ON FUNCTION tests.mrp_backward(uuid, timestamp, numeric) IS '@omit';
COMMENT ON FUNCTION tests.mrp_forward(uuid, timestamp, numeric) IS '@omit';
COMMENT ON FUNCTION tests.mrp_spread(uuid, timestamp, timestamp) IS '@omit';
COMMENT ON FUNCTION tests.mrp_proc_type(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_suppliers(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_buy_hours(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_make_hours(uuid, integer) IS '@omit';
COMMENT ON FUNCTION tests.mrp_lead_hours(uuid, integer) IS '@omit';
COMMENT ON FUNCTION tests.mrp_task_candidates(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_task_cost(uuid, uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_task_hours(uuid, uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_plan_task(uuid, uuid, numeric, timestamp, boolean, uuid, uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_issued(uuid) IS '@omit';
COMMENT ON FUNCTION tests.mrp_is_outsource_detail(uuid) IS '@omit';

-- ============================================================================
-- D. マスタ点検 (品目・工程・部品表・仕入先・棚ビジター)
--   v_mrp_master_issue        … 全品目のマスタ不備一覧 (マスタ点検画面)
--   mrp_check_items(ids)      … 指定品目とその下位(部品表)の不備
--   mrp_check_order_import(j) … 受注取り込み前の確認 (品目コードの解決＋不備)
--   trans_order_detail_master_error_count … 受注明細の計算列 (一覧のバッジ用)
-- severity: 1=エラー(MRPが正しく計画できない) 2=警告(計画はできるが精度が落ちる) 3=情報
-- ============================================================================

CREATE OR REPLACE VIEW tests.v_mrp_master_issue AS
WITH RECURSIVE
it AS (
    SELECT i.mstr_item_id, i.code, i.remove, tests.mrp_proc_type(i.mstr_item_id) AS pt,
           COALESCE(i.catalog_item, FALSE) AS flag
    FROM tests.mstr_item AS i
),
routing AS (
    SELECT iot.mstr_item_operation_task_id, iot.mstr_item_id, iot.default_interval, iot.sequence,
           ot.mstr_operation_task_id, ot.remove AS ot_remove, t.mstr_task_id, t.code AS task_code, t.remove AS t_remove,
           t.default_time
    FROM tests.mstr_item_operation_task AS iot
    LEFT JOIN tests.mstr_operation_task AS ot ON ot.mstr_operation_task_id = iot.mstr_operation_task_id
    LEFT JOIN tests.mstr_task AS t ON t.mstr_task_id = ot.mstr_task_id
    WHERE iot.remove IS FALSE
),
supplier AS (
    SELECT ms.mstr_item_id, ms.mstr_item_supplier_id, ms.delivery_time, ms.cost, COALESCE(ms.asking_price, FALSE) AS asking,
           ROW_NUMBER() OVER (PARTITION BY ms.mstr_item_id ORDER BY COALESCE(ms.priority, 1), ms.delivery_time, ms.cost) AS rn
    FROM tests.mstr_item_supplier AS ms
    INNER JOIN tests.mstr_stakeholder AS sh
        ON sh.mstr_stakeholder_id = ms.mstr_stakeholder_id AND sh.remove IS FALSE AND sh.is_supplier IS TRUE
    WHERE ms.remove IS FALSE
),
walk (start_id, cur, path, cyc) AS (
    SELECT i.mstr_item_id, i.mstr_item_id, ARRAY[i.mstr_item_id], false
    FROM tests.mstr_item AS i WHERE i.remove IS FALSE
    UNION ALL
    SELECT w.start_id, tr.mstr_item_id, w.path || tr.mstr_item_id, tr.mstr_item_id = ANY (w.path)
    FROM walk AS w
    INNER JOIN tests.mstr_item_tree AS tr ON tr.parent_mstr_item_id = w.cur AND tr.remove IS FALSE
    WHERE NOT w.cyc AND array_length(w.path, 1) < 30
),
issues AS (
    -- 工程の参照先が削除済み
    SELECT it.mstr_item_id AS item_id, it.code AS item_code, 'ROUTING_TASK_REMOVED'::varchar AS issue_code, 1::smallint AS severity,
           '品目工程運用明細の工程運用明細または工程が削除されています'::varchar AS message,
           'mstr_item_operation_task'::varchar AS ref_table, r.mstr_item_operation_task_id AS ref_id
    FROM it
    INNER JOIN routing AS r ON r.mstr_item_id = it.mstr_item_id
    WHERE it.remove IS FALSE
      AND (r.mstr_operation_task_id IS NULL OR r.ot_remove IS NOT FALSE OR r.mstr_task_id IS NULL OR r.t_remove IS NOT FALSE)

    UNION ALL
    -- 工程に工程場所(利用可能設備・利用可能外部)が無い
    SELECT DISTINCT it.mstr_item_id, it.code, 'TASK_NO_RESOURCE', 1::smallint,
           ('工程 ' || r.task_code || ' に工程場所(利用可能設備・利用可能外部)がありません。負荷・外注発注が出ません')::varchar,
           'mstr_task', r.mstr_task_id
    FROM it
    INNER JOIN routing AS r ON r.mstr_item_id = it.mstr_item_id AND r.ot_remove IS FALSE AND r.t_remove IS FALSE
    WHERE it.remove IS FALSE
      AND NOT EXISTS (SELECT 1 FROM tests.mrp_task_candidates(r.mstr_task_id))

    UNION ALL
    -- 標準時間が0
    SELECT it.mstr_item_id, it.code, 'STD_TIME_ZERO', 2,
           ('工程 ' || COALESCE(r.task_code, '?') || ' の標準時間が0です')::varchar,
           'mstr_item_operation_task', r.mstr_item_operation_task_id
    FROM it
    INNER JOIN routing AS r ON r.mstr_item_id = it.mstr_item_id AND r.ot_remove IS FALSE AND r.t_remove IS FALSE
    WHERE it.remove IS FALSE
      AND COALESCE(r.default_interval, r.default_time, INTERVAL '0') = INTERVAL '0'

    UNION ALL
    -- デリバリー時間が未設定
    SELECT DISTINCT it.mstr_item_id, it.code, 'DELIVERY_NOT_SET', 2::smallint,
           ('工程 ' || r.task_code || ' の利用可能設備・利用可能外部にデリバリー時間がありません(0で計画)')::varchar,
           'mstr_task_location', tl.mstr_task_location_id
    FROM it
    INNER JOIN routing AS r ON r.mstr_item_id = it.mstr_item_id AND r.ot_remove IS FALSE AND r.t_remove IS FALSE
    INNER JOIN tests.mstr_task_location AS tl ON tl.mstr_task_id = r.mstr_task_id AND tl.remove IS FALSE
    WHERE it.remove IS FALSE
      AND (EXISTS (SELECT 1 FROM tests.mstr_equipment_available AS ea
                   WHERE ea.mstr_task_location_id = tl.mstr_task_location_id AND ea.remove IS FALSE AND ea.delivery_interval IS NULL)
        OR EXISTS (SELECT 1 FROM tests.mstr_outsource_available AS oa
                   WHERE oa.mstr_task_location_id = tl.mstr_task_location_id AND oa.remove IS FALSE AND oa.delivery_interval IS NULL))

    UNION ALL
    -- 外部の工程場所に品目の単価が無い
    SELECT DISTINCT it.mstr_item_id, it.code, 'OUTSOURCE_COST_NOT_FOUND', 2::smallint,
           ('工程 ' || r.task_code || ' の外部(工程場所)に品目作業単価がありません(単価0で外注発注)')::varchar,
           'mstr_task_location', c.mstr_task_location_id
    FROM it
    INNER JOIN routing AS r ON r.mstr_item_id = it.mstr_item_id AND r.ot_remove IS FALSE AND r.t_remove IS FALSE
    CROSS JOIN LATERAL tests.mrp_task_candidates(r.mstr_task_id) AS c
    WHERE it.remove IS FALSE AND c.kind = 2
      AND tests.mrp_task_cost(it.mstr_item_id, c.mstr_task_location_id) IS NULL

    UNION ALL
    -- 購入品フラグが無く工程も無い (購買として計画する。内製品の工程の登録漏れの可能性)
    SELECT it.mstr_item_id, it.code, 'PURCHASE_FLAG_MISSING', 2,
           '購入品フラグが無く、品目工程運用明細もありません(購買品として計画します。内製品なら工程を登録してください)',
           'mstr_item', it.mstr_item_id
    FROM it
    WHERE it.remove IS FALSE AND it.pt = 2 AND NOT it.flag

    UNION ALL
    -- 購買品に構成部品がある (購買品は展開しない)
    SELECT it.mstr_item_id, it.code, 'BUY_ITEM_HAS_BOM', 2,
           '購買品に品目体系の構成部品があります。購買品の構成部品は展開しません',
           'mstr_item_tree', NULL::uuid
    FROM it
    WHERE it.remove IS FALSE AND it.pt = 2
      AND EXISTS (SELECT 1 FROM tests.mstr_item_tree AS tr
                  WHERE tr.parent_mstr_item_id = it.mstr_item_id AND tr.remove IS FALSE)

    UNION ALL
    -- 内製・購買の選択になる品目 (情報)
    SELECT it.mstr_item_id, it.code, 'MAKE_OR_BUY', 3,
           '購入品フラグと工程の両方があります。品目体系の累積リードタイムで内製・購買を選びます(両方間に合えば購買)',
           'mstr_item', it.mstr_item_id
    FROM it
    WHERE it.remove IS FALSE AND it.pt = 3

    UNION ALL
    -- 購買品(または内製・購買の選択)に仕入先が無い
    SELECT it.mstr_item_id, it.code, 'SUPPLIER_NOT_FOUND', CASE WHEN it.pt = 2 THEN 1 ELSE 2 END::smallint,
           CASE WHEN it.pt = 2 THEN '購買品ですが、仕入先フラグのある仕入先が品目仕入先にありません'
                ELSE '購入品フラグがありますが仕入先がありません(内製で計画します)' END::varchar,
           'mstr_item_supplier', NULL::uuid
    FROM it
    WHERE it.remove IS FALSE AND it.pt IN (2, 3)
      AND NOT EXISTS (SELECT 1 FROM supplier AS sp WHERE sp.mstr_item_id = it.mstr_item_id)

    UNION ALL
    -- 品目仕入先の利害関係者に仕入先フラグが無い (候補にしない)
    SELECT ms.mstr_item_id, i.code, 'SUPPLIER_NOT_FLAGGED', 2,
           ('品目仕入先の利害関係者 ' || COALESCE(sh.code, '?') || ' に仕入先フラグがありません(発注先の候補にしません)')::varchar,
           'mstr_item_supplier', ms.mstr_item_supplier_id
    FROM tests.mstr_item_supplier AS ms
    INNER JOIN tests.mstr_item AS i ON i.mstr_item_id = ms.mstr_item_id AND i.remove IS FALSE
    LEFT JOIN tests.mstr_stakeholder AS sh ON sh.mstr_stakeholder_id = ms.mstr_stakeholder_id
    WHERE ms.remove IS FALSE AND (sh.mstr_stakeholder_id IS NULL OR sh.remove IS NOT FALSE OR sh.is_supplier IS NOT TRUE)

    UNION ALL
    -- 第一仕入先のデリバリータイム0・単価0(言い値を除く)
    SELECT it.mstr_item_id, it.code, 'SUPPLIER_LEAD_ZERO', 2,
           '第一仕入先のデリバリータイムが0です', 'mstr_item_supplier', sp.mstr_item_supplier_id
    FROM it INNER JOIN supplier AS sp ON sp.mstr_item_id = it.mstr_item_id AND sp.rn = 1
    WHERE it.remove IS FALSE AND it.pt IN (2, 3) AND COALESCE(sp.delivery_time, INTERVAL '0') = INTERVAL '0'
    UNION ALL
    SELECT it.mstr_item_id, it.code, 'SUPPLIER_COST_ZERO', 2,
           '第一仕入先の単価が0です(言い値ではありません。発注金額が0になります)', 'mstr_item_supplier', sp.mstr_item_supplier_id
    FROM it INNER JOIN supplier AS sp ON sp.mstr_item_id = it.mstr_item_id AND sp.rn = 1
    WHERE it.remove IS FALSE AND it.pt IN (2, 3) AND COALESCE(sp.cost, 0) = 0 AND NOT sp.asking

    UNION ALL
    -- 部品表: 数量が0以下
    SELECT it.mstr_item_id, it.code, 'BOM_QTY_INVALID', 1,
           '品目体系(部品表)の数量が0以下です', 'mstr_item_tree', tr.mstr_item_tree_id
    FROM it
    INNER JOIN tests.mstr_item_tree AS tr ON tr.parent_mstr_item_id = it.mstr_item_id AND tr.remove IS FALSE
    WHERE it.remove IS FALSE AND COALESCE(tr.quantity, 0) <= 0

    UNION ALL
    -- 部品表: 子品目が削除済み
    SELECT it.mstr_item_id, it.code, 'BOM_CHILD_REMOVED', 1,
           ('品目体系(部品表)の子品目 ' || COALESCE(ch.code, '?') || ' が削除されています')::varchar,
           'mstr_item_tree', tr.mstr_item_tree_id
    FROM it
    INNER JOIN tests.mstr_item_tree AS tr ON tr.parent_mstr_item_id = it.mstr_item_id AND tr.remove IS FALSE
    LEFT JOIN tests.mstr_item AS ch ON ch.mstr_item_id = tr.mstr_item_id
    WHERE it.remove IS FALSE AND (ch.mstr_item_id IS NULL OR ch.remove IS NOT FALSE)

    UNION ALL
    -- 部品表: 循環
    SELECT it.mstr_item_id, it.code, 'BOM_CYCLE', 1,
           '品目体系(部品表)が循環しています', 'mstr_item_tree', NULL::uuid
    FROM it
    WHERE it.remove IS FALSE
      AND EXISTS (SELECT 1 FROM walk AS w WHERE w.start_id = it.mstr_item_id AND w.cyc AND w.cur = it.mstr_item_id)

    UNION ALL
    -- 削除済み品目が受注で使われている
    SELECT it.mstr_item_id, it.code, 'ITEM_REMOVED_IN_USE', 1,
           '削除済みの品目が受注明細で使われています', 'trans_order_detail', NULL::uuid
    FROM it
    WHERE it.remove IS NOT FALSE
      AND EXISTS (SELECT 1 FROM tests.trans_order_detail AS od
                  INNER JOIN tests.trans_order AS o ON o.trans_order_id = od.trans_order_id AND o.remove IS FALSE
                  WHERE od.item_id = it.mstr_item_id AND od.remove IS FALSE)

    UNION ALL
    -- 品目コードの重複 (受注取り込みで品目を特定できない)
    SELECT it.mstr_item_id, it.code, 'ITEM_CODE_DUPLICATED', 1,
           ('品目コード ' || it.code || ' が複数の品目で使われています')::varchar, 'mstr_item', NULL::uuid
    FROM it
    WHERE it.remove IS FALSE
      AND (SELECT COUNT(*) FROM tests.mstr_item AS x WHERE x.code = it.code AND x.remove IS FALSE) > 1
)
SELECT md5(concat_ws('|', x.item_id, x.issue_code, x.ref_id)) AS issue_key, x.*
FROM issues AS x
UNION ALL
-- 棚ビジターの品目が決まらない
SELECT md5(concat_ws('|', 'VISITER_ORIGIN_INVALID', vi.trans_visiter_id)), vi.item_id, NULL, 'VISITER_ORIGIN_INVALID', 2::smallint,
       CASE WHEN vi.item_count = 0 THEN '受入実績・作業実績のどちらにも紐づかない棚ビジターです(在庫に数えません)'
            ELSE '紐づく品目が2種類以上の棚ビジターです(在庫に数えません)' END,
       'trans_visiter', vi.trans_visiter_id
FROM tests.v_mrp_visiter_item AS vi
WHERE vi.item_count <> 1
UNION ALL
SELECT md5('CALENDAR_NOT_SET'), NULL, NULL, 'CALENDAR_NOT_SET', 3::smallint,
       '今後60日の稼働カレンダーが未登録です(月〜金 8h で計算します)', 'mstr_work_calendar', NULL
WHERE NOT EXISTS (SELECT 1 FROM tests.mstr_work_calendar AS c
                  WHERE c.remove IS FALSE AND c.work_date BETWEEN current_date AND current_date + 60);

COMMENT ON VIEW tests.v_mrp_master_issue IS E'@primaryKey issue_key\n@foreignKey (item_id) references mstr_item (mstr_item_id)\nMRPマスタ不備';

-- 指定品目とその下位品目(部品表)の不備。NULL なら全品目
CREATE OR REPLACE FUNCTION tests.mrp_check_items(p_item_ids uuid[] DEFAULT NULL)
RETURNS SETOF tests.v_mrp_master_issue AS $$
    WITH RECURSIVE d(item_id, path) AS (
        SELECT x, ARRAY[x] FROM unnest(p_item_ids) AS u(x)
        UNION ALL
        SELECT tr.mstr_item_id, d.path || tr.mstr_item_id
        FROM d
        INNER JOIN tests.mstr_item_tree AS tr ON tr.parent_mstr_item_id = d.item_id AND tr.remove IS FALSE
        WHERE NOT (tr.mstr_item_id = ANY (d.path)) AND array_length(d.path, 1) < 30
    )
    SELECT v.* FROM tests.v_mrp_master_issue AS v
    WHERE p_item_ids IS NULL
       OR (v.ref_table <> 'trans_visiter' AND v.item_id IN (SELECT item_id FROM d))
       OR (v.item_id IS NULL AND v.issue_code = 'CALENDAR_NOT_SET');
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.mrp_check_items(uuid[]) IS '品目(下位含む)のマスタ不備';

-- 受注取り込みの確認結果
CREATE TYPE tests.mrp_import_check AS (
    line_no integer,
    item_code varchar,
    item_id uuid,
    item_history_id uuid,
    issue_code varchar,
    severity smallint,
    message varchar,
    ref_table varchar,
    ref_id uuid
);
COMMENT ON TYPE tests.mrp_import_check IS '受注取り込み確認';

-- p_lines: [{"line_no":1, "item_code":"P-001", "quantity":10, "deadline":"2026-11-20"}, ...]
-- 1行につき RESOLVED(品目を特定) か ITEM_NOT_FOUND を必ず1件返し、続けて不備を返す。
CREATE OR REPLACE FUNCTION tests.mrp_check_order_import(p_lines jsonb)
RETURNS SETOF tests.mrp_import_check AS $$
    WITH ln AS (
        SELECT
            COALESCE(CASE WHEN a.e->>'line_no' ~ '^[0-9]+$' THEN (a.e->>'line_no')::integer END, a.ord::integer) AS line_no
            , btrim(a.e->>'item_code') AS item_code
            , a.e->>'quantity' AS qty_text
            , CASE WHEN a.e->>'quantity' ~ '^-?[0-9]+(\.[0-9]+)?$' THEN (a.e->>'quantity')::numeric END AS qty
            , a.e->>'deadline' AS deadline_text
            , CASE WHEN a.e->>'deadline' ~ '^[0-9]{4}-[0-9]{2}-[0-9]{2}' THEN (a.e->>'deadline')::timestamp END AS deadline
        FROM jsonb_array_elements(p_lines) WITH ORDINALITY AS a(e, ord)
    ), m AS (
        SELECT ln.*,
               (SELECT COUNT(*) FROM tests.mstr_item AS i WHERE i.code = ln.item_code AND i.remove IS FALSE) AS n,
               (SELECT i.mstr_item_id FROM tests.mstr_item AS i WHERE i.code = ln.item_code AND i.remove IS FALSE
                ORDER BY i.update_at DESC LIMIT 1) AS item_id
        FROM ln
    ), r AS (
        SELECT m.line_no, m.item_code, m.item_id,
               CASE WHEN m.item_id IS NOT NULL THEN 'RESOLVED' ELSE 'ITEM_NOT_FOUND' END::varchar AS issue_code,
               CASE WHEN m.item_id IS NOT NULL THEN 0 ELSE 1 END::smallint AS severity,
               CASE WHEN m.item_id IS NOT NULL THEN '品目を特定しました'
                    ELSE '品目コード ' || COALESCE(m.item_code, '(空)') || ' が品目マスタにありません。品目を登録してください' END::varchar AS message,
               'mstr_item'::varchar AS ref_table, m.item_id AS ref_id
        FROM m
        UNION ALL
        SELECT m.line_no, m.item_code, m.item_id, 'ITEM_CODE_DUPLICATED', 1,
               '品目コード ' || m.item_code || ' に該当する品目が ' || m.n || ' 件あります(最新を仮に選択)', 'mstr_item', NULL
        FROM m WHERE m.n > 1
        UNION ALL
        SELECT m.line_no, m.item_code, m.item_id, 'QUANTITY_INVALID', 1,
               '数量が不正です(' || COALESCE(m.qty_text, '空') || ')', NULL, NULL
        FROM m WHERE m.qty IS NULL OR m.qty <= 0
        UNION ALL
        SELECT m.line_no, m.item_code, m.item_id,
               CASE WHEN m.deadline_text IS NULL OR m.deadline_text = '' THEN 'DEADLINE_MISSING' ELSE 'DEADLINE_INVALID' END,
               2, CASE WHEN m.deadline_text IS NULL OR m.deadline_text = '' THEN '納期がありません(最短で計画します)'
                       ELSE '納期の形式が不正です(' || m.deadline_text || ')' END, NULL, NULL
        FROM m WHERE m.deadline IS NULL
        UNION ALL
        SELECT m.line_no, m.item_code, m.item_id, 'DEADLINE_PAST', 2, '納期が過ぎています', NULL, NULL
        FROM m WHERE m.deadline < now()
        UNION ALL
        SELECT m.line_no, m.item_code, m.item_id, ci.issue_code, ci.severity,
               CASE WHEN ci.item_id IS DISTINCT FROM m.item_id AND ci.item_code IS NOT NULL
                    THEN '[' || ci.item_code || '] ' ELSE '' END || ci.message,
               ci.ref_table, COALESCE(ci.ref_id, ci.item_id)
        FROM m CROSS JOIN LATERAL tests.mrp_check_items(ARRAY[m.item_id]) AS ci
        WHERE m.item_id IS NOT NULL
          AND NOT (ci.issue_code = 'ITEM_CODE_DUPLICATED' AND ci.item_id = m.item_id)
    )
    SELECT r.line_no, r.item_code, r.item_id,
           CASE WHEN r.item_id IS NOT NULL THEN tests.mrp_hist_item(r.item_id) END,
           r.issue_code, r.severity, r.message, r.ref_table, r.ref_id
    FROM r
    ORDER BY r.line_no, r.severity, r.issue_code;
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.mrp_check_order_import(jsonb) IS '受注取り込み前の確認(品目コードの解決とマスタ不備)';

-- 受注明細の計算列: 品目(下位含む)のマスタ不備(エラー)件数 → GraphQL では TransOrderDetail.masterErrorCount
CREATE OR REPLACE FUNCTION tests.trans_order_detail_master_error_count(od tests.trans_order_detail)
RETURNS integer AS $$
    SELECT COUNT(*)::integer FROM tests.mrp_check_items(ARRAY[od.item_id]) AS ci WHERE ci.severity = 1;
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.trans_order_detail_master_error_count(tests.trans_order_detail) IS '品目(下位含む)のマスタ不備(エラー)件数';

-- ============================================================================
-- E. MRP計算 (結果を提案として返す。計画データはまだ変えない)
--
--   p_mode = 1 : 受注MRP  … 資材計画が無い受注明細(p_order_detail_ids 指定時はその中で未計画のもの)を計画する。
--                          既存の資材計画は「凍結」扱い(現在の引当・供給をそのまま消費し、変更提案は出さない)。
--   p_mode = 2 : 再MRP    … ユーザーが受注・受注明細を見直した後に実行する。MRPは受注を変更しない。
--                          p_order_detail_ids なし: すべての需要を作り直す。
--                          p_order_detail_ids あり: 見直した受注明細とその下位だけを作り直し、それ以外は凍結する。
--   p_accept_late = true : 納期に間に合わない新規発注・生産・日程変更も自動採用する(強行)。遅れの印は残る。
--
-- 流れ
--   1. 品目の低位レベルコード(LLC)を品目体系から求める
--   2. 需要(受注・非計上・安全在庫)と供給(現在庫・発注残・生産残)を一時テーブルに集める
--   3. LLC の小さい順に、需要を必要日順に並べて供給を割り当てる(ペギング)
--        a. その需要に紐づく既存の供給 → b. 現在庫 → c. 空いている供給 → d. 新規の発注/生産
--   4. 生産(既存・新規)が決まったら、品目体系から子品目の従属需要を作る(必要日 = 最初の工程の開始)
--   5. 使われなかった供給は取消提案、必要日とずれた供給は日程変更提案、工程計画の内外切り替えは外注発注の提案
--   6. 設備×日の負荷を集計。過負荷で、外部にも出せる工程は OUTSOURCE_OPTION(要判断)
-- ============================================================================
CREATE OR REPLACE FUNCTION tests.mrp_run(
    p_mode smallint,
    p_staff_id uuid DEFAULT NULL,
    p_order_detail_ids uuid[] DEFAULT NULL,
    p_accept_late boolean DEFAULT false,
    p_reschedule_out_days integer DEFAULT 3,
    p_remarks varchar DEFAULT NULL
) RETURNS tests.trans_mrp_run AS $$
DECLARE
    v_run tests.trans_mrp_run;
    v_run_id uuid;
    v_staff uuid := tests.mrp_staff(p_staff_id);
    v_staff_hist uuid;
    v_scoped boolean := (p_mode = 2 AND p_order_detail_ids IS NOT NULL);
    v_n integer;
    v_now timestamp := date_trunc('minute', now()::timestamp);
    v_today date := now()::date;
    v_seq integer := 0;
    v_max_llc integer;
    v_llc integer;
    d record; s record; t record; c record; w record; r record;
    v_rem numeric; v_take numeric; v_alloc numeric;
    v_sug uuid; v_sup uuid; v_sug2 uuid; v_tk uuid;
    v_qty numeric; v_lot numeric; v_proc smallint;
    v_supplier record; v_found boolean; v_lead integer;
    v_choice smallint; v_choice_msg varchar(256); v_buy_h numeric; v_make_h numeric;
    v_del numeric; v_ins numeric; v_arrival timestamp; v_rel timestamp; v_ready timestamp; v_asking boolean;
    v_period date; v_release date;
    v_due timestamp; v_end timestamp; v_start timestamp; v_first timestamp;
    v_hours numeric; v_load numeric;
    v_late boolean; v_ntask integer;
    v_slot record; v_osug uuid; v_prev_vendor uuid; v_vendor uuid; v_back boolean;
    v_tgt timestamp;
    v_resched boolean; v_switch boolean; v_broken boolean; v_changed boolean; v_pdchg boolean;
    v_kind varchar(32); v_msg varchar(1024);
    v_target timestamp; v_started boolean;
    v_rp_id uuid; v_rp_qty numeric; v_rp_deadline timestamp; v_rp_alloc numeric; v_issued numeric;
BEGIN
    IF p_mode NOT IN (1, 2) THEN
        RAISE EXCEPTION 'mrp_run: p_mode は 1(受注MRP) または 2(再MRP) を指定してください' USING ERRCODE = 'MRP00';
    END IF;
    v_staff_hist := tests.mrp_hist_staff(v_staff);
    IF v_staff_hist IS NULL THEN
        RAISE EXCEPTION 'mrp_run: 担当者が見つかりません (%)', v_staff USING ERRCODE = 'MRP00';
    END IF;

    -- 同時実行させない。古い未確定の実行は失効させる。
    PERFORM pg_advisory_xact_lock(hashtext('tests.mrp'));
    UPDATE tests.trans_mrp_run SET status = 3 WHERE status = 0;

    INSERT INTO tests.trans_mrp_run (run_mode, status, run_at, staff_history_id, staff_id, params, remarks,
                                     update_user_id, update_user_history_id)
    VALUES (p_mode, 0, now(), v_staff_hist, v_staff,
            jsonb_build_object('order_detail_ids', p_order_detail_ids, 'accept_late', p_accept_late, 'reschedule_out_days', p_reschedule_out_days),
            p_remarks, v_staff, v_staff_hist)
    RETURNING trans_mrp_run_id INTO v_run_id;

    -- ------------------------------------------------------------------
    -- 1. 品目 (LLC・内製/購買・安全在庫・ロット)
    -- ------------------------------------------------------------------
    DROP TABLE IF EXISTS _mrp_item, _mrp_scope, _mrp_dem, _mrp_sup, _mrp_resv, _mrp_claim, _mrp_peg, _mrp_day;
    CREATE TEMP TABLE _mrp_item ON COMMIT DROP AS
    WITH RECURSIVE bom(item_id, lvl, path) AS (
        SELECT i.mstr_item_id, 0, ARRAY[i.mstr_item_id]
        FROM tests.mstr_item AS i WHERE i.remove IS FALSE
        UNION ALL
        SELECT tc.mstr_item_id, bom.lvl + 1, bom.path || tc.mstr_item_id
        FROM bom
        INNER JOIN tests.mstr_item_tree AS tc
            ON tc.parent_mstr_item_id = bom.item_id AND tc.remove IS FALSE
        WHERE NOT (tc.mstr_item_id = ANY (bom.path)) AND bom.lvl < 30
    )
    SELECT
        i.mstr_item_id AS item_id
        , MAX(bom.lvl) AS llc
        , tests.mrp_proc_type(i.mstr_item_id) AS proc_type
        , COALESCE(l.safety_inventory, 0) AS safety
        , COALESCE(l.lot_size, 0) AS lot_size
    FROM tests.mstr_item AS i
    INNER JOIN bom ON bom.item_id = i.mstr_item_id
    LEFT JOIN tests.mstr_item_lot AS l ON l.mstr_item_lot_id = i.mstr_item_lot_id AND l.remove IS FALSE
    WHERE i.remove IS FALSE
    GROUP BY i.mstr_item_id, l.safety_inventory, l.lot_size;
    CREATE INDEX ON _mrp_item (item_id);

    -- 対象範囲 (再MRPで受注明細を指定したとき): その受注明細の資材計画と、その下位の資材計画
    CREATE TEMP TABLE _mrp_scope (rp_id uuid PRIMARY KEY) ON COMMIT DROP;
    IF v_scoped THEN
        INSERT INTO _mrp_scope
        WITH RECURSIVE sc(rp_id) AS (
            SELECT x.trans_resource_plan_id FROM tests.trans_resource_plan AS x
            WHERE x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
              AND x.trans_order_detail_id = ANY (p_order_detail_ids)
            UNION
            SELECT ch.trans_resource_plan_id
            FROM sc
            INNER JOIN tests.trans_operations_plan AS op
                ON op.trans_resource_plan_id = sc.rp_id AND op.remove IS FALSE
            INNER JOIN tests.trans_resource_plan AS ch
                ON ch.parent_trans_operations_plan_id = op.trans_operations_plan_id AND ch.remove IS FALSE
        )
        SELECT rp_id FROM sc;
    END IF;

    -- ------------------------------------------------------------------
    -- 2. 需要  src: 1=受注 2=非計上 3=安全在庫 4=従属
    --    gross = 総所要(資材計画の数量)、qty = 残所要(出荷済み・払出済みを除く)
    -- ------------------------------------------------------------------
    CREATE TEMP TABLE _mrp_dem (
        dem_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
        item_id uuid NOT NULL,
        llc integer,
        gross numeric,
        qty numeric,
        need_at timestamp,
        src smallint,
        frozen boolean DEFAULT false,
        done boolean DEFAULT false,
        order_detail_id uuid,
        unrec_detail_id uuid,
        rp_id uuid,
        parent_op_id uuid,
        parent_sug_id uuid,
        frozen_alloc numeric DEFAULT 0,
        alloc numeric DEFAULT 0,
        sug_id uuid,
        old_qty numeric,
        old_need timestamp,
        old_alloc numeric
    ) ON COMMIT DROP;

    -- 受注
    INSERT INTO _mrp_dem (item_id, gross, qty, need_at, src, frozen, order_detail_id, rp_id,
                          frozen_alloc, old_qty, old_need, old_alloc)
    SELECT
        od.item_id
        , od.quantity
        , GREATEST(od.quantity - COALESCE(sh.q, 0), 0)
        , tests.mrp_need_end(COALESCE(od.deadline, o.deadline, od.delivery_date, o.delivery_date))
        , 1
        , (rp.trans_resource_plan_id IS NOT NULL
           AND (p_mode = 1 OR (v_scoped AND NOT (od.trans_order_detail_id = ANY (p_order_detail_ids)))))
        , od.trans_order_detail_id
        , rp.trans_resource_plan_id
        , COALESCE(rp.inventory_resavation, 0)
        , rp.quantity, rp.deadline, rp.inventory_resavation
    FROM tests.trans_order_detail AS od
    INNER JOIN tests.trans_order AS o
        ON o.trans_order_id = od.trans_order_id AND o.remove IS FALSE
    LEFT JOIN LATERAL (
        SELECT SUM(r2.shipping_quantity) AS q
        FROM tests.trans_shipping_order_detail AS sd
        INNER JOIN tests.trans_shipping_order_detail_record AS r2
            ON r2.trans_shipping_order_detail_id = sd.trans_shipping_order_detail_id AND r2.remove IS FALSE
        WHERE sd.trans_order_detail_id = od.trans_order_detail_id AND sd.remove IS FALSE
    ) AS sh ON TRUE
    LEFT JOIN LATERAL (
        SELECT x.* FROM tests.trans_resource_plan AS x
        WHERE x.trans_order_detail_id = od.trans_order_detail_id
          AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
        ORDER BY x.register_at DESC LIMIT 1
    ) AS rp ON TRUE
    WHERE od.remove IS FALSE
      AND ((p_mode = 2 AND NOT v_scoped)
           OR rp.trans_resource_plan_id IS NOT NULL
           OR p_order_detail_ids IS NULL
           OR od.trans_order_detail_id = ANY (p_order_detail_ids));

    -- 非計上
    INSERT INTO _mrp_dem (item_id, gross, qty, need_at, src, frozen, unrec_detail_id, rp_id,
                          frozen_alloc, old_qty, old_need, old_alloc)
    SELECT
        ud.item_id
        , ud.quantity
        , GREATEST(ud.quantity - CASE WHEN rp.trans_resource_plan_id IS NULL THEN 0
                                      ELSE tests.mrp_issued(rp.trans_resource_plan_id) END, 0)
        , tests.mrp_need_end(COALESCE(ud.deadline, u.deadline, u.expected_completion_date))
        , 2
        , ((p_mode = 1 OR v_scoped) AND rp.trans_resource_plan_id IS NOT NULL)
        , ud.trans_unrecognized_detail_id
        , rp.trans_resource_plan_id
        , COALESCE(rp.inventory_resavation, 0)
        , rp.quantity, rp.deadline, rp.inventory_resavation
    FROM tests.trans_unrecognized_detail AS ud
    INNER JOIN tests.trans_unrecognized AS u
        ON u.trans_unrecognized_id = ud.trans_unrecognized_id AND u.remove IS FALSE
    LEFT JOIN LATERAL (
        SELECT x.* FROM tests.trans_resource_plan AS x
        WHERE x.trans_unrecognized_detail_id = ud.trans_unrecognized_detail_id
          AND x.remove IS FALSE AND x.parent_trans_operations_plan_id IS NULL
        ORDER BY x.register_at DESC LIMIT 1
    ) AS rp ON TRUE
    WHERE ud.remove IS FALSE
      AND ((p_mode = 2 AND NOT v_scoped) OR rp.trans_resource_plan_id IS NOT NULL
           OR (p_mode = 1 AND p_order_detail_ids IS NULL));

    -- 安全在庫 (必要日なし = できるだけ早く)。安全在庫の資材計画 = 受注明細・非計上明細・親生産計画のどれも無い資材計画
    INSERT INTO _mrp_dem (item_id, gross, qty, need_at, src, frozen, rp_id,
                          frozen_alloc, old_qty, old_need, old_alloc)
    SELECT
        mi.item_id, mi.safety, mi.safety, NULL, 3
        , ((p_mode = 1 OR v_scoped) AND rp.trans_resource_plan_id IS NOT NULL)
        , rp.trans_resource_plan_id
        , COALESCE(rp.inventory_resavation, 0)
        , rp.quantity, rp.deadline, rp.inventory_resavation
    FROM _mrp_item AS mi
    LEFT JOIN LATERAL (
        SELECT x.* FROM tests.trans_resource_plan AS x
        WHERE x.item_id = mi.item_id AND x.remove IS FALSE
          AND x.trans_order_detail_id IS NULL AND x.trans_unrecognized_detail_id IS NULL
          AND x.parent_trans_operations_plan_id IS NULL
        ORDER BY x.register_at DESC LIMIT 1
    ) AS rp ON TRUE
    WHERE mi.safety > 0
      AND NOT (v_scoped AND rp.trans_resource_plan_id IS NULL);

    -- 受注MRP・範囲指定の再MRP: 範囲外の既存の従属需要は凍結したまま読み込む
    IF p_mode = 1 OR v_scoped THEN
        INSERT INTO _mrp_dem (item_id, gross, qty, need_at, src, frozen, rp_id, parent_op_id,
                              frozen_alloc, old_qty, old_need, old_alloc)
        SELECT
            rp.item_id, rp.quantity
            , GREATEST(rp.quantity - tests.mrp_issued(rp.trans_resource_plan_id), 0)
            , rp.deadline, 4, TRUE, rp.trans_resource_plan_id, rp.parent_trans_operations_plan_id
            , COALESCE(rp.inventory_resavation, 0)
            , rp.quantity, rp.deadline, rp.inventory_resavation
        FROM tests.trans_resource_plan AS rp
        INNER JOIN tests.trans_operations_plan AS op
            ON op.trans_operations_plan_id = rp.parent_trans_operations_plan_id AND op.remove IS FALSE
        WHERE rp.remove IS FALSE
          AND NOT EXISTS (SELECT 1 FROM _mrp_scope AS sc WHERE sc.rp_id = rp.trans_resource_plan_id);
    END IF;

    -- 残所要0 で資材計画も無いもの(出荷済み等)は対象外
    DELETE FROM _mrp_dem WHERE qty <= 0 AND rp_id IS NULL;
    UPDATE _mrp_dem AS x SET llc = i.llc FROM _mrp_item AS i WHERE i.item_id = x.item_id;
    UPDATE _mrp_dem SET llc = 0 WHERE llc IS NULL;

    -- ------------------------------------------------------------------
    -- 2'. 供給  kind: 1=現在庫 2=発注残 3=生産残 4=新規発注 5=新規生産
    -- ------------------------------------------------------------------
    CREATE TEMP TABLE _mrp_sup (
        sup_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
        item_id uuid NOT NULL,
        kind smallint NOT NULL,
        qty numeric NOT NULL,
        used numeric DEFAULT 0,
        avail_at timestamp,
        pegged_rp uuid,
        pd_id uuid,
        op_id uuid,
        sug_id uuid,
        started boolean DEFAULT false,
        restocking boolean DEFAULT false,
        first_start timestamp,
        prod_qty numeric,
        children_done boolean DEFAULT false,
        cancel_sug uuid,
        orig_rp uuid,
        in_scope boolean DEFAULT true,
        insp_h numeric DEFAULT 0,
        supplier_id uuid
    ) ON COMMIT DROP;

    INSERT INTO _mrp_sup (item_id, kind, qty, avail_at)
    SELECT oh.item_id, 1, oh.on_hand_quantity, '-infinity'::timestamp
    FROM tests.v_item_on_hand AS oh WHERE oh.on_hand_quantity > 0;

    -- 発注残 (外注加工の発注明細 = 生産計画明細から参照されるものは品目の供給ではない)
    --   使える日時 = 納期 ＋ その仕入先の標準検品時間
    INSERT INTO _mrp_sup (item_id, kind, qty, avail_at, pegged_rp, pd_id, restocking, started, orig_rp, insp_h, supplier_id)
    SELECT
        pd.item_id, 2
        , pd.quantity - COALESCE(rc.q, 0)
        , COALESCE(pd.period, p.deadline, v_now) + COALESCE(ms.quality_inspection_time, INTERVAL '0')
        , rp.trans_resource_plan_id
        , pd.trans_purchase_detail_id
        , COALESCE(pd.restocking_purchase, false)
        , COALESCE(rc.q, 0) > 0
        , pd.trans_resource_plan_id
        , EXTRACT(EPOCH FROM COALESCE(ms.quality_inspection_time, INTERVAL '0')) / 3600
        , p.stakeholder_id
    FROM tests.trans_purchase_detail AS pd
    INNER JOIN tests.trans_purchase AS p
        ON p.trans_purchase_id = pd.trans_purchase_id AND p.remove IS FALSE
    LEFT JOIN tests.mstr_item_supplier AS ms
        ON ms.mstr_item_id = pd.item_id AND ms.mstr_stakeholder_id = p.stakeholder_id AND ms.remove IS FALSE
    LEFT JOIN tests.trans_resource_plan AS rp
        ON rp.trans_resource_plan_id = pd.trans_resource_plan_id AND rp.remove IS FALSE
    LEFT JOIN LATERAL (
        SELECT SUM(r2.quantity) AS q FROM tests.trans_purchase_rec AS r2
        WHERE r2.trans_purchase_detail_id = pd.trans_purchase_detail_id AND r2.remove IS FALSE
    ) AS rc ON TRUE
    WHERE pd.remove IS FALSE
      AND NOT tests.mrp_is_outsource_detail(pd.trans_purchase_detail_id)
      AND COALESCE(pd.quantity, 0) - COALESCE(rc.q, 0) > 0;

    -- 生産残 (生産数量 - 最終工程の作業実績)
    INSERT INTO _mrp_sup (item_id, kind, qty, avail_at, pegged_rp, op_id, started, first_start, prod_qty, children_done, orig_rp)
    SELECT
        rp.item_id, 3
        , x.prod_qty - COALESCE(done.q, 0)
        , COALESCE(op.deadline, wq.last_end, v_now)
        , CASE WHEN rp.remove IS FALSE THEN rp.trans_resource_plan_id END
        , op.trans_operations_plan_id
        , COALESCE(wr.cnt, 0) > 0
        , wq.first_start
        , x.prod_qty
        , (p_mode = 1 OR (v_scoped AND NOT EXISTS (
              SELECT 1 FROM _mrp_scope AS sc WHERE sc.rp_id = op.trans_resource_plan_id)))
        , op.trans_resource_plan_id
    FROM tests.trans_operations_plan AS op
    INNER JOIN tests.trans_resource_plan AS rp
        ON rp.trans_resource_plan_id = op.trans_resource_plan_id
    CROSS JOIN LATERAL (
        -- 生産数量。0(06の既定値)は未設定とみなして資材計画から求める。資材計画が取消済みなら0
        SELECT COALESCE(NULLIF(op.quantity, 0),
                        CASE WHEN rp.remove IS FALSE THEN rp.quantity - COALESCE(rp.inventory_resavation, 0) ELSE 0 END) AS prod_qty
    ) AS x
    LEFT JOIN LATERAL (
        SELECT MIN(wp.start_at) AS first_start, MAX(wp.completion_at) AS last_end
        FROM tests.trans_work_plan AS wp
        WHERE wp.trans_operations_plan_id = op.trans_operations_plan_id AND wp.remove IS FALSE
    ) AS wq ON TRUE
    LEFT JOIN LATERAL (
        SELECT wp.trans_work_plan_id FROM tests.trans_work_plan AS wp
        WHERE wp.trans_operations_plan_id = op.trans_operations_plan_id AND wp.remove IS FALSE
        ORDER BY wp.sequence DESC NULLS LAST, wp.completion_at DESC NULLS LAST LIMIT 1
    ) AS lw ON TRUE
    LEFT JOIN LATERAL (
        SELECT SUM(r2.qty) AS q FROM tests.trans_work_record AS r2
        WHERE r2.trans_work_plan_id = lw.trans_work_plan_id AND r2.remove IS FALSE
    ) AS done ON TRUE
    LEFT JOIN LATERAL (
        SELECT COUNT(*) AS cnt FROM tests.trans_work_record AS r2
        INNER JOIN tests.trans_work_plan AS wp
            ON wp.trans_work_plan_id = r2.trans_work_plan_id AND wp.remove IS FALSE
        WHERE wp.trans_operations_plan_id = op.trans_operations_plan_id AND r2.remove IS FALSE
    ) AS wr ON TRUE
    WHERE op.remove IS FALSE
      AND x.prod_qty - COALESCE(done.q, 0) > 0;

    CREATE INDEX ON _mrp_sup (item_id, kind);
    -- 範囲指定の再MRP: 取消・後ろ倒し・過剰の提案は、範囲内の資材計画に紐づく供給と、紐づき先の無い供給だけ
    IF v_scoped THEN
        UPDATE _mrp_sup AS x SET in_scope = (x.orig_rp IS NULL
            OR EXISTS (SELECT 1 FROM _mrp_scope AS sc WHERE sc.rp_id = x.orig_rp)
            OR NOT EXISTS (SELECT 1 FROM tests.trans_resource_plan AS y
                           WHERE y.trans_resource_plan_id = x.orig_rp AND y.remove IS FALSE))
        WHERE x.kind IN (2, 3);
    END IF;

    -- 確定済みの引当予約(未引当)。需要(資材計画)ごとに、どの供給をどれだけ押さえているか
    CREATE TEMP TABLE _mrp_resv ON COMMIT DROP AS
    SELECT rq.trans_resource_plan_id AS rp_id, x.sup_id, SUM(rq.quantity) AS qty
    FROM tests.trans_inventory_request AS rq
    LEFT JOIN tests.trans_purchase_rez AS pz
        ON pz.trans_purchase_rez_id = rq.trans_purchase_rez_id AND pz.remove IS FALSE
    LEFT JOIN tests.trans_product_rez AS pr
        ON pr.trans_product_rez_id = rq.trans_product_rez_id AND pr.remove IS FALSE
    LEFT JOIN tests.trans_work_plan AS wp
        ON wp.trans_work_plan_id = pr.trans_work_plan_id
    INNER JOIN _mrp_sup AS x
        ON (x.kind = 2 AND x.pd_id = pz.trans_purchase_detail_id)
        OR (x.kind = 3 AND x.op_id = wp.trans_operations_plan_id)
    WHERE rq.remove IS FALSE AND rq.trans_resource_plan_id IS NOT NULL
      AND NOT EXISTS (SELECT 1 FROM tests.trans_inventory_apply AS ap
                      WHERE ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE)
    GROUP BY rq.trans_resource_plan_id, x.sup_id;

    -- 引当予約のうち、供給がすでに入庫・完成して残っていないもの = その資材計画の在庫の押さえ
    CREATE TEMP TABLE _mrp_claim ON COMMIT DROP AS
    SELECT rq.trans_resource_plan_id AS rp_id, SUM(rq.quantity) AS qty
    FROM tests.trans_inventory_request AS rq
    LEFT JOIN tests.trans_purchase_rez AS pz
        ON pz.trans_purchase_rez_id = rq.trans_purchase_rez_id AND pz.remove IS FALSE
    LEFT JOIN tests.trans_product_rez AS pr
        ON pr.trans_product_rez_id = rq.trans_product_rez_id AND pr.remove IS FALSE
    LEFT JOIN tests.trans_work_plan AS wp
        ON wp.trans_work_plan_id = pr.trans_work_plan_id
    WHERE rq.remove IS FALSE AND rq.trans_resource_plan_id IS NOT NULL
      AND (pz.trans_purchase_rez_id IS NOT NULL OR pr.trans_product_rez_id IS NOT NULL)
      AND NOT EXISTS (SELECT 1 FROM tests.trans_inventory_apply AS ap
                      WHERE ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE)
      AND NOT EXISTS (SELECT 1 FROM _mrp_sup AS x
                      WHERE (x.kind = 2 AND x.pd_id = pz.trans_purchase_detail_id)
                         OR (x.kind = 3 AND x.op_id = wp.trans_operations_plan_id))
    GROUP BY rq.trans_resource_plan_id;
    CREATE INDEX ON _mrp_claim (rp_id);

    -- ペギング・日別負荷
    CREATE TEMP TABLE _mrp_peg (dem_id uuid, sup_id uuid, qty numeric) ON COMMIT DROP;
    CREATE TEMP TABLE _mrp_day (
        equipment_id uuid, load_date date, hours numeric,
        committed boolean, planned boolean, sup_id uuid, task_id uuid
    ) ON COMMIT DROP;

    -- 確定済みの生産計画明細の負荷 (内部の工程・未完了のみ)
    FOR w IN
        SELECT wp.*, ea.mstr_equipment_id AS eq, s2.sup_id, s2.prod_qty
        FROM _mrp_sup AS s2
        INNER JOIN tests.trans_work_plan AS wp
            ON wp.trans_operations_plan_id = s2.op_id AND wp.remove IS FALSE
        INNER JOIN tests.mstr_equipment_available AS ea
            ON ea.mstr_equipment_available_id = wp.mstr_equipment_available_id
        WHERE s2.kind = 3
          AND wp.start_at IS NOT NULL AND wp.completion_at > wp.start_at
          AND COALESCE((SELECT SUM(r2.qty) FROM tests.trans_work_record AS r2
                        WHERE r2.trans_work_plan_id = wp.trans_work_plan_id AND r2.remove IS FALSE), 0) < s2.prod_qty
    LOOP
        SELECT COALESCE(SUM(sp.hours), 0) INTO v_load FROM tests.mrp_spread(w.eq, w.start_at, w.completion_at) AS sp;
        v_hours := COALESCE(EXTRACT(EPOCH FROM w.interval_plan) / 3600, v_load);
        INSERT INTO _mrp_day
        SELECT w.eq, sp.load_date,
               sp.hours * CASE WHEN v_load > 0 THEN v_hours / v_load ELSE 1 END,
               TRUE, TRUE, w.sup_id, NULL
        FROM tests.mrp_spread(w.eq, w.start_at, w.completion_at) AS sp;
    END LOOP;

    -- ------------------------------------------------------------------
    -- 3〜5. LLC順に割り当て
    -- ------------------------------------------------------------------
    SELECT COALESCE(MAX(llc), 0) INTO v_max_llc FROM _mrp_item;

    FOR v_llc IN 0 .. v_max_llc LOOP

        FOR d IN
            SELECT * FROM _mrp_dem WHERE llc = v_llc
            ORDER BY frozen DESC, (src = 3), need_at NULLS LAST, dem_id
        LOOP
            v_rem := d.qty;
            v_alloc := 0;
            v_sug := NULL;
            SELECT proc_type, lot_size INTO v_proc, v_lot FROM _mrp_item WHERE item_id = d.item_id;
            v_proc := COALESCE(v_proc, tests.mrp_proc_type(d.item_id));
            v_lot := COALESCE(v_lot, 0);

            IF NOT d.frozen THEN
                v_seq := v_seq + 1;
                INSERT INTO tests.trans_mrp_suggestion (
                    trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                    item_history_id, item_id, bom_level, plan_kind, quantity, need_at,
                    trans_order_detail_id, trans_unrecognized_detail_id, trans_resource_plan_id,
                    parent_trans_operations_plan_id, old_quantity, old_due_at,
                    update_user_id, update_user_history_id)
                VALUES (
                    v_run_id, d.parent_sug_id, v_seq, 'PLAN_KEEP', 1,
                    tests.mrp_hist_item(d.item_id), d.item_id, v_llc, d.src, d.gross, d.need_at,
                    d.order_detail_id, d.unrec_detail_id, d.rp_id,
                    d.parent_op_id, d.old_qty, d.old_need,
                    v_staff, v_staff_hist)
                RETURNING trans_mrp_suggestion_id INTO v_sug;
                UPDATE _mrp_dem SET sug_id = v_sug WHERE dem_id = d.dem_id;
            END IF;

            -- a. この需要に紐づく既存の供給 (発注明細・生産計画の資材計画ID、または確定済みの引当予約)
            IF d.rp_id IS NOT NULL THEN
                FOR s IN
                    SELECT x.*, CASE WHEN x.pegged_rp = d.rp_id THEN x.qty - x.used
                                     ELSE LEAST(rv.qty, x.qty - x.used) END AS cap
                    FROM _mrp_sup AS x
                    LEFT JOIN _mrp_resv AS rv ON rv.sup_id = x.sup_id AND rv.rp_id = d.rp_id
                    WHERE x.item_id = d.item_id AND x.kind IN (2, 3) AND x.qty - x.used > 0
                      AND (x.pegged_rp = d.rp_id OR rv.rp_id IS NOT NULL)
                    ORDER BY (x.pegged_rp = d.rp_id) DESC, x.avail_at
                LOOP
                    EXIT WHEN v_rem <= 0;
                    v_take := LEAST(v_rem, s.cap);
                    CONTINUE WHEN v_take <= 0;
                    UPDATE _mrp_sup SET used = used + v_take WHERE sup_id = s.sup_id;
                    INSERT INTO _mrp_peg VALUES (d.dem_id, s.sup_id, v_take);
                    v_rem := v_rem - v_take;
                END LOOP;
            END IF;

            -- b. 現在庫。ほかの未処理の需要の確定済み在庫引当は残す (凍結需要は確定済みの引当数量まで)
            IF v_rem > 0 THEN
                SELECT * INTO s FROM _mrp_sup WHERE item_id = d.item_id AND kind = 1 AND qty - used > 0 LIMIT 1;
                IF FOUND THEN
                    SELECT COALESCE(SUM(LEAST(COALESCE(y.old_alloc, 0) + COALESCE(cl.qty, 0), y.qty)), 0) INTO v_load
                    FROM _mrp_dem AS y
                    LEFT JOIN _mrp_claim AS cl ON cl.rp_id = y.rp_id
                    WHERE y.item_id = d.item_id AND NOT y.done AND y.dem_id <> d.dem_id AND y.rp_id IS NOT NULL;
                    v_take := LEAST(v_rem, s.qty - s.used - v_load,
                                    CASE WHEN d.frozen
                                         THEN d.frozen_alloc + COALESCE((SELECT cl.qty FROM _mrp_claim AS cl WHERE cl.rp_id = d.rp_id), 0)
                                         ELSE v_rem END);
                    IF v_take > 0 THEN
                        UPDATE _mrp_sup SET used = used + v_take WHERE sup_id = s.sup_id;
                        INSERT INTO _mrp_peg VALUES (d.dem_id, s.sup_id, v_take);
                        v_rem := v_rem - v_take;
                        v_alloc := v_alloc + v_take;
                    END IF;
                END IF;
            END IF;

            IF d.frozen THEN
                UPDATE _mrp_dem SET alloc = v_alloc, done = TRUE WHERE dem_id = d.dem_id;
                CONTINUE;
            END IF;

            -- c. 空いている供給 (紐づく需要が無い/処理済み。ほかの未処理需要の引当予約分は除く)
            FOR s IN
                SELECT x.*, x.qty - x.used - COALESCE((
                           SELECT SUM(rv.qty) FROM _mrp_resv AS rv
                           INNER JOIN _mrp_dem AS y ON y.rp_id = rv.rp_id AND NOT y.done AND y.dem_id <> d.dem_id
                           WHERE rv.sup_id = x.sup_id), 0) AS cap
                FROM _mrp_sup AS x
                WHERE x.item_id = d.item_id AND x.kind IN (2, 3, 4, 5) AND x.qty - x.used > 0
                  AND (x.kind IN (4, 5) OR x.pegged_rp IS NULL
                       OR NOT EXISTS (SELECT 1 FROM _mrp_dem AS y WHERE y.rp_id = x.pegged_rp AND NOT y.done))
                ORDER BY (d.need_at IS NOT NULL AND x.avail_at > d.need_at), x.avail_at
            LOOP
                EXIT WHEN v_rem <= 0;
                -- 新規計画の余り(ロットまとめ分)は間に合う場合だけ使う
                CONTINUE WHEN s.kind IN (4, 5) AND d.need_at IS NOT NULL AND s.avail_at > d.need_at;
                v_take := LEAST(v_rem, s.cap);
                CONTINUE WHEN v_take <= 0;
                UPDATE _mrp_sup SET used = used + v_take WHERE sup_id = s.sup_id;
                INSERT INTO _mrp_peg VALUES (d.dem_id, s.sup_id, v_take);
                v_rem := v_rem - v_take;
            END LOOP;

            -- d. 新規の発注 / 生産
            IF v_rem > 0 THEN
                -- 内製・購買の選択 (購入品フラグあり・工程あり): 品目体系の累積リードタイムで納期に間に合う方。両方なら上位(購買)
                v_choice := v_proc; v_choice_msg := NULL;
                IF v_proc = 3 THEN
                    v_buy_h := tests.mrp_buy_hours(d.item_id);
                    v_make_h := tests.mrp_make_hours(d.item_id);
                    IF v_buy_h IS NULL THEN
                        v_choice := 1; v_choice_msg := '内製・購買の選択: 仕入先が無いため内製';
                    ELSIF d.need_at IS NULL THEN
                        v_choice := 2; v_choice_msg := '内製・購買の選択: 必要日が無いため上位(購買)';
                    ELSIF d.need_at - make_interval(secs => (v_buy_h * 3600)::double precision) >= v_now THEN
                        v_choice := 2;
                        v_choice_msg := CASE WHEN d.need_at - make_interval(secs => (v_make_h * 3600)::double precision) >= v_now
                                             THEN '内製・購買の選択: 両方間に合うため上位(購買)'
                                             ELSE '内製・購買の選択: 内製では間に合わないため購買' END;
                    ELSIF d.need_at - make_interval(secs => (v_make_h * 3600)::double precision) >= v_now THEN
                        v_choice := 1; v_choice_msg := '内製・購買の選択: 購買では間に合わないため内製';
                    ELSE
                        v_choice := CASE WHEN v_buy_h <= v_make_h THEN 2 ELSE 1 END;
                        v_choice_msg := '内製・購買の選択: どちらも間に合わないためリードタイムの短い'
                                        || CASE WHEN v_choice = 2 THEN '購買' ELSE '内製' END;
                    END IF;
                END IF;

                IF v_choice = 2 THEN
                    -- 購買: 品目仕入先(仕入先フラグあり)の第一候補
                    --   納入日時 = 必要日時 - 標準検品時間、発注日時 = 納入日時 - デリバリータイム
                    SELECT * INTO v_supplier FROM tests.mrp_suppliers(d.item_id) LIMIT 1;
                    v_found := FOUND;
                    v_del := CASE WHEN v_found THEN v_supplier.delivery_hours ELSE 0 END;
                    v_ins := CASE WHEN v_found THEN v_supplier.inspection_hours ELSE 0 END;
                    v_asking := v_found AND v_supplier.asking_price;
                    v_qty := GREATEST(v_rem, CASE WHEN v_found THEN v_supplier.minimum_lot_size ELSE 0 END);
                    IF v_lot > 0 THEN v_qty := CEIL(v_qty / v_lot) * v_lot; END IF;

                    v_late := FALSE;
                    IF d.need_at IS NULL THEN
                        v_rel := v_now;
                        v_arrival := v_now + make_interval(secs => (v_del * 3600)::double precision);
                    ELSE
                        v_arrival := d.need_at - make_interval(secs => (v_ins * 3600)::double precision);
                        v_rel := v_arrival - make_interval(secs => (v_del * 3600)::double precision);
                        IF v_rel < v_now THEN
                            v_late := TRUE;
                            v_rel := v_now;
                            v_arrival := v_now + make_interval(secs => (v_del * 3600)::double precision);
                        END IF;
                    END IF;
                    v_ready := v_arrival + make_interval(secs => (v_ins * 3600)::double precision);

                    v_msg := CONCAT_WS(' / ',
                        CASE WHEN NOT v_found THEN '仕入先(仕入先フラグあり)が未登録です。仕入先を選んでから採用してください' END,
                        CASE WHEN v_asking THEN '言い値(単価未定)' END,
                        CASE WHEN v_late THEN '発注日時が過ぎています。最短納入 ' || to_char(v_arrival, 'YYYY-MM-DD HH24:MI')
                                              || '(必要 ' || to_char(d.need_at, 'YYYY-MM-DD HH24:MI') || ')' END);
                    v_seq := v_seq + 1;
                    INSERT INTO tests.trans_mrp_suggestion (
                        trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision, need_user, late,
                        item_history_id, item_id, bom_level, plan_kind, quantity, need_at, release_at, due_at,
                        stakeholder_history_id, stakeholder_id, cost, asking_price, message,
                        update_user_id, update_user_history_id)
                    VALUES (
                        v_run_id, v_sug, v_seq, 'PURCHASE_NEW',
                        CASE WHEN v_found AND (NOT v_late OR p_accept_late) THEN 1 ELSE 0 END,
                        NOT (v_found AND (NOT v_late OR p_accept_late)), v_late,
                        tests.mrp_hist_item(d.item_id), d.item_id, v_llc, d.src, v_qty, d.need_at,
                        v_rel, v_arrival,
                        CASE WHEN v_found THEN tests.mrp_hist_stakeholder(v_supplier.mstr_stakeholder_id) END,
                        CASE WHEN v_found THEN v_supplier.mstr_stakeholder_id END,
                        CASE WHEN v_asking THEN 0 WHEN v_found THEN v_supplier.cost END,
                        v_asking,
                        NULLIF(v_msg, ''),
                        v_staff, v_staff_hist)
                    RETURNING trans_mrp_suggestion_id INTO v_sug2;

                    INSERT INTO _mrp_sup (item_id, kind, qty, used, avail_at, sug_id, restocking, insp_h, supplier_id)
                    VALUES (d.item_id, 4, v_qty, v_rem, v_ready, v_sug2, d.src = 3, v_ins,
                            CASE WHEN v_found THEN v_supplier.mstr_stakeholder_id END)
                    RETURNING sup_id INTO v_sup;
                    INSERT INTO _mrp_peg VALUES (d.dem_id, v_sup, v_rem);
                    v_rem := 0;
                ELSE
                    -- 内製: 工程を逆算(必要日なしは今から順算)。工程ごとに内部/外部を mrp_plan_task で決める
                    --   連続する同じ外注先の工程は1つの外注発注(OUTSOURCE_NEW)にまとめる
                    v_qty := v_rem;
                    IF v_lot > 0 THEN v_qty := CEIL(v_qty / v_lot) * v_lot; END IF;

                    INSERT INTO _mrp_sup (item_id, kind, qty, used, avail_at, prod_qty)
                    VALUES (d.item_id, 5, v_qty, v_rem, COALESCE(d.need_at, v_now), v_qty)
                    RETURNING sup_id INTO v_sup;

                    v_seq := v_seq + 1;
                    INSERT INTO tests.trans_mrp_suggestion (
                        trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                        item_history_id, item_id, bom_level, plan_kind, quantity, need_at,
                        update_user_id, update_user_history_id)
                    VALUES (
                        v_run_id, v_sug, v_seq, 'PRODUCTION_NEW', 1,
                        tests.mrp_hist_item(d.item_id), d.item_id, v_llc, d.src, v_qty, d.need_at,
                        v_staff, v_staff_hist)
                    RETURNING trans_mrp_suggestion_id INTO v_sug2;
                    UPDATE _mrp_sup SET sug_id = v_sug2 WHERE sup_id = v_sup;

                    v_ntask := 0;
                    v_osug := NULL; v_prev_vendor := NULL;
                    v_back := d.need_at IS NOT NULL;
                    v_first := NULL;
                    IF v_back THEN v_end := d.need_at; ELSE v_start := v_now; END IF;
                    FOR t IN
                        SELECT iot.sequence AS iseq, ot.sequence AS oseq, ot.mstr_task_id
                        FROM tests.mstr_item_operation_task AS iot
                        INNER JOIN tests.mstr_operation_task AS ot
                            ON ot.mstr_operation_task_id = iot.mstr_operation_task_id AND ot.remove IS FALSE
                        WHERE iot.mstr_item_id = d.item_id AND iot.remove IS FALSE
                        ORDER BY CASE WHEN v_back THEN -iot.sequence ELSE iot.sequence END,
                                 CASE WHEN v_back THEN -ot.sequence ELSE ot.sequence END
                    LOOP
                        v_ntask := v_ntask + 1;
                        v_hours := tests.mrp_task_hours(d.item_id, t.mstr_task_id);
                        SELECT * INTO v_slot FROM tests.mrp_plan_task(d.item_id, t.mstr_task_id, v_hours,
                            CASE WHEN v_back THEN v_end ELSE v_start END, v_back);
                        IF v_slot.kind = 2 THEN
                            -- 外部: 連続する同じ外注先はまとめる
                            IF v_osug IS NULL OR v_prev_vendor IS DISTINCT FROM v_slot.mstr_stakeholder_id THEN
                                v_seq := v_seq + 1;
                                INSERT INTO tests.trans_mrp_suggestion (
                                    trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                                    item_history_id, item_id, bom_level, plan_kind, quantity, need_at, release_at, due_at,
                                    stakeholder_history_id, stakeholder_id, cost, update_user_id, update_user_history_id)
                                VALUES (
                                    v_run_id, v_sug2, v_seq, 'OUTSOURCE_NEW', 1,
                                    tests.mrp_hist_item(d.item_id), d.item_id, v_llc, d.src, v_qty, d.need_at,
                                    v_slot.start_at, v_slot.ready_at,
                                    tests.mrp_hist_stakeholder(v_slot.mstr_stakeholder_id), v_slot.mstr_stakeholder_id, 0,
                                    v_staff, v_staff_hist)
                                RETURNING trans_mrp_suggestion_id INTO v_osug;
                                v_prev_vendor := v_slot.mstr_stakeholder_id;
                            END IF;
                            UPDATE tests.trans_mrp_suggestion
                            SET release_at = LEAST(release_at, v_slot.start_at), due_at = GREATEST(due_at, v_slot.ready_at),
                                cost = COALESCE(cost, 0) + COALESCE(v_slot.cost, 0),
                                message = CASE WHEN v_slot.cost IS NULL
                                               THEN '品目作業単価が未登録の工程があります(単価0で計画)' ELSE message END
                            WHERE trans_mrp_suggestion_id = v_osug;
                            INSERT INTO tests.trans_mrp_suggestion_task (
                                trans_mrp_suggestion_id, mstr_task_id, sequence,
                                mstr_outsource_available_history_id, mstr_outsource_available_id,
                                outsource_trans_mrp_suggestion_id, cost, interval_plan, start_at, completion_at,
                                update_user_id, update_user_history_id)
                            VALUES (
                                v_sug2, t.mstr_task_id, t.iseq,
                                tests.mrp_hist_outsource_available(v_slot.mstr_outsource_available_id), v_slot.mstr_outsource_available_id,
                                v_osug, v_slot.cost, make_interval(secs => (v_hours * 3600)::double precision),
                                v_slot.start_at, v_slot.completion_at, v_staff, v_staff_hist);
                        ELSE
                            -- 内部 (または工程場所なし)
                            v_osug := NULL; v_prev_vendor := NULL;
                            INSERT INTO tests.trans_mrp_suggestion_task (
                                trans_mrp_suggestion_id, mstr_task_id, sequence,
                                mstr_equipment_available_history_id, mstr_equipment_available_id,
                                cost, interval_plan, start_at, completion_at, update_user_id, update_user_history_id)
                            VALUES (
                                v_sug2, t.mstr_task_id, t.iseq,
                                CASE WHEN v_slot.mstr_equipment_available_id IS NOT NULL
                                     THEN tests.mrp_hist_equipment_available(v_slot.mstr_equipment_available_id) END,
                                v_slot.mstr_equipment_available_id,
                                v_slot.cost, make_interval(secs => (v_hours * 3600)::double precision),
                                v_slot.start_at, v_slot.completion_at, v_staff, v_staff_hist)
                            RETURNING trans_mrp_suggestion_task_id INTO v_tk;
                            IF v_slot.mstr_equipment_id IS NOT NULL THEN
                                INSERT INTO _mrp_day
                                SELECT v_slot.mstr_equipment_id, sp.load_date, sp.hours, FALSE, TRUE, v_sup, v_tk
                                FROM tests.mrp_spread(v_slot.mstr_equipment_id, v_slot.start_at, v_slot.completion_at) AS sp;
                            END IF;
                        END IF;
                        v_first := LEAST(COALESCE(v_first, v_slot.start_at), v_slot.start_at);
                        IF v_back THEN v_end := v_slot.start_at; ELSE v_start := v_slot.ready_at; END IF;
                    END LOOP;
                    IF v_back THEN
                        v_first := COALESCE(v_first, v_end); v_due := d.need_at;
                    ELSE
                        v_first := COALESCE(v_first, v_now); v_due := v_start;
                    END IF;

                    v_late := v_first < v_now;
                    v_msg := CONCAT_WS(' / ',
                        CASE WHEN v_ntask = 0 THEN '品目工程運用明細が未登録です(リードタイム0で計画)' END,
                        CASE WHEN v_late THEN '着手日が過ぎています(着手 ' || to_char(v_first, 'YYYY-MM-DD HH24:MI') || ')' END);
                    UPDATE tests.trans_mrp_suggestion
                    SET release_at = v_first, due_at = v_due, late = v_late,
                        decision = CASE WHEN v_ntask = 0 OR (v_late AND NOT p_accept_late) THEN 0 ELSE 1 END,
                        need_user = (v_ntask = 0 OR (v_late AND NOT p_accept_late)),
                        message = NULLIF(v_msg, '')
                    WHERE trans_mrp_suggestion_id = v_sug2;
                    UPDATE _mrp_sup SET avail_at = v_due, first_start = v_first WHERE sup_id = v_sup;
                    -- 外注発注の提案: 外注への出荷日超過は要判断
                    UPDATE tests.trans_mrp_suggestion AS o
                    SET late = o.release_at < v_now,
                        decision = CASE WHEN o.release_at < v_now AND NOT p_accept_late THEN 0 ELSE 1 END,
                        need_user = (o.release_at < v_now AND NOT p_accept_late),
                        message = NULLIF(CONCAT_WS(' / ', o.message,
                            CASE WHEN o.release_at < v_now THEN '外注への出荷日が過ぎています' END), '')
                    WHERE o.parent_trans_mrp_suggestion_id = v_sug2 AND o.kind = 'OUTSOURCE_NEW';
                    INSERT INTO _mrp_peg VALUES (d.dem_id, v_sup, v_rem);
                    v_rem := 0;
                END IF;
                IF v_choice_msg IS NOT NULL THEN
                    UPDATE tests.trans_mrp_suggestion
                    SET message = CONCAT_WS(' / ', v_choice_msg, message)
                    WHERE trans_mrp_suggestion_id = v_sug2;
                END IF;
            END IF;

            -- 資材計画の提案を確定 (新規 / 変更 / 変更なし)
            v_alloc := ROUND(v_alloc, 2);
            UPDATE _mrp_dem SET alloc = v_alloc, done = TRUE WHERE dem_id = d.dem_id;
            v_kind := CASE
                WHEN d.rp_id IS NULL THEN 'PLAN_NEW'
                WHEN d.gross IS DISTINCT FROM d.old_qty
                  OR (d.src <> 3 AND d.need_at IS DISTINCT FROM d.old_need)
                  OR v_alloc IS DISTINCT FROM COALESCE(d.old_alloc, 0) THEN 'PLAN_UPDATE'
                ELSE 'PLAN_KEEP' END;
            UPDATE tests.trans_mrp_suggestion
            SET kind = v_kind, allocated_quantity = v_alloc,
                message = CASE WHEN v_kind = 'PLAN_UPDATE' THEN CONCAT_WS(' / ',
                    CASE WHEN d.gross IS DISTINCT FROM d.old_qty THEN '数量 ' || COALESCE(d.old_qty::text, '-') || '→' || d.gross::text END,
                    CASE WHEN d.src <> 3 AND d.need_at IS DISTINCT FROM d.old_need THEN '期限 ' || COALESCE(to_char(d.old_need, 'YYYY-MM-DD HH24:MI'), '-') || '→' || COALESCE(to_char(d.need_at, 'YYYY-MM-DD HH24:MI'), '-') END,
                    CASE WHEN v_alloc IS DISTINCT FROM COALESCE(d.old_alloc, 0) THEN '在庫引当 ' || COALESCE(d.old_alloc, 0)::text || '→' || v_alloc::text END) END
            WHERE trans_mrp_suggestion_id = v_sug;
        END LOOP;   -- 需要

        -- ------------------------------------------------------------------
        -- このレベルの供給の後処理: 取消・日程変更・内外の切り替え・従属需要の展開
        -- ------------------------------------------------------------------
        FOR s IN
            SELECT x.* FROM _mrp_sup AS x
            INNER JOIN _mrp_item AS i ON i.item_id = x.item_id AND i.llc = v_llc
            WHERE x.kind IN (2, 3, 5)
            ORDER BY x.avail_at
        LOOP
            IF s.kind IN (2, 3) THEN
                IF s.used = 0 THEN
                    IF p_mode = 2 AND NOT s.restocking AND s.in_scope THEN
                        v_seq := v_seq + 1;
                        INSERT INTO tests.trans_mrp_suggestion (
                            trans_mrp_run_id, seq, kind, decision, need_user,
                            item_history_id, item_id, bom_level, quantity, old_quantity, old_due_at,
                            trans_purchase_detail_id, trans_operations_plan_id, message,
                            update_user_id, update_user_history_id)
                        VALUES (
                            v_run_id, v_seq, CASE WHEN s.kind = 2 THEN 'PURCHASE_CANCEL' ELSE 'PRODUCTION_CANCEL' END, 0, TRUE,
                            tests.mrp_hist_item(s.item_id), s.item_id, v_llc, 0, s.qty, s.avail_at,
                            s.pd_id, s.op_id,
                            CASE WHEN s.started AND s.kind = 2 THEN '一部受入済み。採用すると発注数量を受入済み数量に減らします'
                                 WHEN s.started THEN '着手済み。採用すると生産数量を完成数量に減らします'
                                 ELSE '需要が無くなりました' END,
                            v_staff, v_staff_hist)
                        RETURNING trans_mrp_suggestion_id INTO v_sug2;
                        UPDATE _mrp_sup SET cancel_sug = v_sug2 WHERE sup_id = s.sup_id;
                        UPDATE _mrp_day SET planned = FALSE WHERE sup_id = s.sup_id AND committed;
                    END IF;
                    CONTINUE;
                END IF;

                -- 日程変更: 実際に使う需要のうち一番早い必要日に合わせる
                SELECT MIN(y.need_at) INTO v_target
                FROM _mrp_peg AS p2 INNER JOIN _mrp_dem AS y ON y.dem_id = p2.dem_id
                WHERE p2.sup_id = s.sup_id AND NOT y.frozen;
                v_resched := v_target IS NOT NULL AND s.avail_at IS NOT NULL
                   AND (s.avail_at::date > v_target::date
                        OR (p_mode = 2 AND NOT s.restocking AND s.in_scope AND s.avail_at::date < v_target::date - p_reschedule_out_days));

                -- 工程計画で内外を切り替えた工程があるか (外部にしたのに外注発注が無い / 内部に戻したのに外注発注が残っている)
                v_switch := FALSE;
                IF s.kind = 3 AND p_mode = 2 AND s.in_scope THEN
                    SELECT EXISTS (
                        SELECT 1 FROM tests.trans_work_plan AS wp
                        LEFT JOIN tests.trans_purchase_detail AS opd
                            ON opd.trans_purchase_detail_id = wp.trans_purchase_detail_id AND opd.remove IS FALSE
                        WHERE wp.trans_operations_plan_id = s.op_id AND wp.remove IS FALSE
                          AND ((wp.mstr_outsource_available_id IS NOT NULL AND opd.trans_purchase_detail_id IS NULL)
                            OR (wp.mstr_outsource_available_id IS NULL AND opd.trans_purchase_detail_id IS NOT NULL)))
                    INTO v_switch;
                END IF;

                -- 工程の日程の食い違い (前の工程の完了＋デリバリーが次の工程の開始より後 / 最終工程が期限より後)
                --   外部への切り替え(OUTSOURCE_OPTION の採用・工程計画の変更)のあとに起きる
                v_broken := FALSE;
                IF s.kind = 3 AND p_mode = 2 AND s.in_scope AND NOT s.started THEN
                    SELECT EXISTS (
                        SELECT 1 FROM (
                            SELECT wp.completion_at + COALESCE(ea.delivery_interval, oa.delivery_interval, INTERVAL '0') AS ready,
                                   LEAD(wp.start_at) OVER (ORDER BY wp.sequence NULLS FIRST, wp.start_at) AS nxt
                            FROM tests.trans_work_plan AS wp
                            LEFT JOIN tests.mstr_equipment_available AS ea
                                ON ea.mstr_equipment_available_id = wp.mstr_equipment_available_id
                            LEFT JOIN tests.mstr_outsource_available AS oa
                                ON oa.mstr_outsource_available_id = wp.mstr_outsource_available_id
                            WHERE wp.trans_operations_plan_id = s.op_id AND wp.remove IS FALSE
                              AND wp.start_at IS NOT NULL AND wp.completion_at IS NOT NULL
                        ) AS x
                        WHERE (x.nxt IS NOT NULL AND x.ready > x.nxt + INTERVAL '1 minute')
                           OR (x.nxt IS NULL AND x.ready > s.avail_at + INTERVAL '1 minute'))
                    INTO v_broken;
                END IF;

                IF s.kind = 2 AND v_resched THEN
                    v_seq := v_seq + 1;
                    INSERT INTO tests.trans_mrp_suggestion (
                        trans_mrp_run_id, seq, kind, decision, need_user, late,
                        item_history_id, item_id, bom_level, quantity, need_at, due_at, old_due_at,
                        trans_purchase_detail_id, message, update_user_id, update_user_history_id)
                    VALUES (
                        v_run_id, v_seq, 'PURCHASE_RESCHEDULE', 0, TRUE, v_target < v_now,
                        tests.mrp_hist_item(s.item_id), s.item_id, v_llc, s.qty, v_target,
                        v_target - make_interval(secs => (COALESCE(s.insp_h, 0) * 3600)::double precision),
                        s.avail_at - make_interval(secs => (COALESCE(s.insp_h, 0) * 3600)::double precision),
                        s.pd_id,
                        CASE WHEN s.avail_at::date > v_target::date THEN '納期の前倒しが必要です。仕入先と調整のうえ採用してください'
                             ELSE '納期を後ろへずらせます' END,
                        v_staff, v_staff_hist);

                ELSIF s.kind = 3 AND (v_resched OR v_switch OR v_broken) THEN
                    -- 既存の生産計画明細を、今の内外(利用可能設備/利用可能外部)で完了日時から逆算し直す
                    v_tgt := CASE WHEN v_resched THEN v_target ELSE s.avail_at END;
                    v_started := s.started;
                    v_changed := FALSE; v_pdchg := FALSE;
                    v_seq := v_seq + 1;
                    INSERT INTO tests.trans_mrp_suggestion (
                        trans_mrp_run_id, seq, kind, decision, need_user,
                        item_history_id, item_id, bom_level, quantity, need_at, due_at, old_due_at,
                        trans_operations_plan_id, update_user_id, update_user_history_id)
                    VALUES (
                        v_run_id, v_seq, 'PRODUCTION_RESCHEDULE', 1, FALSE,
                        tests.mrp_hist_item(s.item_id), s.item_id, v_llc, s.qty, v_target, v_tgt, s.avail_at,
                        s.op_id, v_staff, v_staff_hist)
                    RETURNING trans_mrp_suggestion_id INTO v_sug2;
                    UPDATE _mrp_day SET planned = FALSE WHERE sup_id = s.sup_id AND committed;
                    v_end := v_tgt;
                    FOR w IN
                        SELECT wp.*, opd.trans_purchase_detail_id AS act_pd
                        FROM tests.trans_work_plan AS wp
                        LEFT JOIN tests.trans_purchase_detail AS opd
                            ON opd.trans_purchase_detail_id = wp.trans_purchase_detail_id AND opd.remove IS FALSE
                        WHERE wp.trans_operations_plan_id = s.op_id AND wp.remove IS FALSE
                        ORDER BY wp.sequence DESC NULLS LAST, wp.completion_at DESC NULLS LAST
                    LOOP
                        v_hours := COALESCE(EXTRACT(EPOCH FROM w.interval_plan) / 3600,
                                            tests.mrp_task_hours(s.item_id, w.mstr_task_id));
                        SELECT * INTO v_slot FROM tests.mrp_plan_task(s.item_id, w.mstr_task_id, v_hours, v_end, TRUE,
                                                                      w.mstr_equipment_available_id, w.mstr_outsource_available_id);
                        INSERT INTO tests.trans_mrp_suggestion_task (
                            trans_mrp_suggestion_id, trans_work_plan_id, mstr_task_id, sequence,
                            mstr_equipment_available_history_id, mstr_equipment_available_id,
                            mstr_outsource_available_history_id, mstr_outsource_available_id,
                            cost, interval_plan, start_at, completion_at, update_user_id, update_user_history_id)
                        VALUES (
                            v_sug2, w.trans_work_plan_id, w.mstr_task_id, w.sequence,
                            CASE WHEN v_slot.kind = 1 THEN tests.mrp_hist_equipment_available(v_slot.mstr_equipment_available_id) END,
                            CASE WHEN v_slot.kind = 1 THEN v_slot.mstr_equipment_available_id END,
                            CASE WHEN v_slot.kind = 2 THEN tests.mrp_hist_outsource_available(v_slot.mstr_outsource_available_id) END,
                            CASE WHEN v_slot.kind = 2 THEN v_slot.mstr_outsource_available_id END,
                            v_slot.cost, COALESCE(w.interval_plan, make_interval(secs => (v_hours * 3600)::double precision)),
                            v_slot.start_at, v_slot.completion_at, v_staff, v_staff_hist)
                        RETURNING trans_mrp_suggestion_task_id INTO v_tk;
                        IF v_slot.kind = 1 AND v_slot.mstr_equipment_id IS NOT NULL THEN
                            INSERT INTO _mrp_day
                            SELECT v_slot.mstr_equipment_id, sp.load_date, sp.hours, FALSE, TRUE, s.sup_id, v_tk
                            FROM tests.mrp_spread(v_slot.mstr_equipment_id, v_slot.start_at, v_slot.completion_at) AS sp;
                        END IF;
                        IF v_slot.kind = 2 AND w.act_pd IS NOT NULL AND w.completion_at IS DISTINCT FROM v_slot.completion_at THEN
                            v_pdchg := TRUE;
                        END IF;
                        IF w.start_at IS NULL OR w.completion_at IS NULL
                           OR abs(EXTRACT(EPOCH FROM (v_slot.start_at - w.start_at))) > 60
                           OR abs(EXTRACT(EPOCH FROM (v_slot.completion_at - w.completion_at))) > 60
                           OR (v_slot.kind = 1 AND w.mstr_equipment_available_id IS DISTINCT FROM v_slot.mstr_equipment_available_id) THEN
                            v_changed := TRUE;
                        END IF;
                        v_end := v_slot.start_at;
                    END LOOP;

                    IF NOT v_changed THEN
                        -- 日時が変わらないなら日程変更の提案は出さない
                        DELETE FROM _mrp_day WHERE sup_id = s.sup_id AND NOT committed;
                        UPDATE _mrp_day SET planned = TRUE WHERE sup_id = s.sup_id AND committed;
                        DELETE FROM tests.trans_mrp_suggestion_task WHERE trans_mrp_suggestion_id = v_sug2;
                        DELETE FROM tests.trans_mrp_suggestion WHERE trans_mrp_suggestion_id = v_sug2;
                        v_sug2 := NULL;
                    ELSE
                        v_late := v_end < v_now;
                        UPDATE tests.trans_mrp_suggestion
                        SET release_at = v_end, late = v_late,
                            decision = CASE WHEN v_started OR v_pdchg OR (v_late AND NOT p_accept_late) THEN 0 ELSE 1 END,
                            need_user = (v_started OR v_pdchg OR (v_late AND NOT p_accept_late)),
                            message = CONCAT_WS(' / ',
                                CASE WHEN NOT v_resched AND v_switch THEN '内外の切り替えによる日程の見直し'
                                     WHEN NOT v_resched THEN '工程の日程の食い違いの見直し(外部への切り替えなど)'
                                     WHEN s.avail_at > v_tgt THEN '前倒し' ELSE '後ろ倒し' END,
                                CASE WHEN v_started THEN '着手済みのため確認してください' END,
                                CASE WHEN v_pdchg THEN '外注発注済みの工程の日程が変わります。外注先と調整してください' END,
                                CASE WHEN v_late THEN '着手日が過ぎています' END)
                        WHERE trans_mrp_suggestion_id = v_sug2;
                        UPDATE _mrp_sup SET first_start = v_end WHERE sup_id = s.sup_id;
                        s.first_start := v_end;
                    END IF;

                    -- 内外の切り替えに合わせた外注発注の提案
                    IF v_switch THEN
                        v_osug := NULL; v_prev_vendor := NULL;
                        FOR w IN
                            SELECT wp.*, opd.trans_purchase_detail_id AS act_pd, oa.mstr_stakeholder_id AS vendor,
                                   oa.mstr_task_location_id AS oa_tl,
                                   EXTRACT(EPOCH FROM COALESCE(oa.delivery_interval, INTERVAL '0')) / 3600 AS dh,
                                   COALESCE(tk.start_at, wp.start_at) AS n_start,
                                   COALESCE(tk.completion_at, wp.completion_at) AS n_end
                            FROM tests.trans_work_plan AS wp
                            LEFT JOIN tests.trans_purchase_detail AS opd
                                ON opd.trans_purchase_detail_id = wp.trans_purchase_detail_id AND opd.remove IS FALSE
                            LEFT JOIN tests.mstr_outsource_available AS oa
                                ON oa.mstr_outsource_available_id = wp.mstr_outsource_available_id
                            LEFT JOIN tests.trans_mrp_suggestion_task AS tk
                                ON tk.trans_mrp_suggestion_id = v_sug2 AND tk.trans_work_plan_id = wp.trans_work_plan_id
                            WHERE wp.trans_operations_plan_id = s.op_id AND wp.remove IS FALSE
                            ORDER BY wp.sequence NULLS FIRST, wp.start_at
                        LOOP
                            IF w.mstr_outsource_available_id IS NOT NULL AND w.act_pd IS NULL THEN
                                v_vendor := w.vendor;
                                IF v_osug IS NULL OR v_prev_vendor IS DISTINCT FROM v_vendor THEN
                                    v_seq := v_seq + 1;
                                    INSERT INTO tests.trans_mrp_suggestion (
                                        trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                                        item_history_id, item_id, bom_level, quantity, release_at, due_at,
                                        trans_operations_plan_id, stakeholder_history_id, stakeholder_id, cost,
                                        update_user_id, update_user_history_id)
                                    VALUES (
                                        v_run_id, v_sug2, v_seq, 'OUTSOURCE_NEW', 1,
                                        tests.mrp_hist_item(s.item_id), s.item_id, v_llc, s.prod_qty, w.n_start,
                                        w.n_end + make_interval(secs => (COALESCE(w.dh, 0) * 3600)::double precision),
                                        s.op_id, tests.mrp_hist_stakeholder(v_vendor), v_vendor, 0,
                                        v_staff, v_staff_hist)
                                    RETURNING trans_mrp_suggestion_id INTO v_osug;
                                    v_prev_vendor := v_vendor;
                                END IF;
                                UPDATE tests.trans_mrp_suggestion
                                SET release_at = LEAST(release_at, w.n_start),
                                    due_at = GREATEST(due_at, w.n_end + make_interval(secs => (COALESCE(w.dh, 0) * 3600)::double precision)),
                                    cost = COALESCE(cost, 0) + COALESCE(tests.mrp_task_cost(s.item_id, w.oa_tl), 0)
                                WHERE trans_mrp_suggestion_id = v_osug;
                                INSERT INTO tests.trans_mrp_suggestion_task (
                                    trans_mrp_suggestion_id, trans_work_plan_id, mstr_task_id, sequence,
                                    mstr_outsource_available_history_id, mstr_outsource_available_id,
                                    cost, start_at, completion_at, update_user_id, update_user_history_id)
                                VALUES (
                                    v_osug, w.trans_work_plan_id, w.mstr_task_id, w.sequence,
                                    tests.mrp_hist_outsource_available(w.mstr_outsource_available_id), w.mstr_outsource_available_id,
                                    tests.mrp_task_cost(s.item_id, w.oa_tl), w.n_start, w.n_end, v_staff, v_staff_hist);
                            ELSE
                                v_osug := NULL; v_prev_vendor := NULL;
                                IF w.mstr_outsource_available_id IS NULL AND w.act_pd IS NOT NULL
                                   AND NOT EXISTS (SELECT 1 FROM tests.trans_mrp_suggestion AS x
                                                   WHERE x.trans_mrp_run_id = v_run_id AND x.kind = 'OUTSOURCE_CANCEL'
                                                     AND x.trans_purchase_detail_id = w.act_pd) THEN
                                    v_seq := v_seq + 1;
                                    INSERT INTO tests.trans_mrp_suggestion (
                                        trans_mrp_run_id, seq, kind, decision, need_user, item_history_id, item_id, bom_level,
                                        quantity, trans_purchase_detail_id, trans_operations_plan_id, message,
                                        update_user_id, update_user_history_id)
                                    VALUES (
                                        v_run_id, v_seq, 'OUTSOURCE_CANCEL', 0, TRUE, tests.mrp_hist_item(s.item_id), s.item_id, v_llc,
                                        0, w.act_pd, s.op_id,
                                        '内部に戻した工程の外注発注です。採用すると外注発注を取り消し、同じ発注の外部の工程は次の再MRPで発注し直します',
                                        v_staff, v_staff_hist);
                                END IF;
                            END IF;
                        END LOOP;
                        UPDATE tests.trans_mrp_suggestion AS o
                        SET late = o.release_at < v_now,
                            decision = CASE WHEN o.release_at < v_now AND NOT p_accept_late THEN 0 ELSE 1 END,
                            need_user = (o.release_at < v_now AND NOT p_accept_late),
                            message = NULLIF(CONCAT_WS(' / ', '工程計画で外部に切り替えた工程',
                                CASE WHEN o.release_at < v_now THEN '外注への出荷日が過ぎています' END), '')
                        WHERE o.trans_mrp_run_id = v_run_id AND o.kind = 'OUTSOURCE_NEW' AND o.trans_operations_plan_id = s.op_id;
                    END IF;
                END IF;

                -- 余り(ロットまとめ・最小発注数量を超える過剰)は情報として出す
                IF p_mode = 2 AND NOT s.restocking AND s.in_scope AND s.kind = 2 THEN
                    SELECT lot_size INTO v_lot FROM _mrp_item WHERE item_id = s.item_id;
                    v_qty := GREATEST(s.used, COALESCE((
                        SELECT ms.minimum_lot_size FROM tests.mstr_item_supplier AS ms
                        WHERE ms.mstr_item_id = s.item_id AND ms.mstr_stakeholder_id = s.supplier_id AND ms.remove IS FALSE
                        LIMIT 1), 0));
                    IF COALESCE(v_lot, 0) > 0 THEN v_qty := CEIL(v_qty / v_lot) * v_lot; END IF;
                    IF s.qty > v_qty + 0.005 THEN
                        v_seq := v_seq + 1;
                        INSERT INTO tests.trans_mrp_suggestion (
                            trans_mrp_run_id, seq, kind, decision, item_history_id, item_id, bom_level,
                            quantity, old_quantity, trans_purchase_detail_id, message, update_user_id, update_user_history_id)
                        VALUES (
                            v_run_id, v_seq, 'EXC_EXCESS', 9, tests.mrp_hist_item(s.item_id), s.item_id, v_llc,
                            v_qty, s.qty, s.pd_id,
                            '発注残 ' || s.qty::text || ' のうち必要なのは ' || v_qty::text || '。減らす場合は仕入先と調整してください',
                            v_staff, v_staff_hist);
                    END IF;
                END IF;
            END IF;

            -- 従属需要の展開 (既存の生産残は再MRPのみ。新規生産は常に)
            IF s.kind IN (3, 5) AND s.used > 0 AND NOT s.children_done THEN
                FOR c IN
                    SELECT tr.mstr_item_id AS child, SUM(tr.quantity) AS per
                    FROM tests.mstr_item_tree AS tr
                    INNER JOIN tests.mstr_item AS ci ON ci.mstr_item_id = tr.mstr_item_id AND ci.remove IS FALSE
                    WHERE tr.parent_mstr_item_id = s.item_id AND tr.remove IS FALSE
                    GROUP BY tr.mstr_item_id
                LOOP
                    v_rp_id := NULL; v_rp_qty := NULL; v_rp_deadline := NULL; v_rp_alloc := NULL;
                    v_issued := 0;
                    IF s.kind = 3 THEN
                        SELECT x.trans_resource_plan_id, x.quantity, x.deadline, x.inventory_resavation
                        INTO v_rp_id, v_rp_qty, v_rp_deadline, v_rp_alloc
                        FROM tests.trans_resource_plan AS x
                        WHERE x.parent_trans_operations_plan_id = s.op_id AND x.item_id = c.child AND x.remove IS FALSE
                        ORDER BY x.register_at DESC LIMIT 1;
                        IF v_rp_id IS NOT NULL THEN
                            v_issued := tests.mrp_issued(v_rp_id);
                        END IF;
                    END IF;
                    INSERT INTO _mrp_dem (item_id, llc, gross, qty, need_at, src, rp_id, parent_op_id, parent_sug_id,
                                          old_qty, old_need, old_alloc)
                    VALUES (
                        c.child,
                        COALESCE((SELECT i.llc FROM _mrp_item AS i WHERE i.item_id = c.child), v_llc + 1),
                        ROUND(c.per * s.prod_qty, 2),
                        GREATEST(ROUND(c.per * s.prod_qty, 2) - v_issued, 0),
                        COALESCE(s.first_start, s.avail_at),
                        4, v_rp_id,
                        CASE WHEN s.kind = 3 THEN s.op_id END,
                        CASE WHEN s.kind = 5 THEN s.sug_id END,
                        v_rp_qty, v_rp_deadline, v_rp_alloc);
                END LOOP;
                UPDATE _mrp_sup SET children_done = TRUE WHERE sup_id = s.sup_id;
            END IF;
        END LOOP;   -- 供給
    END LOOP;   -- LLC

    -- ------------------------------------------------------------------
    -- 再MRP: 需要が無くなった資材計画の取消
    -- ------------------------------------------------------------------
    IF p_mode = 2 THEN
        FOR r IN
            SELECT rp.*, ps.cancel_sug,
                   CASE WHEN rp.trans_order_detail_id IS NOT NULL THEN 1
                        WHEN rp.trans_unrecognized_detail_id IS NOT NULL THEN 2
                        WHEN rp.parent_trans_operations_plan_id IS NOT NULL THEN 4 ELSE 3 END AS pk
            FROM tests.trans_resource_plan AS rp
            LEFT JOIN tests.trans_operations_plan AS pop
                ON pop.trans_operations_plan_id = rp.parent_trans_operations_plan_id
            LEFT JOIN _mrp_sup AS ps
                ON ps.kind = 3 AND ps.op_id = rp.parent_trans_operations_plan_id
            WHERE rp.remove IS FALSE
              AND NOT EXISTS (SELECT 1 FROM _mrp_dem AS y WHERE y.rp_id = rp.trans_resource_plan_id)
              AND (NOT v_scoped OR EXISTS (SELECT 1 FROM _mrp_scope AS sc WHERE sc.rp_id = rp.trans_resource_plan_id))
              AND (rp.parent_trans_operations_plan_id IS NULL
                   OR pop.remove IS NOT FALSE
                   OR ps.sup_id IS NOT NULL)
        LOOP
            v_seq := v_seq + 1;
            INSERT INTO tests.trans_mrp_suggestion (
                trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision,
                item_history_id, item_id, plan_kind, quantity, old_quantity, old_due_at,
                trans_order_detail_id, trans_unrecognized_detail_id, trans_resource_plan_id,
                parent_trans_operations_plan_id, message, update_user_id, update_user_history_id)
            VALUES (
                v_run_id, r.cancel_sug, v_seq, 'PLAN_CANCEL', 1,
                r.item_history_id, r.item_id, r.pk, 0, r.quantity, r.deadline,
                r.trans_order_detail_id, r.trans_unrecognized_detail_id, r.trans_resource_plan_id,
                r.parent_trans_operations_plan_id,
                CASE WHEN r.cancel_sug IS NOT NULL THEN '親の生産計画の取消を採用した場合に取り消します'
                     ELSE '需要が無くなりました' END,
                v_staff, v_staff_hist);
        END LOOP;
    END IF;

    -- ------------------------------------------------------------------
    -- ペギングの保存 (確定時に引当予約になる)
    -- ------------------------------------------------------------------
    INSERT INTO tests.trans_mrp_pegging (
        trans_mrp_run_id, demand_trans_mrp_suggestion_id, supply_kind, supply_trans_mrp_suggestion_id,
        trans_purchase_detail_id, trans_operations_plan_id, quantity, need_at, available_at,
        update_user_id, update_user_history_id)
    SELECT
        v_run_id, y.sug_id, x.kind, x.sug_id, x.pd_id, x.op_id, ROUND(SUM(p2.qty), 2), y.need_at,
        CASE WHEN x.kind = 1 THEN NULL ELSE x.avail_at END,
        v_staff, v_staff_hist
    FROM _mrp_peg AS p2
    INNER JOIN _mrp_dem AS y ON y.dem_id = p2.dem_id AND NOT y.frozen AND y.sug_id IS NOT NULL
    INNER JOIN _mrp_sup AS x ON x.sup_id = p2.sup_id
    GROUP BY y.sug_id, x.kind, x.sug_id, x.pd_id, x.op_id, y.need_at, x.avail_at;

    -- ------------------------------------------------------------------
    -- 工程負荷 (設備×日) と過負荷
    -- ------------------------------------------------------------------
    INSERT INTO tests.trans_mrp_load (
        trans_mrp_run_id, mstr_equipment_id, load_date, capacity_hours, committed_hours, planned_hours, load_rate,
        update_user_id, update_user_history_id)
    SELECT
        v_run_id, z.equipment_id, z.load_date, z.cap, z.c_h, z.p_h,
        CASE WHEN z.cap > 0 THEN ROUND(z.p_h / z.cap * 100, 2) END,
        v_staff, v_staff_hist
    FROM (
        SELECT dl.equipment_id, dl.load_date,
               tests.mrp_capacity(dl.equipment_id, dl.load_date) AS cap,
               ROUND(COALESCE(SUM(dl.hours) FILTER (WHERE dl.committed), 0), 2) AS c_h,
               ROUND(COALESCE(SUM(dl.hours) FILTER (WHERE dl.planned), 0), 2) AS p_h
        FROM _mrp_day AS dl
        GROUP BY dl.equipment_id, dl.load_date
    ) AS z;

    FOR r IN
        SELECT * FROM tests.trans_mrp_load
        WHERE trans_mrp_run_id = v_run_id AND planned_hours > capacity_hours + 0.01
        ORDER BY mstr_equipment_id, load_date
    LOOP
        v_seq := v_seq + 1;
        INSERT INTO tests.trans_mrp_suggestion (
            trans_mrp_run_id, seq, kind, decision, mstr_equipment_id, load_date, quantity, message,
            update_user_id, update_user_history_id)
        VALUES (
            v_run_id, v_seq, 'EXC_OVERLOAD', 9, r.mstr_equipment_id, r.load_date, r.planned_hours,
            '負荷 ' || r.planned_hours::text || 'h / 稼働 ' || r.capacity_hours::text || 'h ('
                || COALESCE(r.load_rate::text, '-') || '%)',
            v_staff, v_staff_hist);
    END LOOP;

    -- 過負荷の設備×日に載っている、この実行で計画した内部の工程のうち、外部にも出せるもの → 要判断
    --   採用: その工程を外部に切り替えて外注発注を作る / 却下: 内部のまま(過負荷を受け入れる)
    FOR r IN
        SELECT DISTINCT ON (tk.trans_mrp_suggestion_task_id)
               tk.trans_mrp_suggestion_task_id, tk.trans_mrp_suggestion_id, tk.mstr_task_id, ld.mstr_equipment_id, ld.load_date,
               sg.item_id, sg.item_history_id, sg.quantity, sg.trans_operations_plan_id, alt.*
        FROM tests.trans_mrp_load AS ld
        INNER JOIN _mrp_day AS dl
            ON dl.equipment_id = ld.mstr_equipment_id AND dl.load_date = ld.load_date AND dl.task_id IS NOT NULL AND dl.planned
        INNER JOIN tests.trans_mrp_suggestion_task AS tk ON tk.trans_mrp_suggestion_task_id = dl.task_id
        INNER JOIN tests.trans_mrp_suggestion AS sg ON sg.trans_mrp_suggestion_id = tk.trans_mrp_suggestion_id
        CROSS JOIN LATERAL (
            SELECT x.mstr_outsource_available_id AS alt_oa, x.mstr_stakeholder_id AS alt_sh,
                   tests.mrp_task_cost(sg.item_id, x.mstr_task_location_id) AS alt_cost, x.delivery_hours AS alt_dh
            FROM tests.mrp_task_candidates(tk.mstr_task_id) AS x
            WHERE x.kind = 2
            ORDER BY x.priority, x.delivery_hours, tests.mrp_task_cost(sg.item_id, x.mstr_task_location_id) NULLS LAST
            LIMIT 1
        ) AS alt
        WHERE ld.trans_mrp_run_id = v_run_id AND ld.planned_hours > ld.capacity_hours + 0.01
        ORDER BY tk.trans_mrp_suggestion_task_id, ld.load_date
    LOOP
        v_seq := v_seq + 1;
        INSERT INTO tests.trans_mrp_suggestion (
            trans_mrp_run_id, parent_trans_mrp_suggestion_id, seq, kind, decision, need_user,
            item_history_id, item_id, quantity, trans_operations_plan_id,
            stakeholder_history_id, stakeholder_id, cost,
            trans_mrp_suggestion_task_id, mstr_outsource_available_history_id, mstr_outsource_available_id,
            mstr_equipment_id, load_date, message, update_user_id, update_user_history_id)
        VALUES (
            v_run_id, r.trans_mrp_suggestion_id, v_seq, 'OUTSOURCE_OPTION', 0, TRUE,
            r.item_history_id, r.item_id, r.quantity, r.trans_operations_plan_id,
            tests.mrp_hist_stakeholder(r.alt_sh), r.alt_sh, r.alt_cost,
            r.trans_mrp_suggestion_task_id, tests.mrp_hist_outsource_available(r.alt_oa), r.alt_oa,
            r.mstr_equipment_id, r.load_date,
            '設備が過負荷です(' || r.load_date::text || ')。この工程は外部にも出せます。採用すると外部に切り替えて外注発注します(日程は次の再MRPで見直し)。却下すると内部のままです',
            v_staff, v_staff_hist);
    END LOOP;

    -- マスタの不備 (計算に使った品目について)。発注・生産の提案に出るもの以外のエラーは要判断
    INSERT INTO tests.trans_mrp_suggestion (
        trans_mrp_run_id, seq, kind, decision, need_user, item_history_id, item_id, message, remarks,
        update_user_id, update_user_history_id)
    SELECT
        v_run_id, v_seq + ROW_NUMBER() OVER (ORDER BY mi.severity, mi.item_code, mi.issue_code), 'EXC_MASTER',
        CASE WHEN mi.severity = 1 AND mi.issue_code NOT IN ('SUPPLIER_NOT_FOUND', 'TASK_NO_RESOURCE') THEN 0 ELSE 9 END,
        (mi.severity = 1 AND mi.issue_code NOT IN ('SUPPLIER_NOT_FOUND', 'TASK_NO_RESOURCE')),
        CASE WHEN mi.item_id IS NOT NULL THEN tests.mrp_hist_item(mi.item_id) END, mi.item_id,
        mi.message, mi.issue_code,
        v_staff, v_staff_hist
    FROM tests.mrp_check_items(ARRAY(SELECT DISTINCT y.item_id FROM _mrp_dem AS y)) AS mi
    WHERE mi.severity <= 2;
    GET DIAGNOSTICS v_n = ROW_COUNT;
    v_seq := v_seq + v_n;

    -- 件数
    UPDATE tests.trans_mrp_run AS mr
    SET suggestion_count = x.n, pending_count = x.pending, late_count = x.late, overload_count = x.over
    FROM (
        SELECT COUNT(*) FILTER (WHERE kind <> 'PLAN_KEEP') AS n,
               COUNT(*) FILTER (WHERE decision = 0) AS pending,
               COUNT(*) FILTER (WHERE late) AS late,
               COUNT(*) FILTER (WHERE kind = 'EXC_OVERLOAD') AS over
        FROM tests.trans_mrp_suggestion WHERE trans_mrp_run_id = v_run_id
    ) AS x
    WHERE mr.trans_mrp_run_id = v_run_id;

    SELECT * INTO v_run FROM tests.trans_mrp_run WHERE trans_mrp_run_id = v_run_id;
    RETURN v_run;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.mrp_run(smallint, uuid, uuid[], boolean, integer, varchar) IS
E'MRP計算。p_mode 1:受注MRP 2:再MRP(p_order_detail_ids で範囲指定)。p_accept_late で遅れも自動採用。結果は trans_mrp_suggestion / trans_mrp_pegging / trans_mrp_load に保存し、計画データは変更しない。';

-- ============================================================================
-- F. 確定・操作
--   採用されている = decision = 1 かつ 親の提案も採用されている
--   decision = 0 (要判断) が残っていると確定できない。p_force = true なら要判断は却下として扱う。
--   計算後に受注・発注・在庫などが更新されていたら確定できない(再計算が必要)。p_force で無視できる。
-- ============================================================================
CREATE OR REPLACE FUNCTION tests.mrp_commit(
    p_run_id uuid,
    p_staff_id uuid DEFAULT NULL,
    p_force boolean DEFAULT false
) RETURNS tests.trans_mrp_run AS $$
DECLARE
    v_run tests.trans_mrp_run;
    v_staff uuid := tests.mrp_staff(p_staff_id);
    v_staff_hist uuid;
    r record; t record;
    v_rp uuid; v_op uuid; v_pd uuid; v_po uuid; v_wp uuid; v_parent_op uuid;
    v_pr uuid; v_prod uuid; v_n integer; v_rec numeric; v_qty numeric; v_dh numeric;
BEGIN
    v_staff_hist := tests.mrp_hist_staff(v_staff);
    IF v_staff_hist IS NULL THEN
        RAISE EXCEPTION 'mrp_commit: 担当者が見つかりません (%)', v_staff USING ERRCODE = 'MRP00';
    END IF;
    PERFORM pg_advisory_xact_lock(hashtext('tests.mrp'));

    SELECT * INTO v_run FROM tests.trans_mrp_run WHERE trans_mrp_run_id = p_run_id FOR UPDATE;
    IF NOT FOUND THEN
        RAISE EXCEPTION 'mrp_commit: MRP実行が見つかりません (%)', p_run_id USING ERRCODE = 'MRP03';
    END IF;
    IF v_run.status <> 0 THEN
        RAISE EXCEPTION 'mrp_commit: このMRP実行は確定できません (status=%)', v_run.status
            USING ERRCODE = 'MRP03', HINT = '新しく計算した実行があると、それより前の未確定の実行は失効します';
    END IF;

    -- 計算後の更新チェック
    IF NOT p_force AND (
           EXISTS (SELECT 1 FROM tests.trans_order WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.trans_order_detail WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.trans_unrecognized_detail WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.trans_purchase_detail WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.trans_purchase_rec WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.trans_operations_plan WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.trans_work_plan WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.trans_work_record WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.trans_resource_plan WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.trans_visiter WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.mstr_item_lot WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.mstr_item_tree WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.mstr_item_operation_task WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.mstr_task_location WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.mstr_equipment_available WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.mstr_outsource_available WHERE update_at > v_run.run_at)
        OR EXISTS (SELECT 1 FROM tests.mstr_item_supplier WHERE update_at > v_run.run_at)
    ) THEN
        RAISE EXCEPTION 'mrp_commit: MRP計算後にデータが更新されています。再計算してください'
            USING ERRCODE = 'MRP02';
    END IF;

    SELECT COUNT(*) INTO v_n FROM tests.trans_mrp_suggestion WHERE trans_mrp_run_id = p_run_id AND decision = 0;
    IF v_n > 0 AND NOT p_force THEN
        RAISE EXCEPTION 'mrp_commit: ユーザーの判断が必要な提案が % 件あります', v_n
            USING ERRCODE = 'MRP01', HINT = '採用か却下を選ぶか、p_force で要判断を却下として確定してください';
    END IF;

    DROP TABLE IF EXISTS _mrp_eff, _mrp_po;
    CREATE TEMP TABLE _mrp_eff ON COMMIT DROP AS
    WITH RECURSIVE e AS (
        SELECT s.trans_mrp_suggestion_id AS id FROM tests.trans_mrp_suggestion AS s
        WHERE s.trans_mrp_run_id = p_run_id AND s.parent_trans_mrp_suggestion_id IS NULL AND s.decision = 1
        UNION ALL
        SELECT s.trans_mrp_suggestion_id FROM tests.trans_mrp_suggestion AS s
        INNER JOIN e ON s.parent_trans_mrp_suggestion_id = e.id
        WHERE s.decision = 1
    )
    SELECT id FROM e;
    CREATE TEMP TABLE _mrp_po (stakeholder_id uuid, po_id uuid) ON COMMIT DROP;

    -- 引当をやり直す資材計画: 未引当(引当実績なし)の引当予約と購買/生産引当予約を取り消す
    UPDATE tests.trans_purchase_rez AS z SET remove = TRUE, update_user_id = v_staff, update_user_history_id = v_staff_hist
    FROM tests.trans_inventory_request AS rq
    INNER JOIN tests.trans_mrp_suggestion AS s
        ON s.trans_resource_plan_id = rq.trans_resource_plan_id AND s.trans_mrp_run_id = p_run_id
       AND s.kind IN ('PLAN_UPDATE', 'PLAN_KEEP', 'PLAN_CANCEL')
    INNER JOIN _mrp_eff AS e ON e.id = s.trans_mrp_suggestion_id
    WHERE z.trans_purchase_rez_id = rq.trans_purchase_rez_id AND rq.remove IS FALSE AND z.remove IS FALSE
      AND NOT EXISTS (SELECT 1 FROM tests.trans_inventory_apply AS ap
                      WHERE ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE);
    UPDATE tests.trans_product_rez AS z SET remove = TRUE, update_user_id = v_staff, update_user_history_id = v_staff_hist
    FROM tests.trans_inventory_request AS rq
    INNER JOIN tests.trans_mrp_suggestion AS s
        ON s.trans_resource_plan_id = rq.trans_resource_plan_id AND s.trans_mrp_run_id = p_run_id
       AND s.kind IN ('PLAN_UPDATE', 'PLAN_KEEP', 'PLAN_CANCEL')
    INNER JOIN _mrp_eff AS e ON e.id = s.trans_mrp_suggestion_id
    WHERE z.trans_product_rez_id = rq.trans_product_rez_id AND rq.remove IS FALSE AND z.remove IS FALSE
      AND NOT EXISTS (SELECT 1 FROM tests.trans_inventory_apply AS ap
                      WHERE ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE);
    UPDATE tests.trans_inventory_request AS rq SET remove = TRUE, update_user_id = v_staff, update_user_history_id = v_staff_hist
    FROM tests.trans_mrp_suggestion AS s
    INNER JOIN _mrp_eff AS e ON e.id = s.trans_mrp_suggestion_id
    WHERE s.trans_resource_plan_id = rq.trans_resource_plan_id AND s.trans_mrp_run_id = p_run_id
      AND s.kind IN ('PLAN_UPDATE', 'PLAN_KEEP', 'PLAN_CANCEL')
      AND rq.remove IS FALSE
      AND NOT EXISTS (SELECT 1 FROM tests.trans_inventory_apply AS ap
                      WHERE ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE);

    -- 提案を順に反映 (seq 順 = 親が先)
    FOR r IN
        SELECT s.* FROM tests.trans_mrp_suggestion AS s
        INNER JOIN _mrp_eff AS e ON e.id = s.trans_mrp_suggestion_id
        ORDER BY s.seq
    LOOP
        CASE r.kind
        WHEN 'PLAN_NEW' THEN
            v_parent_op := COALESCE(r.parent_trans_operations_plan_id,
                (SELECT p.trans_operations_plan_id FROM tests.trans_mrp_suggestion AS p
                  WHERE p.trans_mrp_suggestion_id = r.parent_trans_mrp_suggestion_id AND p.kind = 'PRODUCTION_NEW'));
            INSERT INTO tests.trans_resource_plan (
                trans_order_detail_id, trans_unrecognized_detail_id, register_at, quantity, inventory_resavation,
                deadline, item_history_id, item_id, parent_trans_operations_plan_id,
                update_user_id, update_user_history_id)
            VALUES (
                r.trans_order_detail_id, r.trans_unrecognized_detail_id, now(), r.quantity, COALESCE(r.allocated_quantity, 0),
                r.need_at, r.item_history_id, r.item_id, v_parent_op,
                v_staff, v_staff_hist)
            RETURNING trans_resource_plan_id INTO v_rp;
            UPDATE tests.trans_mrp_suggestion SET trans_resource_plan_id = v_rp, parent_trans_operations_plan_id = v_parent_op,
                   applied_at = now() WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;

        WHEN 'PLAN_UPDATE' THEN
            UPDATE tests.trans_resource_plan
            SET quantity = r.quantity, inventory_resavation = COALESCE(r.allocated_quantity, 0),
                deadline = CASE WHEN r.plan_kind = 3 THEN deadline ELSE r.need_at END,
                update_user_id = v_staff, update_user_history_id = v_staff_hist
            WHERE trans_resource_plan_id = r.trans_resource_plan_id;
            UPDATE tests.trans_mrp_suggestion SET applied_at = now() WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;

        WHEN 'PLAN_CANCEL' THEN
            UPDATE tests.trans_resource_plan
            SET remove = TRUE, update_user_id = v_staff, update_user_history_id = v_staff_hist
            WHERE trans_resource_plan_id = r.trans_resource_plan_id;
            UPDATE tests.trans_mrp_suggestion SET applied_at = now() WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;

        WHEN 'PURCHASE_NEW' THEN
            IF r.stakeholder_id IS NULL THEN
                RAISE EXCEPTION 'mrp_commit: 仕入先が未設定の発注提案があります (seq=%)', r.seq
                    USING ERRCODE = 'MRP04';
            END IF;
            SELECT p.trans_resource_plan_id INTO v_rp FROM tests.trans_mrp_suggestion AS p
            WHERE p.trans_mrp_suggestion_id = r.parent_trans_mrp_suggestion_id;
            SELECT po_id INTO v_po FROM _mrp_po WHERE stakeholder_id = r.stakeholder_id;
            IF v_po IS NULL THEN
                INSERT INTO tests.trans_purchase (
                    stakeholder_history_id, stakeholder_id, register_at, purchase_order_date, deadline, remarks,
                    update_user_id, update_user_history_id)
                VALUES (
                    COALESCE(tests.mrp_hist_stakeholder(r.stakeholder_id), r.stakeholder_history_id), r.stakeholder_id,
                    now(), r.release_at, r.due_at, 'MRP',
                    v_staff, v_staff_hist)
                RETURNING trans_purchase_id INTO v_po;
                INSERT INTO _mrp_po VALUES (r.stakeholder_id, v_po);
            ELSE
                UPDATE tests.trans_purchase
                SET purchase_order_date = LEAST(purchase_order_date, r.release_at), deadline = GREATEST(deadline, r.due_at)
                WHERE trans_purchase_id = v_po;
            END IF;
            INSERT INTO tests.trans_purchase_detail (
                trans_purchase_id, trans_resource_plan_id, restocking_purchase, quantity, unit_price, period,
                item_history_id, item_id, remarks, update_user_id, update_user_history_id)
            VALUES (
                v_po, v_rp, COALESCE(r.plan_kind = 3, false), r.quantity,
                CASE WHEN r.asking_price THEN 0 ELSE COALESCE(r.cost, 0) END, r.due_at,
                r.item_history_id, r.item_id,
                CONCAT_WS(' ', 'MRP', CASE WHEN r.asking_price THEN '言い値(単価未定)' END,
                          (SELECT '仕入先品番:' || ms.supplier_item_code FROM tests.mstr_item_supplier AS ms
                            WHERE ms.mstr_item_id = r.item_id AND ms.mstr_stakeholder_id = r.stakeholder_id
                              AND ms.remove IS FALSE AND ms.supplier_item_code IS NOT NULL LIMIT 1)),
                v_staff, v_staff_hist)
            RETURNING trans_purchase_detail_id INTO v_pd;
            UPDATE tests.trans_mrp_suggestion SET trans_purchase_detail_id = v_pd, applied_at = now()
            WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;
            v_po := NULL;

        WHEN 'PURCHASE_RESCHEDULE' THEN
            UPDATE tests.trans_purchase_detail
            SET period = r.due_at, update_user_id = v_staff, update_user_history_id = v_staff_hist
            WHERE trans_purchase_detail_id = r.trans_purchase_detail_id;
            UPDATE tests.trans_mrp_suggestion SET applied_at = now() WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;

        WHEN 'PURCHASE_CANCEL' THEN
            SELECT COALESCE(SUM(quantity), 0) INTO v_rec FROM tests.trans_purchase_rec
            WHERE trans_purchase_detail_id = r.trans_purchase_detail_id AND remove IS FALSE;
            IF v_rec > 0 THEN
                UPDATE tests.trans_purchase_detail SET quantity = v_rec, update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE trans_purchase_detail_id = r.trans_purchase_detail_id;
            ELSE
                UPDATE tests.trans_purchase_detail SET remove = TRUE, update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE trans_purchase_detail_id = r.trans_purchase_detail_id;
            END IF;
            UPDATE tests.trans_mrp_suggestion SET applied_at = now() WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;

        WHEN 'PRODUCTION_NEW' THEN
            SELECT p.trans_resource_plan_id INTO v_rp FROM tests.trans_mrp_suggestion AS p
            WHERE p.trans_mrp_suggestion_id = r.parent_trans_mrp_suggestion_id;
            INSERT INTO tests.trans_operations_plan (
                trans_resource_plan_id, deadline, quantity, update_user_id, update_user_history_id)
            VALUES (v_rp, r.due_at, r.quantity, v_staff, v_staff_hist)
            RETURNING trans_operations_plan_id INTO v_op;
            FOR t IN
                SELECT * FROM tests.trans_mrp_suggestion_task
                WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id
                ORDER BY sequence, start_at
            LOOP
                INSERT INTO tests.trans_work_plan (
                    trans_operations_plan_id, mstr_task_id, sequence, interval_plan, start_at, completion_at,
                    mstr_equipment_available_history_id, mstr_equipment_available_id,
                    mstr_outsource_available_history_id, mstr_outsource_available_id,
                    update_user_id, update_user_history_id)
                VALUES (
                    v_op, t.mstr_task_id, t.sequence, t.interval_plan, t.start_at, t.completion_at,
                    t.mstr_equipment_available_history_id, t.mstr_equipment_available_id,
                    t.mstr_outsource_available_history_id, t.mstr_outsource_available_id,
                    v_staff, v_staff_hist)
                RETURNING trans_work_plan_id INTO v_wp;
                UPDATE tests.trans_mrp_suggestion_task SET trans_work_plan_id = v_wp
                WHERE trans_mrp_suggestion_task_id = t.trans_mrp_suggestion_task_id;
            END LOOP;
            UPDATE tests.trans_mrp_suggestion SET trans_operations_plan_id = v_op, trans_resource_plan_id = v_rp, applied_at = now()
            WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;

        WHEN 'PRODUCTION_RESCHEDULE' THEN
            UPDATE tests.trans_work_plan AS wp
            SET start_at = t2.start_at, completion_at = t2.completion_at,
                mstr_equipment_available_id = CASE WHEN t2.mstr_equipment_available_id IS NOT NULL
                                                   THEN t2.mstr_equipment_available_id ELSE wp.mstr_equipment_available_id END,
                mstr_equipment_available_history_id = CASE WHEN t2.mstr_equipment_available_id IS NOT NULL
                                                   THEN t2.mstr_equipment_available_history_id ELSE wp.mstr_equipment_available_history_id END,
                interval_plan = COALESCE(t2.interval_plan, wp.interval_plan),
                update_user_id = v_staff, update_user_history_id = v_staff_hist
            FROM tests.trans_mrp_suggestion_task AS t2
            WHERE t2.trans_mrp_suggestion_id = r.trans_mrp_suggestion_id
              AND wp.trans_work_plan_id = t2.trans_work_plan_id;
            -- 外注発注済みの工程: 外注発注の納期 = その発注の最後の工程の完了 ＋ デリバリー時間
            UPDATE tests.trans_purchase_detail AS x
            SET period = y.last_end, update_user_id = v_staff, update_user_history_id = v_staff_hist
            FROM (SELECT wp.trans_purchase_detail_id,
                         MAX(wp.completion_at + COALESCE(oa.delivery_interval, INTERVAL '0')) AS last_end
                  FROM tests.trans_work_plan AS wp
                  LEFT JOIN tests.mstr_outsource_available AS oa
                      ON oa.mstr_outsource_available_id = wp.mstr_outsource_available_id
                  WHERE wp.trans_operations_plan_id = r.trans_operations_plan_id AND wp.remove IS FALSE
                    AND wp.mstr_outsource_available_id IS NOT NULL AND wp.trans_purchase_detail_id IS NOT NULL
                  GROUP BY wp.trans_purchase_detail_id) AS y
            WHERE x.trans_purchase_detail_id = y.trans_purchase_detail_id AND x.remove IS FALSE
              AND x.period IS DISTINCT FROM y.last_end;
            UPDATE tests.trans_operations_plan
            SET deadline = r.due_at, update_user_id = v_staff, update_user_history_id = v_staff_hist
            WHERE trans_operations_plan_id = r.trans_operations_plan_id;
            UPDATE tests.trans_mrp_suggestion SET applied_at = now() WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;

        WHEN 'PRODUCTION_CANCEL' THEN
            IF EXISTS (SELECT 1 FROM tests.trans_work_record AS wr
                       INNER JOIN tests.trans_work_plan AS wp ON wp.trans_work_plan_id = wr.trans_work_plan_id
                       WHERE wp.trans_operations_plan_id = r.trans_operations_plan_id AND wr.remove IS FALSE) THEN
                -- 着手済み: 完成数量まで減らし、未着手の工程は残す(実績の付け先として)
                UPDATE tests.trans_operations_plan AS op
                SET quantity = COALESCE((
                        SELECT SUM(wr.qty) FROM tests.trans_work_record AS wr
                        WHERE wr.remove IS FALSE AND wr.trans_work_plan_id = (
                            SELECT wp.trans_work_plan_id FROM tests.trans_work_plan AS wp
                            WHERE wp.trans_operations_plan_id = op.trans_operations_plan_id AND wp.remove IS FALSE
                            ORDER BY wp.sequence DESC NULLS LAST, wp.completion_at DESC NULLS LAST LIMIT 1)), 0),
                    update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE op.trans_operations_plan_id = r.trans_operations_plan_id;
            ELSE
                -- 未入荷の外注発注も取り消す
                UPDATE tests.trans_purchase_detail AS x SET remove = TRUE, update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE x.remove IS FALSE
                  AND x.trans_purchase_detail_id IN (
                      SELECT wp.trans_purchase_detail_id FROM tests.trans_work_plan AS wp
                      WHERE wp.trans_operations_plan_id = r.trans_operations_plan_id AND wp.remove IS FALSE)
                  AND NOT EXISTS (SELECT 1 FROM tests.trans_purchase_rec AS pr
                                  WHERE pr.trans_purchase_detail_id = x.trans_purchase_detail_id AND pr.remove IS FALSE);
                UPDATE tests.trans_work_plan SET remove = TRUE, update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE trans_operations_plan_id = r.trans_operations_plan_id AND remove IS FALSE;
                UPDATE tests.trans_operations_plan SET remove = TRUE, update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE trans_operations_plan_id = r.trans_operations_plan_id;
            END IF;
            UPDATE tests.trans_mrp_suggestion SET applied_at = now() WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;

        WHEN 'OUTSOURCE_NEW', 'OUTSOURCE_OPTION' THEN
            IF r.stakeholder_id IS NULL THEN
                RAISE EXCEPTION 'mrp_commit: 外注先が未設定の外注発注提案があります (seq=%)', r.seq
                    USING ERRCODE = 'MRP04';
            END IF;
            -- 対象の生産計画
            v_op := COALESCE(r.trans_operations_plan_id,
                (SELECT p.trans_operations_plan_id FROM tests.trans_mrp_suggestion AS p
                  WHERE p.trans_mrp_suggestion_id = r.parent_trans_mrp_suggestion_id));
            SELECT op.trans_resource_plan_id, COALESCE(NULLIF(op.quantity, 0), r.quantity) INTO v_rp, v_qty
            FROM tests.trans_operations_plan AS op WHERE op.trans_operations_plan_id = v_op;
            IF r.kind = 'OUTSOURCE_OPTION' THEN
                -- 内部で計画した工程を外部に切り替える (日程はそのまま。次の再MRPで見直す)
                SELECT EXTRACT(EPOCH FROM COALESCE(oa.delivery_interval, INTERVAL '0')) / 3600 INTO v_dh
                FROM tests.mstr_outsource_available AS oa WHERE oa.mstr_outsource_available_id = r.mstr_outsource_available_id;
                UPDATE tests.trans_mrp_suggestion_task AS tk
                SET mstr_equipment_available_id = NULL, mstr_equipment_available_history_id = NULL,
                    mstr_outsource_available_id = r.mstr_outsource_available_id,
                    mstr_outsource_available_history_id = r.mstr_outsource_available_history_id,
                    outsource_trans_mrp_suggestion_id = r.trans_mrp_suggestion_id, cost = r.cost
                WHERE tk.trans_mrp_suggestion_task_id = r.trans_mrp_suggestion_task_id
                RETURNING tk.trans_work_plan_id INTO v_wp;
                CONTINUE WHEN v_wp IS NULL;
                UPDATE tests.trans_work_plan
                SET mstr_equipment_available_id = NULL, mstr_equipment_available_history_id = NULL,
                    mstr_outsource_available_id = r.mstr_outsource_available_id,
                    mstr_outsource_available_history_id = r.mstr_outsource_available_history_id,
                    update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE trans_work_plan_id = v_wp;
                SELECT wp.start_at, wp.completion_at + make_interval(secs => (COALESCE(v_dh, 0) * 3600)::double precision)
                INTO r.release_at, r.due_at FROM tests.trans_work_plan AS wp WHERE wp.trans_work_plan_id = v_wp;
            END IF;
            SELECT po_id INTO v_po FROM _mrp_po WHERE stakeholder_id = r.stakeholder_id;
            IF v_po IS NULL THEN
                INSERT INTO tests.trans_purchase (
                    stakeholder_history_id, stakeholder_id, register_at, purchase_order_date, deadline, remarks,
                    update_user_id, update_user_history_id)
                VALUES (
                    COALESCE(tests.mrp_hist_stakeholder(r.stakeholder_id), r.stakeholder_history_id), r.stakeholder_id,
                    now(), r.release_at, r.due_at, 'MRP', v_staff, v_staff_hist)
                RETURNING trans_purchase_id INTO v_po;
                INSERT INTO _mrp_po VALUES (r.stakeholder_id, v_po);
            ELSE
                UPDATE tests.trans_purchase
                SET purchase_order_date = LEAST(purchase_order_date, r.release_at), deadline = GREATEST(deadline, r.due_at)
                WHERE trans_purchase_id = v_po;
            END IF;
            INSERT INTO tests.trans_purchase_detail (
                trans_purchase_id, trans_resource_plan_id, restocking_purchase, quantity, unit_price, period,
                material_supply, paid_supply,
                item_history_id, item_id, remarks, update_user_id, update_user_history_id)
            VALUES (
                v_po, v_rp, FALSE, v_qty, COALESCE(r.cost, 0), r.due_at,
                -- 資材支給区分・有償支給区分: 対象の工程の利用可能外部から
                COALESCE((SELECT BOOL_OR(oa.material_supply) FROM tests.trans_mrp_suggestion_task AS tk
                          INNER JOIN tests.mstr_outsource_available AS oa
                              ON oa.mstr_outsource_available_id = COALESCE(tk.mstr_outsource_available_id, r.mstr_outsource_available_id)
                          WHERE tk.trans_mrp_suggestion_id = r.trans_mrp_suggestion_id
                             OR tk.outsource_trans_mrp_suggestion_id = r.trans_mrp_suggestion_id
                             OR tk.trans_mrp_suggestion_task_id = r.trans_mrp_suggestion_task_id), FALSE),
                COALESCE((SELECT BOOL_OR(oa.paid_supply) FROM tests.trans_mrp_suggestion_task AS tk
                          INNER JOIN tests.mstr_outsource_available AS oa
                              ON oa.mstr_outsource_available_id = COALESCE(tk.mstr_outsource_available_id, r.mstr_outsource_available_id)
                          WHERE tk.trans_mrp_suggestion_id = r.trans_mrp_suggestion_id
                             OR tk.outsource_trans_mrp_suggestion_id = r.trans_mrp_suggestion_id
                             OR tk.trans_mrp_suggestion_task_id = r.trans_mrp_suggestion_task_id), FALSE),
                r.item_history_id, r.item_id, 'MRP 外注加工', v_staff, v_staff_hist)
            RETURNING trans_purchase_detail_id INTO v_pd;
            -- 対象の生産計画明細に外注発注明細を付ける (外注発注明細から参照される = 外注加工)
            UPDATE tests.trans_work_plan AS wp
            SET trans_purchase_detail_id = v_pd, update_user_id = v_staff, update_user_history_id = v_staff_hist
            WHERE wp.trans_work_plan_id IN (
                SELECT tk.trans_work_plan_id FROM tests.trans_mrp_suggestion_task AS tk
                WHERE (tk.trans_mrp_suggestion_id = r.trans_mrp_suggestion_id
                       OR tk.outsource_trans_mrp_suggestion_id = r.trans_mrp_suggestion_id)
                  AND tk.trans_work_plan_id IS NOT NULL);
            UPDATE tests.trans_mrp_suggestion SET trans_purchase_detail_id = v_pd, trans_operations_plan_id = v_op,
                   trans_resource_plan_id = v_rp, applied_at = now()
            WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;
            v_po := NULL;

        WHEN 'OUTSOURCE_CANCEL' THEN
            SELECT COALESCE(SUM(quantity), 0) INTO v_rec FROM tests.trans_purchase_rec
            WHERE trans_purchase_detail_id = r.trans_purchase_detail_id AND remove IS FALSE;
            IF v_rec > 0 THEN
                UPDATE tests.trans_purchase_detail SET quantity = v_rec, update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE trans_purchase_detail_id = r.trans_purchase_detail_id;
            ELSE
                UPDATE tests.trans_purchase_detail SET remove = TRUE, update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE trans_purchase_detail_id = r.trans_purchase_detail_id;
                UPDATE tests.trans_work_plan SET trans_purchase_detail_id = NULL, update_user_id = v_staff, update_user_history_id = v_staff_hist
                WHERE trans_purchase_detail_id = r.trans_purchase_detail_id;
            END IF;
            UPDATE tests.trans_mrp_suggestion SET applied_at = now() WHERE trans_mrp_suggestion_id = r.trans_mrp_suggestion_id;

        ELSE
            NULL;   -- PLAN_KEEP / EXC_* は反映なし
        END CASE;
    END LOOP;

    -- ペギング → 引当予約 (在庫: 予約のみ / 発注: 購買引当予約 / 生産: 最終工程の生産引当予約)
    FOR r IN
        SELECT pg.*, ds.trans_resource_plan_id AS rp_id,
               ss.trans_purchase_detail_id AS new_pd, ss.trans_operations_plan_id AS new_op,
               (pg.supply_trans_mrp_suggestion_id IS NULL OR es.id IS NOT NULL) AS supply_ok
        FROM tests.trans_mrp_pegging AS pg
        INNER JOIN tests.trans_mrp_suggestion AS ds
            ON ds.trans_mrp_suggestion_id = pg.demand_trans_mrp_suggestion_id
        INNER JOIN _mrp_eff AS ed ON ed.id = ds.trans_mrp_suggestion_id
        LEFT JOIN tests.trans_mrp_suggestion AS ss
            ON ss.trans_mrp_suggestion_id = pg.supply_trans_mrp_suggestion_id
        LEFT JOIN _mrp_eff AS es ON es.id = pg.supply_trans_mrp_suggestion_id
        WHERE pg.trans_mrp_run_id = p_run_id AND pg.quantity > 0 AND pg.remove IS FALSE
          AND ds.kind IN ('PLAN_NEW', 'PLAN_UPDATE', 'PLAN_KEEP')
    LOOP
        CONTINUE WHEN NOT r.supply_ok OR r.rp_id IS NULL;
        v_pr := NULL; v_prod := NULL;
        -- 元の資材計画が取消済みの既存供給は、新しい需要に付け替える
        IF r.supply_kind = 2 THEN
            UPDATE tests.trans_purchase_detail AS x SET trans_resource_plan_id = r.rp_id,
                   update_user_id = v_staff, update_user_history_id = v_staff_hist
            WHERE x.trans_purchase_detail_id = r.trans_purchase_detail_id AND x.restocking_purchase IS NOT TRUE
              AND (x.trans_resource_plan_id IS NULL OR NOT EXISTS (
                   SELECT 1 FROM tests.trans_resource_plan AS y
                   WHERE y.trans_resource_plan_id = x.trans_resource_plan_id AND y.remove IS FALSE));
        ELSIF r.supply_kind = 3 THEN
            UPDATE tests.trans_operations_plan AS x SET trans_resource_plan_id = r.rp_id,
                   update_user_id = v_staff, update_user_history_id = v_staff_hist
            WHERE x.trans_operations_plan_id = r.trans_operations_plan_id
              AND NOT EXISTS (
                   SELECT 1 FROM tests.trans_resource_plan AS y
                   WHERE y.trans_resource_plan_id = x.trans_resource_plan_id AND y.remove IS FALSE);
        END IF;
        IF r.supply_kind IN (2, 4) THEN
            v_pd := COALESCE(r.trans_purchase_detail_id, r.new_pd);
            CONTINUE WHEN v_pd IS NULL;
            INSERT INTO tests.trans_purchase_rez (trans_purchase_detail_id, quantity, update_user_id, update_user_history_id)
            VALUES (v_pd, r.quantity, v_staff, v_staff_hist)
            RETURNING trans_purchase_rez_id INTO v_pr;
        ELSIF r.supply_kind IN (3, 5) THEN
            v_op := COALESCE(r.trans_operations_plan_id, r.new_op);
            v_wp := NULL;
            SELECT wp.trans_work_plan_id INTO v_wp FROM tests.trans_work_plan AS wp
            WHERE wp.trans_operations_plan_id = v_op AND wp.remove IS FALSE
            ORDER BY wp.sequence DESC NULLS LAST, wp.completion_at DESC NULLS LAST LIMIT 1;
            IF v_wp IS NOT NULL THEN
                INSERT INTO tests.trans_product_rez (trans_work_plan_id, quantity, update_user_id, update_user_history_id)
                VALUES (v_wp, r.quantity, v_staff, v_staff_hist)
                RETURNING trans_product_rez_id INTO v_prod;
            END IF;
        END IF;
        INSERT INTO tests.trans_inventory_request (
            register_at, register_plan_at, trans_purchase_rez_id, trans_product_rez_id, quantity,
            staff_history_id, staff_id, trans_resource_plan_id, update_user_id, update_user_history_id)
        VALUES (
            now(), COALESCE(r.need_at, now()), v_pr, v_prod, r.quantity,
            v_staff_hist, v_staff, r.rp_id, v_staff, v_staff_hist);
    END LOOP;

    UPDATE tests.trans_mrp_run
    SET status = 1, committed_at = now(), update_user_id = v_staff, update_user_history_id = v_staff_hist
    WHERE trans_mrp_run_id = p_run_id;
    SELECT * INTO v_run FROM tests.trans_mrp_run WHERE trans_mrp_run_id = p_run_id;
    RETURN v_run;
END
$$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION tests.mrp_commit(uuid, uuid, boolean) IS
E'MRP確定。採用(decision=1)された提案を資材計画・発注・生産計画・引当予約に反映する。';

-- 破棄
CREATE OR REPLACE FUNCTION tests.mrp_discard(p_run_id uuid, p_staff_id uuid DEFAULT NULL) RETURNS tests.trans_mrp_run AS $$
    UPDATE tests.trans_mrp_run
    SET status = 2, update_user_id = tests.mrp_staff(p_staff_id),
        update_user_history_id = tests.mrp_hist_staff(tests.mrp_staff(p_staff_id))
    WHERE trans_mrp_run_id = p_run_id AND status = 0
    RETURNING *;
$$ LANGUAGE sql VOLATILE;
COMMENT ON FUNCTION tests.mrp_discard(uuid, uuid) IS 'MRP実行の破棄';

-- MRPボタン1回で済ませる: 計算して、要判断が0件なら確定まで行う
CREATE OR REPLACE FUNCTION tests.mrp_execute(
    p_mode smallint,
    p_staff_id uuid DEFAULT NULL,
    p_order_detail_ids uuid[] DEFAULT NULL,
    p_accept_late boolean DEFAULT false
) RETURNS tests.trans_mrp_run AS $$
DECLARE
    v_run tests.trans_mrp_run;
BEGIN
    v_run := tests.mrp_run(p_mode, p_staff_id, p_order_detail_ids, p_accept_late);
    IF v_run.pending_count = 0 THEN
        v_run := tests.mrp_commit(v_run.trans_mrp_run_id, p_staff_id, false);
    END IF;
    RETURN v_run;
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.mrp_execute(smallint, uuid, uuid[], boolean) IS
E'MRPボタン用。計算し、要判断が無ければそのまま確定する。status=0 で返ったら提案の確認画面へ。';

-- 提案の採否をまとめて変更 (確認画面の「すべて採用」など)
CREATE OR REPLACE FUNCTION tests.mrp_set_decision(
    p_run_id uuid,
    p_decision smallint,
    p_suggestion_ids uuid[] DEFAULT NULL,
    p_staff_id uuid DEFAULT NULL
) RETURNS SETOF tests.trans_mrp_suggestion AS $$
DECLARE
    v_staff uuid := tests.mrp_staff(p_staff_id);
BEGIN
    IF p_decision NOT IN (0, 1, 2) THEN
        RAISE EXCEPTION 'mrp_set_decision: 判断は 0/1/2 です' USING ERRCODE = 'MRP00';
    END IF;
    RETURN QUERY
    UPDATE tests.trans_mrp_suggestion AS s
    SET decision = p_decision, update_user_id = v_staff, update_user_history_id = tests.mrp_hist_staff(v_staff)
    WHERE s.trans_mrp_run_id = p_run_id AND s.decision <> 9
      AND (p_suggestion_ids IS NULL OR s.trans_mrp_suggestion_id = ANY (p_suggestion_ids))
    RETURNING s.*;
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.mrp_set_decision(uuid, smallint, uuid[], uuid) IS 'MRP提案の採否をまとめて変更';

-- 確定・破棄・失効した実行の提案は変更させない (アプリからの直接更新の保護)
CREATE OR REPLACE FUNCTION tests.trg_05_mrp_suggestion_guard() RETURNS trigger AS $$
BEGIN
    IF (SELECT r.status FROM tests.trans_mrp_run AS r WHERE r.trans_mrp_run_id = OLD.trans_mrp_run_id) <> 0 THEN
        RAISE EXCEPTION 'このMRP実行は確定・破棄・失効しているため、提案を変更できません' USING ERRCODE = 'MRP03';
    END IF;
    IF OLD.decision = 9 AND NEW.decision IS DISTINCT FROM 9 THEN
        RAISE EXCEPTION '情報の提案は採否を変更できません' USING ERRCODE = 'MRP00';
    END IF;
    RETURN NEW;
END
$$ LANGUAGE plpgsql;
CREATE TRIGGER trg_05_mrp_suggestion_guard BEFORE UPDATE ON tests.trans_mrp_suggestion
    FOR EACH ROW EXECUTE PROCEDURE tests.trg_05_mrp_suggestion_guard();

CREATE OR REPLACE FUNCTION tests.trg_05_mrp_suggestion_task_guard() RETURNS trigger AS $$
BEGIN
    IF (SELECT r.status FROM tests.trans_mrp_suggestion AS s
        INNER JOIN tests.trans_mrp_run AS r ON r.trans_mrp_run_id = s.trans_mrp_run_id
        WHERE s.trans_mrp_suggestion_id = OLD.trans_mrp_suggestion_id) <> 0
       AND NEW.trans_work_plan_id IS NOT DISTINCT FROM OLD.trans_work_plan_id THEN
        RAISE EXCEPTION 'このMRP実行は確定・破棄・失効しているため、工程を変更できません' USING ERRCODE = 'MRP03';
    END IF;
    RETURN NEW;
END
$$ LANGUAGE plpgsql;
CREATE TRIGGER trg_05_mrp_suggestion_task_guard BEFORE UPDATE ON tests.trans_mrp_suggestion_task
    FOR EACH ROW EXECUTE PROCEDURE tests.trg_05_mrp_suggestion_task_guard();
COMMENT ON FUNCTION tests.trg_05_mrp_suggestion_guard() IS '@omit';
COMMENT ON FUNCTION tests.trg_05_mrp_suggestion_task_guard() IS '@omit';

-- 古い実行の削除 (破棄・失効した実行の提案・ペギング・負荷)。確定した実行は残す
CREATE OR REPLACE FUNCTION tests.mrp_purge(p_keep_days integer DEFAULT 30) RETURNS integer AS $$
DECLARE
    v_n integer;
BEGIN
    DROP TABLE IF EXISTS _mrp_purge;
    CREATE TEMP TABLE _mrp_purge ON COMMIT DROP AS
    SELECT trans_mrp_run_id FROM tests.trans_mrp_run
    WHERE status IN (2, 3) AND run_at < now() - make_interval(days => p_keep_days);
    DELETE FROM tests.trans_mrp_pegging WHERE trans_mrp_run_id IN (SELECT trans_mrp_run_id FROM _mrp_purge);
    DELETE FROM tests.trans_mrp_load WHERE trans_mrp_run_id IN (SELECT trans_mrp_run_id FROM _mrp_purge);
    -- 提案と提案工程は相互に参照する (FKは DEFERRABLE なので同じトランザクションでまとめて消せる)
    DELETE FROM tests.trans_mrp_suggestion_task WHERE trans_mrp_suggestion_id IN (
        SELECT trans_mrp_suggestion_id FROM tests.trans_mrp_suggestion
        WHERE trans_mrp_run_id IN (SELECT trans_mrp_run_id FROM _mrp_purge));
    DELETE FROM tests.trans_mrp_suggestion WHERE trans_mrp_run_id IN (SELECT trans_mrp_run_id FROM _mrp_purge);
    DELETE FROM tests.trans_mrp_run WHERE trans_mrp_run_id IN (SELECT trans_mrp_run_id FROM _mrp_purge);
    GET DIAGNOSTICS v_n = ROW_COUNT;
    DROP TABLE _mrp_purge;
    RETURN v_n;
END
$$ LANGUAGE plpgsql VOLATILE;
COMMENT ON FUNCTION tests.mrp_purge(integer) IS '破棄・失効したMRP実行の削除';

-- ============================================================================
-- G. 参照 (確定済みデータの工程負荷・資材計画の充足状況・発注予定・確認中の提案)
-- ============================================================================

-- 設備×日の工程負荷 (確定済みの生産計画明細。内部の工程・未完了のみ)
CREATE OR REPLACE FUNCTION tests.mrp_equipment_load(p_from date, p_to date)
RETURNS TABLE (equipment_id uuid, load_date date, capacity_hours numeric, load_hours numeric, load_rate numeric) AS $$
    WITH wp AS (
        SELECT w.trans_work_plan_id, ea.mstr_equipment_id AS eq, w.start_at, w.completion_at,
               EXTRACT(EPOCH FROM w.interval_plan) / 3600 AS plan_h
        FROM tests.trans_work_plan AS w
        INNER JOIN tests.mstr_equipment_available AS ea
            ON ea.mstr_equipment_available_id = w.mstr_equipment_available_id
        INNER JOIN tests.trans_operations_plan AS op
            ON op.trans_operations_plan_id = w.trans_operations_plan_id AND op.remove IS FALSE
        WHERE w.remove IS FALSE
          AND w.start_at IS NOT NULL AND w.completion_at > w.start_at
          AND w.start_at::date <= p_to AND w.completion_at::date >= p_from
          AND COALESCE((SELECT SUM(r.qty) FROM tests.trans_work_record AS r
                        WHERE r.trans_work_plan_id = w.trans_work_plan_id AND r.remove IS FALSE), 0)
              < COALESCE(NULLIF(op.quantity, 0), 1)
    ), sp AS (
        SELECT wp.trans_work_plan_id, wp.eq, s.load_date, s.hours, wp.plan_h,
               SUM(s.hours) OVER (PARTITION BY wp.trans_work_plan_id) AS win_h
        FROM wp CROSS JOIN LATERAL tests.mrp_spread(wp.eq, wp.start_at, wp.completion_at) AS s
    ), agg AS (
        SELECT sp.eq, sp.load_date,
               SUM(sp.hours * CASE WHEN sp.win_h > 0 AND sp.plan_h IS NOT NULL THEN sp.plan_h / sp.win_h ELSE 1 END) AS h
        FROM sp WHERE sp.load_date BETWEEN p_from AND p_to
        GROUP BY sp.eq, sp.load_date
    )
    SELECT e.mstr_equipment_id, g.d::date,
           tests.mrp_capacity(e.mstr_equipment_id, g.d::date),
           ROUND(COALESCE(a.h, 0), 2),
           CASE WHEN tests.mrp_capacity(e.mstr_equipment_id, g.d::date) > 0
                THEN ROUND(COALESCE(a.h, 0) / tests.mrp_capacity(e.mstr_equipment_id, g.d::date) * 100, 2) END
    FROM tests.mstr_equipment AS e
    CROSS JOIN generate_series(p_from, p_to, INTERVAL '1 day') AS g(d)
    LEFT JOIN agg AS a ON a.eq = e.mstr_equipment_id AND a.load_date = g.d::date
    WHERE e.remove IS FALSE
      AND EXISTS (SELECT 1 FROM agg AS a2 WHERE a2.eq = e.mstr_equipment_id);
$$ LANGUAGE sql STABLE;
COMMENT ON FUNCTION tests.mrp_equipment_load(date, date) IS
'工程負荷(確定済み・設備×日)';

-- 資材計画の充足状況 (資材計画 1件につき1行)
--   plan_kind   : 1受注 2非計上 3安全在庫 4従属 (資材計画の参照先から判定)
--   remaining   : 総所要 - 払出済み
--   reserved_*  : 引当予約(未引当)の数量。在庫 / 発注 / 生産 別
--   shortage    : remaining - 引当予約合計 (> 0 なら不足)
CREATE OR REPLACE VIEW tests.v_resource_plan_coverage AS
SELECT
    rp.trans_resource_plan_id
    , rp.item_id
    , (CASE WHEN rp.trans_order_detail_id IS NOT NULL THEN 1
            WHEN rp.trans_unrecognized_detail_id IS NOT NULL THEN 2
            WHEN rp.parent_trans_operations_plan_id IS NOT NULL THEN 4 ELSE 3 END)::smallint AS plan_kind
    , rp.trans_order_detail_id
    , rp.trans_unrecognized_detail_id
    , rp.parent_trans_operations_plan_id
    , rp.deadline
    , rp.quantity
    , rp.inventory_resavation
    , x.issued
    , rp.quantity - x.issued AS remaining
    , COALESCE(q.stock, 0) AS reserved_stock
    , COALESCE(q.purchase, 0) AS reserved_purchase
    , COALESCE(q.production, 0) AS reserved_production
    , GREATEST(rp.quantity - x.issued - COALESCE(q.stock, 0) - COALESCE(q.purchase, 0) - COALESCE(q.production, 0), 0) AS shortage
FROM tests.trans_resource_plan AS rp
CROSS JOIN LATERAL (SELECT tests.mrp_issued(rp.trans_resource_plan_id) AS issued) AS x
LEFT JOIN LATERAL (
    SELECT
        SUM(rq.quantity) FILTER (WHERE rq.trans_purchase_rez_id IS NULL AND rq.trans_product_rez_id IS NULL) AS stock
        , SUM(rq.quantity) FILTER (WHERE rq.trans_purchase_rez_id IS NOT NULL) AS purchase
        , SUM(rq.quantity) FILTER (WHERE rq.trans_product_rez_id IS NOT NULL) AS production
    FROM tests.trans_inventory_request AS rq
    WHERE rq.trans_resource_plan_id = rp.trans_resource_plan_id AND rq.remove IS FALSE
      AND NOT EXISTS (SELECT 1 FROM tests.trans_inventory_apply AS ap
                      WHERE ap.trans_inventory_request_id = rq.trans_inventory_request_id AND ap.remove IS FALSE)
) AS q ON TRUE
WHERE rp.remove IS FALSE;
COMMENT ON VIEW tests.v_resource_plan_coverage IS E'@primaryKey trans_resource_plan_id\n@foreignKey (trans_resource_plan_id) references trans_resource_plan (trans_resource_plan_id)\n@foreignKey (item_id) references mstr_item (mstr_item_id)\n@foreignKey (trans_order_detail_id) references trans_order_detail (trans_order_detail_id)\n資材計画充足状況';

-- MRP提案の発注予定 (購買/外注×仕入先×発注日×納期)。提案確認画面の「発注」タブ用
CREATE OR REPLACE VIEW tests.v_mrp_purchase_plan AS
SELECT
    md5(concat_ws('|', s.trans_mrp_run_id, s.kind, s.stakeholder_id, s.release_at::date, s.due_at::date)) AS plan_key
    , s.trans_mrp_run_id
    , s.kind
    , s.stakeholder_id
    , s.release_at::date AS release_date
    , s.due_at::date AS due_date
    , COUNT(*) AS line_count
    , SUM(s.quantity * COALESCE(s.cost, 0)) AS amount
    , COUNT(*) FILTER (WHERE s.late) AS late_count
    , COUNT(*) FILTER (WHERE s.decision = 0) AS pending_count
FROM tests.trans_mrp_suggestion AS s
WHERE s.kind IN ('PURCHASE_NEW', 'OUTSOURCE_NEW', 'OUTSOURCE_OPTION') AND s.remove IS FALSE
GROUP BY s.trans_mrp_run_id, s.kind, s.stakeholder_id, s.release_at::date, s.due_at::date;
COMMENT ON VIEW tests.v_mrp_purchase_plan IS E'@primaryKey plan_key\n@foreignKey (trans_mrp_run_id) references trans_mrp_run (trans_mrp_run_id)\n@foreignKey (stakeholder_id) references mstr_stakeholder (mstr_stakeholder_id)\nMRP発注予定';

-- 確認中のMRP提案 (最新の未確定の実行)。実行IDを持たずに再取得できる
CREATE OR REPLACE VIEW tests.v_mrp_pending_suggestion AS
SELECT s.*
FROM tests.trans_mrp_suggestion AS s
INNER JOIN tests.trans_mrp_run AS r
    ON r.trans_mrp_run_id = s.trans_mrp_run_id AND r.status = 0 AND r.remove IS FALSE
WHERE s.remove IS FALSE AND s.kind <> 'PLAN_KEEP';
COMMENT ON VIEW tests.v_mrp_pending_suggestion IS E'@primaryKey trans_mrp_suggestion_id\n@foreignKey (trans_mrp_suggestion_id) references trans_mrp_suggestion (trans_mrp_suggestion_id)\n@foreignKey (trans_mrp_run_id) references trans_mrp_run (trans_mrp_run_id)\n@foreignKey (item_id) references mstr_item (mstr_item_id)\n@foreignKey (stakeholder_id) references mstr_stakeholder (mstr_stakeholder_id)\n確認中のMRP提案';
