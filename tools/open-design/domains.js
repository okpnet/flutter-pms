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
      ["supplier", "サプライヤー", "r", { ref: "supplier", uniq: true }],
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
