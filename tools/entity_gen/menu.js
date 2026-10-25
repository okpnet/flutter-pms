/* アプリ(pms_app)のホームに並べる業務メニュー(暫定)を書く。gen.js から呼ばれる。
   共通のシェル部品(app_shell)とメニュー項目の提供ができたら、この生成は不要になる。 */
'use strict';

const path = require('path');

module.exports = function writeMenu({ PROJECTS, rootsOf, root, write, dq }) {
  // Html のトップメニューの並び(ダッシュボードを除く)
  const order = [
    'resource', 'system', 'item', 'production_process', 'sales', 'purchasing',
    'production_plan', 'work_record', 'quality_common', 'quality_document', 'quality', 'organization',
  ];
  const groups = order
    .filter((p) => rootsOf[p])
    .map((p) => {
      const entries = rootsOf[p]
        .map((r) => `      FeatureHostEntry(${dq(r.label)}, EntityListDestination(${dq(r.key)})),`)
        .join('\n');
      return `  EntityMenuGroup(${dq(PROJECTS[p].title)}, [\n${entries}\n  ]),`;
    })
    .join('\n');
  const text = [
    '// 生成物(tools/entity_gen/gen.js)。直接編集しない。',
    "import 'package:feature_shared/feature_shared.dart';",
    '',
    '/// ホームに並べる業務メニュー(トップメニューのグループ)。',
    '/// 暫定: 共通のシェル部品(app_shell)ができるまでのホームの一覧。',
    'class EntityMenuGroup {',
    '  const EntityMenuGroup(this.label, this.entries);',
    '',
    '  final String label;',
    '  final List<FeatureHostEntry> entries;',
    '}',
    '',
    'const List<EntityMenuGroup> entityMenuGroups = [',
    groups,
    '];',
    '',
  ].join('\n');
  write(path.join(root, 'apps', 'pms_app', 'lib', 'entity_menu.dart'), text);
};
