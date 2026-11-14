import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:sales/sales.dart';

/// 営業の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 営業の取得元', () {
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

    test('定義: 受注・受注明細は書き込める。残・キャンセル・停止などは読み取り専用', () async {
      // 通信しない(クライアントは使われない)
      final repos = salesRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['order', 'orderdetail', 'shipplan', 'shipline']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isFalse);
      }
      final detail = repos.firstWhere((r) => r.definition.key == 'orderdetail').definition;
      for (final key in ['cancel_quantity', 'stop', 'remaining_quantity', 'open_quantity', 'cancel_closed', 'settlement_amount']) {
        expect(detail.fields.firstWhere((f) => f.key == key).readOnly, isTrue, reason: key);
      }
      expect(detail.fields.firstWhere((f) => f.key == 'quantity').readOnly, isFalse);
      // 必須の項目が空なら、通信せずに検証エラー
      await expectLater(repos.first.save(const EntityRecord(id: '', values: {})), throwsA(isA<EntityValidationException>()));
    });

    serverTest('受注と受注明細を登録・更新・削除(論理削除)できる。後始末で削除する', (server) async {
      final repos = salesRepositories(server.provider.client);
      final order = repos.firstWhere((r) => r.definition.key == 'order');
      final detail = repos.firstWhere((r) => r.definition.key == 'orderdetail');
      // 既存の顧客・品目を借りる
      final orders = await order.find(take: 20);
      String? customerId;
      String? itemId;
      for (final o in orders) {
        customerId ??= o.valueOf('stakeholder_id').isEmpty ? null : o.valueOf('stakeholder_id');
        for (final d in await detail.findByParent(o.id)) {
          if (d.valueOf('item_id').isNotEmpty) itemId = d.valueOf('item_id');
        }
        if (customerId != null && itemId != null) break;
      }
      expect(customerId, isNotNull, reason: '顧客が無い');
      expect(itemId, isNotNull, reason: '品目が無い');

      String? orderId;
      String? detailId;
      try {
        final created = await order.save(EntityRecord(id: '', values: {
          'order_number': 'TEST-WRITE-${DateTime.now().millisecondsSinceEpoch}',
          'stakeholder_id': customerId!,
          'remarks': '書き込みテスト',
        }));
        orderId = created.id;
        expect(created.id, isNotEmpty);
        expect(created.valueOf('stakeholder_id'), customerId);

        final line = await detail.save(EntityRecord(id: '', parentId: orderId, values: {
          'item_id': itemId!,
          'quantity': '10',
          'unit_price': '100',
          'customer_property': 'いいえ',
        }));
        detailId = line.id;
        expect(line.parentId, orderId);
        // 残は DB のビューの値(キャンセル・停止の既定値のまま)
        expect(line.valueOf('remaining_quantity'), '10');
        expect(line.valueOf('stop'), isEmpty);

        // 更新(空にした項目は消える)
        final changed = await detail.save(EntityRecord(id: detailId, parentId: orderId, values: {
          ...line.values,
          'quantity': '12',
          'remarks': '更新',
        }));
        expect(changed.valueOf('quantity'), '12');
        expect(changed.valueOf('remarks'), '更新');
        // 操作の DB 関数で決まる列は、ここからは変わらない
        expect(changed.valueOf('cancel_quantity'), line.valueOf('cancel_quantity'));
      } finally {
        if (detailId != null) await detail.remove(detailId);
        if (orderId != null) await order.remove(orderId);
      }
      // 論理削除後は、一覧に出ない
      expect(await order.findById(orderId), isNull);
    });

    serverTest('出荷予定と出荷指示を登録・更新・削除(論理削除)できる。後始末で削除する', (server) async {
      final repos = salesRepositories(server.provider.client);
      final order = repos.firstWhere((r) => r.definition.key == 'order');
      final detail = repos.firstWhere((r) => r.definition.key == 'orderdetail');
      final ship = repos.firstWhere((r) => r.definition.key == 'shipplan');
      final shipLine = repos.firstWhere((r) => r.definition.key == 'shipline');
      // 出荷オーダーは受注 1 件につき 1 件(論理削除した行も数える)ため、この試験用の受注を作る。
      // 顧客(運送業者としても使う)・品目は既存を借りる
      String? stakeholderId;
      String? itemId;
      for (final o in await order.find(take: 20)) {
        if (o.valueOf('stakeholder_id').isEmpty) continue;
        for (final d in await detail.findByParent(o.id)) {
          if (d.valueOf('item_id').isNotEmpty) {
            stakeholderId = o.valueOf('stakeholder_id');
            itemId = d.valueOf('item_id');
          }
        }
        if (itemId != null) break;
      }
      expect(itemId, isNotNull, reason: '顧客・品目が無い');

      String? orderId;
      String? orderDetailId;
      String? shipId;
      String? lineId;
      try {
        final o = await order.save(EntityRecord(id: '', values: {
          'order_number': 'TEST-SHIP-${DateTime.now().millisecondsSinceEpoch}',
          'stakeholder_id': stakeholderId!,
        }));
        orderId = o.id;
        final d = await detail.save(EntityRecord(id: '', parentId: orderId, values: {
          'item_id': itemId!,
          'quantity': '10',
          'unit_price': '100',
        }));
        orderDetailId = d.id;
        final created = await ship.save(EntityRecord(id: '', values: {
          'order': orderId,
          'code': 'TEST-SHIP-${DateTime.now().millisecondsSinceEpoch}',
          'date': '2026-12-01',
          'arrival': '2026-12-03',
          'carrier': stakeholderId,
        }));
        shipId = created.id;
        expect(created.valueOf('date'), '2026-12-01');
        expect(created.valueOf('arrival'), '2026-12-03');

        final line = await shipLine.save(EntityRecord(id: '', parentId: shipId, values: {
          'orderdetail': orderDetailId,
          'qty': '5',
        }));
        lineId = line.id;
        expect(line.parentId, shipId);
        expect(line.valueOf('qty'), '5');

        final changed = await shipLine.save(EntityRecord(id: lineId, parentId: shipId, values: {
          ...line.values,
          'qty': '7',
          'arrival': '2026-12-04',
        }));
        expect(changed.valueOf('qty'), '7');
        expect(changed.valueOf('arrival'), '2026-12-04');
      } finally {
        if (lineId != null) await shipLine.remove(lineId);
        if (shipId != null) await ship.remove(shipId);
        if (orderDetailId != null) await detail.remove(orderDetailId);
        if (orderId != null) await order.remove(orderId);
      }
      expect(await ship.findById(shipId), isNull);
    });
  });
}
