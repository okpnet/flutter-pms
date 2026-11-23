import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;
import 'package:quality_common/quality_common.dart';
import 'package:quality_common/src/graphql/audit_check_expr.dart';

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

Map<String, dynamic> _dict(String v) => {
  'value': {
    'nodes': [
      {'dictionaryValue': v},
    ],
  },
};

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
      'AuditCheckitemLedgerPageRead' => {
        'allMstrAuditStdCheckitems': {
          'nodes': [
            {
              'mstrAuditStdCheckitemId': 'ci1',
              'mstrAuditStdId': 'std1',
              'code': 'A1',
              'controlCode': null,
              'typeClass': 1,
              'formulaClass': 6,
              'argClass': {'operator': '<=', 'value': 0.5},
              'remarks': null,
              'labels': {
                'sharedAppellationsId': 'ap-1',
                'sharedDictionaryBySharedDictionaryNameId': _dict('記録の管理'),
                'sharedDictionaryBySharedDictionaryPronunciationId': null,
                'sharedDictionaryBySharedDictionaryNicknameId': null,
              },
              'detailTexts': null,
            },
          ],
        },
      },
      'AuditStdAppellationSavePageCall' => {
        'sharedAppellationSave': {
          'sharedAppellation': {'sharedAppellationsId': 'ap-new'},
        },
      },
      'AuditCheckitemLedgerPageCreate' => {
        'createMstrAuditStdCheckitem': {
          'mstrAuditStdCheckitem': {'mstrAuditStdCheckitemId': 'ci1'},
        },
      },
      'AuditCheckitemLedgerPageEdit' || 'AuditCheckitemLedgerPageRemove' => const <String, dynamic>{},
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

dynamic _repo(_FakeLink link) => qualityCommonRepositories(
  GraphQLClient(link: link, cache: GraphQLCache()),
  auditUser: () async => const AuditUser(staffId: 'st1', staffHistoryId: 'h1'),
).firstWhere((r) => r.definition.key == 'auditstdcheck');

void main() {
  group('判定の式(条件の JSON)と DB の列', () {
    test('式は arg_class の JSON。formula_class は演算子の番号、type_class は値の型(数 = 1・文字 = 2・はい/いいえ = 3)。式が無いときは 0', () {
      final lessOrEqual = AuditCheckExpr.toColumns('{"operator":"<=","value":"0.5"}')!;
      expect((lessOrEqual.formulaClass, lessOrEqual.typeClass), (6, 1));
      final range = AuditCheckExpr.toColumns('{"operator":"between","value":["1","5"]}')!;
      expect((range.formulaClass, range.typeClass), (7, 1));
      final text = AuditCheckExpr.toColumns('{"operator":"=","value":"合格"}')!;
      expect((text.formulaClass, text.typeClass), (1, 2));
      final yesno = AuditCheckExpr.toColumns('{"operator":"yesno","value":true}')!;
      expect((yesno.formulaClass, yesno.typeClass), (8, 3));
      final none = AuditCheckExpr.toColumns('  ')!;
      expect((none.argClass, none.formulaClass, none.typeClass), (null, 0, 0));
      expect(AuditCheckExpr.toColumns('{"operator":"?","value":1}'), isNull); // 読めない式
    });

    test('DB の arg_class(オブジェクトまたは文字列。値が数でもよい)を、画面の式にする。読めないときは空', () {
      expect(AuditCheckExpr.fromArgClass({'operator': '<=', 'value': 0.5}), '{"operator":"<=","value":"0.5"}');
      expect(AuditCheckExpr.fromArgClass('{"operator":">","value":"3"}'), '{"operator":">","value":"3"}');
      expect(AuditCheckExpr.fromArgClass(null), '');
      expect(AuditCheckExpr.fromArgClass({'x': 1}), '');
    });
  });

  group('監査標準の項目の取得元', () {
    test('項目は、コード・名称・監査標準の ID・判定の式を持つ', () async {
      final r = (await _repo(_FakeLink()).find(take: 10)).single as EntityRecord;
      expect(r.valueOf('code'), 'A1');
      expect(r.valueOf('name'), '記録の管理');
      expect(r.valueOf('mstr_audit_std_id'), 'std1');
      expect(r.valueOf('expr'), '{"operator":"<=","value":"0.5"}');
    });

    test('名称・監査標準が空、式が読めないときは検証エラー(通信しない)', () async {
      final link = _FakeLink();
      await expectLater(_repo(link).save(const EntityRecord(id: '', values: {'name': '', 'mstr_audit_std_id': ''})), throwsA(isA<EntityValidationException>()));
      await expectLater(
        _repo(link).save(const EntityRecord(id: '', values: {'name': 'x', 'mstr_audit_std_id': 's', 'expr': 'bad'})),
        throwsA(isA<EntityValidationException>().having((e) => e.errors['expr'], 'expr', EntityFieldError.invalidCondition)),
      );
      expect(link.requests, isEmpty);
    });

    test('登録は、呼称を作り、式を arg_class・formula_class・type_class に分けて送る(更新者つき)', () async {
      final link = _FakeLink();
      await _repo(link).save(const EntityRecord(id: '', values: {'code': 'A2', 'name': '教育訓練', 'mstr_audit_std_id': 'std1', 'expr': '{"operator":">=","value":"3"}', 'detail': '', 'remarks': ''}));
      expect(link.varsOf('AuditStdAppellationSavePageCall').single['pName'], '{"ja":"教育訓練"}');
      final created = link.varsOf('AuditCheckitemLedgerPageCreate').single;
      expect(created['mstrAuditStdId'], 'std1');
      expect(created['names'], 'ap-new');
      expect(created['argClass'], '{"operator":">=","value":"3"}');
      expect(created['formulaClass'], 5);
      expect(created['typeClass'], 1);
      expect(created['updateUserId'], 'st1');
    });

    test('名称を変えるときは、新しい呼称を作る(既存の呼称へ書かない。履歴に過去の名称が残る)', () async {
      final link = _FakeLink();
      await _repo(link).save(const EntityRecord(id: 'ci1', values: {'code': 'A1', 'control_code': '', 'name': '記録の管理(改)', 'mstr_audit_std_id': 'std1', 'detail': '', 'expr': '{"operator":"<=","value":"0.5"}', 'remarks': ''}));
      final saved = link.varsOf('AuditStdAppellationSavePageCall').single;
      expect(saved['pAppellationId'], isNull);
      expect(saved['pName'], '{"ja":"記録の管理(改)"}');
      expect(link.varsOf('AuditCheckitemLedgerPageEdit').single['names'], 'ap-new');
    });

    test('式を変えなければ、式の列は送らない。式を空にすると、式なし(0・null)にする。削除は論理削除', () async {
      final link = _FakeLink();
      final r = _repo(link);
      const same = EntityRecord(id: 'ci1', values: {'code': 'A1', 'control_code': '', 'name': '記録の管理', 'mstr_audit_std_id': 'std1', 'detail': '', 'expr': '{"operator":"<=","value":"0.5"}', 'remarks': '備考'});
      await r.save(same);
      var edit = link.varsOf('AuditCheckitemLedgerPageEdit').single;
      expect(edit['remarks'], '備考');
      expect(edit.containsKey('argClass'), isFalse);
      await r.save(const EntityRecord(id: 'ci1', values: {'code': 'A1', 'control_code': '', 'name': '記録の管理', 'mstr_audit_std_id': 'std1', 'detail': '', 'expr': '', 'remarks': ''}));
      edit = link.varsOf('AuditCheckitemLedgerPageEdit').last;
      expect((edit['argClass'], edit['formulaClass'], edit['typeClass']), (null, 0, 0));
      await r.remove('ci1');
      expect(link.varsOf('AuditCheckitemLedgerPageRemove').single['remove'], isTrue);
    });
  });

  test('品質共通の定義の auditstdcheck は、判定の式(条件)の項目を持つ', () {
    final d = const QualityCommonModule().definitions.firstWhere((d) => d.key == 'auditstdcheck');
    expect(d.field('expr')!.kind, FieldKind.condition);
    expect(d.field('type_class'), isNull);
  });
}
