import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'in_memory_register_gateway.dart';
import 'register_models.dart';

/// 実績登録の取得元と登録の窓口(Strategy)。
///
/// 画面は取得元を知らない。メモリ上のサンプル([InMemoryWorkRegisterGateway])が既定で、
/// GraphQL 版はこのインターフェイスを実装して [workRegisterGatewayProvider] を差し替える。
/// 検証の誤りは [RegisterValidationException]、登録の失敗は [RegisterFailedException]。
abstract interface class IWorkRegisterGateway {
  /// 生産計画(工程計画明細・実績つき)。
  Future<List<PlanRow>> plans();

  /// 開始の既定値(担当者・コンテナの候補・計画の残り)。
  Future<StartDefaults> startDefaults(String stepId);

  /// 取り出せるコンテナの検索。生産計画に紐づく材料・仕掛り(前工程の完了品)を探す。
  /// [query] はコンテナ名・場所で絞る。取り出せないものも、理由つきで返す。
  Future<List<ContainerStock>> containers(String stepId, {String query = ''});

  /// 開始を登録し、コンテナから払い出す。
  Future<RegisterOutcome> start(StartRequest request);

  /// 終了の入力の前提。実施中の実績が無ければ [RegisterFailedException]。
  Future<FinishContext> finishContext(String stepId);

  /// 終了を登録し、コンテナへ払い出す。
  Future<RegisterOutcome> finish(FinishRequest request);
}

/// 実績登録の取得元。アプリ・テストが差し替える。
final workRegisterGatewayProvider = Provider<IWorkRegisterGateway>(
  (ref) => InMemoryWorkRegisterGateway(),
);
