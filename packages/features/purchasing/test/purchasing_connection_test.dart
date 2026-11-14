import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:purchasing/purchasing.dart';

/// 購買の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 購買の取得元(読み取り専用)', () {
    serverTest('発注の一覧を、画面の値で取得できる', (server) async {
      final repos = purchasingRepositories(server.provider.client);
      final purchase = repos.firstWhere((r) => r.definition.key == 'purchase');
      final rows = await purchase.find(take: 5);
      expect(rows, isNotEmpty);
      final again = await purchase.findById(rows.first.id);
      expect(again?.values, rows.first.values);
    });

    serverTest('発注明細は、発注の下で、キャンセル数量・停止・受入済み・残(DB のビューの列)を持つ', (server) async {
      final repos = purchasingRepositories(server.provider.client);
      final purchase = repos.firstWhere((r) => r.definition.key == 'purchase');
      final detail = repos.firstWhere((r) => r.definition.key == 'purdetail');
      final purchases = await purchase.find(take: 20);
      List<EntityRecord> rows = const [];
      for (final p in purchases) {
        rows = await detail.findByParent(p.id);
        if (rows.isNotEmpty) break;
      }
      expect(rows, isNotEmpty, reason: '明細のある発注が無い');
      final d = rows.first;
      expect(d.parentId, isNotNull);
      for (final key in ['cancel_quantity', 'stop', 'received_quantity', 'remaining_quantity', 'open_quantity', 'cancel_closed', 'quantity']) {
        expect(d.values.containsKey(key), isTrue, reason: key);
      }
      expect(d.valueOf('remaining_quantity'), isNotEmpty);
      final one = await detail.findById(d.id);
      expect(one?.valueOf('remaining_quantity'), d.valueOf('remaining_quantity'));
    });

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () async {
      final repos = purchasingRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['purchase', 'purdetail']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(() => r.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
    });
  });
}
