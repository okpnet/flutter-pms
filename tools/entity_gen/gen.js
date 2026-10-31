/* 実体(台帳・編集の画面)の生成。
   入力: tools/open-design の画面定義(domains.base.js + schema.gen.js + domains.js)、手書きの画面(handwritten.js)
   出力: packages/features/<project>/ の定義・サンプル・表示名(slang の Yaml)・モジュール
   使い方: node tools/entity_gen/gen.js            (リポジトリのルートで)
   生成後に各プロジェクトで `dart run slang` を実行する(このスクリプトが実行する)。 */
'use strict';

const fs = require('fs');
const path = require('path');
const cp = require('child_process');

const root = path.resolve(__dirname, '..', '..');
const od = path.join(root, 'tools', 'open-design');
const features = path.join(root, 'packages', 'features');

global.window = {};
for (const f of ['data.js', 'data.extra.js', 'domains.base.js', 'schema.gen.js', 'domains.js']) {
  require(path.join(od, f));
}
const DOM = window.OD_DOMAINS;
const D = window.OD_DATA;
const X = window.OD_EXTRA ?? {};

/* ------------------------------------------------------------------ プロジェクト */
const PROJECTS = {
  system: { cls: 'System', title: 'システム', group: 'system' },
  item: { cls: 'Item', title: '品目', group: 'item' },
  production_process: { cls: 'ProductionProcess', title: '工程', group: 'process' },
  sales: { cls: 'Sales', title: '営業', group: 'sales' },
  shared_master: { cls: 'SharedMaster', title: '共有マスタ' },
  purchasing: { cls: 'Purchasing', title: '購買', group: 'purchasing' },
  production_plan: { cls: 'ProductionPlan', title: '生産計画', group: 'plan' },
  work_record: { cls: 'WorkRecord', title: '作業実績', group: 'result' },
  quality_common: { cls: 'QualityCommon', title: '品質共通', group: 'qcommon' },
  quality_document: { cls: 'QualityDocument', title: '品質管理文書', group: 'qdoc' },
  quality: { cls: 'Quality', title: '品質管理', group: 'quality' },
  resource: { cls: 'Resource', title: '資源' },
  organization: { cls: 'Organization', title: '会社情報' },
};
const GROUP_PROJECT = Object.fromEntries(
  Object.entries(PROJECTS).filter(([, p]) => p.group).map(([k, p]) => [p.group, k]),
);

/** 専用の画面(手書きの Dart)を持つ実体。参照先としてだけ使う。 */
const BESPOKE = {
  shipkind: { project: 'shared_master', ids: (n) => `5b1f0c1e-0000-4000-8000-${hex(n, 12)}`, max: 3 },
};
const SKIP = new Set(['customer', 'custcontact', 'supplier', 'suppcontact', 'shipkind']);

/** 利害関係者(stakeholder)。顧客・外部供給者は同じ mstr_stakeholder をフラグで見分けるだけなので、
 *  1つの実体にまとめる(shared_master)。他の実体からの参照のキー customer・supplier は、
 *  同じ利害関係者の行への別名(登録簿の lookup)として残す。 */
const STAKEHOLDER_ALIASES = { customer: 'is_customer', supplier: 'is_supplier' };
const COLL = { employees: 'staff', locations: 'location', equipments: 'equipment', departments: 'department' };

/** 重複を認めない項目の組。範囲は、所有される実体なら同じ親の中、それ以外は全体。
 *  出典: DB の一意制約(06_cteate_test.sql: info_department_kind, mstr_item_actual_size, mstr_operation_task)、
 *  画面案(pms_design.md)の「重複不可」「重複して割り当てられない」。 */
const UNIQUE = {
  stakeholder: [['code']],
  departmentkind: [['kind']],
  itemsize: [['mstr_item_size_kind_id']],
  optask: [['task', 'seq']],
  deptkind: [['name']],
  site: [['code']],
  department: [['code']],
  staff: [['no']],
  staffcapability: [['capability']],
  stafflicense: [['license']],
  assignment: [['staff']],
  operationline: [['item']],
  capability: [['code']],
  license: [['code']],
  location: [['code']],
  equipmentcategory: [['code']],
  equipment: [['code']],
  inspectionkind: [['code']],
  inspectionitem: [['code']],
  inspectionoperation: [['code']],
  inspectionschedule: [['code']],
};

/** この実体を参照している一覧(保持者など)。編集画面の下に読み取り専用で出す。 */
const REVERSE = {
  capability: [{ entity: 'staffcapability', field: 'capability', label: '保持者' }],
  license: [{ entity: 'stafflicense', field: 'license', label: '保持者' }],
  // 参照している一覧(逆引き)。編集画面の下に読み取り専用で表示する
  item: [
    { entity: 'itemoptask', field: 'mstr_item_id', label: '品目工程運用明細' },
    { entity: 'opapply', field: 'item', label: '適用する品目の工程計画' },
    { entity: 'purchaseline', field: 'item', label: '受入明細' },
    { entity: 'equipment', field: 'item', label: '設備' },
  ],
  stakeholder: [
    { entity: 'itemsupplier', field: 'supplier', label: '品目仕入先' },
    { entity: 'audit', field: 'mstr_stakeholder_id', label: '監査' },
  ],
  equipment: [{ entity: 'inspectionoperation', field: 'equipment', label: '設備点検整備運用' }],
  department: [
    { entity: 'assignment', field: 'department', label: '割当' },
    { entity: 'approver', field: 'department', label: '承認できる人' },
    { entity: 'taskres', field: 'info_department_id', label: '工程場所' },
    { entity: 'preventiondetail', field: 'info_department_id', label: '未然防止処置' },
    { entity: 'audit', field: 'info_department_id', label: '監査' },
  ],
  location: [{ entity: 'equipment', field: 'location', label: '設備' }],
  task: [
    { entity: 'optask', field: 'task', label: '工程の選択' },
    { entity: 'workplan', field: 'mstr_task_id', label: '生産計画明細' },
    { entity: 'cproc', field: 'mstr_task_id', label: '工程苦情' },
    { entity: 'taskrisk', field: 'mstr_task_id', label: '工程リスク' },
  ],
};

/* ------------------------------------------------------------------ 内部形式への変換 */
const KIND = { t: 'text', x: 'multiline', n: 'number', d: 'date', s: 'choice', r: 'reference', b: 'flag' };

const byLabel = (key) => DOM.entities.find((x) => x.key === key)?.label ?? key;

function fromHtml(e) {
  const fields = e.fields.map(([key, label, kind = 't', extra = {}]) => {
    const k = KIND[kind];
    let ref;
    if (k === 'reference') {
      const r = extra.ref;
      ref = r.startsWith('@') ? COLL[r.slice(1).split(':')[0]] : r;
    }
    return {
      key, label, kind: k, required: e.viewOnly ? false : extra.req !== false, readOnly: e.viewOnly ? true : extra.readOnly, options: k === 'choice' ? extra.opts : undefined, ref,
      toggle: extra.toggle, disables: extra.disables, ge: extra.ge, gt: extra.gt, needUnless: extra.needUnless, lockedBy: extra.lockedBy, uniq: extra.uniq, picker: extra.picker,
    };
  });
  if (e.parent && e.tree) {
    // 所有する親とツリーの親の両方を持つ実体: 所有する親は参照の項目にし、ツリーの親だけを親子にする
    fields.unshift({ key: e.parent.key, label: byLabel(e.parent.ent), kind: 'reference', required: true, ref: e.parent.ent });
  }
  const rows = (e.rows ?? []).map((arr, i) => {
    let parent = null;
    let vals = arr;
    if (e.parent && e.tree) {
      // 所有する親とツリーの親の両方を持つ実体: 所有する親は参照の項目にし、ツリーの親だけを親子にする
      vals = [arr[0], ...arr.slice(1, -1)];
      parent = arr[arr.length - 1] || null;
    } else if (e.parent) {
      parent = arr[0];
      vals = arr.slice(1);
    } else if (e.tree) {
      parent = arr[arr.length - 1] || null;
      vals = arr.slice(0, -1);
    }
    const values = {};
    fields.forEach((fl, j) => {
      values[fl.key] = vals[j] === undefined || vals[j] === null ? '' : String(vals[j]);
    });
    return { legacy: `${e.key}${i + 1}`, parent, values };
  });
  if (e.parent && e.tree) {
    return { key: e.key, label: e.label, isTree: true, hintParent: e.parent.ent, fields, rows };
  }
  return { key: e.key, label: e.label, owner: e.parent?.ent, isTree: !!e.tree, viewOnly: !!e.viewOnly, fields, rows };
}

const htmlEntities = DOM.entities.filter((e) => !SKIP.has(e.key)).map(fromHtml);

/** 画面案(Html)に無く、DB の変更で増えた項目。after の次に足し、サンプルの値は sample(行の番号)で作る。
 *  出典: model_providers の 20261027_0002(trans_purchase_detail.cost = 単価、NOT NULL)。 */
/** DB の改名(model_providers の 20261029_0001): 明細の cost は unit_price になった。 */
const FIELD_RENAMES = {
  orderdetail: { cost: 'unit_price' },
  unrecdetail: { cost: 'unit_price' },
  /* 画面案の「購入品」は mstr_item.catalog_item(08_mrp.sql の購入品フラグ) */
  item: { purchase: 'catalog_item' },
};
for (const e of htmlEntities) {
  for (const [from, to] of Object.entries(FIELD_RENAMES[e.key] ?? {})) {
    const fl = e.fields.find((x) => x.key === from);
    if (!fl) continue;
    fl.key = to;
    for (const r of e.rows) { r.values[to] = r.values[from]; delete r.values[from]; }
  }
}
/** DB で廃止された列(mstr_task_location の設備・利害関係者は、設備/外注の利用可能のテーブルへ移った)。 */
const FIELD_REMOVALS = { taskres: ['mstr_equipment_id', 'mstr_stakeholder_id'] };
for (const e of htmlEntities) {
  for (const key of FIELD_REMOVALS[e.key] ?? []) {
    e.fields = e.fields.filter((x) => x.key !== key);
    for (const r of e.rows) delete r.values[key];
  }
}
const empty = () => '';
const FIELD_ADDITIONS = {
  purdetail: [
    { after: 'quantity', field: { key: 'unit_price', label: '単価', kind: 'number', required: true }, sample: (i) => String([1200, 900, 1500][i] ?? 1000) },
    { after: 'unit_price', field: { key: 'price_adjustment', label: '価格調整', kind: 'number', required: false }, sample: empty },
    { after: 'price_adjustment', field: { key: 'fixed_price', label: '固定価格', kind: 'number', required: false }, sample: empty },
    { after: 'period', field: { key: 'material_supply', label: '材料支給', kind: 'flag', required: false }, sample: empty },
    { after: 'material_supply', field: { key: 'paid_supply', label: '有償支給', kind: 'flag', required: false }, sample: empty },
  ],
  /* model_providers の 20261029_0001: trans_operations_plan.quantity、trans_work_plan.sequence、
     trans_resource_plan.parent_trans_operations_plan_id、trans_inventory_request.trans_resource_plan_id */
  opsplan: [{ after: 'deadline', field: { key: 'quantity', label: '数量', kind: 'number', required: false }, sample: empty }],
  workplan: [{ after: 'mstr_task_id', field: { key: 'sequence', label: '順', kind: 'number', required: false }, sample: empty }],
  resplan: [{ after: 'trans_unrecognized_detail_id', field: { key: 'parent_trans_operations_plan_id', label: '親の生産計画', kind: 'reference', required: false, ref: 'opsplan' }, sample: empty }],
  invreq: [{ after: '', field: { key: 'trans_resource_plan_id', label: '資材計画', kind: 'reference', required: false, ref: 'resplan' }, sample: empty }],
  /* mstr_task_location.priority(優先順位) */
  taskres: [{ after: 'info_department_id', field: { key: 'priority', label: '優先順位', kind: 'number', required: false }, sample: empty }],
  orderdetail: [
    { after: 'unit_price', field: { key: 'price_adjustment', label: '価格調整', kind: 'number', required: false }, sample: empty },
    { after: 'price_adjustment', field: { key: 'fixed_price', label: '固定価格', kind: 'number', required: false }, sample: empty },
    /* trans_order_detail.master_error_count: MRP 用のマスタ不備の件数(計算列。読み取り専用) */
    { after: 'fixed_price', field: { key: 'master_error_count', label: 'マスタ不備件数', kind: 'number', required: false, readOnly: true }, sample: () => '0' },
  ],
  unrecdetail: [
    { after: 'unit_price', field: { key: 'price_adjustment', label: '価格調整', kind: 'number', required: false }, sample: empty },
    { after: 'price_adjustment', field: { key: 'fixed_price', label: '固定価格', kind: 'number', required: false }, sample: empty },
    { after: 'deadline', field: { key: 'material_supply', label: '材料支給', kind: 'flag', required: false }, sample: empty },
    { after: 'material_supply', field: { key: 'paid_supply', label: '有償支給', kind: 'flag', required: false }, sample: empty },
  ],
  /* v_purchase_amount の集計列。読み取り専用(編集画面は表示だけ、台帳は読み取り専用の列) */
  purchase: [
    { after: 'deadline', field: { key: 'purchase_amount', label: '発注金額', kind: 'number', required: false, readOnly: true }, sample: (i, e, all) => String(amountOf(all, e.rows[i].legacy, false)) },
    { after: 'purchase_amount', field: { key: 'received_amount', label: '入荷金額', kind: 'number', required: false, readOnly: true }, sample: (i, e, all) => String(amountOf(all, e.rows[i].legacy, true)) },
  ],
};
/** 発注の金額: 明細の数量 × 単価の合計。received が true のときは、入荷した数量で数える。 */
function amountOf(all, purchaseLegacy, received) {
  const details = (all.get('purdetail')?.rows ?? []).filter((r) => r.parent === purchaseLegacy);
  const recs = all.get('purchaserec')?.rows ?? [];
  let sum = 0;
  for (const d of details) {
    const cost = Number(d.values.unit_price || 0);
    if (!received) { sum += Number(d.values.quantity || 0) * cost; continue; }
    for (const r of recs) if (r.values.trans_purchase_detail_id === d.legacy) sum += Number(r.values.quantity || 0) * cost;
  }
  return sum;
}
/* 画面案の「表の中の表」(タブの nest): 子の実体に、親・絞り込み・メニューのグループを持たせる */
for (const g of DOM.groups) {
  for (const sid of g.screens) {
    const screen = DOM.screens.find((x) => x.id === sid);
    for (const [, , rootKey, opts] of screen.tabs) {
      if (!opts?.nest) continue;
      const child = htmlEntities.find((x) => x.key === opts.nest);
      if (!child) continue;
      const renames = FIELD_RENAMES[rootKey] ?? {};
      const where = Object.fromEntries(Object.entries(opts.where ?? {}).map(([k, v]) => [renames[k] ?? k, v]));
      child.nest = { parent: rootKey, where, menuGroup: GROUP_PROJECT[g.id] };
    }
  }
}
const additionsByKey = new Map(htmlEntities.map((x) => [x.key, x]));
// 定義の順(明細 → 発注)に足す: 発注の金額は、明細の単価から作る
for (const [key, additions] of Object.entries(FIELD_ADDITIONS)) {
  const e = additionsByKey.get(key);
  if (!e) continue;
  for (const a of additions) {
    if (e.fields.some((x) => x.key === a.field.key)) continue; // 画面案に追加済み
    const at = e.fields.findIndex((x) => x.key === a.after);
    e.fields.splice(at < 0 ? e.fields.length : at + 1, 0, a.field);
    e.rows.forEach((r, i) => {
      r.values[a.field.key] = a.sample(i, e, additionsByKey);
    });
  }
}

/* 画面のグループ → プロジェクトへ(タブの根の実体と、その所有する子孫) */
const byKey = new Map(htmlEntities.map((e) => [e.key, e]));
for (const g of DOM.groups) {
  const project = GROUP_PROJECT[g.id];
  const seen = new Set();
  const visit = (key) => {
    const e = byKey.get(key);
    if (!e || seen.has(key)) return;
    seen.add(key);
    if (!e.project) e.project = project;
    for (const c of htmlEntities) if (c.owner === key || c.hintParent === key) visit(c.key);
  };
  for (const sid of g.screens) {
    const screen = DOM.screens.find((s) => s.id === sid);
    for (const [, , rootKey] of screen.tabs) visit(rootKey);
  }
}
/* 利害関係者: 顧客・外部供給者の行を1つの実体にまとめる */
const stakeholder = (() => {
  const cust = DOM.entities.find((e) => e.key === 'customer');
  const supp = DOM.entities.find((e) => e.key === 'supplier');
  const base = fromHtml({ ...supp, key: 'stakeholder', label: '利害関係者', rows: [] });
  const flags = ['is_customer', 'is_supplier', 'is_logistics'];
  const rows = [];
  const aliases = { customer: new Map(), supplier: new Map() };
  const add = (src, alias, set) => {
    (src.rows ?? []).forEach((arr, i) => {
      const values = {};
      base.fields.forEach((fl, j) => {
        values[fl.key] = arr[j] === undefined || arr[j] === null ? '' : String(arr[j]);
      });
      // 画面案のサンプルのフラグは一律なので、役割が合うように置き直す(架空の値)
      for (const fl of flags) values[fl] = 'いいえ';
      for (const a of set) values[a] = 'はい';
      rows.push({ legacy: `stakeholder${rows.length + 1}`, parent: null, values });
      aliases[alias].set(`${alias}${i + 1}`, rows[rows.length - 1].legacy);
    });
  };
  add(cust, 'customer', ['is_customer']);
  add(supp, 'supplier', ['is_supplier']);
  const contact = fromHtml({ ...DOM.entities.find((e) => e.key === 'custcontact'), key: 'contact', label: '担当者', parent: { ent: 'stakeholder', key: 'stakeholder' }, rows: [] });
  return { entities: [{ ...base, rows, project: 'shared_master' }, { ...contact, project: 'shared_master' }], aliases };
})();

const unassigned = htmlEntities.filter((e) => !e.project);
if (unassigned.length) console.warn('プロジェクト未割当:', unassigned.map((e) => e.key).join(' '));

const hand = require('./handwritten.js')(D, X);
const entities = [...htmlEntities.filter((e) => e.project), ...hand, ...stakeholder.entities];

/* ------------------------------------------------------------------ ID */
function fnv(s) {
  let h = 0x811c9dc5;
  for (const ch of s) {
    h ^= ch.codePointAt(0);
    h = Math.imul(h, 0x01000193) >>> 0;
  }
  return h >>> 0;
}
function hex(n, w) {
  return n.toString(16).padStart(w, '0');
}
const idMaps = new Map(); // 実体キー → (legacy → UUID)
for (const e of entities) {
  const m = new Map();
  e.rows.forEach((r, i) => m.set(r.legacy, `${hex(fnv(e.key), 8)}-0000-4000-8000-${hex(i + 1, 12)}`));
  idMaps.set(e.key, m);
}
// 別名(customer・supplier)は、利害関係者の行の id を引く
for (const [alias, legacyMap] of Object.entries(stakeholder.aliases)) {
  const own = idMaps.get('stakeholder');
  idMaps.set(alias, new Map([...legacyMap].map(([l, s]) => [l, own.get(s)])));
}
const warnings = [];
for (const [k, groups] of Object.entries(UNIQUE)) {
  const e = entities.find((x) => x.key === k);
  if (!e) { warnings.push(`UNIQUE: 実体 ${k} が無い`); continue; }
  for (const g of groups) for (const f of g) if (!e.fields.some((x) => x.key === f)) warnings.push(`UNIQUE: ${k}.${f} が無い`);
}
for (const [k, list] of Object.entries(REVERSE)) {
  for (const r of list) {
    const t = entities.find((x) => x.key === r.entity);
    if (!t || !t.fields.some((x) => x.key === r.field && (x.ref === k || (k === 'stakeholder' && STAKEHOLDER_ALIASES[x.ref])))) warnings.push(`REVERSE: ${k} ← ${r.entity}.${r.field} が合わない`);
  }
}
function resolveRef(refKey, legacy, where) {
  if (!legacy) return '';
  const own = idMaps.get(refKey);
  if (own?.has(legacy)) return own.get(legacy);
  const b = BESPOKE[refKey];
  if (b) {
    const n = Number(String(legacy).replace(/^\D+/, ''));
    if (n >= 1 && n <= b.max) return b.ids(n);
    warnings.push(`${where}: ${refKey} の ${legacy} は専用画面のサンプルに無い`);
    return '';
  }
  warnings.push(`${where}: ${refKey} の ${legacy} が見つからない`);
  return '';
}
for (const e of entities) {
  const own = idMaps.get(e.key);
  for (const r of e.rows) {
    r.id = own.get(r.legacy);
    const parentKey = e.isTree ? e.key : e.owner;
    r.parentId = r.parent ? resolveRef(parentKey, r.parent, `${e.key}.parent`) : '';
    for (const fl of e.fields) {
      if (fl.kind === 'reference') {
        r.values[fl.key] = resolveRef(fl.ref, r.values[fl.key], `${e.key}.${fl.key}`);
        if (fl.required && !r.values[fl.key]) {
          // 画面案のサンプルが空の必須項目は、参照先の先頭の行で補う(サンプルは架空の値)
          const target = idMaps.get(fl.ref);
          const first = target ? [...target.values()][0] : BESPOKE[fl.ref]?.ids(1);
          if (first) {
            r.values[fl.key] = first;
            warnings.push(`補完: ${e.key}.${fl.key} の空を ${fl.ref} の先頭で補った`);
          }
        }
      }
    }
  }
}

/* ------------------------------------------------------------------ 出力 */
const dq = (s) => `'${String(s).replace(/\\/g, '\\\\').replace(/'/g, "\\'").replace(/\$/g, '\\$').replace(/\r?\n/g, '\\n')}'`;
const camel = (pkg) => pkg.replace(/_([a-z])/g, (_, c) => c.toUpperCase());
const write = (file, text) => {
  fs.mkdirSync(path.dirname(file), { recursive: true });
  fs.writeFileSync(file, text, 'utf8');
};

function defsDart(pkg, list) {
  const body = list
    .map((e) => {
      const fields = e.fields
        .map((fl) => {
          const a = [`key: ${dq(fl.key)}`];
          if (fl.kind !== 'text') a.push(`kind: FieldKind.${fl.kind}`);
          if (!fl.required) a.push('required: false');
          if (fl.options) a.push(`options: [${fl.options.map(dq).join(', ')}]`);
          if (fl.ref) a.push(`reference: ${dq(fl.ref)}`);
          if (fl.picker) a.push('picker: true');
          if (fl.readOnly) a.push('readOnly: true');
          if (fl.toggle) a.push('toggle: true');
          if (fl.disables) a.push(`disables: ${dq(fl.disables)}`);
          if (fl.ge != null) a.push(`ge: ${fl.ge}`);
          if (fl.gt != null) a.push(`gt: ${fl.gt}`);
          if (fl.needUnless) a.push(`needUnless: ${dq(fl.needUnless)}`);
          if (fl.lockedBy) a.push(`lockedBy: ${dq(fl.lockedBy)}`);
          return `        FieldDefinition(${a.join(', ')}),`;
        })
        .join('\n');
      const a = [`key: ${dq(e.key)}`];
      if (e.owner) a.push(`owner: ${dq(e.owner)}`);
      if (e.isTree) a.push('isTree: true');
      const uniq = UNIQUE[e.key] ?? (e.fields.some((x) => x.uniq) ? e.fields.filter((x) => x.uniq).map((x) => [x.key]) : null);
      if (e.nest) {
        const where = Object.entries(e.nest.where).map(([k, v]) => `${dq(k)}: ${dq(v)}`).join(', ');
        a.push(`nest: NestedList(parent: ${dq(e.nest.parent)}, where: {${where}}${e.nest.menuGroup ? `, menuGroup: ${dq(e.nest.menuGroup)}` : ''})`);
      }
      if (e.viewOnly) a.push('viewOnly: true');
      if (uniq) a.push(`uniqueKeys: [${uniq.map((k) => `[${k.map(dq).join(', ')}]`).join(', ')}]`);
      const rev = REVERSE[e.key];
      if (rev) a.push(`reverseLists: [${rev.map((r) => `ReverseList(entity: ${dq(r.entity)}, field: ${dq(r.field)})`).join(', ')}]`);
      return `    EntityDefinition(\n      ${a.join(', ')},\n      fields: [\n${fields}\n      ],\n    ),`;
    })
    .join('\n');
  return `// 生成物(tools/entity_gen/gen.js)。直接編集しない。\nimport 'package:entity_screens/entity_screens.dart';\n\n/// ${PROJECTS[pkg].title}の実体の定義。キーは graphql_provider_lib のビュー(DB の列)に合わせる。\nconst List<EntityDefinition> ${camel(pkg)}Definitions = [\n${body}\n];\n`;
}

function seedsDart(pkg, list) {
  const body = list
    .map((e) => {
      const rows = e.rows
        .map((r) => {
          const vals = Object.entries(r.values).map(([k, v]) => `${dq(k)}: ${dq(v)}`).join(', ');
          const parent = r.parentId ? `, parentId: ${dq(r.parentId)}` : '';
          return `      EntityRecord(id: ${dq(r.id)}, values: {${vals}}${parent}),`;
        })
        .join('\n');
      return `    ${dq(e.key)}: [\n${rows}\n    ],`;
    })
    .join('\n');
  return `// 生成物(tools/entity_gen/gen.js)。直接編集しない。\nimport 'package:entity_screens/entity_screens.dart';\n\n/// ${PROJECTS[pkg].title}のサンプルデータ(架空の値)。参照は参照先の id(UUID の文字列)。\nconst Map<String, List<EntityRecord>> ${camel(pkg)}Seeds = {\n${body}\n};\n`;
}

function labelsDart(pkg) {
  const c = PROJECTS[pkg].cls;
  return `// 生成物(tools/entity_gen/gen.js)。直接編集しない。\nimport 'package:entity_screens/entity_screens.dart';\n\nimport '../i18n/strings_provider.dart';\n\n/// ${PROJECTS[pkg].title}の実体と項目の表示名。言語ファイル(\`lib/src/i18n\`)の値を返す。\nclass ${c}Labels implements EntityLabels {\n  const ${c}Labels(this._t);\n\n  final ${c}Strings _t;\n\n  @override\n  String entity(String entityKey) =>\n      (_t['entity.\$entityKey.title'] as String?) ?? entityKey;\n\n  @override\n  String field(String entityKey, String fieldKey) =>\n      (_t['entity.\$entityKey.fields.f_\$fieldKey'] as String?) ?? fieldKey;\n\n  @override\n  String reverse(String entityKey, String reverseEntityKey) =>\n      (_t['entity.\$entityKey.reverse.\$reverseEntityKey'] as String?) ??\n      reverseEntityKey;\n\n  /// トップメニューのグループの表示名。\n  String get menuGroup => (_t['menu.group'] as String?) ?? '';\n\n  /// 別のグループ(表の中の表を出すグループ)の表示名。\n  String menuGroupOf(String groupId) =>\n      (_t['menu.group_$groupId'] as String?) ?? groupId;\n}\n`;
}

const YAML_MARKER = '# --- 生成(tools/entity_gen/gen.js)。この行より下は直接編集しない ---';
function yamlJa(pkg, list, file) {
  const y = (s) => JSON.stringify(String(s));
  let hand = '';
  if (fs.existsSync(file)) {
    const old = fs.readFileSync(file, 'utf8');
    const i = old.indexOf(YAML_MARKER);
    hand = i >= 0 ? old.slice(0, i) : old;
  }
  const lines = [YAML_MARKER, `# ${PROJECTS[pkg].title}の実体と項目の表示名(日本語。基準言語)。`, '# 項目名は DB のコメント(schema.graphql)に合わせる。コメントが無いものは仮(doc/log に記録)。', ...(pkg === 'shared_master' ? [] : ['menu:', `  group: ${y(PROJECTS[pkg].title)}`]), 'entity:'];
  const externalGroups = [...new Set(list.map((e) => e.nest?.menuGroup).filter((g) => g && g !== pkg))];
  if (externalGroups.length && pkg !== 'shared_master') {
    const at = lines.indexOf('entity:');
    lines.splice(at, 0, ...externalGroups.map((g) => `  group_${g}: ${y(PROJECTS[g].title)}`));
  }
  for (const e of list) {
    lines.push(`  ${e.key}:`, `    title: ${y(e.label)}`, '    fields:');
    for (const fl of e.fields) {
      lines.push(`      f_${fl.key}: ${y(fl.label)}`);
      // 別の真偽(トグル)がオンで無効になる項目(例: 言い値のときの単価)の表示
      const flag = e.fields.find((x) => x.disables === fl.key);
      if (flag) lines.push(`      f_${fl.key}__off: ${y(flag.label.replace(/区分$/, '') + '（都度確認）')}`);
    }
    if (REVERSE[e.key]) {
      lines.push('    reverse:');
      for (const r of REVERSE[e.key]) lines.push(`      ${r.entity}: ${y(r.label)}`);
    }
  }
  return (hand ? hand.replace(/\s*$/, '\n') : '') + lines.join('\n') + '\n';
}

function slangYaml(pkg) {
  const c = PROJECTS[pkg].cls;
  return `# 多言語(slang)。言語ファイルは Yaml。生成: dart run slang\nbase_locale: ja\nfallback_strategy: base_locale\ninput_directory: lib/src/i18n\ninput_file_pattern: .i18n.yaml\noutput_directory: lib/src/i18n\noutput_file_name: strings.g.dart\nclass_name: ${c}Strings\nenum_name: ${c}Locale\n# 言語の選択は Riverpod(feature_shared の localeProvider)で行う。slang の Flutter 連携とグローバル変数は使わない。\nflutter_integration: false\nlocale_handling: false\n`;
}

function stringsProviderDart(pkg) {
  const c = PROJECTS[pkg].cls;
  const p = camel(pkg);
  return `import 'package:feature_shared/feature_shared.dart';\nimport 'package:flutter_riverpod/flutter_riverpod.dart';\n\nimport 'strings.g.dart';\n\nexport 'strings.g.dart' show ${c}Strings;\n\n/// ${PROJECTS[pkg].title}の文字列。言語は feature_shared の [localeProvider] に従い、\n/// 対応していない言語のときは基準言語(日本語)にする。\n///\n/// 基準言語以外は遅延読み込み(slang の生成物)のため、読み込みが終わるまでは\n/// 基準言語の文字列を返し、終わった時点で差し替える。\nfinal ${p}StringsProvider =\n    NotifierProvider<${c}StringsNotifier, ${c}Strings>(${c}StringsNotifier.new);\n\nclass ${c}StringsNotifier extends Notifier<${c}Strings> {\n  @override\n  ${c}Strings build() {\n    final languageCode = ref.watch(localeProvider).languageCode;\n    final locale =\n        ${c}Locale.values\n            .where((l) => l.languageCode == languageCode)\n            .firstOrNull ??\n        ${c}Locale.ja;\n    if (locale != ${c}Locale.ja) {\n      locale.build().then((strings) {\n        if (ref.mounted) state = strings;\n      });\n    }\n    return ${c}Locale.ja.buildSync();\n  }\n}\n`;
}

function moduleDart(pkg, entityOnly) {
  const externalGroups = [...new Set(entities.filter((e) => e.project === pkg).map((e) => e.nest?.menuGroup).filter((g) => g && g !== pkg))];
  const externalBlock = externalGroups.length
    ? '\n  @override\n  String menuGroupLabelFor(WidgetRef ref, String groupId) => switch (groupId) {\n' +
      externalGroups.map((g) => '    ' + "'" + g + "'" + ' => ' + PROJECTS[pkg].cls + 'Labels(ref.watch(' + camel(pkg) + 'StringsProvider)).menuGroupOf(groupId),\n').join('') +
      '    _ => groupId,\n  };\n'
    : '';
  const c = PROJECTS[pkg].cls;
  const p = camel(pkg);
  const name = entityOnly ? `${c}EntityModule` : `${c}Module`;
  const file = entityOnly ? `${pkg}_entity_module.dart` : `${pkg}_module.dart`;
  return {
    file,
    text: `import 'package:entity_screens/entity_screens.dart';\nimport 'package:feature_shared/feature_shared.dart';\nimport 'package:flutter_riverpod/flutter_riverpod.dart';\n\nimport 'entities/${pkg}_definitions.dart';\nimport 'entities/${pkg}_labels.dart';\nimport 'entities/${pkg}_seeds.dart';\nimport 'i18n/strings_provider.dart';\n\n/// ${PROJECTS[pkg].title}${entityOnly ? '(実体の画面)' : ''}をアプリへ組み込むための口。\n///\n/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。\n/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。\nclass ${name} extends EntityFeatureModule {\n  const ${name}();\n\n  @override\n  List<EntityDefinition> get definitions => ${p}Definitions;\n\n  @override\n  Map<String, List<EntityRecord>> get seeds => ${p}Seeds;\n\n  @override\n  EntityLabels labelsOf(WidgetRef ref) =>\n      ${c}Labels(ref.watch(${p}StringsProvider));\n${pkg === 'shared_master' ? '' : `\n  @override\n  String get menuGroupId => '${pkg}';\n\n  @override\n  String menuGroupLabel(WidgetRef ref) =>\n      ${c}Labels(ref.watch(${p}StringsProvider)).menuGroup;\n`}${externalBlock}}\n`,
  };
}

function testDart(pkg, list, entityOnly) {
  const c = PROJECTS[pkg].cls;
  const p = camel(pkg);
  const name = entityOnly ? `${c}EntityModule` : `${c}Module`;
  const modImport = entityOnly ? `package:${pkg}/src/${pkg}_entity_module.dart` : `package:${pkg}/${pkg}.dart`;
  const roots = list.filter((e) => !e.owner || e.nest).map((e) => e.key);
  const ownTargets = new Set(list.map((e) => e.key));
  return `import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_test/flutter_test.dart';
import '${modImport}';
import 'package:${pkg}/src/entities/${pkg}_definitions.dart';
import 'package:${pkg}/src/entities/${pkg}_seeds.dart';

void main() {
  const module = ${name}();

  test('台帳を持つ実体のルートがある(子の台帳は編集だけ)', () {
    expect(module.entityKeys, ${JSON.stringify(roots).replace(/"/g, "'")});
    expect(module.routes, isNotEmpty);
  });

  test('すべての実体に、台帳・編集のパスが対応する', () {
    for (final d in ${p}Definitions) {
      expect(
        module.locationOf(EntityEditDestination(d.key)),
        isNotNull,
        reason: d.key,
      );
      if (d.owner == null) {
        expect(module.locationOf(EntityListDestination(d.key)), isNotNull);
      }
    }
    expect(module.locationOf(const EntityListDestination('unknown')), isNull);
  });

  test('サンプルが定義に合っている(必須・形式・選択肢・親子)', () async {
    for (final d in ${p}Definitions) {
      final repo = InMemoryEntityRepository(d);
      for (final r in ${p}Seeds[d.key] ?? const <EntityRecord>[]) {
        // 検証だけを確かめる(参照先の存在は下のテストで確かめる)
        await repo.save(EntityRecord(id: r.id, values: r.values, parentId: r.parentId));
      }
    }
  });

  test('同じプロジェクト内の参照と親子が、サンプルの id に解決する', () {
    final ids = {
      for (final d in ${p}Definitions)
        d.key: {for (final r in ${p}Seeds[d.key] ?? const <EntityRecord>[]) r.id},
    };
    for (final d in ${p}Definitions) {
      for (final r in ${p}Seeds[d.key] ?? const <EntityRecord>[]) {
        final parentEntity = d.isTree ? d.key : d.owner;
        if (r.parentId != null && ids.containsKey(parentEntity)) {
          expect(ids[parentEntity], contains(r.parentId), reason: '\${d.key} \${r.id} の親');
        }
        for (final f in d.fields) {
          final target = f.reference;
          final value = r.valueOf(f.key);
          if (target != null && value.isNotEmpty && ids.containsKey(target)) {
            expect(ids[target], contains(value), reason: '\${d.key}.\${f.key}');
          }
        }
      }
    }
  });
}
`;
}

/* ------------------------------------------------------------------ プロジェクトごとに出力 */
const dependsOn = {};
const rootsOf = {};
for (const pkg of Object.keys(PROJECTS)) {
  const list = entities.filter((e) => e.project === pkg);
  if (!list.length) continue;
  const dir = path.join(features, pkg);
  const entityOnly = pkg === 'shared_master' || pkg === 'production_plan'; // 手書きの画面と束ねる
  write(path.join(dir, 'lib', 'src', 'entities', `${pkg}_definitions.dart`), defsDart(pkg, list));
  write(path.join(dir, 'lib', 'src', 'entities', `${pkg}_seeds.dart`), seedsDart(pkg, list));
  write(path.join(dir, 'lib', 'src', 'entities', `${pkg}_labels.dart`), labelsDart(pkg));
  const jaFile = path.join(dir, 'lib', 'src', 'i18n', 'ja.i18n.yaml');
  write(jaFile, yamlJa(pkg, list, jaFile));
  write(path.join(dir, 'slang.yaml'), slangYaml(pkg));
  write(path.join(dir, 'lib', 'src', 'i18n', 'strings_provider.dart'), stringsProviderDart(pkg));
  const m = moduleDart(pkg, entityOnly);
  write(path.join(dir, 'lib', 'src', m.file), m.text);
  write(path.join(dir, 'test', `${pkg}_entities_test.dart`), testDart(pkg, list, entityOnly));
  rootsOf[pkg] = list.filter((e) => !e.owner || e.nest).map((e) => ({ key: e.key, label: e.label, first: firstText(e) }));
  const deps = new Set();
  for (const e of list) {
    for (const fl of e.fields) {
      if (fl.kind !== 'reference') continue;
      const target = entities.find((x) => x.key === fl.ref);
      const owner = target ? target.project : (BESPOKE[fl.ref]?.project ?? (STAKEHOLDER_ALIASES[fl.ref] ? 'shared_master' : undefined));
      if (owner && owner !== pkg) deps.add(owner);
    }
  }
  dependsOn[pkg] = [...deps].sort();
}
function firstText(e) {
  const f0 = e.fields.find((fl) => fl.kind === 'text' || fl.kind === 'number');
  const r0 = e.rows.find((r) => !r.parent || e.isTree);
  return f0 && r0 ? r0.values[f0.key] : '';
}

write(path.join(__dirname, 'out', 'summary.json'), JSON.stringify({ projects: rootsOf, dependsOn, warnings }, null, 2));
console.log('entities:', entities.length, 'projects:', Object.keys(rootsOf).length);
if (warnings.length) {
  console.log('warnings:', warnings.length);
  for (const w of warnings.slice(0, 40)) console.log('  ' + w);
}


require('./examples.js')({ PROJECTS, rootsOf, dependsOn, features, write, dq });


require('./claude.js')({ PROJECTS, entities, features });
const labelStats = require('./labels_report.js')({
  entities,
  PROJECTS,
  schemaKeys: new Set(Object.keys(window.OD_SCHEMA ?? {})),
  handKeys: new Set(hand.map((e) => e.key)),
  od,
  out: path.join(__dirname, 'out'),
});
console.log('labels:', JSON.stringify(labelStats));

if (process.argv.includes('--no-slang')) process.exit(0);
for (const pkg of Object.keys(rootsOf)) {
  const dir = path.join(features, pkg);
  // 古い生成物を消してから生成する
  for (const f of fs.readdirSync(path.join(dir, 'lib', 'src', 'i18n'))) {
    if (/^strings.*\.g\.dart$/.test(f)) fs.unlinkSync(path.join(dir, 'lib', 'src', 'i18n', f));
  }
  const r = cp.spawnSync('dart', ['run', 'slang'], { cwd: dir, shell: true, encoding: 'utf8' });
  console.log(pkg, r.status === 0 ? 'slang ok' : 'slang FAILED\n' + r.stdout + r.stderr);
}
