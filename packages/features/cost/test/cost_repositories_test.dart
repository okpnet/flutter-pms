import 'package:cost/cost.dart';
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

Map<String, dynamic> _conn(String type, List<Map<String, dynamic>> nodes) => {
  '__typename': 'Query',
  'allV$type': {
    '__typename': 'V${type}Connection',
    'totalCount': nodes.length,
    'pageInfo': {'__typename': 'PageInfo', 'hasNextPage': false, 'endCursor': null},
    'nodes': nodes,
  },
};

void main() {
  test('標準原価・在庫評価額・ロットの評価額を、DB のビューの値のまま画面の行にする(計算しない)', () async {
    final link = _FakeLink()
      ..respond = (r) => switch (_name(r)) {
        'CostItemUnitPageRead' => _conn('ItemUnitCosts', [
          {
            '__typename': 'VItemUnitCost',
            'itemId': 'i1',
            'itemSymbol': 'IT-1',
            'itemCode': 'A-001',
            'purchaseCost': '120.0',
            'productionCost': '80.5',
            'componentCost': '0',
            'unitCost': '200.5',
            'hasSupplier': true,
            'hasComponents': false,
          },
        ]),
        'CostItemValuationPageRead' => _conn('ItemValuations', [
          {
            '__typename': 'VItemValuation',
            'itemId': 'i1',
            'itemSymbol': 'IT-1',
            'itemCode': 'A-001',
            'quantity': '100',
            'evaluatedQuantity': '80',
            'externalQuantity': '20',
            'amount': '16040',
          },
        ]),
        _ => _conn('VisiterValuations', [
          {
            '__typename': 'VVisiterValuation',
            'transVisiterId': 'v1',
            'symbol': 'VS-1',
            'itemId': 'i1',
            'itemCode': 'A-001',
            'quantity': '20',
            'held': false,
            'externalOwned': true,
            'transferred': false,
            'evaluated': false,
            'unitCost': '200.5',
            'unitValue': null,
            'amount': '0',
          },
        ]),
      };
    final repos = {for (final r in costRepositories(GraphQLClient(link: link, cache: GraphQLCache()))) r.definition.key: r};

    final unit = (await repos['costunit']!.find(take: 10)).single;
    expect(unit.id, 'i1');
    expect(unit.valueOf('item'), 'i1');
    expect(unit.valueOf('purchase_cost'), '120');
    expect(unit.valueOf('unit_cost'), '200.5');
    expect(unit.valueOf('has_supplier'), '1');
    expect(unit.valueOf('has_components'), '');

    final valuation = (await repos['costvaluation']!.find(take: 10)).single;
    expect(valuation.valueOf('external_quantity'), '20');
    expect(valuation.valueOf('amount'), '16040');

    final lot = (await repos['costlot']!.find(take: 10)).single;
    expect(lot.id, 'v1');
    expect(lot.valueOf('symbol'), 'VS-1');
    expect(lot.valueOf('external_owned'), '1');
    expect(lot.valueOf('evaluated'), '');
    expect(lot.valueOf('unit_value'), '');
    expect(lot.valueOf('amount'), '0');
  });

  test('1 件の取得は、主キーで絞る。書き込みは読み取り専用のため断る', () async {
    final link = _FakeLink()..respond = (_) => _conn('ItemUnitCosts', const []);
    final repo = costRepositories(GraphQLClient(link: link, cache: GraphQLCache())).first;
    expect(await repo.findById('i9'), isNull);
    expect(link.requests.single.variables['filter'], {
      'itemId': {'equalTo': 'i9'},
    });
    expect(() => repo.remove('i9'), throwsUnsupportedError);
  });
}
