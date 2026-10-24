/* GraphQL の View 定義(YAML) と DB 定義(SQL のコメント) から、open-design の画面スキーマ(schema.gen.js)を生成する。
   使い方: node tools/gen-schema.js   （js-yaml が必要。無ければ npm i js-yaml）
   不明な箇所は schema.gen.log.md に残してスキップし、全画面を巡回する。
   入力の画面定義は domains.base.js（手書きの元定義）。domains.js が schema.gen.js を重ねて適用する。 */
const fs = require("fs"), path = require("path");
let yaml;
try { yaml = require("js-yaml"); } catch { yaml = require(path.join(process.env.APPDATA || "", "npm/node_modules/node-red/node_modules/js-yaml")); }
const REPO = path.resolve(__dirname, "../../..");
const VIEWS = path.join(REPO, "packages/infra/graphql_provider_lib/source/views");
const SQL = path.join(REPO, "tools/docker/postgresql/scripts/06_cteate_test.sql");
const HERE = path.resolve(__dirname, "..");
const log = [];
const L = (lvl, ent, msg) => log.push({ lvl, ent, msg });

/* ---------- YAML: 全ファイルを依存順に連結して読む（アンカーはファイルをまたぐ） ---------- */
function loadViews() {
  const blocks = [];
  for (const d of fs.readdirSync(VIEWS)) {
    for (const f of fs.readdirSync(path.join(VIEWS, d))) {
      const txt = fs.readFileSync(path.join(VIEWS, d, f), "utf8").replace(/\r\n/g, "\n");
      for (const p of txt.split(/\n(?=[A-Za-z_][A-Za-z0-9_]*:)/)) {
        const m = p.match(/^([A-Za-z_][A-Za-z0-9_]*):/);
        if (!m) continue;
        blocks.push({
          file: `${d}/${f}`, key: m[1], text: p,
          defs: [...p.matchAll(/&([A-Za-z0-9_]+)/g)].map((x) => x[1]),
          refs: [...p.matchAll(/\*([A-Za-z0-9_]+)/g)].map((x) => x[1]),
        });
      }
    }
  }
  const ordered = [], done = new Set();
  let pending = blocks;
  while (pending.length) {
    const rest = [];
    for (const b of pending) {
      if (b.refs.every((r) => done.has(r) || b.defs.includes(r))) { ordered.push(b); b.defs.forEach((x) => done.add(x)); }
      else rest.push(b);
    }
    if (rest.length === pending.length) {
      rest.forEach((b) => L("warn", b.key, `${b.file}: 未解決のエイリアス ${b.refs.filter((r) => !done.has(r)).join(",")} → 読み飛ばし`));
      break;
    }
    pending = rest;
  }
  return yaml.load(ordered.map((b) => b.text).join("\n"), { json: true });
}

/* ---------- SQL: テーブル・列・コメント・外部キー ---------- */
function loadSql() {
  const sql = fs.readFileSync(SQL, "utf8"), T = {};
  for (const m of sql.matchAll(/create table tests\.(\w+)\s*\(([\s\S]*?)\n\);/gi)) {
    const cols = {};
    for (const line of m[2].split("\n")) {
      const c = line.trim().match(/^(\w+)\s+([a-z]+(?:\([^)]*\))?)(.*?),?$/i);
      if (c && !/^(constraint|primary|unique)$/i.test(c[1])) cols[c[1]] = { type: c[2].toLowerCase(), notNull: /not null/i.test(c[3]) && !/default/i.test(c[3]), comment: "" };
    }
    T[m[1]] = { comment: "", cols, fks: {} };
  }
  for (const m of sql.matchAll(/comment on table tests\.(\w+) is '([^']*)'/g)) if (T[m[1]]) T[m[1]].comment = m[2];
  for (const m of sql.matchAll(/comment on column tests\.(\w+)\.(\w+) is '([^']*)'/g)) if (T[m[1]]?.cols[m[2]]) T[m[1]].cols[m[2]].comment = m[3];
  for (const m of sql.matchAll(/alter table tests\.(\w+) add constraint \w+ foreign key \((\w+)\) references tests\.(\w+)/gi)) if (T[m[1]]) T[m[1]].fks[m[2]] = m[3];
  return T;
}

/* ---------- 画面（エンティティ）と YAML ページの対応 ---------- */
const PAGE = {
  unit: "UnitPage", itemkind: "ItemKindPage", hscode: "HsCodeReadFields", item: "ItemPage", itemsizekind: "ItemSizeKindPage", itemsize: "ItemSizePage",
  itemop: "ItemOperationPage", itemoptask: "ItemOperationTaskPage", task: "TaskPage", taskres: "TaskResourcePage", operation: "OperationPage",
  shipkind: "ShippingKindReadFields", customer: "CustomerPage", order: "OrderPage", orderdetail: "OrderDetailPage", supplier: "SupplierPage",
  unrec: "UnrecognizedPage", unrecdetail: "UnrecognizedDetailPage", purchase: "PurchasePage", purdetail: "PurchaseDetailPage", purchaserec: "PurchaseRecPage",
  resplan: "ResourcePlanPage", opsplan: "OperationsPlanPage", workplan: "WorkPlanPage", prodrez: "ProductRezPage", purrez: "PurchaseRezPage",
  container: "ContainerPage", certificate: "CertificatePage", purcert: "PurchaseCertificationPage", workrec: "WorkRecordPage", wrcert: "WorkRecordCertificatePage",
  invreq: "InventoryRequestPage", disposal: "DisposalPage", recur: "RecurrencePreventionPage", obsdisp: "ObserverDisposalPage", obsprev: "ObserverPreventivePage",
  risk: "RiskPage", prevention: "PreventionPage", preventiondetail: "PreventionDetailPage", auditstdcheck: "AuditStdCheckitemPage", doctier: "DocumentTierPage",
  doc: "DocumentPage", doccontent: "DocumentContentPage", report: "ReportPage", complaint: "ComplaintPage", compreceive: "ComplaintReceivePage",
  compstake: "ComplaintStakeholderPage", corder: "ComplaintOrderPage", cproc: "ComplaintProcessPage", cequip: "ComplaintEquipmentPage",
  orderrisk: "OrderRiskPage", orderdetailrisk: "OrderDetailRiskPage", taskrisk: "TaskRiskPage", auditstd: "AuditStdPage", auditteam: "AuditTeamPage",
  auditor: "AuditorPage", audit: "AuditPage", auditmember: "AuditMemberPage", invapply: "InventoryApplyPage",
};
const EXTERNAL = { info_staff: "@employees:no:name", info_location: "@locations:id:name", info_equipment: "@equipments:id:name", info_department: "@departments:id:name" };

const clean = (s) => (s || "").replace(/ID$/i, "").replace(/（.*?）|\(.*?\)/g, "").trim();
const SKIP_COL = /(^|_)id$|^remove$|^update_|^revision$|^history_id$|^create_|_history_id$/;
const KANA = (() => { try { return JSON.parse(fs.readFileSync(path.join(__dirname, "kana.json"), "utf8")); } catch { return {}; } })();

const sample = (f, n, pfx) => {
  if (f.kind === "n") return String((n + 1) * 10);
  if (f.kind === "d") return `2026-10-${String(10 + n).padStart(2, "0")}`;
  if (f.kind === "s") return f.opts[n % f.opts.length];
  if (/コード|番号|No|符号|記号/.test(f.label)) return `${pfx}-${String(n + 1).padStart(3, "0")}`;
  return f.req === false ? "" : `${f.label}${n + 1}`;
};
const kindOf = (t) => {
  if (/^(timestamp|date)/.test(t)) return "d";
  if (/^(int|numeric|bigint|smallint|real|double|decimal)/.test(t)) return "n";
  if (t === "boolean") return "s";
  if (t === "text" || +(t.match(/\((\d+)\)/)?.[1] || 0) >= 512) return "x";
  return "t";
};

function main() {
  const doc = loadViews(), T = loadSql();
  global.window = {};
  require(path.join(HERE, "domains.base.js"));
  const D = window.OD_DOMAINS;
  const entOfTable = {};
  for (const e of D.entities) {
    const pg = PAGE[e.key] && doc[PAGE[e.key]];
    if (pg?.from && !entOfTable[pg.from]) entOfTable[pg.from] = e.key;
  }
  const out = {}, counts = {};
  for (const e of D.entities) {
    const pname = PAGE[e.key];
    if (!pname) { L("skip", e.key, `${e.label}: 対応するYAMLページが無い（連携用/取込用の子画面）→ 既存定義のまま`); continue; }
    const pg = doc[pname];
    if (!pg || !pg.columns) { L("skip", e.key, `${e.label}: YAML に ${pname} が無い/columns が無い → 既存定義のまま`); continue; }
    const tbl = T[pg.from];
    if (!tbl) { L("skip", e.key, `${e.label}: SQL に ${pg.from} テーブルが無い → 既存定義のまま`); continue; }
    const fields = [];
    const add = (f) => { if (f.kind === "r" && e.parent && f.ref === e.parent.ent) return; if (!fields.some((x) => x.id === f.id || (x.label === f.label && x.kind === f.kind))) fields.push(f); };
    for (const c of pg.columns) {
      if (typeof c === "string") {
        if (c === "update_at" || /_history_id$/.test(c) || /^update_/.test(c) || c === "remove" || c === "revision") continue;
        if (c === "symbol" && e.key !== "unit") { continue; }
        const fkT = tbl.fks[c];
        if (/_id$/.test(c) && c !== `${pg.from}_id`) {
          const m0 = tbl.cols[c];
          let ref = EXTERNAL[fkT];
          if (!ref && fkT === "mstr_stakeholder") ref = e.fields.some((f) => f[3]?.ref === "supplier") ? "supplier" : "customer";
          if (!ref) ref = entOfTable[fkT];
          if (m0 && ref) { add({ id: c, label: clean(m0.comment) || c, kind: "r", ref, req: m0.notNull }); }
          else if (m0) L("skip", e.key, `列 ${clean(m0.comment) || c}(${c}) → ${fkT || "?"}: 参照先の画面が無い → 非表示`);
          continue;
        }
        if (SKIP_COL.test(c)) continue;
        const m = tbl.cols[c];
        if (!m) { L("warn", e.key, `${pg.from}.${c}: SQL に列が無い → スキップ`); continue; }
        const kind = kindOf(m.type);
        const label = c === "remarks" ? "備考" : c === "symbol" ? "記号" : clean(m.comment) || c;
        if (!m.comment) L("warn", e.key, `${pg.from}.${c}: コメント無し → 列名をそのままラベルに使用`);
        add({ id: c, label, kind, req: m.notNull && c !== "remarks", opts: kind === "s" ? ["はい", "いいえ"] : undefined });
        continue;
      }
      const using = Array.isArray(c.using) ? c.using.join(",") : c.using;
      if (c.from && /^v_/.test(c.from)) { counts[e.key] = (counts[e.key] || 0) + 1; continue; }
      if (/update_user/.test(using || "") || c.name === "update_user") continue;
      if (using === "names" || (c.pick && c.pick.includes("pronunciation"))) {
        const base = clean(tbl.cols.names?.comment || tbl.cols[c.name]?.comment) || e.label;
        add({ id: "name", label: /名(称|前)?$/.test(base) ? base : `${base}名`, kind: "t", req: true });
        if (c.pick?.includes("pronunciation")) add({ id: "pronunciation", label: "読み", kind: "t", req: false });
        if (c.pick?.includes("nickname")) add({ id: "nickname", label: "略称", kind: "t", req: false });
        continue;
      }
      if (using === "titles") { add({ id: "title", label: "件名", kind: "t", req: true }); continue; }
      if (using === "approvals" || /_names$/.test(c.name || "")) { L("skip", e.key, `列 ${c.name}(${using}): 承認/参加者名の結合表示 → 非表示`); continue; }
      if (using === "details" || /Text/.test(c.name || "")) { add({ id: "detail", label: "詳細", kind: "x", req: false }); continue; }
      const fkCol = [].concat(c.using || []).find((u) => tbl.fks[u] || /_id$/.test(u));
      if (fkCol && tbl.cols[fkCol]) {
        const target = tbl.fks[fkCol] || c.from;
        const label = clean(tbl.cols[fkCol].comment) || c.name;
        const ref = EXTERNAL[target] || (target === "mstr_stakeholder" ? (e.fields.some((f) => f[3]?.ref === "supplier") ? "supplier" : "customer") : entOfTable[target]);
        if (ref) { add({ id: fkCol, label, kind: "r", ref, req: tbl.cols[fkCol].notNull }); continue; }
        L("skip", e.key, `列 ${label}(${fkCol}) → ${target}: 参照先の画面が無い → 非表示`);
        continue;
      }
      L("skip", e.key, `列 ${c.name}(from ${c.from}): 表示方法が不明（子テーブル/結合）→ 非表示`);
    }
    if (!fields.length) { L("skip", e.key, `${e.label}: 表示対象の列が無い → 既存定義のまま`); continue; }
    const rank = (f) => ({ code: 0, no: 0, name: 1, pronunciation: 2, nickname: 3 }[f.id] ?? (/コード|番号/.test(f.label) && f.kind === "t" ? 0 : 9));
    fields.sort((a, b) => rank(a) - rank(b));
    if (!fields.some((f) => ["code", "no", "name"].includes(f.id) || /コード|番号/.test(f.label))) L("warn", e.key, `${e.label}: コード/名前の列が見つからない（先頭列を代表表示にします）`);

    /* 既存サンプル行の値を新しい項目へ引き継ぐ */
    const oldF = e.fields.map(([id, label, kind = "t", x = {}]) => ({ id, label, kind, ref: x.ref }));
    const used = new Set();
    const nameLike = (o) => o.id === "name" || o.id === "title" || o.id === "heading" || /名$/.test(o.label);
    const codeLike = (o) => ["code", "no"].includes(o.id) || /コード|番号/.test(o.label);
    const pick = (f) => {
      const cand = oldF.map((o, i) => [o, i]).filter(([, i]) => !used.has(i));
      let hit = null;
      if (f.id === "name") hit = cand.find(([o]) => nameLike(o) && o.kind === "t");
      else if (f.id === "pronunciation" || f.id === "nickname") hit = null;
      else if (f.kind === "r") hit = cand.find(([o]) => o.kind === "r" && o.ref === f.ref);
      else if (/コード|番号/.test(f.label) || ["code", "no"].includes(f.id)) hit = cand.find(([o]) => codeLike(o));
      else if (f.id === "symbol") hit = cand.find(([o]) => o.id === "abbr" || /記号/.test(o.label));
      else if (f.id === "detail" || f.id === "remarks") hit = cand.find(([o]) => o.kind === "x");
      else hit = cand.find(([o]) => o.label === f.label) || cand.find(([o]) => o.kind === f.kind && !["t", "r", "s"].includes(o.kind));
      if (hit) used.add(hit[1]);
      return hit ? hit[1] : -1;
    };
    const idx = fields.map(pick);
    const pfx = e.key.slice(0, 3).toUpperCase();
    const off = e.parent ? 1 : 0;
    const nameK = fields.findIndex((x) => x.id === "name");
    const rows = [];
    (e.rows || []).forEach((old, n) => {
      const r = [];
      if (e.parent) r.push(old[0]);
      fields.forEach((f, k) => {
        const o = idx[k] >= 0 ? old[off + idx[k]] : undefined;
        if (o !== undefined && o !== "") { r.push(o); return; }
        if (f.id === "pronunciation") r.push(KANA[r[off + nameK]] || "");
        else if (f.id === "nickname") r.push("");
        else if (f.kind === "r") r.push(f.ref.startsWith("@") ? (f.ref === "@employees:no:name" ? "E-0101" : "") : `${f.ref}1`);
        else r.push(sample(f, n, pfx));
      });
      if (e.tree) r.push(old[old.length - 1]);
      rows.push(r);
    });
    const lbl = clean(tbl.comment).replace(/マスタ$|台帳$/, "");
    out[e.key] = {
      label: lbl && lbl.length <= 12 ? lbl : e.label,
      fields: fields.map((f) => [f.id, f.label, f.kind, { ...(f.req === false ? { req: false } : {}), ...(f.opts ? { opts: f.opts } : {}), ...(f.ref ? { ref: f.ref } : {}) }]),
      rows,
    };
    const gone = e.fields.filter((_, i) => !used.has(i)).map((f) => f[1]);
    L("ok", e.key, `${pname} ⇄ ${pg.from} (${tbl.comment}): ${fields.map((f) => f.label).join("／")}${gone.length ? `　〔置換で外れた旧項目: ${gone.join("、")}〕` : ""}`);
  }
  Object.entries(counts).forEach(([k, n]) => L("info", k, `子レコード件数ビュー ${n} 本は一覧に出さない（件数列は既存の「件」列を使用）`));
  fs.writeFileSync(path.join(HERE, "schema.gen.js"), `/* tools/gen-schema.js が生成（YAML views × SQL コメント）。手で編集しない。 */\nwindow.OD_SCHEMA = ${JSON.stringify(out, null, 1)};\n`);
  const sec = (lvl, t) => `## ${t}\n\n${log.filter((l) => l.lvl === lvl).map((l) => `- \`${l.ent}\` ${l.msg}`).join("\n") || "- なし"}\n`;
  fs.writeFileSync(path.join(HERE, "schema.gen.log.md"), `# schema.gen ログ\n\n生成: ${Object.keys(out).length} / ${D.entities.length} 画面\n\n${sec("ok", "置換した画面")}\n${sec("warn", "不明な箇所（要確認）")}\n${sec("skip", "スキップした項目")}
${sec("info", "補足")}\n`);
  console.log(`generated ${Object.keys(out).length}/${D.entities.length}; warn ${log.filter((l) => l.lvl === "warn").length}, skip ${log.filter((l) => l.lvl === "skip").length}`);
}
if (require.main === module) main();
module.exports = { loadViews, loadSql, clean, kindOf, EXTERNAL, SKIP_COL };
