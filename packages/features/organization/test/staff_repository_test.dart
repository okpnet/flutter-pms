import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

Map<String, dynamic> _dict(String v) => {
  'value': {
    'nodes': [
      {'dictionaryValue': v},
    ],
  },
};

/// 通信の代役。受けた操作と変数を記録し、操作ごとの応答を返す。
class _FakeLink extends Link {
  _FakeLink({this.duplicateCode = false});

  /// true のとき、作業者の登録・更新が、コードの部分一意索引の違反で失敗する。
  final bool duplicateCode;
  final List<Request> requests = [];

  List<Map<String, dynamic>> varsOf(String op) => [
    for (final r in requests)
      if (_op(r) == op) r.variables,
  ];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final op = _op(request);
    if (duplicateCode && (op == 'StaffLedgerPageCreate' || op == 'StaffLedgerPageEdit')) {
      return Stream.value(
        Response(
          data: null,
          errors: [const GraphQLError(message: 'duplicate key value violates unique constraint "info_staff_ix_code_active"')],
          response: const {},
        ),
      );
    }
    final data = switch (op) {
      'StaffPageRead' => {
        'allInfoStaffs': {
          'nodes': [
            {
              'infoStaffId': 's1',
              'code': 'E-0012',
              'sex': '男性',
              'phone': '03-1111-2222',
              'privatePhone': null,
              'symbol': 'STAFF001',
              'remarks': null,
              'labels': {
                'sharedAppellationsId': 'ap-1',
                'sharedDictionaryBySharedDictionaryNameId': _dict('佐藤 健一'),
                'sharedDictionaryBySharedDictionaryPronunciationId': _dict('サトウ ケンイチ'),
              },
            },
          ],
        },
      },
      'CompanyPageRead' => {
        'allInfoCompanies': {
          'nodes': [
            {'infoCompanyId': 'c1'},
          ],
        },
      },
      'ApprovalPatternAppellationSavePageCall' => {
        'sharedAppellationSave': {
          'sharedAppellation': {'sharedAppellationsId': 'ap-new'},
        },
      },
      'StaffLedgerPageCreate' => {
        'createInfoStaff': {
          'infoStaff': {'infoStaffId': 's1'},
        },
      },
      'StaffLedgerPageEdit' || 'StaffLedgerPageRemove' => const <String, dynamic>{},
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

dynamic _repo(_FakeLink link) => organizationRepositories(
  GraphQLClient(link: link, cache: GraphQLCache()),
  auditUser: () async => const AuditUser(staffId: 'st1', staffHistoryId: 'h1'),
).firstWhere((r) => r.definition.key == 'staff');

void main() {
  test('作業者の台帳の行は、コード・名称・読み・性別・電話・備考を持つ', () async {
    final rows = await _repo(_FakeLink()).find(take: 10);
    final r = rows.single as EntityRecord;
    expect(r.valueOf('no'), 'E-0012');
    expect(r.valueOf('name'), '佐藤 健一');
    expect(r.valueOf('pronunciation'), 'サトウ ケンイチ');
    expect(r.valueOf('phone'), '03-1111-2222');
  });

  test('コード・名称が空のときは検証エラー(通信しない)', () async {
    final link = _FakeLink();
    await expectLater(_repo(link).save(const EntityRecord(id: '', values: {'no': '', 'name': ''})), throwsA(isA<EntityValidationException>()));
    expect(link.requests, isEmpty);
  });

  test('登録は、呼称(名称・読み)を作って、その ID を names に渡す。会社は最初の会社。更新者つき', () async {
    final link = _FakeLink();
    await _repo(link).save(const EntityRecord(id: '', values: {'no': 'E-0500', 'name': '田中 一郎', 'pronunciation': 'タナカ イチロウ', 'sex': '', 'phone': '090', 'private_phone': '', 'remarks': ''}));
    final appellation = link.varsOf('ApprovalPatternAppellationSavePageCall').single;
    expect(appellation['pName'], '{"ja":"田中 一郎"}');
    expect(appellation['pPronunciation'], '{"ja":"タナカ イチロウ"}');
    final created = link.varsOf('StaffLedgerPageCreate').single;
    expect(created['infoCompanyId'], 'c1');
    expect(created['code'], 'E-0500');
    expect(created['names'], 'ap-new');
    expect(created['phone'], '090');
    expect(created['sex'], isNull);
    expect(created['updateUserId'], 'st1');
  });

  test('更新は、変えた項目だけ送る。名称・読みが同じなら、呼称は更新しない', () async {
    final link = _FakeLink();
    await _repo(link).save(
      const EntityRecord(id: 's1', values: {'no': 'E-0012', 'name': '佐藤 健一', 'pronunciation': 'サトウ ケンイチ', 'sex': '男性', 'phone': '03-9999-0000', 'private_phone': '', 'remarks': ''}),
    );
    expect(link.varsOf('ApprovalPatternAppellationSavePageCall'), isEmpty);
    final edit = link.varsOf('StaffLedgerPageEdit').single;
    expect(edit['phone'], '03-9999-0000');
    expect(edit.containsKey('code'), isFalse);
    expect(edit.containsKey('names'), isFalse);
  });

  test('コードの重複(部分一意索引の違反)は、コードの項目の重複エラー', () async {
    await expectLater(
      _repo(_FakeLink(duplicateCode: true)).save(const EntityRecord(id: '', values: {'no': 'E-0012', 'name': '重複'})),
      throwsA(isA<EntityValidationException>().having((e) => e.errors['no'], 'no', EntityFieldError.duplicate)),
    );
  });

  test('削除は論理削除(更新者つき)', () async {
    final link = _FakeLink();
    await _repo(link).remove('s1');
    final v = link.varsOf('StaffLedgerPageRemove').single;
    expect(v['remove'], isTrue);
    expect(v['updateUserId'], 'st1');
  });
}
