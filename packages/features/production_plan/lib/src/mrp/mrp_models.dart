/// MRP(資材所要計算)の実行区分。DB 関数 `tests.mrp_execute` の `p_mode`。
enum MrpMode {
  /// 受注MRP。まだ計画していない受注だけを計算する。
  order(1),

  /// 再MRP。受注を見直したあとに、すべての需要を作り直す。
  redo(2);

  const MrpMode(this.code);

  /// `p_mode` の値。
  final int code;
}

/// 提案種別(`trans_mrp_suggestion` の種別)。値は DB の文字列。
enum MrpSuggestionKind {
  purchaseNew('PURCHASE_NEW'),
  productionNew('PRODUCTION_NEW'),
  purchaseReschedule('PURCHASE_RESCHEDULE'),
  productionReschedule('PRODUCTION_RESCHEDULE'),
  purchaseCancel('PURCHASE_CANCEL'),
  productionCancel('PRODUCTION_CANCEL'),
  outsourceOption('OUTSOURCE_OPTION'),
  excOverload('EXC_OVERLOAD'),
  excExcess('EXC_EXCESS'),
  excMaster('EXC_MASTER'),
  outsourceNew('OUTSOURCE_NEW'),
  outsourceCancel('OUTSOURCE_CANCEL'),
  planNew('PLAN_NEW'),
  planUpdate('PLAN_UPDATE'),
  planKeep('PLAN_KEEP'),
  planCancel('PLAN_CANCEL');

  const MrpSuggestionKind(this.code);

  final String code;

  static MrpSuggestionKind? ofCode(String code) =>
      values.where((k) => k.code == code).firstOrNull;
}

/// 判断(`decision`)。0:要判断 1:採用 2:却下 9:情報。
enum MrpDecision {
  pending(0),
  adopted(1),
  rejected(2),
  info(9);

  const MrpDecision(this.code);

  final int code;

  static MrpDecision? ofCode(int code) =>
      values.where((d) => d.code == code).firstOrNull;
}

/// MRP の提案1件(`trans_mrp_suggestion`)。
class MrpSuggestion {
  const MrpSuggestion({
    required this.kind,
    required this.itemCode,
    required this.itemName,
    required this.quantity,
    required this.allocation,
    required this.decision,
    this.needDate,
    this.releaseDate,
    this.dueDate,
    this.late = false,
    this.message = '',
  });

  final MrpSuggestionKind kind;
  final String itemCode;
  final String itemName;

  /// 数量と、在庫引当の数量。
  final num quantity;
  final num allocation;

  /// 必要日・発注日(着手日)・納期。決まっていない・対象外のときは null。
  final DateTime? needDate;
  final DateTime? releaseDate;
  final DateTime? dueDate;

  /// 納期が必要日に間に合わない。
  final bool late;
  final MrpDecision decision;
  final String message;

  Map<String, Object?> toJson() => {
    'kind': kind.code,
    'itemCode': itemCode,
    'itemName': itemName,
    'quantity': quantity,
    'allocation': allocation,
    'needDate': needDate?.toIso8601String(),
    'releaseDate': releaseDate?.toIso8601String(),
    'dueDate': dueDate?.toIso8601String(),
    'late': late,
    'decision': decision.code,
    'message': message,
  };
}

/// MRP の実行結果(`trans_mrp_run` と、その提案の一覧)。
class MrpRunResult {
  const MrpRunResult({
    required this.executedAt,
    required this.mode,
    required this.suggestions,
  });

  final DateTime executedAt;
  final MrpMode mode;
  final List<MrpSuggestion> suggestions;

  int get suggestionCount => suggestions.length;

  /// 要判断の件数。
  int get pendingCount =>
      suggestions.where((s) => s.decision == MrpDecision.pending).length;

  /// 遅れの件数。
  int get lateCount => suggestions.where((s) => s.late).length;

  Map<String, Object?> toJson() => {
    'executedAt': executedAt.toIso8601String(),
    'mode': mode.name,
    'suggestions': [for (final s in suggestions) s.toJson()],
  };
}

/// MRP の実行の失敗。[code] はエラーコード(問い合わせ用に画面へ小さく添える)。
///
/// 想定するコード: `57014`(DB 処理中のタイムアウト)、`MRP00`(引数エラー)。
/// どのコードでも、画面は同じ一般向けの警告を出す。
class MrpFailure implements Exception {
  const MrpFailure(this.code, [this.detail = '']);

  final String code;
  final String detail;

  static const timeout = '57014';
  static const invalidArgument = 'MRP00';

  Map<String, Object?> toJson() => {'code': code, 'detail': detail};

  @override
  String toString() => 'MrpFailure($code) $detail';
}
