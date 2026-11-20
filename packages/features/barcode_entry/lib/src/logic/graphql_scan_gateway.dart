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

  Future<ScanFound> _resolveWork(String symbol) async {
    final found = await client.findWorkPlan(symbol.trim());
    if (found == null) throw ScanClientException('登録のない作業指示: $symbol');
    return found;
  }

  Future<ScanFound> _resolvePurchase(String symbol) async {
    final found = await client.findPurchaseDetail(symbol.trim());
    if (found == null) throw ScanClientException('登録のない発注明細: $symbol');
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
        takenQuantity: f.takenQuantity,
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

  /// 作業の開始: 棚(コンテナ)から [quantity] を払い出して、実績(実施中)を登録する(DB 関数 `work_record_start`。1 つの処理)。
  @override
  Future<void> startWork(WorkOrderTarget order, ShelfTarget shelf, int quantity) async {
    final plan = await _resolveWork(order.symbol);
    final box = await _resolveShelf(shelf.symbol);
    await client.workRecordStart(
      workPlanId: plan.id,
      containerId: box.id,
      quantity: quantity,
      staffId: staffId,
    );
    _found.remove(_key(order.symbol)); // 実施中になり、取り出した数量が変わったため、次の照会で引き直す
  }

  /// 作業の終了・受入検品(DB 関数 `inspection_register`。実績の記録・合格の入庫・不合格の異常と入庫・差の返却を 1 つの処理で)。
  /// 不合格の理由・差の理由は、自由な文として送る(マスタは持たない。決定 2026-11-20)。
  @override
  Future<void> registerResult({
    required StockSource source,
    required int passQuantity,
    ShelfTarget? passShelf,
    int failQuantity = 0,
    ShelfTarget? failShelf,
    RejectReason? failReason,
    ReturnReason? returnReason,
  }) async {
    final pass = passShelf == null ? null : await _resolveShelf(passShelf.symbol);
    final fail = failShelf == null ? null : await _resolveShelf(failShelf.symbol);
    switch (source) {
      case WorkSource(:final order):
        // 実施中の作業実績(読み直す。取り出した数量・実績の id は、開始のあとに変わる)
        final plan = await client.findWorkPlan(order.symbol);
        final record = plan?.openWorkRecordId;
        if (record == null) throw const ScanClientException('実施中の作業実績がありません');
        await client.inspectionRegister(
          passQuantity: passQuantity,
          passContainerId: pass?.id,
          workRecordId: record,
          failQuantity: failQuantity,
          failContainerId: fail?.id,
          reason: failReason == null ? null : _rejectText(failReason),
          returnReason: returnReason == null ? null : _returnText(returnReason),
          staffId: staffId,
        );
      case PurchaseSource(:final purchase):
        await client.inspectionRegister(
          passQuantity: passQuantity,
          passContainerId: pass?.id,
          purchaseDetailId: (await _resolvePurchase(purchase.symbol)).id,
          failQuantity: failQuantity,
          failContainerId: fail?.id,
          reason: failReason == null ? null : _rejectText(failReason),
          staffId: staffId,
        );
      case ItemSource():
        throw ArgumentError('製品/購入品の棚移動は putAway で登録します');
    }
    _found.remove(_key(source.symbol)); // 数量が変わったため、次の照会で引き直す
  }

  static String _rejectText(RejectReason r) => switch (r) {
    RejectReason.dimension => '寸法不良',
    RejectReason.appearance => '外観不良',
    RejectReason.material => '材料不良',
    RejectReason.shortage => '数量不足',
    RejectReason.other => 'その他',
  };

  static String _returnText(ReturnReason r) => switch (r) {
    ReturnReason.overDay => '日またぎ',
    ReturnReason.handover => '交代の引き継ぎ',
    ReturnReason.setup => '段取り替え',
    ReturnReason.other => 'その他',
  };

  /// 棚移動(製品/購入品)の入庫。作業の終了・受入検品は [registerResult] で登録する。
  @override
  Future<void> putAway({
    required StockSource source,
    required int quantity,
    required ShelfTarget shelf,
    RejectReason? reason,
  }) async {
    final shelfFound = await _resolveShelf(shelf.symbol);
    switch (source) {
      case WorkSource():
      case PurchaseSource():
        throw ArgumentError('作業の終了・受入検品は registerResult で登録します');
      case ItemSource(:final item):
        await client.putItem(
          item: await _resolve(item.symbol),
          quantity: quantity,
          shelf: shelfFound,
          staffId: staffId,
        );
    }
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
