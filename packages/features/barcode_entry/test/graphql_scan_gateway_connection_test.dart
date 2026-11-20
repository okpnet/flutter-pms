import 'package:barcode_entry/barcode_entry.dart';
import 'package:barcode_entry_model/scan_client.dart';
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

/// 取得元(GraphQL 版)の通信テスト(検証用サーバー。読み取りだけ)。担当者・棚の中身・おすすめ・コンテナ体系を確かめる。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
Future<ScanClient> _client(TestServer server) async {
  final c = server.provider.client;
  final result = await c.query(
    QueryOptions(
      document: gql(
        'query { allSharedLanguageCodes(first: 20, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }',
      ),
      fetchPolicy: FetchPolicy.noCache,
    ),
  );
  final nodes =
      (result.data?['allSharedLanguageCodes'] as Map)['nodes'] as List;
  final ja = nodes.firstWhere((n) => '${n['code']}'.toLowerCase() == 'ja');
  return ScanClient(
    client: c,
    languageCodeId: ja['sharedLanguageCodeId'] as String,
  );
}

void main() {
  serverTest('担当者を symbol で引ける(ST のコードあり・なし)', (server) async {
    final client = await _client(server);
    final gateway = GraphqlScanGateway(client: client);
    final staffs = await client.client.query(
      QueryOptions(
        document: gql(
          'query { allInfoStaffs(first: 1, filter: {remove: {equalTo: false}}) { nodes { symbol } } }',
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final symbol =
        ((staffs.data?['allInfoStaffs'] as Map)['nodes'] as List).first['symbol']
            as String;
    final op = await gateway.findOperator(symbol);
    expect(op, isNotNull);
    expect(op!.name, isNotEmpty);
    expect(await gateway.findOperator('NO-SUCH-STAFF'), isNull);
  });

  serverTest('棚の中身(品目ごと)・入れ子・おすすめ(同じ品目・異常のある棚)を引ける', (server) async {
    final client = await _client(server);
    final gateway = GraphqlScanGateway(client: client);
    final containers = await client.client.query(
      QueryOptions(
        document: gql(
          'query { allTransContainers(first: 20, filter: {remove: {equalTo: false}}) { nodes { symbol } } }',
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final symbols = [
      for (final n in (containers.data?['allTransContainers'] as Map)['nodes'] as List)
        n['symbol'] as String,
    ];
    expect(symbols, isNotEmpty);
    for (final s in symbols) {
      // symbol は表をまたいで重複しうる(作業指示と棚が同じ symbol)ため、コードの付いた読み取り(CN)と同じく、棚として引く
      final found = await client.findContainer(s);
      expect(found, isNotNull);
      final contents = await gateway.contentsOf(
        ShelfTarget(symbol: found!.symbol, name: found.name),
      );
      expect(contents, isNotNull);
      for (final item in contents!.items) {
        expect(item.quantity, greaterThan(0));
      }
    }
    // 不合格のおすすめ: 異常につながったロットのある棚(あれば、不良品として出る)
    final rejects = await gateway.recommendShelves(
      source: ItemSource(const ItemTarget(symbol: 'X', name: 'x', unit: '')),
      rejected: true,
    );
    for (final r in rejects) {
      expect(r.reject, isTrue);
      expect(r.shelf.reject, isTrue);
      expect(r.heldQuantity, greaterThan(0));
    }
  });
}
