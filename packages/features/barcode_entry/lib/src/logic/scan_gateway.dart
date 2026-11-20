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

  /// 作業を開始する。[shelf] から材料を出庫する(棚出庫処理)。
  Future<void> startWork(WorkOrderTarget order, ShelfTarget shelf);

  /// [quantity] を [shelf] へ入庫する(入庫処理)。
  ///
  /// [source] が作業指示のときは完了数量、購入品のときは受入数量に加え、不合格なら [reason] を記録する。
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
