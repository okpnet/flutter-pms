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

/// MRP の提案1件(DB のビュー `v_mrp_suggestion`)。
///
/// 提案の種類・判断は、コード値(文字列・整数)でなく、boolean の列で持つ。画面は、列の名前(チェック・シグナル)で
/// 1 対 1 に出し、複数の boolean から文・意味を組み立てない。
/// 対象(発注・生産・外注・資材計画・例外・支給依頼)はちょうど 1 つ true。判断(未判断・採用・却下・情報)もちょうど 1 つ true。
class MrpSuggestion {
  const MrpSuggestion({
    required this.itemCode,
    required this.itemName,
    required this.quantity,
    required this.allocation,
    this.isPurchase = false,
    this.isProduction = false,
    this.isOutsource = false,
    this.isPlan = false,
    this.isException = false,
    this.isSupplyRequest = false,
    this.isNew = false,
    this.isChange = false,
    this.isCancel = false,
    this.isKeep = false,
    this.isOption = false,
    this.subjectEquipment = false,
    this.subjectStock = false,
    this.subjectMaster = false,
    this.needUser = false,
    this.undecided = false,
    this.adopted = false,
    this.rejected = false,
    this.isInfo = false,
    this.needDate,
    this.releaseDate,
    this.dueDate,
    this.late = false,
    this.message = '',
    this.symbol = '',
    this.id = '',
  });

  /// 提案の ID(`trans_mrp_suggestion_id`)。採否の変更([IMrpGateway.decide])に使う。無いときは空。
  final String id;

  final String itemCode;
  final String itemName;

  /// 数量と、在庫引当の数量。
  final num quantity;
  final num allocation;

  /// 対象。
  final bool isPurchase;
  final bool isProduction;
  final bool isOutsource;
  final bool isPlan;
  final bool isException;

  /// 顧客支給の品目が足りないときの支給依頼(要判断。発注・生産は提案しない)。
  final bool isSupplyRequest;

  /// 動き。
  final bool isNew;
  final bool isChange;
  final bool isCancel;
  final bool isKeep;
  final bool isOption;

  /// 例外の主題(設備の過負荷・在庫の過剰・マスタの不備)。
  final bool subjectEquipment;
  final bool subjectStock;
  final bool subjectMaster;

  /// ユーザーの判断を求めるか。
  final bool needUser;

  /// 判断(ちょうど 1 つ true)。
  final bool undecided;
  final bool adopted;
  final bool rejected;
  final bool isInfo;

  /// 必要日・発注日(着手日)・納期。決まっていない・対象外のときは null。
  final DateTime? needDate;
  final DateTime? releaseDate;
  final DateTime? dueDate;

  /// 納期が必要日に間に合わない。
  final bool late;
  final String message;

  /// 提案の `symbol`(バーコードなどで画面を特定する短い識別子)。無いときは空。
  final String symbol;

  Map<String, Object?> toJson() => {
    'itemCode': itemCode,
    'itemName': itemName,
    'quantity': quantity,
    'allocation': allocation,
    'isPurchase': isPurchase,
    'isProduction': isProduction,
    'isOutsource': isOutsource,
    'isPlan': isPlan,
    'isException': isException,
    'isSupplyRequest': isSupplyRequest,
    'isNew': isNew,
    'isChange': isChange,
    'isCancel': isCancel,
    'isKeep': isKeep,
    'isOption': isOption,
    'subjectEquipment': subjectEquipment,
    'subjectStock': subjectStock,
    'subjectMaster': subjectMaster,
    'needUser': needUser,
    'undecided': undecided,
    'adopted': adopted,
    'rejected': rejected,
    'isInfo': isInfo,
    'needDate': needDate?.toIso8601String(),
    'releaseDate': releaseDate?.toIso8601String(),
    'dueDate': dueDate?.toIso8601String(),
    'late': late,
    'message': message,
    'symbol': symbol,
    'id': id,
  };

  /// 採否を変えた写し。要判断(未判断)の提案だけが変わる(情報の提案・判断済みはそのまま)。
  ///
  /// 採否の記録は DB(`mrp_set_decision`)が持ち、これは確認用の窓口([DemoMrpGateway])と画面の即時の反映のための写し。
  MrpSuggestion decided({required bool adopt}) =>
      !undecided ? this : _copy(undecided: false, adopted: adopt, rejected: !adopt);

  /// 提案の ID を付けた写し。
  MrpSuggestion withId(String newId) => _copy(id: newId);

  MrpSuggestion _copy({String? id, bool? undecided, bool? adopted, bool? rejected}) =>
      MrpSuggestion(
        id: id ?? this.id,
        itemCode: itemCode,
        itemName: itemName,
        quantity: quantity,
        allocation: allocation,
        isPurchase: isPurchase,
        isProduction: isProduction,
        isOutsource: isOutsource,
        isPlan: isPlan,
        isException: isException,
        isSupplyRequest: isSupplyRequest,
        isNew: isNew,
        isChange: isChange,
        isCancel: isCancel,
        isKeep: isKeep,
        isOption: isOption,
        subjectEquipment: subjectEquipment,
        subjectStock: subjectStock,
        subjectMaster: subjectMaster,
        needUser: needUser,
        undecided: undecided ?? this.undecided,
        adopted: adopted ?? this.adopted,
        rejected: rejected ?? this.rejected,
        isInfo: isInfo,
        needDate: needDate,
        releaseDate: releaseDate,
        dueDate: dueDate,
        late: late,
        message: message,
        symbol: symbol,
      );
}

/// MRP の実行結果(`trans_mrp_run` と、その提案の一覧)。
class MrpRunResult {
  const MrpRunResult({
    required this.executedAt,
    required this.mode,
    required this.suggestions,
    this.runId = '',
    this.isCommitted = false,
  });

  final DateTime executedAt;
  final MrpMode mode;
  final List<MrpSuggestion> suggestions;

  /// 実行の ID(`trans_mrp_run_id`)。確定・破棄・採否の変更に使う。無いときは空。
  final String runId;

  /// 確定済み(ビュー `v_mrp_run` の `is_committed`)。false は、確定も破棄もされていない(計算済み。判断・確定を待つ)。
  final bool isCommitted;

  /// 確定待ち(計算済みで、まだ確定・破棄されていない)。実行の ID があるときだけ。
  bool get awaitingCommit => runId.isNotEmpty && !isCommitted;

  /// 提案を差し替えた写し(採否の変更の反映用)。
  MrpRunResult copyWith({List<MrpSuggestion>? suggestions, bool? isCommitted}) =>
      MrpRunResult(
        executedAt: executedAt,
        mode: mode,
        suggestions: suggestions ?? this.suggestions,
        runId: runId,
        isCommitted: isCommitted ?? this.isCommitted,
      );

  int get suggestionCount => suggestions.length;

  /// 要判断の件数。
  int get pendingCount => suggestions.where((s) => s.undecided).length;

  /// 遅れの件数。
  int get lateCount => suggestions.where((s) => s.late).length;

  Map<String, Object?> toJson() => {
    'executedAt': executedAt.toIso8601String(),
    'mode': mode.name,
    'runId': runId,
    'isCommitted': isCommitted,
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
/// MRP の前の調査の結果の 1 件(品目のマスタの不備。DB の `mrp_check_items`)。
///
/// 文(`message`)は DB が持つ(画面で組み立てない)。[severity] は並べ替え専用で、値で分岐しない。
class MrpIssue {
  const MrpIssue({
    required this.itemCode,
    required this.message,
    this.severity = 0,
    this.issueCode = '',
  });

  final String itemCode;
  final String message;

  /// DB の重大度(小さいほど重い)。並べ替えにだけ使う。
  final int severity;

  /// 不備の種類の識別子(画面は表示だけで、値で分岐しない)。
  final String issueCode;

  Map<String, Object?> toJson() => {
    'itemCode': itemCode,
    'message': message,
    'severity': severity,
    'issueCode': issueCode,
  };
}
