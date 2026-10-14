// view.yaml -> GraphQL の変換器(tool/view_graphql)のテスト。
//
// 1) 名前の規則、YAMLのマージキーの展開。
// 2) 回帰: 既存の画面のGraphQL(lib/graphql)と、view.yamlからの生成物が、書式・コメント・選択の順序を
//    除いて同じであること。全量スキーマ(source/schema.full.graphql、git対象外)が無い環境では省略する。
//    対象は、現在のview.yamlと一致している画面だけ。view.yamlを変更して生成物が変わるのは正しいため、
//    その場合は既存のGraphQLを生成物で置き換えてから、この一覧を見直す。

import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import '../tool/view_graphql/generator.dart';
import '../tool/view_graphql/names.dart';
import '../tool/view_graphql/normalize.dart';
import '../tool/view_graphql/schema_index.dart';
import '../tool/view_graphql/yaml_loader.dart';

/// 現在のview.yamlから生成した結果が、lib/graphql の既存ファイルと一致する画面。
const _matching = <String>[
  'assign_page/assign_page_edit.graphql',
  'assign_page/assign_page_read.graphql',
  'assign_page/assign_page_rfe.graphql',
  'capability_page/capability_page_read.graphql',
  'capability_page/capability_page_rfe.graphql',
  'capable_staff_page/capable_staff_page_edit.graphql',
  'capable_staff_page/capable_staff_page_read.graphql',
  'capable_staff_page/capable_staff_page_rfe.graphql',
  'department_category_page/department_category_page_edit.graphql',
  'department_category_page/department_category_page_read.graphql',
  'department_category_page/department_category_page_rfe.graphql',
  'item_kind_page/item_kind_page_read.graphql',
  'item_kind_page/item_kind_page_rfe.graphql',
  'license_holders_page/license_holders_page_edit.graphql',
  'license_holders_page/license_holders_page_read.graphql',
  'license_holders_page/license_holders_page_rfe.graphql',
  'license_page/license_page_read.graphql',
  'license_page/license_page_rfe.graphql',
  'operation_page/operation_page_edit.graphql',
  'operation_page/operation_page_read.graphql',
  'operation_page/operation_page_rfe.graphql',
  'position_page/position_page_edit.graphql',
  'position_page/position_page_rfe.graphql',
  'provision_page/provision_page_read.graphql',
  'spec_measurement_page/spec_measurement_page_read.graphql',
  'staff_capability_page/staff_capability_page_edit.graphql',
  'staff_capability_page/staff_capability_page_read.graphql',
  'staff_capability_page/staff_capability_page_rfe.graphql',
  'staff_held_license_page/staff_held_license_page_edit.graphql',
  'staff_held_license_page/staff_held_license_page_read.graphql',
  'staff_held_license_page/staff_held_license_page_rfe.graphql',
  'staff_page/staff_page_read.graphql',
  'staff_page/staff_page_rfe.graphql',
  'unit_page/unit_page_edit.graphql',
  'unit_page/unit_page_read.graphql',
  'unit_page/unit_page_rfe.graphql',
];

void main() {
  test('名前の規則', () {
    expect(camel('update_at'), 'updateAt');
    expect(camel('iso3166_3'), 'iso31663');
    expect(pascal('mstr_operation_task'), 'MstrOperationTask');
    expect(snake('OperationPage'), 'operation_page');
    expect(directoryOf('OperationPage'), 'operation_page');
    expect(directoryOf('OperationPageEdit'), 'operation_page');
    expect(isGenerationTarget('UnitReadFields'), isFalse);
    expect(isGenerationTarget('UnitPageEdit'), isTrue);
  });

  test('YAMLのマージキーは、ローカルのキーが丸ごと置き換える', () {
    final m = loadViewYaml('''
Base: &Base
  kind: read
  from: a
  columns: [x, y]
Child:
  name: c
  <<: *Base
  columns: [z]
''');
    final c = m['Child'] as Map<String, dynamic>;
    expect(c['kind'], 'read');
    expect(c['from'], 'a');
    expect(c['columns'], ['z']);
  });

  group('回帰(既存の画面と一致)', () {
    final schemaFile = File('source/schema.full.graphql');
    final available = schemaFile.existsSync();
    late GenerationResult result;
    setUpAll(() {
      if (!available) return;
      result = generateAll(
        viewYaml: File('source/view.yaml').readAsStringSync(),
        schemaPath: schemaFile.path,
      );
    });

    for (final file in _matching) {
      test(file, () {
        final generated = result.files[file];
        expect(generated, isNotNull, reason: '$fileが生成されていません');
        final existing = File('lib/graphql/$file').readAsStringSync();
        expect(normalizeGraphql(generated!), normalizeGraphql(existing));
      }, skip: available ? false : '全量スキーマ(source/schema.full.graphql)がありません');
    }
  });
}
