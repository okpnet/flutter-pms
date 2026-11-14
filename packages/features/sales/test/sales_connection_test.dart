import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:sales/sales.dart';

/// 営業の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 営業の取得元(読み取り専用)', () {
    serverTest('受注の一覧を、画面の値で取得できる', (server) async {
      final repos = salesRepositories(server.provider.client);
      final order = repos.firstWhere((r) => r.definition.key == 'order');
      final rows = await order.find(take: 5);
      expect(rows, isNotEmpty);
      expect(rows.first.valueOf('order_number'), isNotEmpty);
      // 1件の取得も同じ値
      final again = await order.findById(rows.first.id);
      expect(again?.values, rows.first.values);
    });

    serverTest('受注明細は、受注の下で、キャンセル数量・停止・残(DB のビューの列)を持つ', (server) async {
      final repos = salesRepositories(server.provider.client);
      final order = repos.firstWhere((r) => r.definition.key == 'order');
      final detail = repos.firstWhere((r) => r.definition.key == 'orderdetail');
      final orders = await order.find(take: 20);
      List<EntityRecord> rows = const [];
      for (final o in orders) {
        rows = await detail.findByParent(o.id);
        if (rows.isNotEmpty) break;
      }
      expect(rows, isNotEmpty, reason: '明細のある受注が無い');
      final d = rows.first;
      expect(d.parentId, isNotNull);
      for (final key in ['cancel_quantity', 'stop', 'customer_property', 'remaining_quantity', 'open_quantity', 'cancel_closed', 'quantity']) {
        expect(d.values.containsKey(key), isTrue, reason: key);
      }
      // 残は、DB のビューの値(数量 − キャンセル − 出荷)。画面で計算した値ではない
      expect(d.valueOf('remaining_quantity'), isNotEmpty);
      // 明細の ID だけから、1件を取得できる
      final one = await detail.findById(d.id);
      expect(one?.valueOf('remaining_quantity'), d.valueOf('remaining_quantity'));
    });

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () async {
      // 通信しない(クライアントは使われない)。定義と、書き込みの拒否だけを確認する
      final repos = salesRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['order', 'orderdetail']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(() => r.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
    });
  });
}
