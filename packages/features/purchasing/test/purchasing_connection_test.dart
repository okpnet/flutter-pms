import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:purchasing/purchasing.dart';

/// 購買の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 購買の取得元', () {
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

    test('定義: 発注・発注明細は書き込める。残・キャンセル・停止などは読み取り専用', () async {
      final repos = purchasingRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['purchase', 'purdetail']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isFalse);
      }
      final detail = repos.last.definition;
      for (final key in ['cancel_quantity', 'stop', 'received_quantity', 'remaining_quantity', 'open_quantity', 'cancel_closed']) {
        expect(detail.fields.firstWhere((f) => f.key == key).readOnly, isTrue, reason: key);
      }
      expect(detail.fields.firstWhere((f) => f.key == 'quantity').readOnly, isFalse);
      await expectLater(repos.first.save(const EntityRecord(id: '', values: {})), throwsA(isA<EntityValidationException>()));
    });

    serverTest('発注と発注明細を登録・更新・削除(論理削除)できる。後始末で削除する', (server) async {
      final repos = purchasingRepositories(server.provider.client);
      final purchase = repos.firstWhere((r) => r.definition.key == 'purchase');
      final detail = repos.firstWhere((r) => r.definition.key == 'purdetail');
      // 既存の仕入先・品目を借りる
      String? supplierId;
      String? itemId;
      for (final p in await purchase.find(take: 20)) {
        if (p.valueOf('stakeholder_id').isNotEmpty) supplierId ??= p.valueOf('stakeholder_id');
        for (final d in await detail.findByParent(p.id)) {
          if (d.valueOf('item_id').isNotEmpty) itemId = d.valueOf('item_id');
        }
        if (supplierId != null && itemId != null) break;
      }
      expect(supplierId, isNotNull, reason: '仕入先が無い');
      expect(itemId, isNotNull, reason: '品目が無い');

      String? purchaseId;
      String? detailId;
      try {
        final created = await purchase.save(EntityRecord(id: '', values: {
          'stakeholder_id': supplierId!,
          'remarks': '書き込みテスト',
        }));
        purchaseId = created.id;
        expect(created.valueOf('stakeholder_id'), supplierId);

        final line = await detail.save(EntityRecord(id: '', parentId: purchaseId, values: {
          'item_id': itemId!,
          'quantity': '10',
          'unit_price': '100',
          'material_supply': 'いいえ',
        }));
        detailId = line.id;
        expect(line.parentId, purchaseId);
        expect(line.valueOf('remaining_quantity'), '10');
        expect(line.valueOf('stop'), isEmpty);

        final changed = await detail.save(EntityRecord(id: detailId, parentId: purchaseId, values: {
          ...line.values,
          'quantity': '12',
          'remarks': '更新',
        }));
        expect(changed.valueOf('quantity'), '12');
        expect(changed.valueOf('remarks'), '更新');
        expect(changed.valueOf('cancel_quantity'), line.valueOf('cancel_quantity'));
      } finally {
        if (detailId != null) await detail.remove(detailId);
        if (purchaseId != null) await purchase.remove(purchaseId);
      }
      expect(await purchase.findById(purchaseId), isNull);
    });
  });
}
