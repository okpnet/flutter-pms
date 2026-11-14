import 'package:barcode_entry_model/scan_client.dart';

import 'scan_gateway.dart';
import 'scan_models.dart';

/// 照会と登録の窓口の実体(GraphQL)。
///
/// 生成されたモデルは `barcode_entry_model` の [ScanClient] が隠している。ここで機能の型
/// ([ScanTarget] ほか)に変換し、外へ出さない。複数テーブルにまたがる登録は、クライアントで順に呼ぶ。
/// パターン: Adapter([ScanClient] を窓口 [IScanGateway] へ適合させる)
///
/// 制限(Issue 参照): 単位は取得できないため空。棚出庫(払出)は行わず作業実績の開始だけを登録する。
/// 設備点検の記録は未対応([UnsupportedError])。不合格の理由は備考に残す(異常の登録は未対応)。
class GraphqlScanGateway implements IScanGateway {
  GraphqlScanGateway({required this.client, this.staffId});

  final ScanClient client;

  /// 登録者(作業者)の id。認証の導入後は、ログインユーザーから与える。
  final String? staffId;

  /// 照会した対象(登録のときに id を引き直さないため)。symbol(大文字)→ 結果。
  final Map<String, ScanFound> _found = {};

  String _key(String symbol) => symbol.trim().toUpperCase();

  Future<ScanFound> _resolve(String symbol) async {
    final cached = _found[_key(symbol)];
    if (cached != null) return cached;
    final found = await client.find(symbol);
    if (found == null) throw ScanClientException('登録のない symbol: $symbol');
    _found[_key(symbol)] = found;
    return found;
  }

  @override
  Future<ScanTarget?> find(String symbol) async {
    final f = await client.find(symbol.trim());
    if (f == null) return null;
    _found[_key(f.symbol)] = f;
    _found[_key(symbol)] = f;
    return switch (f.kind) {
      ScanFoundKind.workPlan => WorkOrderTarget(
        symbol: f.symbol,
        itemName: f.itemName,
        taskName: f.name,
        quantity: f.quantity,
        doneQuantity: f.doneQuantity,
        unit: '',
        stopped: f.stopped,
        closed: f.closed,
        state: f.quantity > 0 && f.doneQuantity >= f.quantity
            ? WorkState.done
            : f.started
            ? WorkState.inProgress
            : WorkState.notStarted,
      ),
      ScanFoundKind.container => ShelfTarget(
        symbol: f.symbol,
        name: f.name.isEmpty ? f.symbol : f.name,
      ),
      ScanFoundKind.purchaseDetail => PurchaseTarget(
        symbol: f.symbol,
        itemName: f.itemName,
        quantity: f.quantity,
        receivedQuantity: f.doneQuantity,
        unit: '',
        stopped: f.stopped,
        closed: f.closed,
      ),
      ScanFoundKind.item => ItemTarget(
        symbol: f.symbol,
        name: f.name,
        unit: '',
      ),
      ScanFoundKind.equipment => EquipmentTarget(
        symbol: f.symbol,
        name: f.name,
        checkItems: const [],
      ),
    };
  }

  @override
  Future<void> startWork(WorkOrderTarget order, ShelfTarget shelf) async {
    final plan = await _resolve(order.symbol);
    await client.startWork(workPlanId: plan.id, staffId: staffId);
  }

  @override
  Future<void> putAway({
    required StockSource source,
    required int quantity,
    required ShelfTarget shelf,
    RejectReason? reason,
  }) async {
    final shelfFound = await _resolve(shelf.symbol);
    final note = reason == null ? null : '不合格(${reason.name})';
    switch (source) {
      case WorkSource(:final order):
        await client.putWork(
          workPlanId: (await _resolve(order.symbol)).id,
          quantity: quantity,
          shelf: shelfFound,
          staffId: staffId,
          rejectNote: note,
        );
      case PurchaseSource(:final purchase):
        await client.putPurchase(
          purchaseDetailId: (await _resolve(purchase.symbol)).id,
          quantity: quantity,
          shelf: shelfFound,
          staffId: staffId,
          rejectNote: note,
        );
      case ItemSource(:final item):
        await client.putItem(
          item: await _resolve(item.symbol),
          quantity: quantity,
          shelf: shelfFound,
          staffId: staffId,
        );
    }
    // 数量が変わったため、次の照会で引き直す
    _found.remove(_key(source.symbol));
  }

  @override
  Future<void> recordInspection(
    EquipmentTarget equipment,
    List<InspectionResult> results,
  ) => throw UnsupportedError('設備点検の記録は未対応(点検予定の明細との結び付けが未定)');
}
