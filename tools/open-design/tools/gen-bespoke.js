/* 個別実装の画面(会社・事業所・部署・職員・承認・資源)について、YAML×SQL から見た表示列を一覧化する。 */
const { loadViews, loadSql, clean } = require("./gen-schema.js");
const doc = loadViews(), T = loadSql();
const PAGES = process.argv.slice(2);
const names = PAGES.length ? PAGES : Object.keys(doc).filter((k) => /Page$/.test(k) && doc[k].kind === "read");
const SKIP = /^(update_at|remove|revision)$|^update_|_history_id$/;
for (const k of names) {
  const pg = doc[k]; if (!pg?.columns) continue;
  const tbl = T[pg.from]; if (!tbl) { console.log(`## ${k} (${pg.from}) テーブル無し`); continue; }
  const out = [];
  const walk = (cols, t, prefix) => {
    for (const c of cols) {
      if (typeof c === "string") {
        if (SKIP.test(c) || c === "symbol") continue;
        const m = t.cols[c]; if (!m) { out.push(`${prefix}${c}?`); continue; }
        if (/_id$/.test(c) && c === `${pg.from}_id`) continue;
        out.push(`${prefix}${c}=${clean(m.comment) || c}${/_id$/.test(c) ? "(参照)" : ""}`);
      } else {
        const using = [].concat(c.using || []).join(",");
        if (c.from && /^v_/.test(c.from)) continue;
        if (/update_user/.test(using) || c.name === "update_user") continue;
        if (using === "names" || c.pick?.includes("pronunciation")) { out.push(`${prefix}${c.name}=名称/読み/略称`); continue; }
        if (using === "details" || using === "titles") { out.push(`${prefix}${c.name}=${using === "titles" ? "件名" : "詳細"}`); continue; }
        out.push(`${prefix}${c.name}→${c.from}${c.columns ? "{" + c.columns.map((x) => typeof x === "string" ? x : x.name).join(",") + "}" : ""}`);
      }
    }
  };
  walk(pg.columns, tbl, "");
  console.log(`## ${k} (${pg.from}／${tbl.comment})\n  ${out.join("\n  ")}`);
}
