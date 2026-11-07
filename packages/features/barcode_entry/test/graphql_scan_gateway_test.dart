import 'package:barcode_entry/barcode_entry.dart';
import 'package:barcode_entry_model/scan_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

/// 通信せずに、窓口から呼ばれた登録を記録するクライアント。
class _FakeClient extends ScanClient {
  _FakeClient(this.table)
    : super(
        client: GraphQLClient(link: Link.from([]), cache: GraphQLCache()),
        languageCodeId: 'lang',
      );

  final Map<String, ScanFound> table;
  final calls = <String>[];
  int finds = 0;

  @override
  Future<ScanFound?> find(String symbol) async {
    finds++;
    return table[symbol.trim().toUpperCase()];
  }

  @override
  Future<String> startWork({
    required String workPlanId,
    String? staffId,
  }) async {
    calls.add('start $workPlanId $staffId');
    return 'wr';
  }

  @override
  Future<void> putWork({
    required String workPlanId,
    required int quantity,
    required ScanFound shelf,
    String? staffId,
    String? rejectNote,
  }) async =>
      calls.add('putWork $workPlanId x$quantity ${shelf.id} $rejectNote');

  @override
  Future<void> putPurchase({
    required String purchaseDetailId,
    required int quantity,
    required ScanFound shelf,
    String? staffId,
    String? rejectNote,
  }) async => calls.add('putPurchase $purchaseDetailId x$quantity ${shelf.id}');

  @override
  Future<void> putItem({
    required ScanFound item,
    required int quantity,
    required ScanFound shelf,
    String? staffId,
  }) async => calls.add('putItem ${item.id} x$quantity ${shelf.id}');
}

void main() {
  late _FakeClient client;
  late GraphqlScanGateway gateway;
  setUp(() {
    client = _FakeClient({
      'WO-1': const ScanFound(
        kind: ScanFoundKind.workPlan,
        id: 'plan-1',
        symbol: 'WO-1',
        name: '組立',
        itemName: 'ユニットA',
        quantity: 100,
        doneQuantity: 40,
        started: true,
      ),
      'WO-2': const ScanFound(
        kind: ScanFoundKind.workPlan,
        id: 'plan-2',
        symbol: 'WO-2',
        quantity: 10,
        doneQuantity: 10,
        started: true,
      ),
      'SH-1': const ScanFound(
        kind: ScanFoundKind.container,
        id: 'shelf-1',
        symbol: 'SH-1',
        name: '棚1',
      ),
      'PO-1': const ScanFound(
        kind: ScanFoundKind.purchaseDetail,
        id: 'pd-1',
        symbol: 'PO-1',
        itemName: '丸棒',
        quantity: 200,
        doneQuantity: 0,
      ),
      'IT-1': const ScanFound(
        kind: ScanFoundKind.item,
        id: 'item-1',
        symbol: 'IT-1',
        name: '部品',
      ),
    });
    gateway = GraphqlScanGateway(client: client, staffId: 'staff-1');
  });

  test('照会した結果を機能の型に変換する', () async {
    final w = await gateway.find('wo-1') as WorkOrderTarget;
    expect(
      (w.itemName, w.taskName, w.remaining, w.state),
      ('ユニットA', '組立', 60, WorkState.inProgress),
    );
    expect(
      ((await gateway.find('WO-2')) as WorkOrderTarget).state,
      WorkState.done,
    );
    expect(await gateway.find('SH-1'), isA<ShelfTarget>());
    expect(((await gateway.find('PO-1')) as PurchaseTarget).remaining, 200);
    expect(await gateway.find('IT-1'), isA<ItemTarget>());
    expect(await gateway.find('NONE'), isNull);
  });

  test('作業の入庫は作業実績・ビジター・入庫の組み合わせを呼ぶ(不合格の理由を備考へ)', () async {
    final order = await gateway.find('WO-1') as WorkOrderTarget;
    final shelf = await gateway.find('SH-1') as ShelfTarget;
    final finds = client.finds;
    await gateway.putAway(
      source: WorkSource(order),
      quantity: 5,
      shelf: shelf,
      reason: RejectReason.dimension,
    );
    expect(client.calls.single, 'putWork plan-1 x5 shelf-1 不合格(dimension)');
    expect(client.finds, finds, reason: '照会済みの id を使い、引き直さない');
  });

  test('開始・受入・棚移動の登録', () async {
    final order = await gateway.find('WO-1') as WorkOrderTarget;
    final shelf = await gateway.find('SH-1') as ShelfTarget;
    final purchase = await gateway.find('PO-1') as PurchaseTarget;
    final item = await gateway.find('IT-1') as ItemTarget;
    await gateway.startWork(order, shelf);
    await gateway.putAway(
      source: PurchaseSource(purchase),
      quantity: 3,
      shelf: shelf,
    );
    await gateway.putAway(source: ItemSource(item), quantity: 2, shelf: shelf);
    expect(client.calls, [
      'start plan-1 staff-1',
      'putPurchase pd-1 x3 shelf-1',
      'putItem item-1 x2 shelf-1',
    ]);
  });

  test('設備点検の記録は未対応', () async {
    expect(
      () => gateway.recordInspection(
        const EquipmentTarget(symbol: 'EQ', name: 'x', checkItems: []),
        const [],
      ),
      throwsUnsupportedError,
    );
  });
}
