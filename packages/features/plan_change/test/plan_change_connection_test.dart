import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:plan_change/plan_change.dart';

/// 計画変更の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
///
/// 「受注明細を 1 件キャンセルして、一覧に出ること」を確かめるテストは、データを変更する(名前に明記)。
/// 後始末で、キャンセル数量を戻し、計画変更を論理削除する。
void main() {
  group('検証用サーバー: 計画変更の取得元(読み取り専用)', () {
    serverTest('履歴と未処置一覧を、boolean の列(チェック)で取得できる', (server) async {
      final repos = planChangeRepositories(server.provider.client);
      final history = repos.firstWhere((r) => r.definition.key == 'planchange');
      final open = repos.firstWhere((r) => r.definition.key == 'cancelopen');
      // 空でもよい(まだ計画変更が無い DB)。取得できて、値が真偽(オン = 1・オフ = 空)だけであること
      final rows = await history.find(take: 20);
      for (final r in rows) {
        for (final f in history.definition.fields.where(
          (f) => f.kind == FieldKind.flag,
        )) {
          expect(['', flagOn], contains(r.valueOf(f.key)), reason: f.key);
        }
      }
      final items = await open.find(take: 20);
      for (final r in items) {
        // 種類は、ちょうど 1 つ
        final kinds = [
          'is_inventory_request',
          'is_work_in_process',
          'is_hold',
          'is_shipping_order',
          'is_outsource_order',
          'is_supply_at_supplier',
          'is_customer_supply',
        ].where((k) => r.valueOf(k) == flagOn);
        expect(kinds.length, 1, reason: r.id);
      }
    });

    serverTest('受注明細のキャンセルが、履歴(キャンセル・受注明細・未反映)と未処置一覧に出る(データを変更し、後始末で戻す)', (
      server,
    ) async {
      final client = server.provider.client;
      final repos = planChangeRepositories(client);
      final history = repos.firstWhere((r) => r.definition.key == 'planchange');
      final open = repos.firstWhere((r) => r.definition.key == 'cancelopen');

      final od = await client.query(
        QueryOptions(
          document: gql(
            'query { allTransOrderDetails(first: 1, filter: {remove: {equalTo: false}, cancelQuantity: {equalTo: "0"}}, orderBy: QUANTITY_ASC) { nodes { transOrderDetailId quantity itemId } } }',
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      final node =
          (od.data?['allTransOrderDetails']?['nodes'] as List?)?.firstOrNull
              as Map?;
      if (node == null) return markTestSkipped('キャンセルできる受注明細が無い');
      final id = node['transOrderDetailId'] as String;
      final quantity = '${node['quantity']}';
      String? changeId;
      try {
        final cancel = await client.mutate(
          MutationOptions(
            document: gql(
              r'mutation($i: OrderDetailCancelInput!) { orderDetailCancel(input: $i) { transPlanChange { transPlanChangeId } } }',
            ),
            variables: {
              'i': {
                'pOrderDetailId': id,
                'pQuantity': quantity,
                'pReason': 'plan_change の通信テスト',
              },
            },
          ),
        );
        expect(cancel.exception, isNull, reason: '${cancel.exception}');
        changeId =
            cancel.data?['orderDetailCancel']?['transPlanChange']?['transPlanChangeId']
                as String?;
        expect(changeId, isNotNull);

        final change = await history.findById(changeId!);
        expect(change, isNotNull);
        expect(change!.valueOf('is_cancel'), flagOn);
        expect(change.valueOf('is_order_detail'), flagOn);
        expect(change.valueOf('is_unreflected'), flagOn);
        expect(change.valueOf('is_root'), flagOn);
        expect(change.valueOf('is_stop'), '');
        expect(change.valueOf('item'), '${node['itemId']}');
        expect(
          num.parse(change.valueOf('cancel_quantity')),
          num.parse(quantity),
        );

        // 受注明細が全部キャンセル済みなので、その下の出荷オーダーなどが未処置一覧に出る場合がある(ダミーに依存)。
        // 出るなら、種類のどれかと、原因(キャンセル)が立つ
        final items = await open.find(take: 200);
        for (final r in items.where(
          (r) => r.valueOf('cause_cancel') == flagOn,
        )) {
          expect(r.valueOf('cause_stop'), isIn(['', flagOn]));
        }
      } finally {
        // 後始末: キャンセル数量を戻し、計画変更を論理削除する
        await client.mutate(
          MutationOptions(
            document: gql(
              r'mutation($id: UUID!) { updateTransOrderDetailByTransOrderDetailId(input: {transOrderDetailId: $id, transOrderDetailPatch: {cancelQuantity: "0"}}) { clientMutationId } }',
            ),
            variables: {'id': id},
          ),
        );
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

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () {
      final repos = planChangeRepositories(
        GraphQLClient(
          link: HttpLink('http://localhost:1'),
          cache: GraphQLCache(),
        ),
      );
      expect(repos.map((r) => r.definition.key).take(2), [
        'planchange',
        'cancelopen',
      ]);
      // 読み取り専用なのは台帳の 2 つ。操作の実体は、追記だけ(更新・削除は不可)
      for (final r in repos.take(2)) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(
          () => r.save(const EntityRecord(id: '', values: {})),
          throwsUnsupportedError,
        );
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
    });
  });
}
