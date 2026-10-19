// 分割したview.yaml(source/views/) -> GraphQL の変換器(tool/view_graphql)のテスト。
//
// 1) 名前の規則、YAMLのマージキーの展開、分割したview.yamlの結合(要件0052)。
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
import '../tool/view_graphql/view_sources.dart';
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

  group('分割したview.yamlの結合', () {
    test('ファイルをまたぐアンカーは、依存先が先になるよう並べて解決する', () {
      // a.yamlのAが、b.yamlのBase(後ろのファイル)に依存する。
      final c = combineViewSources({
        'a.yaml': 'A:\n  <<: *Base\n  columns: [z]\n',
        'b.yaml': 'Base: &Base\n  kind: read\n  from: t\n  columns: [x]\n',
      });
      expect(c.order, ['b.yaml: Base', 'a.yaml: A']);
      final m = c.load();
      expect((m['A'] as Map)['kind'], 'read');
      expect((m['A'] as Map)['columns'], ['z']);
    });

    test('依存の無いノードは、パス順・記述順を保つ', () {
      final c = combineViewSources({
        'b.yaml': 'B:\n  x: 1\n',
        'a.yaml': 'A1:\n  x: 1\nA2:\n  x: 2\n',
      });
      expect(c.order, ['a.yaml: A1', 'a.yaml: A2', 'b.yaml: B']);
    });

    test('トップノード名の重複はエラー', () {
      expect(
        () => combineViewSources({'a.yaml': 'A:\n  x: 1\n', 'b.yaml': 'A:\n  x: 2\n'}),
        throwsA(isA<ViewSourceException>().having((e) => e.message, 'message', contains('重複'))),
      );
    });

    test('アンカー名の重複はエラー', () {
      expect(
        () => combineViewSources({'a.yaml': 'A: &X\n  x: 1\n', 'b.yaml': 'B: &X\n  x: 2\n'}),
        throwsA(isA<ViewSourceException>().having((e) => e.message, 'message', contains('&X'))),
      );
    });

    test('定義の無いアンカーの参照は、ファイルと行でエラーにする', () {
      expect(
        () => combineViewSources({'a.yaml': '\nA:\n  <<: *Nothing\n'}),
        throwsA(isA<ViewSourceException>().having((e) => e.message, 'message', allOf(contains('a.yaml:3'), contains('*Nothing')))),
      );
    });

    test('アンカーの参照が循環するとエラー', () {
      expect(
        () => combineViewSources({
          'a.yaml': 'A: &A\n  <<: *B\n',
          'b.yaml': 'B: &B\n  <<: *A\n',
        }),
        throwsA(isA<ViewSourceException>().having((e) => e.message, 'message', contains('循環'))),
      );
    });

    test('結合後の解析エラーを、元のファイルと行番号へ戻す', () {
      final c = combineViewSources({
        'a.yaml': 'A:\n  x: 1\n',
        'b.yaml': 'B:\n  x: 1\n  y: [unclosed\n',
      });
      expect(() => c.load(), throwsA(isA<ViewSourceException>().having((e) => e.message, 'message', contains('b.yaml:'))));
    });

    test('source/views/ の全ファイルが結合でき、すべてのトップノードが読める', () {
      final m = loadViewDirectory('source/views');
      expect(m.length, greaterThan(100));
      expect(m.containsKey('OfficePage'), isTrue);
      expect(m.containsKey('FixLabelReadFields'), isTrue);
    });
  });

  group('並び順 defaultSort(要件0053)', () {
    final schemaFile = File('source/schema.full.graphql');
    final available = schemaFile.existsSync();
    late SchemaIndex schema;
    setUpAll(() {
      if (available) schema = SchemaIndex.load(schemaFile.path);
    });

    /// [extra]は、ノードに足す行(defaultSortと、その下のasc/desc・sortColumns)。
    String read(List<String> extra) {
      final r = generateAll(
        viewYaml: [
          'PositionPage:',
          '  kind: read',
          '  from: info_position',
          for (final l in extra) '  $l',
          '  defaultWhere:',
          '    - column: remove',
          '      operator: "="',
          '      value: false',
          '  columns:',
          '    - info_position_id',
          '    - symbol',
        ].join('\n'),
        schemaIndex: schema,
      );
      return r.files['position_page/position_page_read.graphql'] ?? r.log.errors.join('\n');
    }

    final skip = available ? false : '全量スキーマ(source/schema.full.graphql)がありません';
    const noDefault = r'$orderBy: [InfoPositionsOrderBy!]';

    test('asc/descの入れ子のsortColumnsは、引数の既定値になる(列は指定した順)', () {
      expect(read(['defaultSort:', '  asc:', '    sortColumns:', '      - priority', '      - symbol']),
          contains(r'$orderBy: [InfoPositionsOrderBy!] = [PRIORITY_ASC, SYMBOL_ASC]'));
      expect(read(['defaultSort:', '  desc:', '    sortColumns: [primary_key]']),
          contains(r'$orderBy: [InfoPositionsOrderBy!] = [PRIMARY_KEY_DESC]'));
    }, skip: skip);

    test('noneまたは省略、sortColumnsがnull/空は、既定値なし(引数がnullなら並べない)', () {
      for (final extra in [
        <String>[],
        ['defaultSort: none'],
        ['defaultSort:'],
        ['defaultSort:', '  asc:'],
        ['defaultSort:', '  asc:', '    sortColumns: []'],
        ['defaultSort:', '  desc:', '    sortColumns:'],
      ]) {
        final text = read(extra);
        expect(text, contains(noDefault), reason: '$extra');
        expect(text, isNot(contains('_ASC')), reason: '$extra');
        expect(text, isNot(contains('_DESC')), reason: '$extra');
        expect(text, isNot(contains('PRIMARY_KEY')), reason: '$extra');
      }
    }, skip: skip);

    test('定義に無い値・列はエラー(ascとdescの同時指定、旧形式を含む)', () {
      expect(read(['defaultSort: asc']), contains('defaultSort'));
      expect(read(['defaultSort: up']), contains('defaultSort'));
      expect(read(['defaultSort:', '  asc:', '    sortColumns: [priority]', '  desc:', '    sortColumns: [symbol]']),
          contains('同時'));
      expect(read(['defaultSort:', '  up:', '    sortColumns: [priority]']), contains('defaultSort'));
      expect(read(['defaultSort:', '  asc:', '    sortColumns: [no_such_column]']), contains('sortColumns'));
      expect(read(['defaultSort:', '  asc:', '    sortColumns: priority']), contains('sortColumns'));
      expect(read(['defaultSort:', '  asc:', '    order: [priority]']), contains('sortColumns'));
      // 旧形式(defaultSortと同じ階層のsortColumns)
      expect(read(['defaultSort: none', 'sortColumns: [priority]']), contains('defaultSortの下'));
    }, skip: skip);
  });

  group('回帰(既存の画面と一致)', () {
    final schemaFile = File('source/schema.full.graphql');
    final available = schemaFile.existsSync();
    late GenerationResult result;
    setUpAll(() {
      if (!available) return;
      result = generateAll(
        viewYaml: combineViewDirectory('source/views').text,
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
