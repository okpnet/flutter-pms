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

/// 検証用サーバーへのクライアント。JWT(TestServer が付けるヘッダー)を同じように付ける。
GraphQLClient _clientTo(TestServer server) => GraphQLClient(
  link: HttpLink(server.url, defaultHeaders: server.provider.headers),
  cache: GraphQLCache(),
);

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

/// GraphQL のエラー(errcode 付き)を返す通信路。
class _ErrorLink extends Link {
  _ErrorLink(this.message, this.code);
  final String message;
  final String code;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) => Stream.value(
    Response(
      data: null,
      errors: [
        GraphQLError(
          message: message,
          extensions: {
            'exception': {'errcode': code},
          },
        ),
      ],
      response: const {},
    ),
  );
}

/// 登録(Create)の呼び出しだけ(履歴IDの読み込みを除く)。
List<String> _creates(_FakeLink link) => [
  for (final c in link.calls)
    if (c.$1.endsWith('Create')) c.$1,
];

Map<String, dynamic> _nodesOf(String field, String historyId) => {
  field: {
    '__typename': 'Connection',
    'nodes': [
      {'__typename': 'Node', 'historyId': historyId},
    ],
  },
};

Map<String, dynamic> _created(String field, String row, String idField, String id) => {
  field: {
    '__typename': 'Payload',
    row: {'__typename': 'Row', idField: id},
  },
};

Future<String?> _containerSymbol(TestServer server, String code) async {
  final r = await _clientTo(server).query(
    QueryOptions(
      document: parseString('query { allTransContainers(first: 1, filter: {code: {equalTo: "$code"}}) { nodes { symbol } } }'),
    ),
  );
  final nodes = (r.data?['allTransContainers']['nodes'] as List?) ?? const [];
  return nodes.isEmpty ? null : nodes.first['symbol'] as String?;
}

void main() {
  group('検証用サーバー: symbol の照会(読み取り専用)', () {
    Future<ScanClient> clientOf(TestServer server) async {
      final raw = _clientTo(server);
      final langs = await raw.query(QueryOptions(document: parseString(_langQuery)));
      final nodes = (langs.data?['allSharedLanguageCodes']['nodes'] as List).cast<Map>();
      final ja = nodes.firstWhere((n) => '${n['code']}'.toLowerCase() == 'ja');
      return ScanClient(client: raw, languageCodeId: ja['sharedLanguageCodeId'] as String);
    }

    Future<String?> sample(TestServer server, String field) async {
      final r = await _clientTo(server).query(
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

    // 11_barcode_dummy.sql のデータ(設備 LS01 の点検予定、棚 RACK-A01 の保留ビジター)
    serverTest('設備の未実施の点検は、実施済みを除く最も古い予定の明細', (server) async {
      final client = await clientOf(server);
      final eq = await client.findEquipment('LS01');
      if (eq == null) return markTestSkipped('設備 LS01 が無い');
      final p = await client.findPendingInspection(eq.id);
      if (p == null) return markTestSkipped('点検のダミーデータ(11_barcode_dummy.sql)が無い');
      final days = DateTime.now().difference(p.scheduledStart!).inDays;
      expect(days, inInclusiveRange(6, 8)); // 14日前は実施済み、7日前が対象、7日後は対象外
      expect(p.inspectionName, isNotEmpty);
    });

    serverTest('隔離棚の保留のロットは取り出せず、元の棚の使えるロットは取り出せる', (server) async {
      final client = await clientOf(server);
      final qSym = await _containerSymbol(server, 'RACK-Q01');
      final aSym = await _containerSymbol(server, 'RACK-A01');
      final quarantine = qSym == null ? null : await client.findContainer(qSym);
      final rack = aSym == null ? null : await client.findContainer(aSym);
      if (quarantine == null || rack == null) return markTestSkipped('棚 RACK-A01 / RACK-Q01 が無い');
      final held = (await client.listVisiters(quarantine.id)).where((v) => v.quantity > 0).toList();
      if (held.isEmpty) return markTestSkipped('保留のダミーデータ(11_barcode_dummy.sql)が無い');
      expect(held.every((v) => !v.release && !v.issuable), isTrue);
      expect(held.any((v) => v.hasOpenComplaint && v.blockReason == 'hold'), isTrue); // 異常のある保留
      expect(held.any((v) => !v.hasOpenComplaint), isTrue); // 異常の無い保留(点検の対象)
      final usable = (await client.listVisiters(rack.id)).where((v) => v.issuable).toList();
      expect(usable, isNotEmpty);
      expect(usable.every((v) => v.release && v.quantity > 0 && v.blockReason == null), isTrue);
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

    ScanClient clientOn(Link link) => ScanClient(
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
      expect(_creates(link), [
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
      expect(byName['VisiterPageCreate']!['quantity'], '20');
      expect(byName['VisiterPageCreate']!.containsKey('parentTransVisiterId'), isFalse);
      expect(byName['ConveyPageCreate']!.containsKey('quantity'), isFalse); // 数量は棚ビジターだけが持つ
      expect(byName['WorkRecordVisiterPageCreate']!.containsKey('quantity'), isFalse);
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
      expect(_creates(link), [
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
      expect(_creates(link), ['WorkRecordPageCreate', 'VisiterPageCreate']);
    });

    test('入庫の登録は、担当者・場所の最新の履歴IDを読んで送る', () async {
      final link = _FakeLink({
        'ScanStaffHistoryPageRead': _nodesOf('allHistoryInfoStaffs', 'sh-9'),
        'ScanLocationHistoryPageRead': _nodesOf('allHistoryMstrLocations', 'lh-3'),
        'ConveyPageCreate': _created('createTransConvey', 'transConvey', 'transConveyId', 'c-1'),
      });
      await clientOn(link).createConvey(
        visiterId: 'v-1',
        locationId: 'loc-1',
        staffId: 'staff-1',
      );
      final v = link.calls.firstWhere((c) => c.$1 == 'ConveyPageCreate').$2;
      expect(v['staffHistoryId'], 'sh-9');
      expect(v['locationHistoryId'], 'lh-3');
      final q = link.calls.firstWhere((c) => c.$1 == 'ScanStaffHistoryPageRead').$2;
      expect(q['orderBy'], ['REVISION_DESC']);
    });

    test('異常の登録は、表題・詳細 → 異常 → 異常入出庫ビジター の順に登録する', () async {
      final link = _FakeLink({
        'ComplaintLabelPageCreate': _created('createTransLabel', 'transLabel', 'transLabelId', 'lb-1'),
        'ComplaintLabelValuePageCreate': _created('createTransLabelValue', 'transLabelValue', 'transLabelValueId', 'lv-1'),
        'ComplaintTextPageCreate': _created('createTransText', 'transText', 'transTextId', 'tx-1'),
        'ComplaintTextValuePageCreate': _created('createTransTextValue', 'transTextValue', 'transTextValueId', 'tv-1'),
        'ComplaintPageCreate': _created('createTransComplaint', 'transComplaint', 'transComplaintId', 'cp-1'),
        'ComplaintVisiterPageCreate': _created('createTransComplaintVisiter', 'transComplaintVisiter', 'transComplaintVisiterId', 'cv-1'),
      });
      final id = await clientOn(link).registerComplaint(visiterId: 'v-1', quantity: 3, reporterStaffId: 'staff-1');
      expect(id, 'cp-1');
      expect(_creates(link), [
        'ComplaintLabelPageCreate',
        'ComplaintLabelValuePageCreate',
        'ComplaintTextPageCreate',
        'ComplaintTextValuePageCreate',
        'ComplaintPageCreate',
        'ComplaintVisiterPageCreate',
      ]);
      final by = {for (final c in link.calls) c.$1: c.$2};
      expect(by['ComplaintLabelValuePageCreate']!['labelValue'], '異常報告');
      expect(by['ComplaintPageCreate']!['titles'], 'lb-1');
      expect(by['ComplaintPageCreate']!['details'], 'tx-1');
      expect(by['ComplaintPageCreate']!['reporterStaffId'], 'staff-1');
      expect(by['ComplaintVisiterPageCreate']!['transVisiterId'], 'v-1');
    });

    test('点検結果は、予定の明細・結果・結果の値を送る', () async {
      final link = _FakeLink({
        'InspectRecordPageCreate': _created('createTransInspectRecord', 'transInspectRecord', 'transInspectRecordId', 'ir-1'),
      });
      await clientOn(link).createInspectRecord(detailId: 'd-1', result: true, resultState: 'ok', resultValue: {'value': 0.3});
      final v = link.calls.single.$2;
      expect(v['transInspectSchDetailId'], 'd-1');
      expect(v['result'], true);
      expect(v['resultValue'], {'value': 0.3});
    });

    Map<String, Map<String, dynamic>> fn(String field, {Object? id = 'v-new'}) => {
      'Visiter${field[0].toUpperCase()}${field.substring(1)}PageCall': {
        'visiter${field[0].toUpperCase()}${field.substring(1)}': {
          '__typename': 'Payload',
          'transVisiter': id == null ? null : {'__typename': 'Row', 'transVisiterId': id},
        },
      },
    };

    Map<String, dynamic> varsOf(_FakeLink link) => link.calls.single.$2;

    test('払出は、DB の関数を1回だけ呼ぶ(行と受払実績はDBが作る)', () async {
      final link = _FakeLink(fn('issue'));
      final id = await clientOn(link).issueLot(lot: 'lot-1', quantity: 8, workRecordId: 'wr-1', staffId: 's-1');
      expect(id, 'v-new');
      expect(link.calls.map((c) => c.$1), ['VisiterIssuePageCall']);
      expect(varsOf(link), {'pSrc': 'lot-1', 'pQty': '8', 'pWorkRecordId': 'wr-1', 'pStaffId': 's-1'});
    });

    test('隔離は、移動先の棚と仮止めを渡して関数を1回だけ呼ぶ', () async {
      final link = _FakeLink(fn('move', id: 'v-q'));
      final id = await clientOn(link).moveLot(lot: 'lot-1', quantity: 5, containerId: 'q-1', hold: true);
      expect(id, 'v-q');
      expect(link.calls.map((c) => c.$1), ['VisiterMovePageCall']);
      expect(varsOf(link), {'pSrc': 'lot-1', 'pContainerId': 'q-1', 'pQty': '5', 'pHold': true});
    });

    test('棚卸しは、数えた数を渡す。差が無ければ null', () async {
      final link = _FakeLink(fn('adjust'));
      expect(await clientOn(link).adjustLot(lot: 'lot-1', counted: 28, remarks: '棚卸し'), 'v-new');
      expect(varsOf(link), {'pLot': 'lot-1', 'pCounted': '28', 'pRemarks': '棚卸し'});
      final none = _FakeLink(fn('adjust', id: null));
      expect(await clientOn(none).adjustLot(lot: 'lot-1', counted: 30), isNull);
    });

    test('関数のエラーは、errcode を持つ例外にする', () async {
      final link = _ErrorLink('在庫の数量が足りません', 'VIS03');
      await expectLater(
        clientOn(link).issueLot(lot: 'lot-1', quantity: 99),
        throwsA(isA<ScanClientException>().having((e) => e.code, 'code', 'VIS03')),
      );
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
