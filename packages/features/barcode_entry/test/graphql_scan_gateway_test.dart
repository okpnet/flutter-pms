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
  Future<ScanFound?> findContainer(String symbol) async {
    final f = table[symbol.trim().toUpperCase()];
    return f != null && f.kind == ScanFoundKind.container ? f : null;
  }

  @override
  Future<String> workRecordStart({
    required String workPlanId,
    required String containerId,
    required int quantity,
    String? staffId,
  }) async {
    calls.add('start $workPlanId <- $containerId x$quantity $staffId');
    return 'wr';
  }

  @override
  Future<ScanFound?> findWorkPlan(String symbol) async {
    final f = table[symbol.trim().toUpperCase()];
    return f != null && f.kind == ScanFoundKind.workPlan ? f : null;
  }

  @override
  Future<ScanFound?> findPurchaseDetail(String symbol) async {
    final f = table[symbol.trim().toUpperCase()];
    return f != null && f.kind == ScanFoundKind.purchaseDetail ? f : null;
  }

  @override
  Future<void> inspectionRegister({
    required int passQuantity,
    String? passContainerId,
    String? workRecordId,
    String? purchaseDetailId,
    int failQuantity = 0,
    String? failContainerId,
    String? reason,
    String? returnReason,
    String? staffId,
  }) async => calls.add(
    'inspect pass=$passQuantity->$passContainerId fail=$failQuantity->$failContainerId '
    'wr=$workRecordId pd=$purchaseDetailId reason=$reason return=$returnReason',
  );

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
        takenQuantity: 30,
        openWorkRecordId: 'wr-1',
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

  test('作業の終了は、合格・不合格・差を 1 回の関数で登録する(不合格の理由・差の理由は自由な文)', () async {
    final order = await gateway.find('WO-1') as WorkOrderTarget;
    expect(order.takenQuantity, 30);
    expect(order.finishLimit, 30, reason: '取り出した数量が、終了で登録できる上限');
    final shelf = await gateway.find('SH-1') as ShelfTarget;
    await gateway.registerResult(
      source: WorkSource(order),
      passQuantity: 20,
      passShelf: shelf,
      failQuantity: 5,
      failShelf: shelf,
      failReason: RejectReason.dimension,
    );
    expect(
      client.calls.single,
      'inspect pass=20->shelf-1 fail=5->shelf-1 wr=wr-1 pd=null reason=寸法不良 return=null',
    );
  });

  test('作業の終了で完了が少ないとき、差の理由を送る。受入検品は発注明細で登録する', () async {
    final order = await gateway.find('WO-1') as WorkOrderTarget;
    final shelf = await gateway.find('SH-1') as ShelfTarget;
    final purchase = await gateway.find('PO-1') as PurchaseTarget;
    await gateway.registerResult(
      source: WorkSource(order),
      passQuantity: 25,
      passShelf: shelf,
      returnReason: ReturnReason.overDay,
    );
    await gateway.registerResult(
      source: PurchaseSource(purchase),
      passQuantity: 3,
      passShelf: shelf,
    );
    expect(client.calls, [
      'inspect pass=25->shelf-1 fail=0->null wr=wr-1 pd=null reason=null return=日またぎ',
      'inspect pass=3->shelf-1 fail=0->null wr=null pd=pd-1 reason=null return=null',
    ]);
  });

  test('開始はコンテナから払い出す(1 回の関数)。棚移動は入庫を登録する', () async {
    final order = await gateway.find('WO-1') as WorkOrderTarget;
    final shelf = await gateway.find('SH-1') as ShelfTarget;
    final item = await gateway.find('IT-1') as ItemTarget;
    await gateway.startWork(order, shelf, 12);
    await gateway.putAway(source: ItemSource(item), quantity: 2, shelf: shelf);
    expect(client.calls, [
      'start plan-1 <- shelf-1 x12 staff-1',
      'putItem item-1 x2 shelf-1',
    ]);
    // 作業・受入の終了は putAway では登録できない(registerResult を使う)
    expect(
      () => gateway.putAway(source: WorkSource(order), quantity: 1, shelf: shelf),
      throwsArgumentError,
    );
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
