/// 読み込んだ symbol の種類。
enum SymbolKind { work, shelf, purchase, item, equipment }

/// 読み込みの入口で選ぶ種類(モード)。選ぶとその種類の symbol だけを受け付ける。
enum ScanMode {
  work(SymbolKind.work),
  receive(SymbolKind.purchase),
  shelf(SymbolKind.shelf),
  equipment(SymbolKind.equipment);

  const ScanMode(this.accepts);

  final SymbolKind accepts;
}

/// symbol から引いた対象。
sealed class ScanTarget {
  const ScanTarget();

  SymbolKind get kind;

  /// symbol(設備はコード)。
  String get symbol;
}

/// 作業指示の状態。
enum WorkState { notStarted, inProgress, done }

/// 製造/委託品の作業指示(工程)。
final class WorkOrderTarget extends ScanTarget {
  const WorkOrderTarget({
    required this.symbol,
    required this.itemName,
    required this.taskName,
    required this.quantity,
    required this.doneQuantity,
    required this.unit,
    required this.state,
    this.outsourced = false,
  });

  @override
  final String symbol;
  final String itemName;
  final String taskName;
  final int quantity;
  final int doneQuantity;
  final String unit;
  final WorkState state;
  final bool outsourced;

  int get remaining => quantity > doneQuantity ? quantity - doneQuantity : 0;

  @override
  SymbolKind get kind => SymbolKind.work;
}

/// 棚。
final class ShelfTarget extends ScanTarget {
  const ShelfTarget({required this.symbol, required this.name});

  @override
  final String symbol;
  final String name;

  @override
  SymbolKind get kind => SymbolKind.shelf;
}

/// 購入品(発注明細)。
final class PurchaseTarget extends ScanTarget {
  const PurchaseTarget({
    required this.symbol,
    required this.itemName,
    required this.quantity,
    required this.receivedQuantity,
    required this.unit,
  });

  @override
  final String symbol;
  final String itemName;
  final int quantity;
  final int receivedQuantity;
  final String unit;

  int get remaining =>
      quantity > receivedQuantity ? quantity - receivedQuantity : 0;

  @override
  SymbolKind get kind => SymbolKind.purchase;
}

/// 製品/購入品(棚移動で棚へ入れるもの)。
final class ItemTarget extends ScanTarget {
  const ItemTarget({
    required this.symbol,
    required this.name,
    required this.unit,
  });

  @override
  final String symbol;
  final String name;
  final String unit;

  @override
  SymbolKind get kind => SymbolKind.item;
}

/// 設備。点検項目ごとに結果を記録する。
final class EquipmentTarget extends ScanTarget {
  const EquipmentTarget({
    required this.symbol,
    required this.name,
    required this.checkItems,
  });

  /// 設備コード。
  @override
  final String symbol;
  final String name;

  /// 点検項目の名称。
  final List<String> checkItems;

  @override
  SymbolKind get kind => SymbolKind.equipment;
}

/// 点検の結果。
enum InspectionResult { pass, fail, recheck }

/// 不合格の理由。
enum RejectReason { dimension, appearance, material, shortage, other }

/// 数量を入れる元(入庫の元)。
sealed class StockSource {
  const StockSource();

  String get symbol;
}

/// 作業指示の完了数量。
final class WorkSource extends StockSource {
  const WorkSource(this.order);
  final WorkOrderTarget order;

  @override
  String get symbol => order.symbol;
}

/// 購入品の受入数量。
final class PurchaseSource extends StockSource {
  const PurchaseSource(this.purchase);
  final PurchaseTarget purchase;

  @override
  String get symbol => purchase.symbol;
}

/// 棚へ入れる製品/購入品。
final class ItemSource extends StockSource {
  const ItemSource(this.item);
  final ItemTarget item;

  @override
  String get symbol => item.symbol;
}
