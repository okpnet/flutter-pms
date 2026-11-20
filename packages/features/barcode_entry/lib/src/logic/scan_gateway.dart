import 'scan_models.dart';

/// 読み込んだ symbol の照会と、実績の登録の窓口(Strategy)。
///
/// 画面・読み込みの流れは取得元を知らない。メモリ上のサンプル([InMemoryScanGateway])は暫定で、
/// GraphQL 版はこのインターフェイスを実装して差し替える。失敗は例外で返す。
abstract interface class IScanGateway {
  /// symbol(設備はコード)から対象を引く。登録がなければ null。
  Future<ScanTarget?> find(String symbol);

  /// 担当者の symbol から担当者を引く。登録がない・取得元が未対応なら null。
  Future<OperatorTarget?> findOperator(String symbol);

  /// 棚(コンテナ)の中身(持っているアイテムと入れ子の棚)を返す。表示用。
  /// 取得元が未対応・中身を引けないときは null(画面は中身の枠を出さない。登録の流れには影響しない)。
  Future<ShelfContents?> contentsOf(ShelfTarget shelf);

  /// 入庫先のおすすめの棚(と根拠)を返す。[rejected] が false のときは同じ品目を持つ棚、true のときは不良品棚。
  /// 取得元が未対応なら空(おすすめを出さない)。
  Future<List<ShelfRecommendation>> recommendShelves({
    required StockSource source,
    required bool rejected,
  });

  /// 作業を開始する。[shelf] から材料を [quantity] 出庫する(棚出庫処理。作業実績の登録と払出は 1 つの処理)。
  Future<void> startWork(WorkOrderTarget order, ShelfTarget shelf, int quantity);

  /// 作業の終了・受入検品を、1 回で登録する(1 つの処理。実績の記録・合格の入庫・不合格の異常と入庫・差の返却)。
  ///
  /// [source] は作業指示([WorkSource])か購入品([PurchaseSource])。合格 [passQuantity] は [passShelf] へ、
  /// 不合格 [failQuantity] は理由 [failReason] を付けて [failShelf] へ入庫する(異常として登録)。
  /// 作業の終了で、完了(合格 + 不合格)が取り出しより少ないとき、差は払出元へ返す(理由 [returnReason])。
  Future<void> registerResult({
    required StockSource source,
    required int passQuantity,
    ShelfTarget? passShelf,
    int failQuantity = 0,
    ShelfTarget? failShelf,
    RejectReason? failReason,
    ReturnReason? returnReason,
  });

  /// [quantity] を [shelf] へ入庫する(入庫処理。棚移動の製品/購入品)。
  ///
  /// 作業の終了・受入検品は [registerResult] で行う(この関数では扱わない取得元もある)。
  Future<void> putAway({
    required StockSource source,
    required int quantity,
    required ShelfTarget shelf,
    RejectReason? reason,
  });

  /// 支給の受け入れ・検品を登録する(数量は棚ビジターの行と関数で決まる)。
  ///
  /// [receive] が true なら受け入れ(仮止めの + の行を作る。[hold] も true)。
  /// [receive] が false で [hold] が false なら検品の合格(仮止めを解除する)、
  /// [hold] が true なら不合格(仮止めのまま、異常を登録する)。
  Future<void> registerSupply(
    SupplyTarget supply, {
    required int quantity,
    required bool receive,
    required bool hold,
  });

  /// 設備点検の結果を記録する(点検項目ごと)。
  Future<void> recordInspection(
    EquipmentTarget equipment,
    List<InspectionResult> results,
  );
}
