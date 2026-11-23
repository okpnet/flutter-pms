import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

Map<String, dynamic> _dict(String v) => {
  'sharedDictionaryId': 'd',
  'value': {
    'nodes': [
      {'dictionaryValue': v},
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
      'ApprovalPatternLedgerPageRead' => {
        'allMstrApprovalPatterns': {
          'nodes': [
            {
              'mstrApprovalPatternId': 'p1',
              'labels': {
                'sharedAppellationsId': 'ap1',
                'sharedDictionaryBySharedDictionaryNameId': _dict('購買申請'),
                'sharedDictionaryBySharedDictionaryPronunciationId': _dict('コウバイ'),
              },
              'remarks': '資材の購入',
            },
          ],
        },
      },
      'ApprovalDefaultsPageRead' => {
        'allInfoApps': {
          'nodes': [
            {'infoAppId': 'app1', 'documentApprovalPatternId': 'p-used', 'orderApprovalPatternId': null},
          ],
        },
      },
      'ApprovalPatternAppellationSavePageCall' => {
        'sharedAppellationSave': {
          'sharedAppellation': {'sharedAppellationsId': 'ap-new'},
        },
      },
      'ApprovalPatternLedgerPageCreate' => {
        'createMstrApprovalPattern': {
          'mstrApprovalPattern': {'mstrApprovalPatternId': 'p1'},
        },
      },
      'ApprovalStepPageRead' => {
        'allMstrApprovalPatternDetails': {
          'nodes': [
            for (final e in [('s1', 'a1', 3, 'd1', 'x1'), ('s2', 'a2', 1, 'd2', 'x2'), ('s3', 'a3', 2, null, 'x3')])
              {
                'mstrApprovalPatternDetailId': e.$1,
                'mstrApprovalPatternId': 'p1',
                'mstrApprovalId': e.$2,
                'approval': {
                  'mstrApprovalId': e.$2,
                  'priority': e.$3,
                  'infoDepartmentId': e.$4,
                  'infoPositionId': e.$5,
                  'labels': {'sharedDictionaryBySharedDictionaryNameId': _dict('段${e.$1}')},
                },
              },
          ],
        },
      },
      'ApprovalStepApprovalPageCreate' => {
        'createMstrApproval': {
          'mstrApproval': {'mstrApprovalId': 'a-new'},
        },
      },
      'ApprovalStepDepartmentOptionPageRead' => {
        'allInfoDepartments': {
          'nodes': [
            {'infoDepartmentId': 'd1', 'labels': {'sharedDictionaryBySharedDictionaryNameId': _dict('製造部')}},
          ],
        },
      },
      'ApprovalStepPositionOptionPageRead' => {
        'allInfoPositions': {
          'nodes': [
            {'infoPositionId': 'x1', 'labels': {'sharedDictionaryBySharedDictionaryNameId': _dict('工場長')}},
          ],
        },
      },
      'ApprovalStepApprovalPageEdit' || 'ApprovalStepDetailPageCreate' || 'ApprovalStepDetailPageRemove' || 'ApprovalStepApprovalPageRemove' ||
      'ApprovalPatternLedgerPageEdit' || 'ApprovalPatternLedgerPageRemove' => const <String, dynamic>{},
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
  late GraphQLClient client;

  setUp(() {
    link = _FakeLink();
    client = GraphQLClient(link: link, cache: GraphQLCache());
  });

  group('承認の段(GraphQL 版)', () {
    test('段は順位の昇順に並び、部署・役職・名称を持つ', () async {
      final gw = GraphqlApprovalStepsGateway(client);
      final steps = await gw.load('p1');
      expect([for (final s in steps) s.id], ['s2', 's3', 's1']);
      expect(steps.first.positionId, 'x2');
      expect(steps[1].departmentId, isNull);
      expect(steps.first.name, '段s2');
      // 承認パターンで絞り込んで読む
      expect(link.varsOf('ApprovalStepPageRead').single['filter'], {
        'mstrApprovalPatternId': {'equalTo': 'p1'},
      });
    });

    test('並べ替えは、順位が変わった段の承認だけを更新する(1 から振り直す)', () async {
      final gw = GraphqlApprovalStepsGateway(client, auditUser: () async => _au);
      final steps = await gw.load('p1'); // s2(1) s3(2) s1(3)
      await gw.reorder([steps[1], steps[0], steps[2]]); // s3, s2, s1
      final edits = link.varsOf('ApprovalStepApprovalPageEdit');
      expect([for (final e in edits) '${e['mstrApprovalId']}:${e['priority']}'], ['a3:1', 'a2:2']);
      expect(edits.first['updateUserId'], 'st1');
    });

    test('段の追加は、呼称 → 承認 → 承認パターン明細の順に登録し、名称は「部署 役職」', () async {
      final gw = GraphqlApprovalStepsGateway(client, auditUser: () async => _au);
      await gw.add('p1', departmentId: 'd1', positionId: 'x1', priority: 4);
      final ops = [for (final r in link.requests) _op(r)].whereType<String>().where((o) => o.contains('Save') || o.contains('Create')).toList();
      expect(ops, ['ApprovalPatternAppellationSavePageCall', 'ApprovalStepApprovalPageCreate', 'ApprovalStepDetailPageCreate']);
      expect(link.varsOf('ApprovalPatternAppellationSavePageCall').single['pName'], '{"ja":"製造部 工場長"}');
      final approval = link.varsOf('ApprovalStepApprovalPageCreate').single;
      expect(approval['names'], 'ap-new');
      expect(approval['priority'], 4);
      final detail = link.varsOf('ApprovalStepDetailPageCreate').single;
      expect(detail['mstrApprovalPatternId'], 'p1');
      expect(detail['mstrApprovalId'], 'a-new');
    });

    test('段の削除は、承認パターン明細と承認を論理削除する', () async {
      final gw = GraphqlApprovalStepsGateway(client);
      final steps = await gw.load('p1');
      await gw.remove(steps.first);
      expect(link.varsOf('ApprovalStepDetailPageRemove').single['remove'], isTrue);
      expect(link.varsOf('ApprovalStepApprovalPageRemove').single['mstrApprovalId'], 'a2');
    });
  });

  group('承認パターンの台帳(GraphQL 版)', () {
    IEntityRepository repo() => organizationRepositories(client, auditUser: () async => _au).firstWhere((r) => r.definition.key == 'approvalpattern');

    test('台帳の行は、名称・読み・備考(言語 ja)を持つ', () async {
      final rows = await repo().find(take: 10);
      expect(rows.single.valueOf('name'), '購買申請');
      expect(rows.single.valueOf('pronunciation'), 'コウバイ');
      expect(rows.single.valueOf('remarks'), '資材の購入');
    });

    test('名称が空のときは検証エラー(通信しない)', () async {
      await expectLater(
        repo().save(const EntityRecord(id: '', values: {'name': ' ', 'pronunciation': '', 'remarks': ''})),
        throwsA(isA<EntityValidationException>()),
      );
      expect(link.requests, isEmpty);
    });

    test('登録は、呼称を作って、その ID を names に渡す', () async {
      await repo().save(const EntityRecord(id: '', values: {'name': '新しいパターン', 'pronunciation': '', 'remarks': '備考'}));
      expect(link.varsOf('ApprovalPatternAppellationSavePageCall').single['pName'], '{"ja":"新しいパターン"}');
      final created = link.varsOf('ApprovalPatternLedgerPageCreate').single;
      expect(created['names'], 'ap-new');
      expect(created['remarks'], '備考');
      expect(created['updateUserId'], 'st1');
    });

    test('更新は、変えた項目だけ送り、削除は論理削除', () async {
      final r = repo();
      await r.save(const EntityRecord(id: 'p1', values: {'name': '購買申請', 'pronunciation': 'コウバイ', 'remarks': '変更'}));
      final edit = link.varsOf('ApprovalPatternLedgerPageEdit').single;
      expect(edit['remarks'], '変更');
      // 名称・読みは変わっていないので、呼称には言語の値を送らない
      final appellation = link.varsOf('ApprovalPatternAppellationSavePageCall').single;
      expect(appellation['pName'], isNull);
      expect(appellation['pPronunciation'], isNull);
      await r.remove('p1');
      expect(link.varsOf('ApprovalPatternLedgerPageRemove').single['remove'], isTrue);
    });

    test('標準の承認パターンが指しているものは、削除できない(使用中。削除の通信はしない)', () async {
      final r = repo();
      await expectLater(r.remove('p-used'), throwsA(isA<EntityInUseException>()));
      expect(link.varsOf('ApprovalPatternLedgerPageRemove'), isEmpty);
    });
  });
}
