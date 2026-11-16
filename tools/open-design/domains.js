/* 手書きの画面定義(domains.base.js)へ、YAML views × SQL コメントから生成した定義(schema.gen.js)を重ねる。
   再生成: node tools/gen-schema.js （不明な箇所は schema.gen.log.md に出力） */
(function () {
  const D = window.OD_DOMAINS, S = window.OD_SCHEMA || {};
  D.entities.forEach((e) => {
    const o = S[e.key];
    if (!o) return;
    e.label = o.label;
    e.fields = o.fields;
    e.rows = o.rows;
  });
})();

/* 手書きの追加（schema.gen.js には無い項目・画面）。生成し直しても残るよう、上書きのあとにここで足す。
   - 品目に「購入品」のチェック。仕入先が登録されている品目は、チェックを外せない。
   - 購買に「品目仕入先」: 購入品の品目の表の各行に、サプライヤーの表を入れる（表の中の表）。 */
(function () {
  const D = window.OD_DOMAINS;
  const item = D.entities.find((e) => e.key === "item");
  if (item) {
    const n = item.fields.length;
    const BUY = ["I-1210", "I-1300"]; // サンプル：丸棒 SS400 とボルトが購入品
    item.fields.push(["purchase", "購入品", "b", { req: false, lockedBy: "itemsupplier" }]);
    item.rows = item.rows.map((r) => { const a = [...r]; a.splice(n, 0, BUY.includes(r[0]) ? "1" : ""); return a; }); // 末尾は親品目の列なので、その手前に入れる
  }
  D.entities.push({
    key: "itemsupplier", label: "品目仕入先", parent: { ent: "item", key: "item" },
    fields: [
      ["supplier", "サプライヤー", "r", { ref: "supplier", uniq: true, picker: true }],
      ["days", "デリバリータイム（日）", "n", { ge: 0 }],
      ["lot", "最小発注ロット", "n", { gt: 0 }],
      ["cost", "単価（円）", "n", { req: false, ge: 0, needUnless: "asking" }],
      ["asking", "言い値区分", "b", { req: false, toggle: true, disables: "cost" }],
    ],
    rows: [["item4", "supplier1", "5", "100", "180", ""], ["item4", "supplier2", "7", "200", "", "1"], ["item5", "supplier1", "3", "1000", "12", ""]],
  });
  D.screens.push({ id: "itemsupplier", label: "品目仕入先", icon: "truck", tabs: [["main", "品目仕入先", "item", { nest: "itemsupplier", where: { purchase: "1" } }]] });
  const purchasing = D.groups.find((g) => g.id === "purchasing");
  if (purchasing) purchasing.screens.splice(purchasing.screens.indexOf("supplier") + 1, 0, "itemsupplier");
})();

/* 手書きの追加（20261031_0001 の採択）。
   - 品目に「作業単価」(mstr_item_task_cost。品目×工程場所) と「在庫」(v_item_on_hand。読み取り専用)。
   - 生産計画に資材所要計算の結果の読み取り専用の一覧(v_mrp_suggestion(run_open・undecided で絞る)・v_mrp_purchase_plan・v_mrp_master_issue・v_resource_plan_coverage)。
   - 作業実績に MRP のビジター品目(v_mrp_visiter_item。読み取り専用)。
   読み取り専用(viewOnly)は、台帳に「新規」を出さず、編集画面に保存・削除を出さない。 */
(function () {
  const D = window.OD_DOMAINS;
  const view = (key, label, fields, rows) => D.entities.push({ key, label, viewOnly: true, fields, rows });
  const screen = (id, label, icon, group) => {
    D.screens.push({ id, label, icon, tabs: [["main", label, id]] });
    const g = D.groups.find((x) => x.id === group);
    if (g) g.screens.push(id);
  };

  // 品目の作業単価(品目が所有する子の台帳)
  D.entities.push({
    key: "itemtaskcost", label: "品目の作業単価", parent: { ent: "item", key: "item" },
    fields: [
      ["taskres", "工程場所", "r", { ref: "taskres" }],
      ["cost", "作業単価（円）", "n", { ge: 0 }],
      ["remarks", "備考", "x", { req: false }],
    ],
    rows: [["item4", "taskres1", "1200", ""], ["item4", "taskres2", "1500", ""]],
  });
  const itemScreen = D.screens.find((s) => s.id === "item");
  if (itemScreen) itemScreen.tabs.push(["taskcost", "作業単価", "itemtaskcost"]);

  // 品目の在庫(読み取り専用)
  view("itemonhand", "品目の在庫", [
    ["item", "品目", "r", { ref: "item" }],
    ["on_hand_quantity", "現在庫", "n"],
    ["visiter_count", "ビジター数", "n"],
  ], [["item1", "120", "3"], ["item2", "40", "1"], ["item3", "0", "0"]]);
  screen("itemonhand", "品目の在庫", "box", "item");

  // 資材所要計算の結果(読み取り専用)
  // v_mrp_suggestion(計算済み = run_open・未判断 = undecided)。提案の種類(kind)の文字列は持たず、対象・動きを boolean の列(チェック)で出す
  view("mrppending", "要判断の提案", [
    ["item", "品目", "r", { ref: "item" }],
    ["is_purchase", "発注", "b"],
    ["is_production", "生産", "b"],
    ["is_outsource", "外注", "b"],
    ["is_plan", "資材計画", "b"],
    ["is_exception", "例外", "b"],
    ["is_supply_request", "支給依頼", "b"],
    ["is_new", "新規", "b"],
    ["is_change", "変更", "b"],
    ["is_cancel", "取消", "b"],
    ["is_option", "切替の選択肢", "b"],
    ["quantity", "数量", "n"],
    ["need_at", "必要日", "d"],
    ["release_at", "発注日（着手日）", "d"],
    ["due_at", "納期", "d"],
    ["late", "遅れ", "b"],
    ["message", "メッセージ", "t"],
    ["symbol", "シンボル", "t"],
  ], [
    ["item1", "1", "", "", "", "", "", "1", "", "", "", "100", "2026-11-10", "2026-10-30", "2026-11-12", "1", "納期が必要日に間に合いません", "PS-0001"],
    ["item2", "", "1", "", "", "", "", "1", "", "", "", "20", "2026-11-15", "2026-11-01", "2026-11-14", "", "", "PS-0002"],
  ]);
  view("mrppurchase", "発注予定", [
    ["kind", "提案種別", "t"],
    ["supplier", "サプライヤー", "r", { ref: "supplier" }],
    ["release_date", "発注日", "d"],
    ["due_date", "納期", "d"],
    ["line_count", "明細数", "n"],
    ["amount", "金額", "n"],
    ["late_count", "遅れ件数", "n"],
    ["pending_count", "要判断件数", "n"],
  ], [["PURCHASE_NEW", "supplier1", "2026-10-30", "2026-11-12", "3", "125000", "1", "2"]]);
  view("mrpissue", "マスタ不備", [
    ["item", "品目", "r", { ref: "item" }],
    ["issue_code", "不備の種類", "t"],
    ["severity", "重大度", "t"],
    ["message", "メッセージ", "t"],
    ["ref_table", "参照先のテーブル", "t"],
  ], [["item3", "NO_SUPPLIER", "ERROR", "仕入先が登録されていません", "mstr_item_supplier"]]);
  view("mrpcoverage", "資材計画の充足状況", [
    ["item", "品目", "r", { ref: "item" }],
    ["plan_kind", "計画の種別", "t"],
    ["deadline", "期限", "d"],
    ["quantity", "数量", "n"],
    ["reserved_stock", "在庫引当", "n"],
    ["reserved_purchase", "購買引当", "n"],
    ["reserved_production", "生産引当", "n"],
    ["shortage", "不足", "n"],
  ], [["item1", "PURCHASE", "2026-11-10", "100", "40", "50", "0", "10"]]);
  ["mrppending", "mrppurchase", "mrpissue", "mrpcoverage"].forEach((id) => {
    const e = D.entities.find((x) => x.key === id);
    screen(id, e.label, "production", "plan");
  });

  // MRP のビジター品目(読み取り専用)
  view("mrpvisiter", "ビジター品目", [
    ["item", "品目", "r", { ref: "item" }],
    ["item_count", "品目数", "n"],
    ["finished", "完了", "b"],
    ["quantity", "数量", "n"],
  ], [["item1", "2", "", "30"]]);
  screen("mrpvisiter", "ビジター品目", "wrench", "result");

  // 在庫状況(#/stock)。場所 × コンテナ × 品目の在庫を見る読み取り専用の台帳。出庫可能数 = 在庫数 − 安全在庫 − 引当予約済(0未満にはならない)。
  // 行の「引当予約」ボタンで、その在庫を引当元にした引当予約(stockrez)の登録を開く。
  view("stockstatus", "在庫状況", [
    ["location", "場所", "r", { ref: "@locations:id:name" }],
    ["container", "コンテナ", "r", { ref: "container" }],
    ["item", "品目", "r", { ref: "item" }],
    ["qty", "在庫数", "n"],
    ["safety", "安全在庫", "n"],
    ["avail", "出庫可能数", "n"],
    ["reserved", "引当予約済", "n"],
  ], [["l5", "container1", "item1", "120", "40", "30", "50"], ["l5", "container1", "item2", "30", "20", "10", "0"]]);
  screen("stockstatus", "在庫状況", "box", "result");
  D.entities.find((x) => x.key === "stockstatus").action = { label: "引当予約", param: "stock" };
})();

/* 手書きの追加（20261031_0001 の採択）。工程場所(taskres)が所有する、使える設備(mstr_equipment_available)と
   使える外部委託(mstr_outsource_available)。デリバリー間隔は DB では interval。画面では時間(数値)で扱う。 */
(function () {
  const D = window.OD_DOMAINS;
  D.entities.push({
    key: "taskavailable", label: "使える設備", parent: { ent: "taskres", key: "taskres" },
    fields: [
      ["equipment", "設備", "r", { ref: "@equipments:id:name" }],
      ["delivery_interval", "デリバリー間隔（時間）", "n", { req: false, ge: 0 }],
      ["remarks", "備考", "x", { req: false }],
    ],
    rows: [["taskres1", "eq1", "24", ""], ["taskres2", "eq3", "48", ""]],
  });
  D.entities.push({
    key: "taskoutsource", label: "使える外部委託", parent: { ent: "taskres", key: "taskres" },
    fields: [
      ["supplier", "外部供給者", "r", { ref: "supplier" }],
      ["delivery_interval", "デリバリー間隔（時間）", "n", { req: false, ge: 0 }],
      ["material_supply", "材料支給", "b", { req: false }],
      ["paid_supply", "有償支給", "b", { req: false }],
      ["remarks", "備考", "x", { req: false }],
    ],
    rows: [["taskres1", "supplier1", "72", "1", "", ""], ["taskres2", "supplier2", "96", "", "1", ""]],
  });
})();

/* 手書きの追加（20261102_0001: ページアクセス管理）。
   - アクセスパス(info_access_path): ページのパス。ページ遷移の有効・無効を決める。
   - 部署のアクセスパス(info_department_access_path): 部署が使えるページと書き込みの可否。所属する担当者が受け継ぐ。
   - 担当者のアクセスパス許可(info_staff_access_permission): 所属部署の権限に足す個別の許可(足すだけで、減らせない)。
   - 担当者の実効アクセスパス(v_staff_effective_access_path): 読み取り専用。権限の出所(部署/個人)を示す。 */
(function () {
  const D = window.OD_DOMAINS;
  const EMP = "@employees:no:name";
  const DEP = "@departments:id:name";
  D.entities.push({
    key: "accesspath", label: "アクセスパス",
    fields: [
      ["name_ja", "ページ名（日本語）"],
      ["name_en", "ページ名（英語）"],
      ["usecase_path", "ページのパス"],
      ["remarks", "備考", "x", { req: false }],
    ],
    rows: [
      ["単位台帳", "Unit ledger", "/e/unit", ""],
      ["品目台帳", "Item ledger", "/e/item", ""],
      ["アクセスパス", "Access path", "/e/accesspath", ""],
    ],
  });
  D.entities.push({
    key: "deptaccesspath", label: "部署のアクセスパス",
    fields: [
      ["department", "部署", "r", { ref: DEP }],
      ["access_path", "アクセスパス", "r", { ref: "accesspath" }],
      ["write", "書き込み", "b", { req: false }],
      ["remarks", "備考", "x", { req: false }],
    ],
    rows: [["d1", "accesspath1", "1", ""], ["d1", "accesspath2", "", ""], ["d2", "accesspath2", "1", ""]],
  });
  D.entities.push({
    key: "staffaccesspermission", label: "担当者のアクセスパス許可",
    fields: [
      ["staff", "担当者", "r", { ref: EMP }],
      ["access_path", "アクセスパス", "r", { ref: "accesspath" }],
      ["write", "書き込み", "b", { req: false }],
      ["remarks", "備考", "x", { req: false }],
    ],
    rows: [["E-0012", "accesspath3", "1", "管理者に限る"], ["E-0034", "accesspath1", "", ""]],
  });
  D.entities.push({
    key: "effectiveaccesspath", label: "担当者の実効アクセスパス", viewOnly: true,
    fields: [
      ["staff", "担当者", "r", { ref: EMP }],
      ["access_path", "アクセスパス", "r", { ref: "accesspath" }],
      ["can_write", "書き込み可", "b", { req: false }],
      ["from_department", "部署から受け継ぐ", "b", { req: false }],
      ["from_staff", "個人の許可", "b", { req: false }],
    ],
    rows: [["E-0012", "accesspath1", "1", "1", ""], ["E-0012", "accesspath3", "1", "", "1"], ["E-0034", "accesspath1", "", "", "1"]],
  });
  const screen = (id, label, icon) => {
    D.screens.push({ id, label, icon, tabs: [["main", label, id]] });
    D.groups.find((g) => g.id === "access").screens.push(id);
  };
  D.groups.push({ id: "access", label: "アクセス管理", icon: "briefcase", screens: [] });
  screen("accesspath", "ページアクセス", "list");
  screen("deptaccesspath", "部署のアクセス権", "org");
  screen("staffaccesspermission", "担当者のアクセス権", "users");
  screen("effectiveaccesspath", "実効アクセス権", "check");
})();

/* 出荷管理（出荷予定台帳 + 出荷指示）と、引当予約。
   - 出荷予定は DB の出荷オーダー(trans_shipping_order)、出荷指示は出荷オーダー明細(trans_shipping_order_detail)。
     出荷オーダーは、1 つの受注を複数回に分けて出荷できるため、受注 1 件に複数件(DB の一意制約 trans_shipping_order_ix1 は外した)。
     運送業者は利害関係者のうち運送業者のフラグ(is_logistics)がオンの行(別名 carrier)。梱包サイズ・品目は、受注明細の品目から分かるため持たない。
     出荷の完了・進捗は、出荷実績(trans_shipping_order_detail_record)から求める値で、この画面案には持たない。
   - stockrez は 購買注文明細 / 生産計画 のどちらか一方と、引当元の在庫(OD_DATA.stock)を結ぶ。
   - 発注明細・生産計画の行には「引当予約」ボタン(action)を出す。 */
(function () {
  const D = window.OD_DOMAINS;
  D.entities.push(
    { key: "shipplan", label: "出荷予定",
      fields: [["order", "受注", "r", { ref: "order" }], ["code", "出荷予定コード"], ["date", "出荷予定日", "d"], ["arrival", "到着予定日", "d", { after: "date" }],
        ["carrier", "運送業者", "r", { ref: "carrier", req: false }], ["remarks", "備考", "x", { req: false }]],
      rows: [["order1", "SP-001", "2026-11-08", "2026-11-10", "carrier1", ""], ["order2", "SP-002", "2026-11-12", "2026-11-14", "carrier1", ""]] },
    { key: "shipline", label: "出荷指示", parent: { ent: "shipplan", key: "shipplan" },
      fields: [["orderdetail", "受注明細", "r", { ref: "orderdetail" }], ["qty", "出荷数量", "n", { gt: 0 }], ["date", "個別の予定日", "d", { req: false }],
        ["arrival", "個別の到着日", "d", { req: false, after: "date" }], ["remarks", "備考", "x", { req: false }]],
      rows: [["shipplan1", "orderdetail1", "100", "2026-11-08", "2026-11-09", ""], ["shipplan1", "orderdetail2", "50", "2026-11-08", "2026-11-10", ""],
        ["shipplan2", "orderdetail3", "30", "2026-11-12", "2026-11-14", ""]] },
    { key: "stockrez", label: "引当予約",
      fields: [["purdetail", "購買注文明細", "r", { ref: "@srcPur:id:label", req: false, xor: "opsplan" }], ["opsplan", "生産計画", "r", { ref: "@srcOps:id:label", req: false, xor: "purdetail" }],
        ["stock", "引当元の在庫", "r", { ref: "@stock:id:label", setsLe: "qty", limitField: "avail",
          filterBy: [{ source: "purdetail", sourceField: "item", targetField: "item" }, { source: "opsplan", sourceField: "parent.item", targetField: "item" }] }], ["date", "予約日", "d"], ["qty", "引当数量", "n", { gt: 0, limit: true }], ["remarks", "備考", "x", { req: false }]],
      rows: [["purdetail1", "", "stockstatus1", "2026-11-05", "20", ""]] },
  );
  D.screens.push({ id: "shipplan", label: "出荷予定台帳", icon: "truck", tabs: [["main", "出荷予定台帳", "shipplan"]] });
  const sales = D.groups.findIndex((g) => g.id === "sales");
  D.groups.splice(sales + 1, 0, { id: "ship", label: "出荷管理", icon: "truck", screens: ["shipplan"] });
  D.screens.find((s) => s.id === "rez")?.tabs.push(["stockrez", "引当予約", "stockrez"]);
  const pd = D.entities.find((e) => e.key === "purdetail");
  if (pd) pd.action = { label: "引当予約", param: "purdetail" };
  const op = D.entities.find((e) => e.key === "opsplan");
  if (op) op.action = { label: "引当予約", param: "opsplan" };
})();

/* 計画変更の履歴と未処置一覧(読み取り専用。DB のビュー v_plan_change・v_cancel_open_item)。
   種類・動き・処置・原因は、コード値(文字列・整数)でなく boolean の列(チェック)で出す。表示の文字は列の名前だけ(文を組み立てない)。
   「生産計画」とは別のメニューのグループ「計画変更」に置く(プロジェクト plan_change)。 */
(function () {
  const D = window.OD_DOMAINS;
  const view = (key, label, fields, rows) => D.entities.push({ key, label, viewOnly: true, fields, rows });
  view("planchange", "計画変更の履歴", [
    ["change_at", "変更日", "d"],
    ["symbol", "シンボル", "t", { req: false }],
    // 対象(ちょうど 1 つ)
    ["is_order_detail", "受注明細", "b"],
    ["is_purchase_detail", "発注明細", "b"],
    ["is_operations_plan", "生産計画", "b"],
    ["is_inventory_request", "引当予約", "b"],
    ["is_visiter", "ロット", "b"],
    ["is_shipping_order_detail", "出荷オーダー明細", "b"],
    ["item", "品目", "r", { ref: "item", req: false }],
    // 動き
    ["is_cancel", "キャンセル", "b"],
    ["is_quantity_change", "数量の変更", "b"],
    ["is_date_change", "納期の変更", "b"],
    ["is_postpone", "延期", "b"],
    ["is_advance", "前倒し", "b"],
    ["is_stop", "停止", "b"],
    ["is_resume", "再開", "b"],
    // 処置
    ["is_discontinue", "打ち切り", "b"],
    ["is_release", "在庫にする", "b"],
    ["is_hold", "押さえる", "b"],
    ["is_scrap", "廃棄", "b"],
    ["is_deliver", "引き渡し", "b"],
    ["has_settlement", "精算あり", "b"],
    // 原因
    ["customer_cause", "顧客の都合", "b"],
    ["supplier_cause", "仕入先・外注先の都合", "b"],
    ["quality_cause", "品質の原因", "b"],
    // MRP との関係
    ["from_mrp", "MRP の提案から", "b"],
    ["is_reflected", "MRP に反映済み", "b"],
    ["is_unreflected", "MRP に未反映", "b"],
    ["is_root", "起点の変更", "b"],
    // 値
    ["cancel_quantity", "キャンセル数量", "n", { req: false }],
    ["old_quantity", "変更前の数量", "n", { req: false }],
    ["new_quantity", "変更後の数量", "n", { req: false }],
    ["old_date", "変更前の納期", "d", { req: false }],
    ["new_date", "変更後の納期", "d", { req: false }],
    ["reason", "理由", "t", { req: false }],
  ], [
    ["2026-11-10", "CH-0001", "1", "", "", "", "", "", "item1", "1", "", "", "", "", "", "", "", "", "", "", "", "", "1", "", "", "", "", "1", "1", "5", "", "", "", "", "顧客の都合でキャンセル"],
    ["2026-11-10", "CH-0002", "", "", "1", "", "", "", "item1", "", "", "", "", "", "", "", "1", "", "", "", "", "", "1", "", "", "", "", "", "", "", "", "", "", "", ""],
  ]);
  view("cancelopen", "未処置一覧", [
    ["symbol", "シンボル", "t", { req: false }],
    // 種類(ちょうど 1 つ)
    ["is_inventory_request", "未解除の引当予約", "b"],
    ["is_work_in_process", "仕掛品", "b"],
    ["is_hold", "押さえたままの品", "b"],
    ["is_shipping_order", "未出荷の出荷オーダー", "b"],
    ["is_outsource_order", "未キャンセルの外注発注", "b"],
    ["is_supply_at_supplier", "外注先にある支給材", "b"],
    ["is_customer_supply", "顧客支給材の未返却", "b"],
    // 原因
    ["cause_cancel", "キャンセル", "b"],
    ["cause_stop", "停止", "b"],
    ["cause_discontinue", "打ち切り", "b"],
    ["item", "品目", "r", { ref: "item", req: false }],
    ["quantity", "数量", "n", { req: false }],
    ["since", "原因の日", "d", { req: false }],
  ], [
    ["CO-0001", "1", "", "", "", "", "", "", "1", "", "", "item1", "3", "2026-11-10"],
    ["CO-0002", "", "1", "", "", "", "", "", "", "", "1", "item2", "5", "2026-11-11"],
  ]);
  // 未処置一覧の行の操作(DB の関数の呼び出し。1回 = 1トランザクション。保存すると、計画変更が追記される。編集・削除は無い)。
  // 行のボタン(action)から、対象(行の id)と数量を初期値にして開く。ボタンは、行の種類(真偽の列)に合うものだけを出す。
  const op = (key, label, extra) => D.entities.push({
    key, label, rows: [], noMenu: true, group: "planchange",
    fields: [
      ["target", "対象", "t", { req: false, readOnly: true }],
      ...extra,
      ["reason", "理由", "t", { req: false }],
    ],
  });
  const qty = ["quantity", "数量", "n", { gt: 0 }];
  const cont = ["container", "押さえる先のコンテナ", "r", { ref: "container" }];
  op("actreqrelease", "引当予約の解除", []);
  op("actreqhold", "引当予約の保管", [cont]);
  op("actlotrelease", "在庫にする", []);
  op("actlothold", "品物を押さえる", [cont, ["quantity", "数量", "n", { req: false, gt: 0 }]]);
  op("actlotscrap", "品物の廃棄", [qty]);
  op("actlotdeliver", "顧客への引き渡し", [qty]);
  op("actshipcancel", "出荷オーダーの取り消し", []);
  op("actpurcancel", "外注発注のキャンセル", [qty]);
  const co = D.entities.find((e) => e.key === "cancelopen");
  const tgt = { target: "id" };
  const tgtQty = { target: "id", quantity: "quantity" };
  const lot = ["is_work_in_process", "is_hold"];
  co.actions = [
    { key: "do_req_release", label: "解除", target: "actreqrelease", params: tgt, whenAny: ["is_inventory_request"] },
    { key: "do_req_hold", label: "保管", target: "actreqhold", params: tgt, whenAny: ["is_inventory_request"] },
    { key: "do_lot_release", label: "在庫にする", target: "actlotrelease", params: tgt, whenAny: lot },
    { key: "do_lot_hold", label: "押さえる", target: "actlothold", params: tgtQty, whenAny: ["is_work_in_process"] },
    { key: "do_lot_scrap", label: "廃棄", target: "actlotscrap", params: tgtQty, whenAny: lot },
    { key: "do_lot_deliver", label: "引き渡し", target: "actlotdeliver", params: tgtQty, whenAny: lot },
    { key: "do_ship_cancel", label: "出荷取り消し", target: "actshipcancel", params: tgt, whenAny: ["is_shipping_order"] },
    { key: "do_pur_cancel", label: "発注キャンセル", target: "actpurcancel", params: tgtQty, whenAny: ["is_outsource_order"] },
  ];
  D.screens.push({ id: "planchange", label: "計画変更の履歴", icon: "list", tabs: [["main", "計画変更の履歴", "planchange"]] });
  D.screens.push({ id: "cancelopen", label: "未処置一覧", icon: "alert", tabs: [["main", "未処置一覧", "cancelopen"]] });
  const at = D.groups.findIndex((g) => g.id === "plan");
  D.groups.splice(at + 1, 0, { id: "planchange", label: "計画変更", icon: "check", screens: ["planchange", "cancelopen"] });
})();
