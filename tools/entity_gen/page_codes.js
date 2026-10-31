/**
 * 機能コード・画面コードの一覧 `packages/features/doc/page_code_list.yml` を生成・更新する。
 *
 * - コードは大文字英数(A-Z, 0-9)の 1 文字。機能コード 36 種 + 画面コード 36 種(機能ごと)。
 *   機能コード + 画面コードの 2 文字が、画面のコード(例: 品目台帳 `II`)。
 * - 既にあるコードは変えない(バーコードに印字した後で変わらないように)。新しい画面だけ、
 *   名前から連想できる文字を優先して割り当てる(OVERRIDES で明示も可能)。
 * - 画面の追加・削除のたびに、このスクリプトを実行し、一覧をレビューする(packages/features/CLAUDE.md)。
 *
 * 実行: リポジトリのルートで `node tools/entity_gen/page_codes.js`
 */
const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..', '..');
const featuresDir = path.join(root, 'packages', 'features');
const outFile = path.join(featuresDir, 'doc', 'page_code_list.yml');

const ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

/** 機能(プロジェクト)の希望するコードと表示名。連想できる文字を選ぶ。 */
const FEATURES = {
  app_core: { code: 'A', label: 'アプリの基本(ブート・ダッシュボード・設定ほか)' },
  organization: { code: 'O', label: '会社情報' },
  resource: { code: 'R', label: '資源' },
  system: { code: 'Y', label: 'システム' },
  item: { code: 'I', label: '品目' },
  production_process: { code: 'T', label: '工程' },
  sales: { code: 'S', label: '営業' },
  shared_master: { code: 'H', label: '共有マスタ' },
  purchasing: { code: 'P', label: '購買' },
  production_plan: { code: 'L', label: '生産計画' },
  work_record: { code: 'W', label: '作業実績' },
  quality_common: { code: 'C', label: '品質共通' },
  quality_document: { code: 'G', label: '品質管理文書' },
  quality: { code: 'Q', label: '品質管理' },
  maintenance: { code: 'M', label: 'メンテナンス' },
  barcode_entry: { code: 'E', label: 'バーコード実績登録' },
  dashboard_container: { code: 'B', label: 'ダッシュボードのコンテナ' },
};

/** 実体の台帳・編集ではない画面(手書き)。 */
const EXTRA_SCREENS = {
  app_core: [
    ['boot', 'ブート', 'B'],
    ['dashboard', 'ダッシュボード', 'D'],
    ['settings', '設定', 'S'],
    ['logout', 'ログアウト', 'O'],
    ['error', 'エラー', 'E'],
    ['login', 'ログイン', 'L'],
  ],
  maintenance: [['maintenance', 'メンテナンス中', 'M']],
  barcode_entry: [['top', 'リーディングトップ', 'T']],
  production_plan: [['mrp', '資材所要計算(MRP)', 'M']],
  shared_master: [['shipkind', '配送区分', 'K']],
};

/** 自動の割り当てでは連想しにくい画面の希望。 */
const OVERRIDES = {
  item: { item: 'I', itemkind: 'K', hscode: 'H', itemsizekind: 'Z', itemsupplier: 'S' },
};

function read(file) {
  return fs.existsSync(file) ? fs.readFileSync(file, 'utf8').replace(/\r\n/g, '\n') : '';
}

/** 既存の一覧から、機能と画面のコードを読む。 */
function readExisting() {
  const text = read(outFile);
  const features = {};
  let feature = null;
  let screen = null;
  for (const line of text.split('\n')) {
    let m;
    if ((m = /^ {2}- feature: (\w+)/.exec(line))) {
      feature = m[1];
      features[feature] = { code: '', screens: {} };
      screen = null;
    } else if (feature && !screen && (m = /^ {4}code: (\w)/.exec(line))) {
      features[feature].code = m[1];
    } else if (feature && (m = /^ {6}- screen: (\w+)/.exec(line))) {
      screen = m[1];
      features[feature].screens[screen] = '';
    } else if (feature && screen && (m = /^ {8}code: (\w)/.exec(line))) {
      features[feature].screens[screen] = m[1];
    }
  }
  return features;
}

/** プロジェクトの実体(台帳・編集)のキーと表示名。 */
function entitiesOf(project) {
  const dir = path.join(featuresDir, project, 'lib', 'src');
  const defs = path.join(dir, 'entities');
  if (!fs.existsSync(defs)) return [];
  const file = fs.readdirSync(defs).find((f) => f.endsWith('_definitions.dart'));
  if (!file) return [];
  const keys = [...read(path.join(defs, file)).matchAll(/EntityDefinition\(\s*key: '(\w+)'/g)].map((m) => m[1]);
  const ja = read(path.join(dir, 'i18n', 'ja.i18n.yaml'));
  return keys.map((key) => {
    const m = new RegExp(`^ {2}${key}:\\n {4}title: "([^"]*)"`, 'm').exec(ja);
    return [key, m ? m[1] : key];
  });
}

/** 名前の文字を先頭から試し、使っていない最初の文字を返す。無ければ英数字の空きを返す。 */
function pick(key, used, wanted) {
  const candidates = [wanted, ...key.toUpperCase().replace(/[^A-Z0-9]/g, '')].filter(Boolean);
  for (const c of candidates) if (!used.has(c)) return c;
  for (const c of ALPHABET) if (!used.has(c)) return c;
  throw new Error(`コードが足りません: ${key}`);
}

const existing = readExisting();
const usedFeature = new Set();
const out = [];
const problems = [];

for (const [project, def] of Object.entries(FEATURES)) {
  const have = existing[project];
  const code = have?.code || pick(project, usedFeature, def.code);
  if (usedFeature.has(code)) problems.push(`機能コードが重複: ${project} ${code}`);
  usedFeature.add(code);

  const screens = [];
  const used = new Set(Object.values(have?.screens ?? {}).filter(Boolean));
  const wanted = OVERRIDES[project] ?? {};
  const list = [
    ...(EXTRA_SCREENS[project] ?? []).map(([key, label, w]) => [key, label, w]),
    ...entitiesOf(project).map(([key, label]) => [key, label, wanted[key]]),
  ];
  // 既存のコードを先に確定してから、新しい画面に割り当てる
  const decided = new Map();
  for (const [key] of list) if (have?.screens[key]) decided.set(key, have.screens[key]);
  for (const [key, , w] of list) {
    if (decided.has(key)) continue;
    const c = pick(key, used, w);
    used.add(c);
    decided.set(key, c);
  }
  for (const [key, label] of list) screens.push({ key, label, code: decided.get(key) });
  // 一覧から外れた画面(削除された画面)は、レビューの目印として残す
  for (const [key, c] of Object.entries(have?.screens ?? {})) {
    if (!list.some(([k]) => k === key) && c) screens.push({ key, label: '(削除済み。再利用の前にレビューする)', code: c, removed: true });
  }
  out.push({ project, code, label: def.label, screens });
}

let yml = `# 機能コード・画面コードの一覧(生成: node tools/entity_gen/page_codes.js)。
# 機能コード(1文字) + 画面コード(1文字) = 画面のコード(例: 品目台帳 II)。大文字英数 36 種ずつ。
# 既に割り当てたコードは変えない(バーコードに印字するため)。画面の追加・削除のたびにレビューする。
# バーコードを読み込んで遷移する機能(登録画面からのみ使用)は未実装。
features:
`;
for (const f of out) {
  yml += `  - feature: ${f.project}\n    code: ${f.code}\n    label: ${f.label}\n    screens:\n`;
  for (const s of f.screens) {
    yml += `      - screen: ${s.key}\n        code: ${s.code}\n        page: ${f.code}${s.code}\n        label: ${s.label}\n`;
    if (s.removed) yml += `        removed: true\n`;
  }
}
fs.mkdirSync(path.dirname(outFile), { recursive: true });
fs.writeFileSync(outFile, yml);
for (const f of out) if (f.screens.length > 36) problems.push(`画面が 36 を超えた: ${f.project}`);
console.log(`${out.length} 機能、${out.reduce((n, f) => n + f.screens.length, 0)} 画面`);
if (problems.length) {
  console.error(problems.join('\n'));
  process.exitCode = 1;
}
