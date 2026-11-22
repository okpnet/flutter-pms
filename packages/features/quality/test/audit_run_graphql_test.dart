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
                  {
                    'transAuditComplaintId': 'l1',
                    'transComplaintId': 'c1',
                    'complaint': {'labels': _label('教育訓練の記録なし')},
                  },
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
      'AuditAssignmentPageRead' => {
        'allVAuditAssignments': {
          'nodes': [
            {
              'transAuditDetailsId': 'd1',
              'isPlanned': false,
              'isInProgress': true,
              'isDone': false,
              'isOverdue': false,
              'itemCount': 5,
              'answeredCount': 2,
              'complaintCount': 1,
              'statusLabelJa': '実施中',
              'statusLabelEn': 'In progress',
            },
          ],
        },
      },
      'AuditDetailStartPageCall' => {
        'auditDetailStart': {
          'transAuditDetail': {'transAuditDetailsId': 'd1', 'performedDate': '2026-12-03'},
        },
      },
      'AuditDetailFinishPageCall' => {
        'auditDetailFinish': {
          'transAuditDetail': {'transAuditDetailsId': 'd1', 'endedAt': '2026-12-03T17:00:00'},
        },
      },
      'AuditComplaintRegisterPageCall' => {
        'auditComplaintRegister': {
          'transAuditComplaint': {'transAuditComplaintId': 'l9', 'transComplaintId': 'c9', 'transAuditDetailCheckItemsId': 'i1'},
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

  test('自分の監査は、ビュー(staff_id = 自分)の割り当てを読み、名称は監査実施詳細から引く(検索なし)', () async {
    final rows = await gw.myAssignments();
    expect(link.varsOf('AuditAssignmentPageRead').single['filter'], {
      'staffId': {'equalTo': 'st1'},
    });
    expect(link.varsOf('AuditDetailPageRead').single['filter'], {
      'transAuditDetailsId': {
        'in': ['d1'],
      },
    });
    final a = rows.single;
    expect(a.title, '第1製造棟');
    expect(a.auditName, '内部監査');
    expect(a.teamName, 'チームA');
    expect(a.scheduledAt, DateTime(2026, 12, 3, 9));
    expect(a.conclusion, '指摘なし');
    // 状態は、ビューの boolean・文字・件数
    expect(a.isInProgress, isTrue);
    expect(a.isPlanned, isFalse);
    expect(a.isOverdue(DateTime(2030)), isFalse); // ビューの値が優先(日付から導かない)
    expect(a.statusLabel, '実施中');
    expect((a.itemCount, a.answeredCount, a.complaintCount), (5, 2, 1));
  });

  test('割り当てが無い(ビューが空)ときは、名称を読まない', () async {
    final empty = GraphqlAuditRunGateway(
      GraphQLClient(link: _EmptyViewLink(link), cache: GraphQLCache()),
      auditUser: () async => _au,
    );
    expect(await empty.myAssignments(), isEmpty);
    expect(link.varsOf('AuditDetailPageRead'), isEmpty);
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
    expect(items.first.complaints.single.title, '教育訓練の記録なし');
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

  test('開始・終了・異常の登録は、DB の関数(1 トランザクション)を呼ぶ', () async {
    await gw.start('d1');
    expect(link.varsOf('AuditDetailStartPageCall').single, {'pAuditDetailsId': 'd1', 'pStaffId': 'st1'});

    await gw.finish('d1', conclusion: ' 指摘なし ');
    final f = link.varsOf('AuditDetailFinishPageCall').single;
    expect(f['pAuditDetailsId'], 'd1');
    expect(f['pConclusion'], '{"ja":"指摘なし"}');
    expect(f['pForce'], isTrue);
    await gw.finish('d1', conclusion: '');
    expect(link.varsOf('AuditDetailFinishPageCall').last.containsKey('pConclusion'), isFalse);

    final ref = await gw.registerComplaint('i1', title: '記録なし', details: '3 名分');
    final r = link.varsOf('AuditComplaintRegisterPageCall').single;
    expect(r['pItemId'], 'i1');
    expect(r['pTitles'], '{"ja":"記録なし"}');
    expect(r['pDetails'], '{"ja":"3 名分"}');
    expect(ref.complaintId, 'c9');
    expect(ref.title, '記録なし');
  });
}

/// ビューの読み込みだけ、空を返す代役(ほかは元の代役へ渡す)。
class _EmptyViewLink extends Link {
  _EmptyViewLink(this.inner);

  final _FakeLink inner;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    if (_op(request) == 'AuditAssignmentPageRead') {
      return Stream.value(Response(data: {'__typename': 'Query', 'allVAuditAssignments': {'nodes': []}}, response: const {}));
    }
    return inner.request(request, forward);
  }
}
