/* ページのアクセスパス(パスと名前 ja/en)の CSV を生成・更新する。
   出力: apps/pms_app/doc/contents/access_paths.csv
   用途: アクセス管理(access_control)の「アクセスパス」を登録する元になる。アプリのページを追加・変更するたびに
         このスクリプトを実行して CSV を更新し、差分をレビューする(apps/pms_app/CLAUDE.md)。
   使い方: node tools/entity_gen/access_paths.js   (リポジトリのルートで)
   入力: packages/features/各機能/lib/src/entities(実体の定義)、画面コード packages/features/doc/page_code_list.yml、
         手書きのページ(下の CUSTOM)、英語名(下の EN)。
   列: symbol(画面コード。無ければ空),usecase_path,name_ja,name_en,feature,public
       public=true はログイン前から使えるページ(アクセス権の対象にしない)。 */
'use strict';

const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..', '..');
const features = path.join(root, 'packages', 'features');
const outFile = path.join(root, 'apps', 'pms_app', 'doc', 'contents', 'access_paths.csv');

/** 台帳(一覧)のパス。feature_shared の EntityFeatureModule.listPath と同じ。 */
const listPath = (key) => `/e/${key}`;

/** 手書きのページ。[feature, key, usecase_path, 日本語名, 英語名, public] */
const CUSTOM = [
  ['app_core', 'boot', '/boot', 'ブート', 'Boot', true],
  ['app_core', 'dashboard', '/dashboard', 'ダッシュボード', 'Dashboard', false],
  ['app_core', 'settings', '/settings', '設定', 'Settings', false],
  ['app_core', 'logout', '/logout', 'ログアウト', 'Log out', true],
  ['app_core', 'error', '/error', 'エラー', 'Error', true],
  ['maintenance', 'maintenance', '/maintenance', 'メンテナンス中', 'Under maintenance', true],
  ['barcode_entry', 'top', '/barcode', 'リーディングトップ', 'Barcode entry top', false],
  ['production_plan', 'mrp', '/mrp', '資材所要計算(MRP)', 'Material requirements planning (MRP)', false],
  ['shared_master', 'shipkind', '/shipping-kinds', '配送区分', 'Shipping kind', false],
  ['auth_files', 'login', '/auth/login', 'ログイン', 'Log in', true],
  ['auth_files', 'register', '/auth/register', '新規登録', 'Sign up', true],
  ['auth_files', 'forgot', '/auth/forgot', 'パスワードを忘れた', 'Forgot password', true],
  ['auth_files', 'code', '/auth/forgot/code', '認証コードの入力', 'Enter verification code', true],
  ['auth_files', 'newpassword', '/auth/forgot/reset', '新しいパスワード', 'New password', true],
  ['auth_files', 'files', '/auth/files', '共有ファイル', 'Shared files', false],
  ['auth_files', 'adminsignups', '/auth/admin/signups', '新規登録の管理', 'Manage sign-ups', false],
  ['auth_files', 'adminresets', '/auth/admin/resets', '再設定依頼の管理', 'Manage reset requests', false],
  // 旧来の pms_app のページ(apps/pms_app/lib/contents)
  ['pms_app', 'login', '/login', 'ログイン', 'Log in', true],
  ['pms_app', 'material_transfer', '/actual/material_transfer/register', '資材移動の登録', 'Register material transfer', false],
  ['pms_app', 'shipping', '/actual/shipping', '出荷の登録', 'Register shipping', false],
  ['pms_app', 'stock_state', '/actual/stock_state', '在庫状況', 'Stock status', false],
  ['pms_app', 'shipping_order', '/shipping/order', '出荷オーダー一覧', 'Shipping orders', false],
];

/** 実体(台帳)の英語名。キーは実体のキー。台帳を追加したら足す(無ければこのスクリプトが失敗する)。 */
const EN = {
  accesspath: 'Access path',
  deptaccesspath: 'Department access path',
  staffaccesspermission: 'Staff access permission',
  effectiveaccesspath: 'Staff effective access path',
  itemkind: 'Item kind',
  hscode: 'HS code',
  item: 'Item',
  itemsizekind: 'Item size kind',
  itemonhand: 'Item on hand',
  company: 'Company',
  site: 'Site',
  deptkind: 'Department kind',
  department: 'Department',
  staff: 'Staff',
  approvalpattern: 'Approval pattern',
  resplan: 'Resource plan',
  prodrez: 'Production reservation',
  purrez: 'Purchase reservation',
  mrppending: 'Suggestions to decide',
  mrppurchase: 'Planned purchases',
  mrpissue: 'Master data issues',
  mrpcoverage: 'Resource plan coverage',
  taskgroup: 'Task group',
  task: 'Task',
  operation: 'Operation',
  unrec: 'Unrecorded',
  purchase: 'Purchase order',
  purchaserec: 'Receiving record',
  complaint: 'Complaint',
  corder: 'Order complaint',
  cproc: 'Process complaint',
  cequip: 'Equipment complaint',
  orderrisk: 'Order risk',
  orderdetailrisk: 'Order line risk',
  taskrisk: 'Task risk',
  auditstd: 'Audit standard',
  auditteam: 'Audit team',
  audit: 'Audit',
  disposal: 'Disposal action',
  recur: 'Recurrence prevention action',
  obsdisp: 'Disposal monitoring',
  obsprev: 'Prevention monitoring',
  risk: 'Risk',
  auditstdcheck: 'Audit standard check item',
  doctier: 'Document tier',
  doc: 'Document',
  doccontent: 'Document content',
  report: 'Report',
  capability: 'Capability',
  license: 'License',
  location: 'Location',
  equipmentcategory: 'Equipment category',
  equipment: 'Equipment',
  inspectionkind: 'Inspection kind',
  inspectionitem: 'Inspection item',
  inspectionoperation: 'Equipment inspection operation',
  inspectionschedule: 'Inspection schedule',
  workcalendar: 'Work calendar',
  order: 'Sales order',
  stakeholder: 'Stakeholder',
  unit: 'Unit',
  container: 'Container',
  invapply: 'Inventory allocation',
  invreq: 'Inventory allocation request',
  certificate: 'Certificate',
  workrec: 'Work record',
  mrpvisiter: 'Visiter item',
};

const read = (f) => fs.readFileSync(f, 'utf8').replace(/\r\n/g, '\n');

/** 画面コード(page_code_list.yml)。{feature: {screen: page}} */
function pageCodes() {
  const map = {};
  let feature = null;
  let screen = null;
  for (const line of read(path.join(features, 'doc', 'page_code_list.yml')).split('\n')) {
    let m;
    if ((m = /^ {2}- feature: (\w+)/.exec(line))) { feature = m[1]; map[feature] = {}; }
    else if (feature && (m = /^ {6}- screen: (\w+)/.exec(line))) screen = m[1];
    else if (feature && screen && (m = /^ {8}page: (\w+)/.exec(line))) map[feature][screen] = m[1];
  }
  return map;
}

/** 台帳(所有されない実体)のキーと日本語名。 */
function ledgers() {
  const out = [];
  for (const project of fs.readdirSync(features).sort()) {
    const dir = path.join(features, project, 'lib', 'src', 'entities');
    if (!fs.existsSync(dir)) continue;
    const file = fs.readdirSync(dir).find((f) => f.endsWith('_definitions.dart'));
    if (!file) continue;
    const ja = read(path.join(features, project, 'lib', 'src', 'i18n', 'ja.i18n.yaml'));
    for (const block of read(path.join(dir, file)).split(/EntityDefinition\(\s*/).slice(1)) {
      const key = /key: '(\w+)'/.exec(block)[1];
      if (/owner: '/.test(block)) continue; // 子の台帳は親の編集画面の中
      const m = new RegExp(`^ {2}${key}:\\n {4}title: "([^"]*)"`, 'm').exec(ja);
      out.push({ feature: project, key, ja: m ? m[1] : key });
    }
  }
  return out;
}

const codes = pageCodes();
const rows = [];
const problems = [];
for (const c of CUSTOM) {
  const [feature, key, p, ja, en, pub] = c;
  rows.push({ symbol: codes[feature]?.[key] ?? '', path: p, ja, en, feature, pub });
}
for (const l of ledgers()) {
  if (!EN[l.key]) { problems.push(`英語名がありません: ${l.key} (${l.ja})`); continue; }
  rows.push({ symbol: codes[l.feature]?.[l.key] ?? '', path: listPath(l.key), ja: l.ja, en: EN[l.key], feature: l.feature, pub: false });
}
const seen = new Set();
for (const r of rows) {
  if (seen.has(r.path)) problems.push(`パスが重複: ${r.path}`);
  seen.add(r.path);
  if (r.symbol.length > 16) problems.push(`symbol が 16 文字を超える: ${r.symbol}`);
}

const q = (s) => (/[",\n]/.test(s) ? `"${s.replace(/"/g, '""')}"` : s);
const csv = ['symbol,usecase_path,name_ja,name_en,feature,public',
  ...rows.map((r) => [r.symbol, r.path, r.ja, r.en, r.feature, r.pub ? 'true' : 'false'].map(q).join(','))].join('\n') + '\n';
fs.mkdirSync(path.dirname(outFile), { recursive: true });
fs.writeFileSync(outFile, '﻿' + csv, 'utf8'); // Excel で開けるよう BOM 付き
console.log(`${rows.length} ページ → ${path.relative(root, outFile)}`);
if (problems.length) {
  console.error(problems.join('\n'));
  process.exitCode = 1;
}
