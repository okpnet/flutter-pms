import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:system/system.dart';

/// システムの取得元(GraphQL 版)の通信テスト(検証用サーバー)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: システムの取得元', () {
    serverTest('単位の一覧を、画面の値(名称・読み・略称は言語コード ja)で取得できる', (server) async {
      final unit = systemRepositories(server.provider.client).single;
      final rows = await unit.find(take: 5);
      expect(rows, isNotEmpty);
      expect(rows.first.valueOf('name'), isNotEmpty);
      final again = await unit.findById(rows.first.id);
      expect(again?.values, rows.first.values);
    });

    test('定義: 単位は書き込める。記号(DB が採番)は読み取り専用。必須の検証は通信しない', () async {
      final repos = systemRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      final unit = repos.single;
      expect(unit.definition.key, 'unit');
      expect(unit.definition.viewOnly, isFalse);
      expect(unit.definition.fields.firstWhere((f) => f.key == 'symbol').readOnly, isTrue);
      expect(unit.definition.fields.firstWhere((f) => f.key == 'name').readOnly, isFalse);
      await expectLater(unit.save(const EntityRecord(id: '', values: {})), throwsA(isA<EntityValidationException>()));
    });

    serverTest('単位を登録・更新・削除(論理削除)できる。更新は渡した項目だけ変わる', (server) async {
      final unit = systemRepositories(server.provider.client).single;
      String? id;
      try {
        final created = await unit.save(EntityRecord(id: '', values: {
          'name': '試験単位${DateTime.now().millisecondsSinceEpoch}',
          'pronunciation': 'シケン',
          'detail': '試験の詳細',
          'remarks': '書き込みテスト',
        }));
        id = created.id;
        expect(created.valueOf('pronunciation'), 'シケン');
        expect(created.valueOf('detail'), '試験の詳細');
        expect(created.valueOf('remarks'), '書き込みテスト');
        expect(created.valueOf('symbol'), isNotEmpty);

        // 画面は全項目を持つ。名称だけを変える(詳細は読み込んだ値のまま = 変えない)
        final renamed = await unit.save(created.copyWith(values: {...created.values, 'name': '${created.valueOf('name')}(更新)'}));
        expect(renamed.valueOf('name'), endsWith('(更新)'));
        expect(renamed.valueOf('pronunciation'), 'シケン');
        expect(renamed.valueOf('detail'), '試験の詳細');
        expect(renamed.valueOf('remarks'), '書き込みテスト');

        // 空にした項目は消える
        final cleared = await unit.save(renamed.copyWith(values: {...renamed.values, 'remarks': '', 'pronunciation': ''}));
        expect(cleared.valueOf('remarks'), isEmpty);
        expect(cleared.valueOf('pronunciation'), isEmpty);
        expect(cleared.valueOf('name'), renamed.valueOf('name'));

        // 名称を空にする更新は、必須のエラー
        await expectLater(unit.save(cleared.copyWith(values: {...cleared.values, 'name': ''})), throwsA(isA<EntityValidationException>()));
      } finally {
        if (id != null) await unit.remove(id);
      }
      expect(await unit.findById(id), isNull);
    });
  });
}
