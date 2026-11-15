import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:production_plan/production_plan.dart';

/// 生産計画の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
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
  group('検証用サーバー: 生産計画の取得元', () {
    serverTest('資材計画の一覧と、その下の生産計画(停止・打ち切りを持つ)を取得できる', (server) async {
      final repos = productionPlanRepositories(server.provider.client);
      final resource = repos.firstWhere((r) => r.definition.key == 'resplan');
      final ops = repos.firstWhere((r) => r.definition.key == 'opsplan');
      final plans = await resource.find(take: 20);
      expect(plans, isNotEmpty);
      List<EntityRecord> rows = const [];
      for (final p in plans) {
        rows = await ops.findByParent(p.id);
        if (rows.isNotEmpty) break;
      }
      expect(rows, isNotEmpty, reason: '生産計画のある資材計画が無い');
      final o = rows.first;
      expect(o.parentId, isNotNull);
      for (final key in ['stop', 'discontinue', 'quantity', 'deadline']) {
        expect(o.values.containsKey(key), isTrue, reason: key);
      }
      final one = await ops.findById(o.id);
      expect(one?.values, o.values);
      final again = await resource.findById(plans.first.id);
      expect(again?.values, plans.first.values);
    });

    test('定義: 資材計画・生産計画は書き込める。停止・打ち切りは読み取り専用', () async {
      final repos = productionPlanRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['resplan', 'opsplan']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isFalse);
      }
      final ops = repos.last.definition;
      for (final key in ['stop', 'discontinue']) {
        expect(ops.fields.firstWhere((f) => f.key == key).readOnly, isTrue, reason: key);
      }
      expect(ops.fields.firstWhere((f) => f.key == 'quantity').readOnly, isFalse);
      await expectLater(repos.first.save(const EntityRecord(id: '', values: {})), throwsA(isA<EntityValidationException>()));
    });

    serverTest('更新者: ログイン中の担当者が、登録・更新・論理削除で記録される(更新者を渡さないと記録されない)', (server) async {
      final client = server.provider.client;
      expect(server.staffId, isNotNull, reason: 'JWT に staff_id が無い');
      final resourceWith = productionPlanRepositories(client, auditUser: server.auditUser).firstWhere((r) => r.definition.key == 'resplan');
      final resourceWithout = productionPlanRepositories(client).firstWhere((r) => r.definition.key == 'resplan');
      String? item;
      for (final p in await resourceWith.find(take: 20)) {
        if (p.valueOf('item_id').isNotEmpty) {
          item = p.valueOf('item_id');
          break;
        }
      }
      expect(item, isNotNull, reason: '品目が無い');
      String? id;
      try {
        final created = await resourceWithout.save(EntityRecord(id: '', values: {'item_id': item!, 'quantity': '1'}));
        id = created.id;
        final first = await _updater(client, 'transResourcePlanByTransResourcePlanId', 'transResourcePlanId', id);
        expect(first?['updateUserId'], isNull);
        await resourceWith.save(created.copyWith(values: {...created.values, 'remarks': '更新者のテスト'}));
        final updated = await _updater(client, 'transResourcePlanByTransResourcePlanId', 'transResourcePlanId', id);
        expect(updated?['updateUserId'], server.staffId);
        expect(updated?['updateUserHistoryId'], isNotNull);
        final createdWith = await resourceWith.save(EntityRecord(id: '', values: {'item_id': item, 'quantity': '1'}));
        final second = await _updater(client, 'transResourcePlanByTransResourcePlanId', 'transResourcePlanId', createdWith.id);
        expect(second?['updateUserId'], server.staffId);
        await resourceWith.remove(createdWith.id);
        await resourceWith.remove(id);
        final removed = await _updater(client, 'transResourcePlanByTransResourcePlanId', 'transResourcePlanId', id);
        expect(removed?['updateUserId'], server.staffId);
        id = null;
      } finally {
        if (id != null) await resourceWith.remove(id);
      }
    });

    serverTest('資材計画と生産計画を登録・更新・削除(論理削除)できる。後始末で削除する', (server) async {
      final repos = productionPlanRepositories(server.provider.client);
      final resource = repos.firstWhere((r) => r.definition.key == 'resplan');
      final ops = repos.firstWhere((r) => r.definition.key == 'opsplan');
      // 既存の品目を借りる
      String? itemId;
      for (final p in await resource.find(take: 20)) {
        if (p.valueOf('item_id').isNotEmpty) {
          itemId = p.valueOf('item_id');
          break;
        }
      }
      expect(itemId, isNotNull, reason: '品目が無い');

      String? resourceId;
      String? opsId;
      try {
        final created = await resource.save(EntityRecord(id: '', values: {
          'item_id': itemId!,
          'quantity': '5',
          'remarks': '書き込みテスト',
        }));
        resourceId = created.id;
        expect(created.valueOf('item_id'), itemId);
        expect(created.valueOf('quantity'), '5');

        final op = await ops.save(EntityRecord(id: '', parentId: resourceId, values: {
          'quantity': '5',
          'remarks': '書き込みテスト',
        }));
        opsId = op.id;
        expect(op.parentId, resourceId);
        // 停止・打ち切りは既定値のまま
        expect(op.valueOf('stop'), isEmpty);
        expect(op.valueOf('discontinue'), isEmpty);

        final changed = await ops.save(EntityRecord(id: opsId, parentId: resourceId, values: {
          ...op.values,
          'quantity': '6',
        }));
        expect(changed.valueOf('quantity'), '6');
        expect(changed.valueOf('stop'), isEmpty);
      } finally {
        if (opsId != null) await ops.remove(opsId);
        if (resourceId != null) await resource.remove(resourceId);
      }
      expect(await resource.findById(resourceId), isNull);
    });
  });
}
