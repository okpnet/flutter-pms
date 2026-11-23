import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;
import 'package:quality/quality.dart';

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

const _uuid = '3f2c1a40-0000-4000-8000-000000000001';

class _FakeLink extends Link {
  final List<Request> requests = [];

  /// シンボルから引ける対象(テスト用)。無いときは空の一覧を返す。
  final Map<String, String> workRecords = {'WR-0001': 'w-resolved'};
  final Map<String, String> visiters = {'LT-0001': 'v-resolved'};

  List<Map<String, dynamic>> varsOf(String op) => [
    for (final r in requests)
      if (_op(r) == op) r.variables,
  ];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final v = request.variables;
    String? symbol() => ((v['filter'] as Map?)?['symbol'] as Map?)?['equalTo'] as String?;
    final data = switch (_op(request)) {
      'ComplaintRegisterPageCall' => {
        'complaintRegister': {
          'transComplaint': {'transComplaintId': 'cmp-1'},
        },
      },
      'ComplaintWorkRecordLookupPageRead' => {
        'allTransWorkRecords': {
          'nodes': [
            if (workRecords.containsKey(symbol())) {'transWorkRecordId': workRecords[symbol()]},
          ],
        },
      },
      'ComplaintVisiterLookupPageRead' => {
        'allTransVisiters': {
          'nodes': [
            if (visiters.containsKey(symbol())) {'transVisiterId': visiters[symbol()]},
          ],
        },
      },
      _ => const <String, dynamic>{},
    };
    return Stream.value(Response(data: {'__typename': 'Query', ...data}, response: const {}));
  }
}

GraphqlComplaintRegisterGateway _gateway(_FakeLink link) => GraphqlComplaintRegisterGateway(
  GraphQLClient(link: link, cache: GraphQLCache()),
  auditUser: () async => const AuditUser(staffId: 'st1', staffHistoryId: 'h1'),
);

void main() {
  group('異常の登録(GraphQL 版)', () {
    test('対象の ID は、種類の引数 1 つだけに入る。題名・内容は言語別の JSON、担当者は引数', () async {
      final link = _FakeLink();
      final id = await _gateway(link).register(
        ComplaintRegisterInput(target: ComplaintTarget.process, targetId: 't1', title: ' 寸法の外れ ', details: '公差を超えた', occurredAt: DateTime(2026, 11, 20)),
      );
      expect(id, 'cmp-1');
      final v = link.varsOf('ComplaintRegisterPageCall').single;
      expect(v['pTitles'], '{"ja":"寸法の外れ"}');
      expect(v['pDetails'], '{"ja":"公差を超えた"}');
      expect(v['pTaskId'], 't1');
      for (final other in ['pEquipmentId', 'pPurchaseRecId', 'pVisiterId', 'pWorkRecordId', 'pOrderId', 'pStakeholderId']) {
        expect(v.containsKey(other), isFalse, reason: other);
      }
      expect(v['pStaffId'], 'st1');
      expect(v['pOccurredAt'], startsWith('2026-11-20'));
    });

    test('種類ごとに、渡す引数の名前が決まる', () async {
      final link = _FakeLink();
      final g = _gateway(link);
      final expected = {
        ComplaintTarget.equipment: 'pEquipmentId',
        ComplaintTarget.purchaseRec: 'pPurchaseRecId',
        ComplaintTarget.order: 'pOrderId',
        ComplaintTarget.stakeholder: 'pStakeholderId',
      };
      for (final e in expected.entries) {
        await g.register(ComplaintRegisterInput(target: e.key, targetId: 'x-${e.key.name}', title: 't'));
        final v = link.varsOf('ComplaintRegisterPageCall').last;
        expect(v[e.value], 'x-${e.key.name}');
      }
    });

    test('作業実績・ロットは、シンボルを ID に解決して渡す(ID の形ならそのまま)。数量は文字のまま', () async {
      final link = _FakeLink();
      final g = _gateway(link);
      await g.register(const ComplaintRegisterInput(target: ComplaintTarget.work, targetId: 'WR-0001', title: 't'));
      expect(link.varsOf('ComplaintRegisterPageCall').last['pWorkRecordId'], 'w-resolved');
      await g.register(const ComplaintRegisterInput(target: ComplaintTarget.visiter, targetId: 'LT-0001', title: 't', quantity: '2.5'));
      final v = link.varsOf('ComplaintRegisterPageCall').last;
      expect(v['pVisiterId'], 'v-resolved');
      expect(v['pQuantity'], '2.5');
      final before = link.varsOf('ComplaintVisiterLookupPageRead').length;
      await g.register(const ComplaintRegisterInput(target: ComplaintTarget.visiter, targetId: _uuid, title: 't', quantity: '1'));
      expect(link.varsOf('ComplaintVisiterLookupPageRead').length, before); // 問い合わせない
      expect(link.varsOf('ComplaintRegisterPageCall').last['pVisiterId'], _uuid);
    });

    test('シンボルが見つからないときは対象の誤り。入力が正しくないときは通信しない', () async {
      final link = _FakeLink();
      final g = _gateway(link);
      await expectLater(
        g.register(const ComplaintRegisterInput(target: ComplaintTarget.work, targetId: 'WR-9999', title: 't')),
        throwsA(isA<ComplaintRegisterException>().having((e) => e.errors, 'errors', [ComplaintRegisterError.targetRequired])),
      );
      expect(link.varsOf('ComplaintRegisterPageCall'), isEmpty);
      link.requests.clear();
      await expectLater(g.register(const ComplaintRegisterInput(target: ComplaintTarget.process)), throwsA(isA<ComplaintRegisterException>()));
      expect(link.requests, isEmpty);
    });
  });
}
