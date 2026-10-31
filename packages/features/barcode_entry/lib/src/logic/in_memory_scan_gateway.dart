import 'scan_gateway.dart';
import 'scan_models.dart';

/// メモリ上のサンプルを持つ取得元(暫定)。プロトタイプ(`tools/open-design`の barcode)と同じ値。
/// 状態はこのインスタンスの中だけで更新する。
class InMemoryScanGateway implements IScanGateway {
  InMemoryScanGateway() {
    for (final t in _initial) {
      _targets[t.symbol] = t;
    }
  }

  final Map<String, ScanTarget> _targets = {};

  /// 登録・更新の記録(テストと確認用)。
  final List<String> journal = [];

  static const List<ScanTarget> _initial = [
    WorkOrderTarget(
      symbol: 'WO-2610-001',
      itemName: 'ユニットA',
      taskName: '組立',
      quantity: 100,
      doneQuantity: 0,
      unit: '台',
      state: WorkState.notStarted,
    ),
    WorkOrderTarget(
      symbol: 'WO-2610-002',
      itemName: 'ブラケット',
      taskName: '旋削',
      quantity: 200,
      doneQuantity: 80,
      unit: '個',
      state: WorkState.inProgress,
    ),
    WorkOrderTarget(
      symbol: 'WO-2610-003',
      itemName: 'シャフト',
      taskName: 'フライス',
      quantity: 50,
      doneQuantity: 50,
      unit: '本',
      state: WorkState.done,
    ),
    WorkOrderTarget(
      symbol: 'WO-2610-004',
      itemName: 'ユニットA 標準',
      taskName: '表面処理',
      quantity: 120,
      doneQuantity: 0,
      unit: '個',
      state: WorkState.notStarted,
      outsourced: true,
    ),
    ShelfTarget(symbol: 'SH-M-01', name: '材料棚 M-1'),
    ShelfTarget(symbol: 'SH-A-01', name: '完成品棚 A-1'),
    ShelfTarget(symbol: 'SH-A-02', name: '完成品棚 A-2'),
    ShelfTarget(symbol: 'SH-R-01', name: '受入棚 R-1'),
    ShelfTarget(symbol: 'SH-X-01', name: '不良品棚 X-1'),
    PurchaseTarget(
      symbol: 'PO-2610-001-1',
      itemName: '丸棒 SS400',
      quantity: 200,
      receivedQuantity: 0,
      unit: '本',
    ),
    PurchaseTarget(
      symbol: 'PO-2610-002-1',
      itemName: 'ボルト M8×20',
      quantity: 5000,
      receivedQuantity: 1000,
      unit: '個',
    ),
    ItemTarget(symbol: 'IT-UNIT-A', name: 'ユニットA', unit: '台'),
    ItemTarget(symbol: 'IT-BRKT', name: 'ブラケット', unit: '個'),
    ItemTarget(symbol: 'IT-BAR', name: '丸棒 SS400', unit: '本'),
    EquipmentTarget(
      symbol: 'EQ-001',
      name: 'NC旋盤 1号機',
      checkItems: ['潤滑油量の確認', '異音・振動の確認', '安全装置の作動確認'],
    ),
  ];

  /// 画面の見本として並べる symbol。
  List<String> get sampleSymbols => _targets.keys.toList();

  @override
  Future<ScanTarget?> find(String symbol) async =>
      _targets[symbol.trim().toUpperCase()];

  @override
  Future<void> startWork(WorkOrderTarget order, ShelfTarget shelf) async {
    final current = _targets[order.symbol];
    if (current is WorkOrderTarget) {
      _targets[order.symbol] = _copy(current, state: WorkState.inProgress);
    }
    journal.add('start ${order.symbol} <- ${shelf.symbol}');
  }

  @override
  Future<void> putAway({
    required StockSource source,
    required int quantity,
    required ShelfTarget shelf,
    RejectReason? reason,
  }) async {
    switch (source) {
      case WorkSource(:final order):
        final current = _targets[order.symbol];
        if (current is WorkOrderTarget) {
          final done = current.doneQuantity + quantity;
          _targets[order.symbol] = _copy(
            current,
            doneQuantity: done,
            state: done >= current.quantity
                ? WorkState.done
                : WorkState.inProgress,
          );
        }
      case PurchaseSource(:final purchase):
        final current = _targets[purchase.symbol];
        if (current is PurchaseTarget) {
          _targets[purchase.symbol] = PurchaseTarget(
            symbol: current.symbol,
            itemName: current.itemName,
            quantity: current.quantity,
            receivedQuantity: current.receivedQuantity + quantity,
            unit: current.unit,
          );
        }
      case ItemSource():
        break;
    }
    final why = reason == null ? '' : ' (${reason.name})';
    journal.add('put ${source.symbol} x$quantity -> ${shelf.symbol}$why');
  }

  @override
  Future<void> recordInspection(
    EquipmentTarget equipment,
    List<InspectionResult> results,
  ) async {
    journal.add(
      'inspect ${equipment.symbol} ${results.map((r) => r.name).join(',')}',
    );
  }

  WorkOrderTarget _copy(
    WorkOrderTarget o, {
    int? doneQuantity,
    WorkState? state,
  }) => WorkOrderTarget(
    symbol: o.symbol,
    itemName: o.itemName,
    taskName: o.taskName,
    quantity: o.quantity,
    doneQuantity: doneQuantity ?? o.doneQuantity,
    unit: o.unit,
    state: state ?? o.state,
    outsourced: o.outsourced,
  );
}
