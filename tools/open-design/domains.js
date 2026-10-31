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
   - 生産計画に資材所要計算の結果の読み取り専用の一覧(v_mrp_pending_suggestion・v_mrp_purchase_plan・v_mrp_master_issue・v_resource_plan_coverage)。
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
  view("mrppending", "要判断の提案", [
    ["kind", "提案種別", "t"],
    ["item", "品目", "r", { ref: "item" }],
    ["quantity", "数量", "n"],
    ["need_at", "必要日", "d"],
    ["release_at", "発注日（着手日）", "d"],
    ["due_at", "納期", "d"],
    ["late", "遅れ", "b"],
    ["message", "メッセージ", "t"],
    ["symbol", "シンボル", "t"],
  ], [
    ["PURCHASE_NEW", "item1", "100", "2026-11-10", "2026-10-30", "2026-11-12", "1", "納期が必要日に間に合いません", "PS-0001"],
    ["PRODUCTION_NEW", "item2", "20", "2026-11-15", "2026-11-01", "2026-11-14", "", "", "PS-0002"],
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
