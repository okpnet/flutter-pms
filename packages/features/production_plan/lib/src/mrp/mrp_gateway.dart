import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'mrp_models.dart';

/// MRP の実行の窓口。実体(DB 関数 `tests.mrp_execute` を呼ぶ GraphQL のメソッド `mrpExecute` と、
/// 提案の一覧 `trans_mrp_suggestion` の読み込み)はアプリが差し込む。
abstract interface class IMrpGateway {
  /// MRP を実行し、結果(実行と提案の一覧)を返す。失敗は [MrpFailure]。
  ///
  /// [staffId] は実行者(`p_staff_id`)、[orderDetailIds] は対象の受注明細(`p_order_detail_ids`。
  /// 空のときは対象すべて)、[acceptLate] は遅れを許容する(`p_accept_late`)。
  Future<MrpRunResult> execute({
    required MrpMode mode,
    required String staffId,
    List<String> orderDetailIds = const [],
    bool acceptLate = false,
  });
}

/// 実体が差し込まれていないときの窓口。実行すると失敗にする(確かめていない結果を出さないため)。
///
/// パターン: Null Object(安全側の既定)
class UnavailableMrpGateway implements IMrpGateway {
  const UnavailableMrpGateway();

  @override
  Future<MrpRunResult> execute({
    required MrpMode mode,
    required String staffId,
    List<String> orderDetailIds = const [],
    bool acceptLate = false,
  }) async => throw const MrpFailure('MRP_UNAVAILABLE', '窓口が差し込まれていません');
}

/// 確認用の窓口(example・テスト用)。決めた時間だけ待ち、決めた結果または失敗を返す。
/// 画面案(`tools/open-design`)の模擬の結果に合わせた架空の提案を返す。
class DemoMrpGateway implements IMrpGateway {
  DemoMrpGateway({
    this.duration = const Duration(seconds: 2),
    this.failure,
    List<MrpSuggestion>? suggestions,
    DateTime Function()? now,
  }) : suggestions = suggestions ?? demoSuggestions,
       _now = now ?? DateTime.now;

  /// 計算にかかる時間。
  final Duration duration;

  /// 指定すると、このコードで失敗する(例: [MrpFailure.timeout])。
  final String? failure;
  final List<MrpSuggestion> suggestions;
  final DateTime Function() _now;

  /// 呼ばれた回数と引数(確認用)。
  final List<Map<String, Object?>> calls = [];

  @override
  Future<MrpRunResult> execute({
    required MrpMode mode,
    required String staffId,
    List<String> orderDetailIds = const [],
    bool acceptLate = false,
  }) async {
    calls.add({
      'mode': mode.code,
      'staffId': staffId,
      'orderDetailIds': orderDetailIds,
      'acceptLate': acceptLate,
    });
    await Future<void>.delayed(duration);
    final code = failure;
    if (code != null) throw MrpFailure(code, '確認用の失敗');
    return MrpRunResult(
      executedAt: _now(),
      mode: mode,
      suggestions: suggestions,
    );
  }

  static final demoSuggestions = <MrpSuggestion>[
    MrpSuggestion(
      kind: MrpSuggestionKind.purchaseNew,
      itemCode: 'M-1001',
      itemName: 'SUS304丸棒 φ20',
      quantity: 2100,
      allocation: 1500,
      needDate: DateTime(2026, 11, 6),
      releaseDate: DateTime(2026, 10, 30),
      dueDate: DateTime(2026, 11, 4),
      decision: MrpDecision.adopted,
      message: '不足分を仕入先へ発注します。',
    ),
    MrpSuggestion(
      kind: MrpSuggestionKind.purchaseNew,
      itemCode: 'M-1002',
      itemName: 'A5052アルミ板 t3',
      quantity: 80,
      allocation: 20,
      needDate: DateTime(2026, 11, 10),
      releaseDate: DateTime(2026, 10, 29),
      dueDate: DateTime(2026, 11, 12),
      late: true,
      decision: MrpDecision.pending,
      message: '納期に間に合いません。仕入先の変更か、納期の調整をしてください。',
    ),
    MrpSuggestion(
      kind: MrpSuggestionKind.productionNew,
      itemCode: 'S-3001',
      itemName: '精密切削部品 A型',
      quantity: 6000,
      allocation: 800,
      needDate: DateTime(2026, 11, 8),
      releaseDate: DateTime(2026, 11, 2),
      dueDate: DateTime(2026, 11, 7),
      decision: MrpDecision.adopted,
      message: '切削ライン A に割り当てました。',
    ),
    MrpSuggestion(
      kind: MrpSuggestionKind.productionCancel,
      itemCode: 'S-3003',
      itemName: 'カバー部品 B型',
      quantity: 1200,
      allocation: 0,
      decision: MrpDecision.pending,
      message: '受注の取消で需要がなくなりました。生産を取り消すか確認してください。',
    ),
    MrpSuggestion(
      kind: MrpSuggestionKind.excOverload,
      itemCode: 'EQ-0001',
      itemName: 'NC旋盤 No.1',
      quantity: 0,
      allocation: 0,
      needDate: DateTime(2026, 11, 4),
      decision: MrpDecision.info,
      message: '11月4日の負荷が設備の能力を超えています。',
    ),
    MrpSuggestion(
      kind: MrpSuggestionKind.outsourceOption,
      itemCode: 'S-3001',
      itemName: '精密切削部品 A型',
      quantity: 1500,
      allocation: 0,
      needDate: DateTime(2026, 11, 8),
      releaseDate: DateTime(2026, 11, 2),
      dueDate: DateTime(2026, 11, 6),
      decision: MrpDecision.pending,
      message: '切削ライン A が過負荷のため、外注への切り替えを提案します。',
    ),
  ];
}

/// MRP の窓口。既定は実体が無い([UnavailableMrpGateway])。アプリが差し込む。
final mrpGatewayProvider = Provider<IMrpGateway>(
  (ref) => const UnavailableMrpGateway(),
);

/// MRP を実行する担当者の識別子(`p_staff_id`)。ログインの導入後に、ログインした担当者の id を差し込む。
final mrpStaffIdProvider = Provider<String>((ref) => '');
