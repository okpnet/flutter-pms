import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;
import 'package:quality/quality.dart';

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

Map<String, dynamic> _dict(String v) => {
  'value': {
    'nodes': [
      {'dictionaryValue': v},
    ],
  },
};

class _FakeLink extends Link {
  _FakeLink({this.usedByAudit = false});

  /// true のとき、この監査標準を使っている監査がある(使用中)。
  final bool usedByAudit;
  final List<Request> requests = [];

  List<Map<String, dynamic>> varsOf(String op) => [
    for (final r in requests)
      if (_op(r) == op) r.variables,
  ];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final data = switch (_op(request)) {
      'AuditStdPageRead' => {
        'allMstrAuditStds': {
          'nodes': [
            {
              'mstrAuditStdId': 'std1',
              'code': 'STD-01',
              'controlCode': null,
              'category': 2,
              'remarks': null,
              'labels': {
                'sharedAppellationsId': 'ap-1',
                'sharedDictionaryBySharedDictionaryNameId': _dict('内部監査標準'),
                'sharedDictionaryBySharedDictionaryPronunciationId': _dict('ナイブ'),
                'sharedDictionaryBySharedDictionaryNicknameId': null,
              },
              'detailTexts': {
                'sharedTextId': 'tx-1',
                'value': {
                  'nodes': [
                    {'leadText': '内部監査の基準。'},
                  ],
                },
              },
            },
          ],
        },
      },
      'AuditPageRead' => {
        'allTransAudits': {
          'nodes': [if (usedByAudit) {'transAuditId': 'a1'}],
        },
      },
      'AuditStdAppellationSavePageCall' => {
        'sharedAppellationSave': {
          'sharedAppellation': {'sharedAppellationsId': 'ap-new'},
        },
      },
      'AuditStdTextSavePageCall' => {
        'sharedTextSave': {
          'sharedText': {'sharedTextId': 'tx-new'},
        },
      },
      'AuditStdLedgerPageCreate' => {
        'createMstrAuditStd': {
          'mstrAuditStd': {'mstrAuditStdId': 'std1'},
        },
      },
      'AuditStdLedgerPageEdit' || 'AuditStdPageRemove' => const <String, dynamic>{},
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

dynamic _repo(_FakeLink link) => qualityRepositories(
  GraphQLClient(link: link, cache: GraphQLCache()),
  auditUser: () async => const AuditUser(staffId: 'st1', staffHistoryId: 'h1'),
).firstWhere((r) => r.definition.key == 'auditstd');

void main() {
  test('監査標準の行は、コード・名称・読み・区分・詳細(先頭の文)を持つ', () async {
    final r = (await _repo(_FakeLink()).find(take: 10)).single as EntityRecord;
    expect(r.valueOf('code'), 'STD-01');
    expect(r.valueOf('name'), '内部監査標準');
    expect(r.valueOf('category'), '2');
    expect(r.valueOf('detail'), '内部監査の基準。');
  });

  test('名称が空・区分が数でないときは検証エラー(通信しない)', () async {
    final link = _FakeLink();
    await expectLater(_repo(link).save(const EntityRecord(id: '', values: {'name': ''})), throwsA(isA<EntityValidationException>()));
    await expectLater(_repo(link).save(const EntityRecord(id: '', values: {'name': 'x', 'category': 'a'})), throwsA(isA<EntityValidationException>()));
    expect(link.requests, isEmpty);
  });

  test('登録は、呼称と詳細の文章を作って、その ID を names・details に渡す(更新者つき)', () async {
    final link = _FakeLink();
    await _repo(link).save(const EntityRecord(id: '', values: {'code': 'STD-09', 'name': '工程監査標準', 'pronunciation': 'コウテイ', 'detail': '工程の基準。', 'category': '1', 'remarks': ''}));
    final appellation = link.varsOf('AuditStdAppellationSavePageCall').single;
    expect(appellation['pName'], '{"ja":"工程監査標準"}');
    expect(appellation['pPronunciation'], '{"ja":"コウテイ"}');
    expect(link.varsOf('AuditStdTextSavePageCall').single['pValues'], '{"ja":"工程の基準。"}');
    final created = link.varsOf('AuditStdLedgerPageCreate').single;
    expect(created['names'], 'ap-new');
    expect(created['details'], 'tx-new');
    expect(created['code'], 'STD-09');
    expect(created['category'], 1);
    expect(created['controlCode'], isNull);
    expect(created['updateUserId'], 'st1');
  });

  test('更新は、変えた項目だけ。詳細を変えていなければ、文章を上書きしない(先頭の文だけを読んでいるため)', () async {
    final link = _FakeLink();
    await _repo(link).save(
      const EntityRecord(id: 'std1', values: {'code': 'STD-01', 'control_code': '', 'name': '内部監査標準', 'pronunciation': 'ナイブ', 'nickname': '', 'category': '2', 'detail': '内部監査の基準。', 'remarks': '備考'}),
    );
    expect(link.varsOf('AuditStdAppellationSavePageCall'), isEmpty);
    expect(link.varsOf('AuditStdTextSavePageCall'), isEmpty);
    final edit = link.varsOf('AuditStdLedgerPageEdit').single;
    expect(edit['remarks'], '備考');
    expect(edit.containsKey('names'), isFalse);
    expect(edit.containsKey('details'), isFalse);
  });

  test('削除は論理削除。監査が使っているときは止める(使用中。削除の通信はしない)', () async {
    final free = _FakeLink();
    await _repo(free).remove('std1');
    expect(free.varsOf('AuditStdPageRemove').single['remove'], isTrue);
    final used = _FakeLink(usedByAudit: true);
    await expectLater(_repo(used).remove('std1'), throwsA(isA<EntityInUseException>()));
    expect(used.varsOf('AuditStdPageRemove'), isEmpty);
  });
}
