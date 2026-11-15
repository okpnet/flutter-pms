import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:purchasing/purchasing.dart';

/// 購買の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。

/// 行の更新者(update_user_id・update_user_history_id)を、サーバーから読む(論理削除した行も読める)。
Future<Map<String, dynamic>?> _updater(GraphQLClient client, String field, String idArg, String id) async {
  final result = await client.query(
    QueryOptions(
      document: gql('query(\$id: UUID!) { $field($idArg: \$id) { updateUserId updateUserHistoryId } }'),
      variables: {'id': id},
      fetchPolicy: FetchPolicy.noCache,
    ),
  );
  if (result.exception != null) throw result.exception!;
  return (result.data?[field] as Map?)?.cast<String, dynamic>();
}

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

    serverTest('更新者: ログイン中の担当者が、登録・更新・論理削除で記録される(更新者を渡さないと記録されない)', (server) async {
      final client = server.provider.client;
      expect(server.staffId, isNotNull, reason: 'JWT に staff_id が無い');
      final withAudit = purchasingRepositories(client, auditUser: server.auditUser);
      final purchaseWith = withAudit.firstWhere((r) => r.definition.key == 'purchase');
      final purchaseWithout = purchasingRepositories(client).firstWhere((r) => r.definition.key == 'purchase');
      String? supplier;
      for (final p in await purchaseWith.find(take: 20)) {
        if (p.valueOf('stakeholder_id').isNotEmpty) {
          supplier = p.valueOf('stakeholder_id');
          break;
        }
      }
      expect(supplier, isNotNull, reason: '仕入先が無い');
      String? id;
      try {
        final created = await purchaseWithout.save(EntityRecord(id: '', values: {'stakeholder_id': supplier!}));
        id = created.id;
        final first = await _updater(client, 'transPurchaseByTransPurchaseId', 'transPurchaseId', id);
        expect(first?['updateUserId'], isNull);
        await purchaseWith.save(created.copyWith(values: {...created.values, 'remarks': '更新者のテスト'}));
        final updated = await _updater(client, 'transPurchaseByTransPurchaseId', 'transPurchaseId', id);
        expect(updated?['updateUserId'], server.staffId);
        expect(updated?['updateUserHistoryId'], isNotNull);
        final createdWith = await purchaseWith.save(EntityRecord(id: '', values: {'stakeholder_id': supplier}));
        final second = await _updater(client, 'transPurchaseByTransPurchaseId', 'transPurchaseId', createdWith.id);
        expect(second?['updateUserId'], server.staffId);
        await purchaseWith.remove(createdWith.id);
        await purchaseWith.remove(id);
        final removed = await _updater(client, 'transPurchaseByTransPurchaseId', 'transPurchaseId', id);
        expect(removed?['updateUserId'], server.staffId);
        id = null;
      } finally {
        if (id != null) await purchaseWith.remove(id);
      }
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
