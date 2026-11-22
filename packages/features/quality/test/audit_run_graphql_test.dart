import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;
import 'package:quality/quality.dart';

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

Map<String, dynamic> _label(String v) => {
  'transLabelId': 'lb',
  'value': {
    'nodes': [
      {'labelValue': v},
    ],
  },
};

Map<String, dynamic> _text(String id, String v) => {
  'transTextId': id,
  'value': {
    'nodes': [
      {'textValue': v},
    ],
  },
};

/// 通信の代役。受けた操作と変数を記録し、操作ごとの応答を返す。
class _FakeLink extends Link {
  final List<Request> requests = [];

  List<Map<String, dynamic>> varsOf(String op) => [
    for (final r in requests)
      if (_op(r) == op) r.variables,
  ];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final data = switch (_op(request)) {
      'AuditDetailPageRead' => {
        'allTransAuditDetails': {
          'nodes': [
            {
              'transAuditDetailsId': 'd1',
              'labels': _label('第1製造棟'),
              'audit': {'labels': _label('内部監査')},
              'team': {'labels': _label('チームA')},
              'conclusionText': _text('t-c', '指摘なし'),
              'scheduledAt': '2026-12-03T09:00:00',
              'expectedEndAt': null,
              'performedDate': '2026-12-03',
              'endedAt': null,
            },
          ],
        },
      },
      'AuditItemPageRead' => {
        'allTransAuditDetailCheckItems': {
          'nodes': [
            {
              'transAuditDetailCheckItemsId': 'i1',
              'formulaValue': {'value': '3'},
              'findingsText': _text('t-f', '一部未実施'),
              'standard': {
                'code': 'A1',
                'master': {
                  'labels': {
                    'sharedDictionaryBySharedDictionaryNameId': {
                      'value': {
                        'nodes': [
                          {'dictionaryValue': '記録の管理'},
                        ],
                      },
                    },
                  },
                },
              },
              'complaints': {
                'nodes': [
                  {'transAuditComplaintId': 'l1', 'transComplaintId': 'c1'},
                ],
              },
            },
            {
              'transAuditDetailCheckItemsId': 'i2',
              'formulaValue': null,
              'findingsText': null,
              'standard': {'code': 'A2', 'master': null},
              'complaints': {'nodes': []},
            },
          ],
        },
      },
      'AuditTextSavePageCall' => {
        'transTextSave': {
          'transText': {'transTextId': 't-new'},
        },
      },
      'AuditItemPageEdit' => const <String, dynamic>{},
      _ => {
        'allSharedLanguageCodes': {
          'nodes': [
            {'sharedLanguageCodeId': 'L', 'code': 'JA'},
          ],
        },
      },
    };
    return Stream.value(Response(data: {'__typename': 'Query', ...data}, response: const {}));
  }
}

const _au = AuditUser(staffId: 'st1', staffHistoryId: 'h1');

void main() {
  late _FakeLink link;
  late GraphqlAuditRunGateway gw;

  setUp(() {
    link = _FakeLink();
    gw = GraphqlAuditRunGateway(GraphQLClient(link: link, cache: GraphQLCache()), auditUser: () async => _au);
  });

  test('自分の監査は、チームの監査員が自分のものに絞って読む(検索なし)', () async {
    final rows = await gw.myAssignments();
    final filter = link.varsOf('AuditDetailPageRead').single['filter'] as Map;
    expect(filter, {
      'transAuditTeamByTransAuditTeamIdAndTransAuditId': {
        'transAuditorsByTransAuditTeamId': {
          'some': {
            'staffId': {'equalTo': 'st1'},
            'remove': {'equalTo': false},
          },
        },
      },
    });
    final a = rows.single;
    expect(a.title, '第1製造棟');
    expect(a.auditName, '内部監査');
    expect(a.teamName, 'チームA');
    expect(a.scheduledAt, DateTime(2026, 12, 3, 9));
    expect(a.isInProgress, isTrue);
    expect(a.conclusion, '指摘なし');
  });

  test('ログインしていないとき(担当者が無い)は、空', () async {
    final none = GraphqlAuditRunGateway(GraphQLClient(link: link, cache: GraphQLCache()));
    expect(await none.myAssignments(), isEmpty);
    expect(link.requests, isEmpty);
  });

  test('項目は、基準の名称・値・所見・つないだ異常を持つ', () async {
    final items = await gw.items('d1');
    expect(items.first.name, '記録の管理');
    expect(items.first.code, 'A1');
    expect(items.first.value, '3');
    expect(items.first.findings, '一部未実施');
    expect(items.first.complaints.single.complaintId, 'c1');
    expect(items.first.answered, isTrue);
    expect(items.last.answered, isFalse);
    expect(link.varsOf('AuditItemPageRead').single['filter'], {
      'transAuditDetailsId': {'equalTo': 'd1'},
    });
  });

  test('値と所見の保存は、変わった分だけ送る(所見は共通関数で文章を保存し、その ID を渡す)', () async {
    final items = await gw.items('d1');
    await gw.saveItem(items.first, value: '4', findings: items.first.findings);
    var edit = link.varsOf('AuditItemPageEdit').single;
    expect(edit['formulaValue'], '{"value":"4"}');
    expect(edit.containsKey('findings'), isFalse);
    expect(link.varsOf('AuditTextSavePageCall'), isEmpty);

    await gw.saveItem(items.first, value: items.first.value, findings: '全員分あり');
    final text = link.varsOf('AuditTextSavePageCall').single;
    expect(text['pTextId'], 't-f'); // 既存の文章を更新する
    expect(text['pValues'], '{"ja":"全員分あり"}');
    edit = link.varsOf('AuditItemPageEdit').last;
    expect(edit['findings'], 't-new');
    expect(edit.containsKey('formulaValue'), isFalse);
    expect(edit['updateUserId'], 'st1');
  });

  test('開始・終了・異常の登録は、DB の関数の導入前は未対応', () async {
    await expectLater(gw.start('d1'), throwsUnsupportedError);
    await expectLater(gw.finish('d1', conclusion: ''), throwsUnsupportedError);
    await expectLater(gw.registerComplaint('i1', title: 't', details: 'd'), throwsUnsupportedError);
  });
}
