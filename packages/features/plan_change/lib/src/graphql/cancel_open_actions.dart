import 'package:graphql/client.dart';
import 'package:plan_change_model/plan_change_model.dart';

/// 未処置一覧の行の操作が失敗したときの例外。DB の関数の errcode(`OPR00`〜`OPR03`・`VIS05` など)を持つ。
/// 画面は [errcode] で表示する文を選ぶ(DB のエラーの文は、そのまま画面に出さない)。
class CancelOpenActionException implements Exception {
  const CancelOpenActionException(this.errcode, this.message);

  /// DB の SQLSTATE(関数の ERRCODE)。取れないときは `NETWORK`。
  final String errcode;

  /// ログ用(多言語の対象にしない)。
  final String message;

  Map<String, Object?> toJson() => {'errcode': errcode, 'message': message};

  @override
  String toString() => 'CancelOpenActionException($errcode): $message';
}

/// 処置の結果(DB の関数が追記した計画変更)。値は、処置の boolean の列(`release`・`hold`・`scrap`・`deliver`)だけ。
class CancelOpenActionResult {
  const CancelOpenActionResult({
    required this.planChangeId,
    required this.symbol,
    required this.release,
    required this.hold,
    required this.scrap,
    required this.deliver,
    this.containerId,
  });

  final String planChangeId;
  final String? symbol;
  final bool release;
  final bool hold;
  final bool scrap;
  final bool deliver;
  final String? containerId;

  Map<String, Object?> toJson() => {
    'planChangeId': planChangeId,
    'symbol': symbol,
    'release': release,
    'hold': hold,
    'scrap': scrap,
    'deliver': deliver,
    'containerId': containerId,
  };
}

/// 未処置一覧の行の操作(DB の関数の呼び出し。1回 = 1トランザクション)。
///
/// 一覧の種類(列のチェック)に応じて、呼ぶ関数を画面が選ぶ。この中は、関数の呼び出しと、結果・失敗の変換だけで、
/// 状態の判定はしない(R1)。担当者は省略(関数が JWT の `staff_id` から決める)。
/// 生成された型は、この中だけで使い、外へ出さない。
///
/// パターン: Facade(生成された 8 本の関数の呼び出しを、操作ごとの 1 メソッドにまとめる)
class CancelOpenActions {
  CancelOpenActions(this._client);

  final GraphQLClient _client;

  /// 引当予約の解除(予約を取り消す。在庫は動かさない)。
  Future<CancelOpenActionResult> releaseInventoryRequest(
    String inventoryRequestId, {
    String? changeReasonId,
    String? reason,
  }) async {
    final r = await _client.mutate$PlanChangeInventoryRequestReleasePageCall(
      Options$Mutation$PlanChangeInventoryRequestReleasePageCall(
        variables: Variables$Mutation$PlanChangeInventoryRequestReleasePageCall(
          pInventoryRequestId: inventoryRequestId,
          pChangeReasonId: changeReasonId,
          pReason: reason,
        ),
      ),
    );
    _check(r.exception);
    return _result(r.parsedData?.inventoryRequestRelease?.transPlanChange);
  }

  /// 引当予約の保管(選んだコンテナへ仮止めで移し、予約を移動先のロットに付け替える)。
  Future<CancelOpenActionResult> holdInventoryRequest(
    String inventoryRequestId, {
    required String containerId,
    String? locationId,
    String? changeReasonId,
    String? reason,
  }) async {
    final r = await _client.mutate$PlanChangeInventoryRequestHoldPageCall(
      Options$Mutation$PlanChangeInventoryRequestHoldPageCall(
        variables: Variables$Mutation$PlanChangeInventoryRequestHoldPageCall(
          pInventoryRequestId: inventoryRequestId,
          pContainerId: containerId,
          pLocationId: locationId,
          pChangeReasonId: changeReasonId,
          pReason: reason,
        ),
      ),
    );
    _check(r.exception);
    return _result(r.parsedData?.inventoryRequestHold?.transPlanChange);
  }

  /// 品物を在庫にする(処置の記録だけ。ロットは動かさない)。押さえたままのロットは仮止めを外す。
  Future<CancelOpenActionResult> releaseLot(
    String visiterId, {
    String? changeReasonId,
    String? reason,
  }) async {
    final r = await _client.mutate$PlanChangeLotReleasePageCall(
      Options$Mutation$PlanChangeLotReleasePageCall(
        variables: Variables$Mutation$PlanChangeLotReleasePageCall(
          pVisiterId: visiterId,
          pChangeReasonId: changeReasonId,
          pReason: reason,
        ),
      ),
    );
    _check(r.exception);
    return _result(r.parsedData?.lotRelease?.transPlanChange);
  }

  /// 品物を押さえる(選んだコンテナへ仮止めで移す)。[quantity] 省略時は全数。
  Future<CancelOpenActionResult> holdLot(
    String visiterId, {
    required String containerId,
    String? quantity,
    String? locationId,
    String? changeReasonId,
    String? reason,
  }) async {
    final r = await _client.mutate$PlanChangeLotHoldPageCall(
      Options$Mutation$PlanChangeLotHoldPageCall(
        variables: Variables$Mutation$PlanChangeLotHoldPageCall(
          pVisiterId: visiterId,
          pContainerId: containerId,
          pQuantity: quantity,
          pLocationId: locationId,
          pChangeReasonId: changeReasonId,
          pReason: reason,
        ),
      ),
    );
    _check(r.exception);
    return _result(r.parsedData?.lotHold?.transPlanChange);
  }

  /// 品物の廃棄(ロットから払い出す)。[quantity] は 0 より大きい数量(BigFloat の文字列)。
  Future<CancelOpenActionResult> scrapLot(
    String visiterId, {
    required String quantity,
    String? locationId,
    String? changeReasonId,
    String? reason,
  }) async {
    final r = await _client.mutate$PlanChangeLotScrapPageCall(
      Options$Mutation$PlanChangeLotScrapPageCall(
        variables: Variables$Mutation$PlanChangeLotScrapPageCall(
          pVisiterId: visiterId,
          pQuantity: quantity,
          pLocationId: locationId,
          pChangeReasonId: changeReasonId,
          pReason: reason,
        ),
      ),
    );
    _check(r.exception);
    return _result(r.parsedData?.lotScrap?.transPlanChange);
  }

  /// 顧客への引き渡し(ロットから払い出す)。精算は、登録済みの [settlementId] を渡すか、
  /// [settlementKindId]・[settlementAmount]・[orderDetailId] をそろえて渡す(DB の関数が、同じトランザクションで精算も登録する)。
  Future<CancelOpenActionResult> deliverLot(
    String visiterId, {
    required String quantity,
    String? settlementId,
    String? settlementKindId,
    String? settlementAmount,
    String? orderDetailId,
    String? locationId,
    String? changeReasonId,
    String? reason,
  }) async {
    final r = await _client.mutate$PlanChangeLotDeliverPageCall(
      Options$Mutation$PlanChangeLotDeliverPageCall(
        variables: Variables$Mutation$PlanChangeLotDeliverPageCall(
          pVisiterId: visiterId,
          pQuantity: quantity,
          pOrderDetailSettlementId: settlementId,
          pSettlementKindId: settlementKindId,
          pSettlementAmount: settlementAmount,
          pOrderDetailId: orderDetailId,
          pLocationId: locationId,
          pChangeReasonId: changeReasonId,
          pReason: reason,
        ),
      ),
    );
    _check(r.exception);
    return _result(r.parsedData?.lotDeliver?.transPlanChange);
  }

  /// 未出荷の出荷オーダー明細の取り消し。
  Future<CancelOpenActionResult> cancelShippingOrderDetail(
    String shippingOrderDetailId, {
    String? changeReasonId,
    String? reason,
  }) async {
    final r = await _client.mutate$PlanChangeShippingOrderDetailCancelPageCall(
      Options$Mutation$PlanChangeShippingOrderDetailCancelPageCall(
        variables:
            Variables$Mutation$PlanChangeShippingOrderDetailCancelPageCall(
              pShippingOrderDetailId: shippingOrderDetailId,
              pChangeReasonId: changeReasonId,
              pReason: reason,
            ),
      ),
    );
    _check(r.exception);
    return _result(r.parsedData?.shippingOrderDetailCancel?.transPlanChange);
  }

  /// 未キャンセルの外注発注明細のキャンセル。[quantity] は 0 より大きく、残以下。
  Future<CancelOpenActionResult> cancelPurchaseDetail(
    String purchaseDetailId, {
    required String quantity,
    String? changeReasonId,
    String? reason,
  }) async {
    final r = await _client.mutate$PlanChangePurchaseDetailCancelPageCall(
      Options$Mutation$PlanChangePurchaseDetailCancelPageCall(
        variables: Variables$Mutation$PlanChangePurchaseDetailCancelPageCall(
          pPurchaseDetailId: purchaseDetailId,
          pQuantity: quantity,
          pChangeReasonId: changeReasonId,
          pReason: reason,
        ),
      ),
    );
    _check(r.exception);
    return _result(r.parsedData?.purchaseDetailCancel?.transPlanChange);
  }

  static CancelOpenActionResult _result(dynamic n) {
    if (n == null) {
      throw const CancelOpenActionException('OPR01', '結果が返りませんでした');
    }
    return CancelOpenActionResult(
      planChangeId: n.transPlanChangeId as String,
      symbol: n.symbol as String?,
      release: n.release as bool? ?? false,
      hold: n.hold as bool? ?? false,
      scrap: n.scrap as bool? ?? false,
      deliver: n.deliver as bool? ?? false,
      containerId: n.transContainerId as String?,
    );
  }

  /// 失敗を、errcode つきの例外にする(PostGraphile の `--extended-errors errcode` が `extensions.exception.errcode` に付ける)。
  static void _check(OperationException? exception) {
    if (exception == null) return;
    for (final error in exception.graphqlErrors) {
      final extensions = error.extensions ?? const {};
      final inner = extensions['exception'];
      final code =
          extensions['errcode'] ?? (inner is Map ? inner['errcode'] : null);
      if (code != null) throw CancelOpenActionException('$code', error.message);
    }
    final link = exception.linkException;
    throw CancelOpenActionException(
      'NETWORK',
      link == null ? '$exception' : '${link.originalException ?? link}',
    );
  }
}
