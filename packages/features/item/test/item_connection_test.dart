import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:item/item.dart';

/// 品目の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 品目の取得元(読み取り専用)', () {
    serverTest('品目区分と品目を、画面の値(名称は言語コード ja)で取得できる', (server) async {
      final repos = itemRepositories(server.provider.client);
      final kind = repos.firstWhere((r) => r.definition.key == 'itemkind');
      final item = repos.firstWhere((r) => r.definition.key == 'item');
      final kinds = await kind.find(take: 20);
      expect(kinds, isNotEmpty);
      expect(kinds.any((r) => r.valueOf('name').isNotEmpty), isTrue);
      final items = await item.find(take: 50);
      expect(items, isNotEmpty);
      expect(items.first.valueOf('code'), isNotEmpty);
      expect(items.first.valueOf('mstr_item_kind_id'), isNotEmpty);
      final again = await item.findById(items.first.id);
      expect(again?.values, items.first.values);
      // ツリー: トップと子の合計が、取得した品目と整合する
      final top = await item.findByParent(null);
      for (final t in top) {
        expect(t.parentId, isNull);
      }
    });

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () {
      final repos = itemRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['itemkind', 'item']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(() => r.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
      expect(repos.last.definition.isTree, isTrue);
    });
  });
}
