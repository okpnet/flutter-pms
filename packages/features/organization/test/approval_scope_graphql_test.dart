import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

const _au = AuditUser(staffId: 'st1', staffHistoryId: 'h1');

/// 通信の代役。受けた操作と変数を記録し、操作ごとの応答を返す。
class _FakeLink extends Link {
  _FakeLink({this.scopeUsingApproval = false, this.duplicateExists = false});

  /// true のとき、アクセスパスの承認を使っている承認の範囲が返る(使用中)。
  final bool scopeUsingApproval;

  /// true のとき、同じ承認パターン + アクセスパスの承認の組が、すでにある。
  final bool duplicateExists;
  final List<Request> requests = [];

  List<Map<String, dynamic>> varsOf(String op) => [
    for (final r in requests)
      if (_op(r) == op) r.variables,
  ];

  /// 承認の範囲の読み込みの応答(絞り込みの種類で変える)。
  List<Map<String, dynamic>> _scopeNodes(Object? filter, Map<String, dynamic> row) {
    final keys = filter is Map ? filter.keys.toSet() : <Object?>{};
    if (keys.contains('infoAccessPathApprovalId') && keys.contains('mstrApprovalPatternId')) {
      // 同じ組を調べる読み込み
      return duplicateExists ? [{...row, 'mstrApprovalScopePatternId': 'other'}] : [];
    }
    if (keys.contains('infoAccessPathApprovalId')) {
      // 使用中を調べる読み込み
      return scopeUsingApproval ? [row] : [];
    }
    return [row];
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final filter = request.variables['filter'];
    final Map<String, dynamic> scopeRow = {
      'mstrApprovalScopePatternId': 'sc1',
      'mstrApprovalPatternId': 'p1',
      'infoAccessPathApprovalId': 'apa1',
      'remarks': '備考',
    };
    final data = switch (_op(request)) {
      'AccessPathApprovalLedgerPageRead' => {
        'allInfoAccessPathApprovals': {
          'nodes': [
            {
              'infoAccessPathApprovalId': 'apa1',
              'infoAccessPathId': 'path1',
              'labels': {
                'sharedAppellationsId': 'ap-1',
                'sharedDictionaryBySharedDictionaryNameId': {
                  'value': {
                    'nodes': [
                      {'dictionaryValue': '受注の承認'},
                    ],
                  },
                },
              },
              'remarks': null,
            },
          ],
        },
      },
      'ApprovalScopeLedgerPageRead' => {
        'allMstrApprovalScopePatterns': {'nodes': _scopeNodes(filter, scopeRow)},
      },
      'ApprovalPatternAppellationSavePageCall' => {
        'sharedAppellationSave': {
          'sharedAppellation': {'sharedAppellationsId': 'ap-new'},
        },
      },
      'AccessPathApprovalLedgerPageCreate' => {
        'createInfoAccessPathApproval': {
          'infoAccessPathApproval': {'infoAccessPathApprovalId': 'apa1'},
        },
      },
      'ApprovalScopeLedgerPageCreate' => {
        'createMstrApprovalScopePattern': {
          'mstrApprovalScopePattern': {'mstrApprovalScopePatternId': 'sc1'},
        },
      },
      'AccessPathApprovalLedgerPageEdit' ||
      'AccessPathApprovalLedgerPageRemove' ||
      'ApprovalScopeLedgerPageEdit' ||
      'ApprovalScopeLedgerPageRemove' => const <String, dynamic>{},
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

dynamic _repo(_FakeLink link, String key) =>
    organizationRepositories(GraphQLClient(link: link, cache: GraphQLCache()), auditUser: () async => _au).firstWhere((r) => r.definition.key == key);

void main() {
  group('アクセスパスの承認', () {
    test('台帳の行は、名称(言語 ja)・アクセスパスの ID・備考を持つ', () async {
      final rows = await _repo(_FakeLink(), 'accesspathapproval').find(take: 10);
      expect(rows.single.valueOf('name'), '受注の承認');
      expect(rows.single.valueOf('access_path'), 'path1');
    });

    test('名称・アクセスパスが空のときは検証エラー(通信しない)', () async {
      final link = _FakeLink();
      await expectLater(
        _repo(link, 'accesspathapproval').save(const EntityRecord(id: '', values: {'name': '', 'access_path': '', 'remarks': ''})),
        throwsA(isA<EntityValidationException>()),
      );
      expect(link.requests, isEmpty);
    });

    test('登録は、呼称を作って、その ID を names に渡す(更新者つき)', () async {
      final link = _FakeLink();
      await _repo(link, 'accesspathapproval').save(const EntityRecord(id: '', values: {'name': '発注の承認', 'access_path': 'path2', 'remarks': ''}));
      expect(link.varsOf('ApprovalPatternAppellationSavePageCall').single['pName'], '{"ja":"発注の承認"}');
      final created = link.varsOf('AccessPathApprovalLedgerPageCreate').single;
      expect(created['names'], 'ap-new');
      expect(created['infoAccessPathId'], 'path2');
      expect(created['updateUserId'], 'st1');
    });

    test('削除は論理削除。承認の範囲が使っているときは、止める(使用中。削除の通信はしない)', () async {
      final free = _FakeLink();
      await _repo(free, 'accesspathapproval').remove('apa1');
      expect(free.varsOf('AccessPathApprovalLedgerPageRemove').single['remove'], isTrue);

      final used = _FakeLink(scopeUsingApproval: true);
      await expectLater(_repo(used, 'accesspathapproval').remove('apa1'), throwsA(isA<EntityInUseException>()));
      expect(used.varsOf('AccessPathApprovalLedgerPageRemove'), isEmpty);
    });
  });

  group('承認の範囲', () {
    test('承認パターンごとに読める(親の ID は parentId)', () async {
      final link = _FakeLink();
      final rows = await _repo(link, 'approvalscope').findByParent('p1');
      expect(rows.single.parentId, 'p1');
      expect(rows.single.valueOf('access_path_approval'), 'apa1');
      expect(link.varsOf('ApprovalScopeLedgerPageRead').single['filter'], {
        'mstrApprovalPatternId': {'equalTo': 'p1'},
      });
    });

    test('登録は、承認パターンとアクセスパスの承認で作る(更新者つき)', () async {
      final link = _FakeLink();
      await _repo(link, 'approvalscope').save(const EntityRecord(id: '', parentId: 'p1', values: {'access_path_approval': 'apa2', 'remarks': '備考'}));
      final created = link.varsOf('ApprovalScopeLedgerPageCreate').single;
      expect(created['mstrApprovalPatternId'], 'p1');
      expect(created['infoAccessPathApprovalId'], 'apa2');
      expect(created['remarks'], '備考');
      expect(created['updateUserId'], 'st1');
    });

    test('同じ承認パターンに同じアクセスパスの承認があるときは、重複(登録しない)', () async {
      final link = _FakeLink(duplicateExists: true);
      await expectLater(
        _repo(link, 'approvalscope').save(const EntityRecord(id: '', parentId: 'p1', values: {'access_path_approval': 'apa1', 'remarks': ''})),
        throwsA(isA<EntityValidationException>()),
      );
      expect(link.varsOf('ApprovalScopeLedgerPageCreate'), isEmpty);
    });

    test('アクセスパスの承認が空のとき・親が無いときは、エラー', () async {
      final r = _repo(_FakeLink(), 'approvalscope');
      await expectLater(r.save(const EntityRecord(id: '', parentId: 'p1', values: {'access_path_approval': '', 'remarks': ''})), throwsA(isA<EntityValidationException>()));
      await expectLater(r.save(const EntityRecord(id: '', values: {'access_path_approval': 'apa9', 'remarks': ''})), throwsStateError);
    });
  });
}
