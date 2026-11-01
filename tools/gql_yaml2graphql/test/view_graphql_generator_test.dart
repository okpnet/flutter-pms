// gql/*.yaml -> GraphQL の変換器のテスト。
//
// 名前の規則、YAMLのマージキーの展開、分割したYAMLの結合、並び順(defaultSort)。
// 本家スキーマ(.schema/schema.graphql、Git管理外)が必要なテストは、無い環境では省略する。
//    その場合は既存のGraphQLを生成物で置き換えてから、この一覧を見直す。

import 'dart:io';

import 'package:test/test.dart';

import 'package:gql_yaml2graphql/src/generator.dart';
import 'package:gql_yaml2graphql/src/names.dart';
import 'package:gql_yaml2graphql/src/schema_index.dart';
import 'package:gql_yaml2graphql/src/view_sources.dart';
import 'package:gql_yaml2graphql/src/yaml_loader.dart';


void main() {
  createTests();
  functionTests();
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
  });

  group('並び順 defaultSort(要件0053)', () {
    final schemaFile = File('../../.schema/schema.graphql');
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

    final skip = available ? false : '全量スキーマ(../../.schema/schema.graphql)がありません';
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

}

void createTests() {
  test('登録(kind: create)は createXxx のミューテーションを作る', () {
    expect(directoryOf('ConveyPageCreate'), 'convey_page');
    expect(isGenerationTarget('ConveyPageCreate'), isTrue);
    const schema = '''
type Query { nodeId: ID }
type Mutation { createTransConvey(input: CreateTransConveyInput!): CreateTransConveyPayload }
type CreateTransConveyPayload { transConvey: TransConvey }
type TransConvey { transConveyId: UUID! quantity: BigFloat remarks: String }
input CreateTransConveyInput { transConvey: TransConveyInput! }
input TransConveyInput { transConveyId: UUID quantity: BigFloat remarks: String }
scalar UUID
scalar BigFloat
''';
    final r = generateAll(
      viewYaml: '''
ConveyPageCreate:
  kind: create
  from: trans_convey
  columns: [quantity, remarks]
''',
      schemaText: schema,
    );
    expect(r.log.errors, isEmpty);
    final text = r.files['convey_page/convey_page_create.graphql']!;
    expect(text, contains('mutation ConveyPageCreate('));
    expect(text, contains(r'$quantity: BigFloat'));
    expect(text, contains('createTransConvey('));
    expect(text, contains('transConveyId'));
  });

  test('登録の列が入力型に無いときはエラー', () {
    final r = generateAll(
      viewYaml: '''
ConveyPageCreate:
  kind: create
  from: trans_convey
  columns: [nothing]
''',
      schemaText: '''
type Query { nodeId: ID }
type Mutation { createTransConvey(input: CreateTransConveyInput!): CreateTransConveyPayload }
type CreateTransConveyPayload { transConvey: TransConvey }
type TransConvey { transConveyId: UUID! }
input CreateTransConveyInput { transConvey: TransConveyInput! }
input TransConveyInput { transConveyId: UUID }
scalar UUID
''',
    );
    expect(r.log.errors, isNotEmpty);
  });
}

void functionTests() {
  const schema = '''
type Query { nodeId: ID }
type Mutation { visiterIssue(input: VisiterIssueInput!): VisiterIssuePayload }
type VisiterIssuePayload { transVisiter: TransVisiter }
type TransVisiter { transVisiterId: UUID! quantity: BigFloat }
input VisiterIssueInput { clientMutationId: String pSrc: UUID pQty: BigFloat }
scalar UUID
scalar BigFloat
''';

  test('関数の呼び出し(kind: function)は、入力の名前のまま変数にしてミューテーションを作る', () {
    expect(directoryOf('VisiterIssuePageCall'), 'visiter_issue_page');
    expect(isGenerationTarget('VisiterIssuePageCall'), isTrue);
    final r = generateAll(
      viewYaml: '''
VisiterIssuePageCall:
  kind: function
  mutation: visiterIssue
  returns: transVisiter
  columns: [trans_visiter_id, quantity]
''',
      schemaText: schema,
    );
    expect(r.log.errors, isEmpty);
    final text = r.files['visiter_issue_page/visiter_issue_page_call.graphql']!;
    expect(text, contains('mutation VisiterIssuePageCall('));
    expect(text, contains(r'$pSrc: UUID'));
    expect(text, contains(r'pQty: $pQty'));
    expect(text, isNot(contains('clientMutationId')));
    expect(text, contains('visiterIssue('));
  });

  test('関数の戻り値の列がスキーマに無いときはエラー', () {
    final r = generateAll(
      viewYaml: '''
VisiterIssuePageCall:
  kind: function
  mutation: visiterIssue
  returns: transVisiter
  columns: [nothing]
''',
      schemaText: schema,
    );
    expect(r.log.errors, isNotEmpty);
  });
}
