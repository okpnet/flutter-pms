import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:quality/quality.dart';

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

/// 生成モデルは、すべての入れ子の `__typename` を要るため、応答のダミーに再帰で足す。
Object? _typed(Object? v) {
  if (v is Map) return {'__typename': 'T', for (final e in v.entries) '${e.key}': _typed(e.value)};
  if (v is List) return [for (final e in v) _typed(e)];
  return v;
}

Map<String, dynamic> _label(String v) => {
  'transLabelId': 'lb',
  'value': {
    'nodes': [
      {'labelValue': v},
    ],
  },
};

Map<String, dynamic> _text(String v) => {
  'transTextId': 'tx',
  'value': {
    'nodes': [
      {'charCount': v.length, 'leadText': v},
    ],
  },
};

Map<String, dynamic> _row(String id, {required String title, Map<String, dynamic>? detail, required bool external, required bool claim, required String kinds, String? remarks}) => {
  'transComplaintId': id,
  'symbol': 'CP-$id',
  'occurentAt': '2026-10-22T09:00:00',
  'labels': _label(title),
  'detailTexts': detail,
  'reporterStaffId': 's1',
  'kindCount': 1,
  'hasEquipment': false,
  'hasProcess': true,
  'hasWork': false,
  'hasPurchaseRec': false,
  'hasVisiter': false,
  'hasOrder': external,
  'hasStakeholder': false,
  'isExternal': external,
  'isClaim': claim,
  'kindNames': kinds,
  'remarks': remarks,
};

class _FakeLink extends Link {
  final List<Request> requests = [];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final data = switch (_op(request)) {
      'ComplaintListPageRead' => {
        'allVComplaints': {
          'totalCount': 2,
          'pageInfo': {'hasNextPage': false, 'endCursor': 'cur'},
          'nodes': [
            _row('c1', title: '梱包の破損', detail: _text('箱が潰れていた'), external: true, claim: true, kinds: '顧客クレーム / 工程で発見された異常'),
            _row('c2', title: '寸法の外れ', external: false, claim: false, kinds: '工程で発見された異常', remarks: '備考'),
          ],
        },
      },
      _ => {
        'allSharedLanguageCodes': {
          'nodes': [
            {'sharedLanguageCodeId': 'L', 'code': 'JA'},
          ],
        },
      },
    };
    return Stream.value(Response(data: _typed({'__typename': 'Query', ...data}) as Map<String, dynamic>, response: const {}));
  }
}

void main() {
  test('異常の台帳は、ビュー v_complaint から読む(種類の名称・外部か・クレームかは、ビューの値)', () async {
    final link = _FakeLink();
    final repo = qualityRepositories(GraphQLClient(link: link, cache: GraphQLCache())).firstWhere((r) => r.definition.key == 'complaint');
    final rows = await repo.find(take: 10);
    expect(link.requests.any((r) => _op(r) == 'ComplaintListPageRead'), isTrue);
    final a = rows.first;
    expect(a.id, 'c1');
    expect(a.valueOf('title'), '梱包の破損');
    expect(a.valueOf('detail'), '箱が潰れていた');
    expect(a.valueOf('occurent_at'), '2026-10-22');
    expect(a.valueOf('kind'), '顧客クレーム / 工程で発見された異常'); // 1 つの異常が複数の種類を持てる
    expect(a.valueOf('external'), flagOn);
    expect(a.valueOf('claim'), 'クレーム');
    final b = rows.last;
    expect(b.valueOf('external'), '');
    expect(b.valueOf('claim'), '');
    expect(b.valueOf('remarks'), '備考');
  });

  test('異常の台帳は読み取り専用(新規・保存・削除を出さない)', () {
    final repo = qualityRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache())).firstWhere((r) => r.definition.key == 'complaint');
    expect(repo.definition.viewOnly, isTrue);
    expect(() => repo.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
  });
}
