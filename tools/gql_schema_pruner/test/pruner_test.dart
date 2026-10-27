import 'dart:io';

import 'package:gql/language.dart';
import 'package:gql_schema_pruner/gql_schema_pruner.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

/// 本家スキーマの代わりに使う小さなスキーマ(PostGraphile の形: Connection・関連・Filter・入れ子の Patch)。
const _full = '''
schema { query: Query mutation: Mutation }
scalar UUID
scalar Datetime
scalar Unused
interface Node { id: ID! }
enum StaffsOrderBy { NAME_ASC NAME_DESC OLD @deprecated(reason: "x") }
enum Unused2 { A }
input StringFilter { equalTo: String startsWith: String }
input UUIDFilter { equalTo: UUID }
input StaffFilter {
  name: StringFilter
  and: [StaffFilter!]
  or: [StaffFilter!]
  not: StaffFilter
  office: OfficeFilter
  skills: StaffToManySkillFilter
  unusedColumn: UUIDFilter
}
input OfficeFilter { name: StringFilter and: [OfficeFilter!] }
input StaffToManySkillFilter { some: SkillFilter every: SkillFilter none: SkillFilter }
input SkillFilter { name: StringFilter and: [SkillFilter!] }
input StaffInput { name: String! officeId: UUID note: String }
input StaffPatch { name: String note: String }
input CreateStaffInput { clientMutationId: String staff: StaffInput! }
input UpdateStaffByIdInput { id: UUID! staffPatch: StaffPatch! extra: Unused2 }
type Query {
  staffs(first: Int, orderBy: [StaffsOrderBy!], filter: StaffFilter, condition: StaffCondition): StaffConnection
  unused: Int
}
input StaffCondition { name: String }
type StaffConnection { nodes: [Staff]! totalCount: Int! pageInfo: PageInfo! }
type PageInfo { hasNextPage: Boolean! endCursor: String }
type Staff implements Node {
  id: ID!
  staffId: UUID!
  name: String!
  note: String
  updateAt: Datetime
  office: Office
  skills: SkillConnection!
  hidden: String
}
type Office { officeId: UUID! name: String! secret: String }
type SkillConnection { nodes: [Skill]! }
type Skill { name: String! level: Int }
type Mutation {
  createStaff(input: CreateStaffInput!): CreateStaffPayload
  updateStaffById(input: UpdateStaffByIdInput!): CreateStaffPayload
}
type CreateStaffPayload { staff: Staff }
''';

const _query = '''
fragment StaffFields on Staff {
  staffId
  name
  office { name }
}

query StaffList(\$first: Int, \$filter: StaffFilter, \$order: [StaffsOrderBy!]) {
  staffs(first: \$first, filter: \$filter, orderBy: \$order, condition: {name: "a"}) {
    totalCount
    nodes {
      ...StaffFields
      updateAt
      skills { nodes { name } }
    }
  }
}
''';

const _mutation = '''
mutation StaffCreate(\$input: CreateStaffInput!) {
  createStaff(input: \$input) { staff { staffId } }
}
mutation StaffUpdate(\$input: UpdateStaffByIdInput!) {
  updateStaffById(input: \$input) { staff { staffId note } }
}
''';

PackagePruneResult _prune(Map<String, String> sources) => prunePackage(
      index: SchemaIndex(parseString(_full)),
      feature: 'staff_model',
      sources: sources,
    );

void main() {
  group('prunePackage', () {
    test('Connection・フラグメント・関連・列挙型・スカラーをフィールド単位で残す', () {
      final r = _prune({'lib/src/graphql/list.graphql': _query});
      expect(r.issues, isEmpty);
      final sdl = r.sdl!;
      // 使ったフィールドだけ残り、使っていないフィールドは落ちる
      expect(sdl, contains('type Staff {'));
      expect(sdl, contains('  staffId: UUID!'));
      expect(sdl, contains('  updateAt: Datetime'));
      expect(sdl, isNot(contains('hidden')));
      expect(sdl, isNot(contains('implements')));
      expect(sdl, isNot(contains('interface Node')));
      expect(sdl, isNot(contains('unused: Int')));
      expect(sdl, isNot(contains('secret')));
      expect(sdl, isNot(contains('level')));
      // 引数は渡したものだけ
      expect(sdl, contains('staffs(first: Int, orderBy: [StaffsOrderBy!], filter: StaffFilter, condition: StaffCondition)'));
      // 列挙型は値ごと(@deprecated 付き)残り、使っていない型は落ちる
      expect(sdl, contains('enum StaffsOrderBy {'));
      expect(sdl, contains('OLD @deprecated(reason: "x")'));
      expect(sdl, isNot(contains('Unused')));
      expect(sdl, contains('scalar Datetime'));
      expect(sdl, contains('scalar UUID'));
      // リテラルで渡した入力型は使ったフィールドだけ
      expect(sdl, contains('input StaffCondition {\n  name: String\n}'));
    });

    test('変数の関連フィルタは選択経路に沿って残す', () {
      final sdl = _prune({'a.graphql': _query}).sdl!;
      final filter = RegExp(r'input StaffFilter \{[^}]*\}').firstMatch(sdl)!.group(0)!;
      expect(filter, contains('name: StringFilter'));
      expect(filter, contains('and: [StaffFilter!]'));
      expect(filter, contains('office: OfficeFilter'));
      expect(filter, contains('skills: StaffToManySkillFilter'));
      // 選択セットに無い列でも自テーブルの列は残るが、関連のスカラー型は残る
      expect(sdl, contains('input StaffToManySkillFilter {'));
      expect(sdl, contains('some: SkillFilter'));
      expect(sdl, contains('input SkillFilter {'));
      expect(sdl, contains('input OfficeFilter {'));
    });

    test('ミューテーションの入力型は骨格(作成・更新の本体)まで残る', () {
      final sdl = _prune({'m.graphql': _mutation}).sdl!;
      expect(sdl, contains('mutation: Mutation'));
      expect(sdl, contains('input CreateStaffInput {'));
      expect(sdl, contains('staff: StaffInput!'));
      expect(sdl, contains('input StaffInput {'));
      expect(sdl, contains('input StaffPatch {'));
      expect(sdl, contains('input UpdateStaffByIdInput {'));
      // 入力型が参照する列挙型も残る
      expect(sdl, contains('enum Unused2 {'));
      expect(sdl, isNot(contains('query: Query')));
    });

    test('出力は構文として正しく、再生成しても同じ', () {
      final a = _prune({'l.graphql': _query, 'm.graphql': _mutation}).sdl!;
      final b = _prune({'m.graphql': _mutation, 'l.graphql': _query}).sdl!;
      expect(a, b);
      parseString(a);
    });

    test('存在しない列・関連・引数は機能名とファイル名付きでエラーにする', () {
      final r = _prune({
        'lib/src/graphql/bad.graphql': '''
query Bad(\$first: Int) {
  staffs(first: \$first, nope: 1) {
    nodes { name missingColumn office { missingRelation } }
  }
}
''',
      });
      expect(r.sdl, isNull);
      final messages = r.issues.map((i) => i.toString()).toList();
      expect(messages, contains(contains('[staff_model] lib/src/graphql/bad.graphql:')));
      expect(messages.join('\n'), contains('Staff.missingColumn'));
      expect(messages.join('\n'), contains('Office.missingRelation'));
      expect(messages.join('\n'), contains('Query.staffs(nope)'));
      expect(r.issues.every((i) => i.feature == 'staff_model'), isTrue);
    });

    test('存在しない型・フラグメントもエラーにする', () {
      final r = _prune({
        'x.graphql': 'query Q(\$v: Nothing) { staffs { nodes { ...Missing } } }',
      });
      final text = r.issues.join('\n');
      expect(text, contains('Nothing'));
      expect(text, contains('Missing'));
    });

    test('構文エラーはエラーとして報告する', () {
      final r = _prune({'x.graphql': 'query {'});
      expect(r.issues, hasLength(1));
      expect(r.issues.single.message, contains('解析できません'));
    });
  });

  group('runPruner', () {
    late Directory tmp;
    late String schemaPath;
    late String root;

    setUp(() {
      tmp = Directory.systemTemp.createTempSync('pruner_test');
      schemaPath = p.join(tmp.path, 'schema.graphql');
      File(schemaPath).writeAsStringSync(_full);
      root = p.join(tmp.path, 'model_providers');
      final dir = Directory(p.join(root, 'staff_model', 'lib', 'src', 'graphql'))
        ..createSync(recursive: true);
      File(p.join(dir.path, 'staff_list.graphql')).writeAsStringSync(_query);
      // 生成物と空のパッケージは入力に含めない
      Directory(p.join(root, 'empty_model', 'lib', 'src', 'graphql')).createSync(recursive: true);
    });

    tearDown(() => tmp.deleteSync(recursive: true));

    test('パッケージ内に schema.graphql を書き出し、2回目は変更なし', () {
      final lines = <String>[];
      final first = runPruner(schemaPath: schemaPath, root: root, log: lines.add);
      expect(first.exitCode, 0);
      expect(first.changed, ['staff_model']);
      final out = File(p.join(root, 'staff_model', prunedSchemaPath));
      expect(out.existsSync(), isTrue);
      expect(out.readAsStringSync(), startsWith('# このファイルは'));

      // 自分自身(schema.graphql)を入力にしても結果は変わらない
      final second = runPruner(schemaPath: schemaPath, root: root);
      expect(second.exitCode, 0);
      expect(second.changed, isEmpty);
    });

    test('--check は書き出さず、差分があれば 1 を返す', () {
      final check = runPruner(schemaPath: schemaPath, root: root, check: true);
      expect(check.exitCode, 1);
      expect(File(p.join(root, 'staff_model', prunedSchemaPath)).existsSync(), isFalse);

      runPruner(schemaPath: schemaPath, root: root);
      expect(runPruner(schemaPath: schemaPath, root: root, check: true).exitCode, 0);

      File(p.join(root, 'staff_model', prunedSchemaPath)).writeAsStringSync('手編集');
      expect(runPruner(schemaPath: schemaPath, root: root, check: true).exitCode, 1);
    });

    test('検証エラーがあれば 1 を返し、何も書き出さない', () {
      File(p.join(root, 'staff_model', 'lib', 'src', 'graphql', 'bad.graphql'))
          .writeAsStringSync('query { staffs { nodes { nothing } } }');
      final lines = <String>[];
      final run = runPruner(schemaPath: schemaPath, root: root, log: lines.add);
      expect(run.exitCode, 1);
      expect(lines.join('\n'), contains('[staff_model] lib/src/graphql/bad.graphql'));
      expect(File(p.join(root, 'staff_model', prunedSchemaPath)).existsSync(), isFalse);
    });

    test('本家スキーマが無ければ 1 を返す', () {
      expect(runPruner(schemaPath: p.join(tmp.path, 'none'), root: root).exitCode, 1);
    });
  });
}
