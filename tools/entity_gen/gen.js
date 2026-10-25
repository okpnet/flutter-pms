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
  customer: { project: 'sales', ids: (n) => `3c9a7e10-0000-4000-8000-${hex(n, 12)}`, max: 3 },
  shipkind: { project: 'shared_master', ids: (n) => `5b1f0c1e-0000-4000-8000-${hex(n, 12)}`, max: 3 },
};
const SKIP = new Set(['customer', 'custcontact', 'shipkind']);
const COLL = { employees: 'staff', locations: 'location', equipments: 'equipment', departments: 'department' };

/* ------------------------------------------------------------------ 内部形式への変換 */
const KIND = { t: 'text', x: 'multiline', n: 'number', d: 'date', s: 'choice', r: 'reference' };

const byLabel = (key) => DOM.entities.find((x) => x.key === key)?.label ?? key;

function fromHtml(e) {
  const fields = e.fields.map(([key, label, kind = 't', extra = {}]) => {
    const k = KIND[kind];
    let ref;
    if (k === 'reference') {
      const r = extra.ref;
      ref = r.startsWith('@') ? COLL[r.slice(1).split(':')[0]] : r;
    }
    return { key, label, kind: k, required: extra.req !== false, options: k === 'choice' ? extra.opts : undefined, ref };
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
  return { key: e.key, label: e.label, owner: e.parent?.ent, isTree: !!e.tree, fields, rows };
}

const htmlEntities = DOM.entities.filter((e) => !SKIP.has(e.key)).map(fromHtml);

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
const unassigned = htmlEntities.filter((e) => !e.project);
if (unassigned.length) console.warn('プロジェクト未割当:', unassigned.map((e) => e.key).join(' '));

const hand = require('./handwritten.js')(D, X);
const entities = [...htmlEntities.filter((e) => e.project), ...hand];

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
const warnings = [];
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
          return `        FieldDefinition(${a.join(', ')}),`;
        })
        .join('\n');
      const a = [`key: ${dq(e.key)}`];
      if (e.owner) a.push(`owner: ${dq(e.owner)}`);
      if (e.isTree) a.push('isTree: true');
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
  return `// 生成物(tools/entity_gen/gen.js)。直接編集しない。\nimport 'package:entity_screens/entity_screens.dart';\n\nimport '../i18n/strings_provider.dart';\n\n/// ${PROJECTS[pkg].title}の実体と項目の表示名。言語ファイル(\`lib/src/i18n\`)の値を返す。\nclass ${c}Labels implements EntityLabels {\n  const ${c}Labels(this._t);\n\n  final ${c}Strings _t;\n\n  @override\n  String entity(String entityKey) =>\n      (_t['entity.\$entityKey.title'] as String?) ?? entityKey;\n\n  @override\n  String field(String entityKey, String fieldKey) =>\n      (_t['entity.\$entityKey.fields.f_\$fieldKey'] as String?) ?? fieldKey;\n}\n`;
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
  const lines = [YAML_MARKER, `# ${PROJECTS[pkg].title}の実体と項目の表示名(日本語。基準言語)。`, '# 項目名は DB のコメント(schema.graphql)に合わせる。コメントが無いものは仮(doc/log に記録)。', 'entity:'];
  for (const e of list) {
    lines.push(`  ${e.key}:`, `    title: ${y(e.label)}`, '    fields:');
    for (const fl of e.fields) lines.push(`      f_${fl.key}: ${y(fl.label)}`);
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
  const c = PROJECTS[pkg].cls;
  const p = camel(pkg);
  const name = entityOnly ? `${c}EntityModule` : `${c}Module`;
  const file = entityOnly ? `${pkg}_entity_module.dart` : `${pkg}_module.dart`;
  return {
    file,
    text: `import 'package:entity_screens/entity_screens.dart';\nimport 'package:feature_shared/feature_shared.dart';\nimport 'package:flutter_riverpod/flutter_riverpod.dart';\n\nimport 'entities/${pkg}_definitions.dart';\nimport 'entities/${pkg}_labels.dart';\nimport 'entities/${pkg}_seeds.dart';\nimport 'i18n/strings_provider.dart';\n\n/// ${PROJECTS[pkg].title}${entityOnly ? '(実体の画面)' : ''}をアプリへ組み込むための口。\n///\n/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。\n/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。\nclass ${name} extends EntityFeatureModule {\n  const ${name}();\n\n  @override\n  List<EntityDefinition> get definitions => ${p}Definitions;\n\n  @override\n  Map<String, List<EntityRecord>> get seeds => ${p}Seeds;\n\n  @override\n  EntityLabels labelsOf(WidgetRef ref) =>\n      ${c}Labels(ref.watch(${p}StringsProvider));\n}\n`,
  };
}

function testDart(pkg, list, entityOnly) {
  const c = PROJECTS[pkg].cls;
  const p = camel(pkg);
  const name = entityOnly ? `${c}EntityModule` : `${c}Module`;
  const modImport = entityOnly ? `package:${pkg}/src/${pkg}_entity_module.dart` : `package:${pkg}/${pkg}.dart`;
  const roots = list.filter((e) => !e.owner).map((e) => e.key);
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
  const entityOnly = pkg === 'sales';
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
  rootsOf[pkg] = list.filter((e) => !e.owner).map((e) => ({ key: e.key, label: e.label, first: firstText(e) }));
  const deps = new Set();
  for (const e of list) {
    for (const fl of e.fields) {
      if (fl.kind !== 'reference') continue;
      const target = entities.find((x) => x.key === fl.ref);
      const owner = target ? target.project : BESPOKE[fl.ref]?.project;
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


require('./menu.js')({ PROJECTS, rootsOf, root, write, dq });
require('./claude.js')({ PROJECTS, entities, features });

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
