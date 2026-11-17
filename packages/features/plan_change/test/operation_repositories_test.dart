import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:plan_change/plan_change.dart';

/// 未処置一覧の行の操作の実体(保存 = DB の関数の呼び出し)のテスト。
/// 通信するものは検証用サーバー(一般ユーザーの資格情報を渡して実行する)。
/// 「仕掛品を在庫にする」は計画変更を 1 件追記する(名前に明記)。後始末で、その計画変更を論理削除する。
void main() {
  IEntityRepository repo(GraphQLClient c, String key) =>
      planChangeRepositories(c).firstWhere((r) => r.definition.key == key);

  group('操作の実体(オフライン)', () {
    test('操作の実体は、メニューに出さず、追記だけ(更新・削除は不可)', () {
      final c = GraphQLClient(
        link: HttpLink('http://localhost:1'),
        cache: GraphQLCache(),
      );
      final keys = planChangeRepositories(
        c,
      ).map((r) => r.definition.key).where((k) => k.startsWith('act')).toList();
      expect(keys, hasLength(8));
      for (final k in keys) {
        final r = repo(c, k);
        expect(r.definition.inMenu, isFalse, reason: k);
        expect(r.definition.viewOnly, isFalse, reason: k);
        expect(
          () => r.save(const EntityRecord(id: 'x', values: {})),
          throwsUnsupportedError,
          reason: k,
        );
        expect(() => r.remove('x'), throwsUnsupportedError, reason: k);
      }
    });

    test('未処置一覧の行のボタンは、種類(真偽の列)に合う行だけに出て、操作の実体を開く', () {
      final c = GraphQLClient(
        link: HttpLink('http://localhost:1'),
        cache: GraphQLCache(),
      );
      final open = repo(c, 'cancelopen').definition;
      RowAction action(String key) =>
          open.rowActions.firstWhere((a) => a.key == key);
      expect(action('do_ship_cancel').target, 'actshipcancel');
      expect(action('do_ship_cancel').whenAny, ['is_shipping_order']);
      expect(action('do_pur_cancel').target, 'actpurcancel');
      expect(action('do_pur_cancel').whenAny, ['is_outsource_order']);
      for (final a in open.rowActions) {
        expect(repo(c, a.target).definition.key, a.target);
        // 条件の列は、台帳にある真偽の項目
        for (final k in a.whenAny) {
          expect(
            open.fields.any((f) => f.key == k && f.kind == FieldKind.flag),
            isTrue,
            reason: '${a.key}: $k',
          );
        }
      }
    });
  });

  group('検証用サーバー: 操作の実体', () {
    serverTest('存在しない対象は、種類つきの失敗(対象が無い)になる(データは変わらない)', (server) async {
      final r = repo(server.provider.client, 'actshipcancel');
      await expectLater(
        r.save(
          const EntityRecord(
            id: '',
            values: {
              'target': 'shipping_order:00000000-0000-0000-0000-000000000000',
            },
          ),
        ),
        throwsA(isA<EntityFailureException>()),
      );
    });

    serverTest('仕掛品を在庫にすると、計画変更が追記される(データを変更し、後始末で論理削除する)', (server) async {
      final client = server.provider.client;
      final open = repo(client, 'cancelopen');
      final history = repo(client, 'planchange');
      final rows = await open.find(take: 200);
      final wip = rows.where((r) => r.valueOf('is_work_in_process') == flagOn);
      if (wip.isEmpty) return markTestSkipped('未処置の仕掛品が無い');
      String? changeId;
      try {
        final saved = await repo(client, 'actlotrelease').save(
          EntityRecord(
            id: '',
            values: {
              'target': wip.first.id,
              'reason': 'operation_repositories_test',
            },
          ),
        );
        changeId = saved.id;
        final change = await history.findById(changeId);
        expect(change, isNotNull);
        expect(change!.valueOf('is_release'), flagOn);
        expect(change.valueOf('is_visiter'), flagOn);
      } finally {
        if (changeId != null) {
          await client.mutate(
            MutationOptions(
              document: gql(
                r'mutation($id: UUID!) { updateTransPlanChangeByTransPlanChangeId(input: {transPlanChangeId: $id, transPlanChangePatch: {remove: true}}) { clientMutationId } }',
              ),
              variables: {'id': changeId},
            ),
          );
        }
      }
    });
  });
}
