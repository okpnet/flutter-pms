import 'package:approval/approval.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';

/// 問い合わせを記録して、決めた応答を返す通路(サーバーには接続しない)。
class _FakeLink extends Link {
  final List<Request> requests = [];
  Map<String, dynamic> Function(Request) respond = (_) => {};

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    return Stream.value(Response(data: respond(request), response: const {}));
  }
}

String? _name(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

GraphQLClient _client(_FakeLink l) => GraphQLClient(link: l, cache: GraphQLCache());

Map<String, dynamic> _label(String v) => {
  'sharedDictionaryBySharedDictionaryNameId': {
    'value': {
      'nodes': [
        {'dictionaryValue': v},
      ],
    },
  },
};

void main() {
  test('承認待ち: ログイン中の担当者が承認者で、いま承認できる行だけを、区分・対象・申請者・段階つきで返す', () async {
    final link = _FakeLink()
      ..respond = (r) => switch (_name(r)) {
            null => {
              'allSharedLanguageCodes': {
                'nodes': [
                  {'sharedLanguageCodeId': 'lang-ja', 'code': 'ja'},
                  {'sharedLanguageCodeId': 'lang-en', 'code': 'en'},
                ],
              },
            },
            _ => {
              '__typename': 'Query',
              'allVApprovalPendings': {
                'nodes': [
                  {
                    'transPreapprovalId': 'p1',
                    'isOrder': true,
                    'transOrderId': 'o1',
                    'targetSymbol': 'SO-1',
                    'applicant': {'labels': _label('小林 恵子')},
                    'appliedAt': '2026-10-02T09:00:00',
                    'approvalPriority': 2,
                    'approval': {'labels': _label('部長')},
                  },
                  {
                    'transPreapprovalId': 'p2',
                    'isDocument': true,
                    'mstrDocumentId': 'd1',
                    'targetSymbol': 'DOC-1',
                    'approvalPriority': 1,
                  },
                  {'transPreapprovalId': 'p3'}, // 区分を決められない行は出さない
                ],
              },
            },
          };
    final g = GraphqlApprovalGateway(_client(link));
    final items = await g.loadPending();
    expect(items.map((e) => e.preapprovalId), ['p1', 'p2']);
    expect(items[0].kind, 'order');
    expect(items[0].targetId, 'o1');
    expect(items[0].reference, 'SO-1');
    expect(items[0].applicant, '小林 恵子');
    expect(items[0].appliedAt, DateTime(2026, 10, 2, 9));
    expect(items[0].stepPriority, 2);
    expect(items[0].stepName, '部長');
    expect(items[1].kind, 'document');
    expect(items[1].targetId, 'd1');
    expect(items[1].applicant, '');

    // 言語コード ja の ID を引き、承認者かつ承認できる行だけを問い合わせる
    final q = link.requests.last;
    expect(q.variables['languageCodeId'], 'lang-ja');
    final filter = q.variables['filter'] as Map;
    expect(filter['approver'], {'equalTo': true});
    expect(filter['actionable'], {'equalTo': true});
  });

  test('承認: 承認前の ID を 1 回の呼び出しで渡し、行ごとの結果を返す', () async {
    final link = _FakeLink()
      ..respond = (r) => {
            '__typename': 'Mutation',
            'approvalApproveMany': {
              '__typename': 'ApprovalApproveManyPayload',
              'results': [
                {'preapprovalId': 'p1', 'ok': true, 'errorCode': null, 'errorMessage': null, 'approvedId': 'a1'},
                {'preapprovalId': 'p2', 'ok': false, 'errorCode': 'OPR03', 'errorMessage': '前の段階が承認されていません', 'approvedId': null},
              ],
            },
          };
    final outcomes = await GraphqlApprovalGateway(_client(link)).approve(['p1', 'p2'], remarks: 'ok');
    expect(link.requests.single.variables['pPreapprovalIds'], ['p1', 'p2']);
    expect(link.requests.single.variables['pApproved'], true);
    expect(link.requests.single.variables['pRemarks'], 'ok');
    expect(outcomes.map((o) => o.ok), [true, false]);
    expect(outcomes[1].errorCode, 'OPR03');
    expect(outcomes[1].errorMessage, '前の段階が承認されていません');
  });

  test('言語コードが無いときと、通信の失敗は、例外のまま投げる(画面が案内にする)', () async {
    final noLang = _FakeLink()..respond = (_) => {'allSharedLanguageCodes': {'nodes': []}};
    await expectLater(GraphqlApprovalGateway(_client(noLang)).loadPending(), throwsStateError);
    final broken = _FakeLink()..respond = (_) => throw StateError('boom');
    await expectLater(GraphqlApprovalGateway(_client(broken)).approve(['p1']), throwsA(anything));
  });
}
