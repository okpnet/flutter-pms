// ScanClient の通信テスト。
//
// 1) 検証用サーバー: symbol の照会だけを行う(読み取り専用)。登録は実行しない。
// 2) 代役の通信路: 登録の組み合わせ(作業実績 + ビジター + 入庫 + 結び付け)の呼び出しの順序と値を確かめる。
import 'dart:async';

import 'package:barcode_entry_model/scan_client.dart';
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:gql/language.dart' show parseString;
import 'package:graphql/client.dart';

const _langQuery = '''
query { allSharedLanguageCodes(first: 50) { nodes { sharedLanguageCodeId code } } }
''';

GraphQLClient _clientTo(String url) =>
    GraphQLClient(link: HttpLink(url), cache: GraphQLCache());

/// 操作名ごとの応答を返し、呼び出しを記録する通信路。
class _FakeLink extends Link {
  final calls = <(String, Map<String, dynamic>)>[];
  final Map<String, Map<String, dynamic>> responses;
  _FakeLink(this.responses);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    final name = request.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value ?? '';
    calls.add((name, Map<String, dynamic>.from(request.variables)));
    return Stream.value(
      Response(data: responses[name] ?? const {}, response: const {}),
    );
  }
}

Map<String, dynamic> _created(String field, String row, String idField, String id) => {
  field: {
    '__typename': 'Payload',
    row: {'__typename': 'Row', idField: id},
  },
};

void main() {
  group('検証用サーバー: symbol の照会(読み取り専用)', () {
    Future<ScanClient> clientOf(TestServer server) async {
      final raw = _clientTo(server.url);
      final langs = await raw.query(QueryOptions(document: parseString(_langQuery)));
      final nodes = (langs.data?['allSharedLanguageCodes']['nodes'] as List).cast<Map>();
      final ja = nodes.firstWhere((n) => '${n['code']}'.toLowerCase() == 'ja');
      return ScanClient(client: raw, languageCodeId: ja['sharedLanguageCodeId'] as String);
    }

    Future<String?> sample(TestServer server, String field) async {
      final r = await _clientTo(server.url).query(
        QueryOptions(
          document: parseString('query { $field(first: 1, filter: {symbol: {isNull: false}, remove: {equalTo: false}}) { nodes { symbol } } }'),
        ),
      );
      final nodes = (r.data?[field]['nodes'] as List?) ?? const [];
      return nodes.isEmpty ? null : nodes.first['symbol'] as String?;
    }

    serverTest('作業指示を symbol で引ける', (server) async {
      final symbol = await sample(server, 'allTransWorkPlans');
      if (symbol == null) return markTestSkipped('作業指示のテストデータが無い');
      final found = await (await clientOf(server)).findWorkPlan(symbol);
      expect(found?.kind, ScanFoundKind.workPlan);
      expect(found?.symbol, symbol);
    });

    serverTest('棚・発注明細・品目・設備を symbol で引ける', (server) async {
      final client = await clientOf(server);
      for (final (field, kind, find) in <(String, ScanFoundKind, Future<ScanFound?> Function(String))>[
        ('allTransContainers', ScanFoundKind.container, client.findContainer),
        ('allTransPurchaseDetails', ScanFoundKind.purchaseDetail, client.findPurchaseDetail),
        ('allMstrItems', ScanFoundKind.item, client.findItem),
        ('allMstrEquipments', ScanFoundKind.equipment, client.findEquipment),
      ]) {
        final symbol = await sample(server, field);
        if (symbol == null) continue;
        final found = await find(symbol);
        expect(found?.kind, kind, reason: field);
      }
    });

    serverTest('登録の無い symbol は null', (server) async {
      expect(await (await clientOf(server)).find('NO-SUCH-SYMBOL-0000'), isNull);
    });
  });

  group('登録の組み合わせ(代役の通信路)', () {
    const shelf = ScanFound(
      kind: ScanFoundKind.container,
      id: 'shelf-1',
      symbol: 'SH-A-01',
      locationId: 'loc-1',
    );

    ScanClient clientOn(_FakeLink link) => ScanClient(
      client: GraphQLClient(link: link, cache: GraphQLCache()),
      languageCodeId: 'lang',
      now: () => DateTime.utc(2026, 11, 1, 9),
    );

    test('作業の入庫は、作業実績 → ビジター → 入庫 → 結び付け の順に登録する', () async {
      final link = _FakeLink({
        'WorkRecordPageCreate': _created('createTransWorkRecord', 'transWorkRecord', 'transWorkRecordId', 'wr-1'),
        'VisiterPageCreate': _created('createTransVisiter', 'transVisiter', 'transVisiterId', 'v-1'),
        'ConveyPageCreate': _created('createTransConvey', 'transConvey', 'transConveyId', 'c-1'),
        'WorkRecordVisiterPageCreate': _created(
          'createTransWorkRecordVisiter',
          'transWorkRecordVisiter',
          'transWorkRecordVisiterId',
          'wrv-1',
        ),
      });
      await clientOn(link).putWork(
        workPlanId: 'plan-1',
        quantity: 20,
        shelf: shelf,
        staffId: 'staff-1',
        rejectNote: '不合格(寸法不良)',
      );
      expect(link.calls.map((c) => c.$1), [
        'WorkRecordPageCreate',
        'VisiterPageCreate',
        'ConveyPageCreate',
        'WorkRecordVisiterPageCreate',
      ]);
      final byName = {for (final c in link.calls) c.$1: c.$2};
      expect(byName['WorkRecordPageCreate']!['transWorkPlanId'], 'plan-1');
      expect(byName['WorkRecordPageCreate']!['qty'], '20');
      expect(byName['WorkRecordPageCreate']!['remarks'], '不合格(寸法不良)');
      expect(byName['VisiterPageCreate']!['transContainerId'], 'shelf-1');
      expect(byName['ConveyPageCreate']!['transVisiterId'], 'v-1');
      expect(byName['ConveyPageCreate']!['receive'], true);
      expect(byName['ConveyPageCreate']!['locationId'], 'loc-1');
      expect(byName['WorkRecordVisiterPageCreate']!['transWorkRecordId'], 'wr-1');
      expect(byName['WorkRecordVisiterPageCreate']!['transVisiterId'], 'v-1');
    });

    test('購入品の入庫は、受入 → ビジター → 入庫 → 結び付け の順に登録する', () async {
      final link = _FakeLink({
        'PurchaseRecPageCreate': _created('createTransPurchaseRec', 'transPurchaseRec', 'transPurchaseRecId', 'pr-1'),
        'VisiterPageCreate': _created('createTransVisiter', 'transVisiter', 'transVisiterId', 'v-1'),
        'ConveyPageCreate': _created('createTransConvey', 'transConvey', 'transConveyId', 'c-1'),
        'PurchaseRecVisiterPageCreate': _created(
          'createTransPurchaseRecVisiter',
          'transPurchaseRecVisiter',
          'transPurchaseRecVisiterId',
          'prv-1',
        ),
      });
      await clientOn(link).putPurchase(purchaseDetailId: 'pd-1', quantity: 5, shelf: shelf);
      expect(link.calls.map((c) => c.$1), [
        'PurchaseRecPageCreate',
        'VisiterPageCreate',
        'ConveyPageCreate',
        'PurchaseRecVisiterPageCreate',
      ]);
      expect(link.calls.first.$2['transPurchaseDetailId'], 'pd-1');
    });

    test('途中の登録が失敗したら、そこで例外にして以降は呼ばない', () async {
      final link = _FakeLink({
        'WorkRecordPageCreate': _created('createTransWorkRecord', 'transWorkRecord', 'transWorkRecordId', 'wr-1'),
        // VisiterPageCreate の応答が無い
      });
      await expectLater(
        clientOn(link).putWork(workPlanId: 'plan-1', quantity: 1, shelf: shelf),
        throwsA(isA<ScanClientException>()),
      );
      expect(link.calls.map((c) => c.$1), ['WorkRecordPageCreate', 'VisiterPageCreate']);
    });

    test('作業の開始は作業実績だけを登録する', () async {
      final link = _FakeLink({
        'WorkRecordPageCreate': _created('createTransWorkRecord', 'transWorkRecord', 'transWorkRecordId', 'wr-1'),
      });
      await clientOn(link).startWork(workPlanId: 'plan-1');
      expect(link.calls.single.$2['startAt'], '2026-11-01T09:00:00.000Z');
      expect(link.calls.single.$2.containsKey('stopAt'), isFalse);
    });
  });
}
