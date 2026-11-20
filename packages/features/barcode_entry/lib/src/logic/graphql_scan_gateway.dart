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

  /// 棚(コンテナ)を引く。symbol は表をまたいで重複しうる(作業指示と棚が同じ symbol)ため、棚の操作は棚として引く。
  Future<ScanFound> _resolveShelf(String symbol) async {
    final found = await client.findContainer(symbol.trim());
    if (found == null) throw ScanClientException('登録のない棚: $symbol');
    return found;
  }

  Future<ScanFound> _resolve(String symbol) async {
    final cached = _found[_key(symbol)];
    if (cached != null) return cached;
    final found = await client.find(symbol);
    if (found == null) throw ScanClientException('登録のない symbol: $symbol');
    _found[_key(symbol)] = found;
    return found;
  }

  /// 担当者(`info_staff` の symbol)を引く。無ければ null。
  @override
  Future<OperatorTarget?> findOperator(String symbol) async {
    final staff = await client.findStaff(symbol.trim());
    return staff == null ? null : OperatorTarget(symbol: staff.symbol, name: staff.name);
  }

  /// 棚の中身: 棚にあるロットを品目ごとにまとめる(取り出せるロットのビュー `v_visiter_issuable` と、ロットの品目 `v_visiter_item`)。
  /// 入れ子の子の棚は、コンテナ体系(`trans_container_tree`)の直下を、深さ 4 までたどる。
  @override
  Future<ShelfContents?> contentsOf(ShelfTarget shelf) async {
    final found = await _resolveShelf(shelf.symbol);
    return _contents(shelf, found.id, 4);
  }

  Future<ShelfContents> _contents(ShelfTarget shelf, String containerId, int depth) async {
    final held = await client.contents(containerId);
    final children = <ShelfContents>[];
    if (depth > 0) {
      for (final c in await client.childContainers(containerId)) {
        children.add(
          await _contents(
            ShelfTarget(symbol: c.symbol, name: c.name.isEmpty ? c.symbol : c.name),
            c.id,
            depth - 1,
          ),
        );
      }
    }
    return ShelfContents(
      shelf: shelf,
      items: [for (final h in held) HeldItem(itemName: h.itemName, quantity: h.quantity, unit: '')],
      children: children,
    );
  }

  /// 入庫先のおすすめ。合格: 同じ品目が入っている棚(数量の多い順)。
  /// 不合格: 未完了の異常につながったロットがある棚(「不良品棚」の区分は持たず、異常とのつながりで決める)。
  @override
  Future<List<ShelfRecommendation>> recommendShelves({
    required StockSource source,
    required bool rejected,
  }) async {
    if (rejected) {
      return [
        for (final s in await client.shelvesWithComplaints())
          ShelfRecommendation(
            shelf: ShelfTarget(symbol: s.symbol, name: s.name.isEmpty ? s.symbol : s.name, reject: true),
            heldQuantity: s.quantity,
            reject: true,
          ),
      ];
    }
    final itemId = (await _resolve(source.symbol)).itemId;
    if (itemId == null) return const [];
    final shelves = await client.shelvesHolding(itemId);
    return [
      for (final s in shelves)
        ShelfRecommendation(
          shelf: ShelfTarget(symbol: s.symbol, name: s.name.isEmpty ? s.symbol : s.name),
          heldQuantity: s.quantity,
        ),
    ];
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
        operationsPlanId: f.operationsPlanId,
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
    final shelfFound = await _resolveShelf(shelf.symbol);
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
  Future<void> registerSupply(
    SupplyTarget supply, {
    required int quantity,
    required bool receive,
    required bool hold,
  }) => throw UnsupportedError('支給の受け入れ・検品の登録は未対応(支給の取得元と登録の関数の通信確認が前提)');

  @override
  Future<void> recordInspection(
    EquipmentTarget equipment,
    List<InspectionResult> results,
  ) => throw UnsupportedError('設備点検の記録は未対応(点検予定の明細との結び付けが未定)');
}
