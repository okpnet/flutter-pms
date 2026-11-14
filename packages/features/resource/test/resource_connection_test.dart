import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:resource/resource.dart';

/// 資源の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 資源の取得元(読み取り専用)', () {
    serverTest('力量・資格・場所・設備を、画面の値(名称は言語コード ja)で取得できる', (server) async {
      final repos = resourceRepositories(server.provider.client);
      for (final key in ['capability', 'license', 'location', 'equipment']) {
        final repo = repos.firstWhere((r) => r.definition.key == key);
        final rows = await repo.find(take: 50);
        // 検証用 DB にデータが無い実体は、取得できる(空)ことだけを確認する
        if (rows.isEmpty) continue;
        expect(rows.first.valueOf('code'), isNotEmpty, reason: key);
        if (key != 'equipment') {
          expect(rows.any((r) => r.valueOf('name').isNotEmpty), isTrue, reason: key);
        }
        final again = await repo.findById(rows.first.id);
        expect(again?.values, rows.first.values, reason: key);
        if (key == 'location') {
          for (final t in await repo.findByParent(null)) {
            expect(t.parentId, isNull);
          }
        }
      }
    });

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () {
      final repos = resourceRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['capability', 'license', 'location', 'equipment']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(() => r.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
      expect(repos[2].definition.isTree, isTrue);
    });
  });
}
