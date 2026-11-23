import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';
import 'package:work_record/src/graphql/pick_repositories.dart';
import 'package:work_record/src/pick/pick_definitions.dart';
import 'package:work_record/work_record.dart';

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

/// 生成モデルは、すべての入れ子の `__typename` を要るため、応答のダミーに再帰で足す。
Object? _typed(Object? v) {
  if (v is Map) return {'__typename': 'T', for (final e in v.entries) '${e.key}': _typed(e.value)};
  if (v is List) return [for (final e in v) _typed(e)];
  return v;
}

class _FakeLink extends Link {
  final List<Request> requests = [];

  List<Map<String, dynamic>> varsOf(String op) => [
    for (final r in requests)
      if (_op(r) == op) r.variables,
  ];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    Map<String, dynamic> conn(List<Map<String, dynamic>> nodes) => {
      'totalCount': nodes.length,
      'pageInfo': {'hasNextPage': false, 'endCursor': 'c'},
      'nodes': nodes,
    };
    final data = switch (_op(request)) {
      'WorkRecordPickPageRead' => {
        'allTransWorkRecords': conn([
          {'transWorkRecordId': 'w1', 'symbol': 'WR-0001', 'nthTime': 2, 'startAt': '2026-10-12T09:00:00', 'qty': '10'},
        ]),
      },
      'LotPickPageRead' => {
        'allTransVisiters': conn([
          {'transVisiterId': 'v1', 'symbol': 'LT-0001', 'quantity': '5', 'release': true, 'adjustment': false},
          {'transVisiterId': 'v2', 'symbol': 'LT-0002', 'quantity': '3', 'release': false, 'adjustment': false},
        ]),
      },
      _ => const <String, dynamic>{},
    };
    return Stream.value(Response(data: _typed({'__typename': 'Query', ...data}) as Map<String, dynamic>, response: const {}));
  }
}

void main() {
  test('選択用の実体(作業実績・ロット)は、読み取り専用でメニューに出さない。キーは契約として固定', () {
    final defs = const WorkRecordModule().definitions;
    for (final key in [workRecordPickKey, lotPickKey]) {
      final d = defs.firstWhere((d) => d.key == key);
      expect(d.viewOnly, isTrue);
      expect(d.inMenu, isFalse);
      expect(d.fields.every((f) => f.readOnly), isTrue);
    }
    expect(workRecordPickKey, 'workrecpick'); // quality の ComplaintTarget が、このキーで選ぶ
    expect(lotPickKey, 'lotpick');
    expect(const WorkRecordModule().seeds.keys, containsAll([workRecordPickKey, lotPickKey]));
  });

  test('選択用の取得元は、ID・シンボル・数量を読み、保存・削除は断る。ロットは数量が正で、調整でない行だけ', () async {
    final link = _FakeLink();
    final repos = workRecordPickRepositories(GraphQLClient(link: link, cache: GraphQLCache()));
    final work = repos.firstWhere((r) => r.definition.key == workRecordPickKey);
    final lot = repos.firstWhere((r) => r.definition.key == lotPickKey);

    final w = (await work.find(take: 20)).single;
    expect(w.id, 'w1');
    expect(w.valueOf('symbol'), 'WR-0001');
    expect(w.valueOf('qty'), '10');
    expect(w.valueOf('start_at'), '2026-10-12');

    final lots = await lot.find(take: 20);
    expect([for (final l in lots) l.id], ['v1', 'v2']);
    expect(lots.first.valueOf('release'), flagOn);
    expect(lots.last.valueOf('release'), '');
    final filter = link.varsOf('LotPickPageRead').single['filter'] as Map;
    expect(filter['quantity'], {'greaterThan': '0'});
    expect(filter['adjustment'], {'equalTo': false});

    // 選んだときの表示(シンボル + 数量)
    expect(EntityCatalog.displayLabel(lot.definition, lots.first), 'LT-0001 5');
    expect(() => lot.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
    expect(() => work.remove('w1'), throwsUnsupportedError);
  });
}
