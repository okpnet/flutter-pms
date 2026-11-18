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

  /// 調査: 品目のマスタの不備を調べる(DB の `mrp_check_items`。読み取りだけで、何も変えない)。
  /// [itemIds] が空のときは、すべての品目。
  Future<List<MrpIssue>> check({List<String> itemIds = const []});

  /// 評価: MRP を計算だけする(DB の `mrp_run`)。結果は確定待ち(計算済み)で、計画データは変わらない。
  /// 続けて、要判断の採否([decide])のあと、確定([commit])または破棄([discard])する。
  Future<MrpRunResult> calculate({
    required MrpMode mode,
    required String staffId,
    List<String> orderDetailIds = const [],
    bool acceptLate = false,
  });

  /// 確定待ちの実行 [runId] の、要判断の提案の採否を変える(DB の `mrp_set_decision`)。
  /// [suggestionIds] が空のときは、実行のすべての提案(情報の提案は変わらない)。
  Future<void> decide({
    required String runId,
    required bool adopt,
    required String staffId,
    List<String> suggestionIds = const [],
  });

  /// 実行 [runId] を確定する(DB の `mrp_commit`)。採用された提案を計画データに反映する。
  /// 要判断が残っている・計算のあとにデータが更新されたときは、[MrpFailure](`MRP01`・`MRP03`)。
  /// [force] は、要判断を却下として確定し、計算後の更新の確認を省く。
  Future<MrpRunResult> commit({
    required String runId,
    required String staffId,
    bool force = false,
  });

  /// 実行 [runId] を破棄する(DB の `mrp_discard`)。計画データは変わらない。
  Future<void> discard({required String runId, required String staffId});

  /// 確定待ちの実行(前回の計算で、確定も破棄もしていないもの)。無ければ null。
  Future<MrpRunResult?> openRun();
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

  static const _failure = MrpFailure('MRP_UNAVAILABLE', '窓口が差し込まれていません');

  @override
  Future<List<MrpIssue>> check({List<String> itemIds = const []}) async =>
      throw _failure;

  @override
  Future<MrpRunResult> calculate({
    required MrpMode mode,
    required String staffId,
    List<String> orderDetailIds = const [],
    bool acceptLate = false,
  }) async => throw _failure;

  @override
  Future<void> decide({
    required String runId,
    required bool adopt,
    required String staffId,
    List<String> suggestionIds = const [],
  }) async => throw _failure;

  @override
  Future<MrpRunResult> commit({
    required String runId,
    required String staffId,
    bool force = false,
  }) async => throw _failure;

  @override
  Future<void> discard({
    required String runId,
    required String staffId,
  }) async => throw _failure;

  @override
  Future<MrpRunResult?> openRun() async => throw _failure;
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
    // DB の `mrp_execute` と同じ: 要判断が無ければ、そのまま確定する(あれば確定待ちで返す)
    final result = _newRun(mode, suggestions, commitIfNoPending: true);
    _open = result.isCommitted ? null : result;
    return result;
  }

  /// 確認用の調査の結果(マスタの不備)。既定は架空の 2 件。
  List<MrpIssue> issues = const [
    MrpIssue(
      itemCode: 'S-3001',
      message: '品目工程運用明細の工程運用明細または工程が削除されています',
      severity: 1,
      issueCode: 'ROUTING_TASK_REMOVED',
    ),
    MrpIssue(
      itemCode: 'M-1002',
      message: '仕入先が登録されていません',
      severity: 2,
      issueCode: 'SUPPLIER_NOT_FOUND',
    ),
  ];

  /// 確定([commit])が失敗するコード(例: `MRP01` 要判断が残っている、`MRP03` 確定できない)。指定すると確定が必ず失敗する。
  String? commitFailure;

  /// check・decide・commit・discard の呼び出しの記録(確認用。`'commit:<runId>:force=false'` など)。
  final List<String> operations = [];

  MrpRunResult? _open;
  int _seq = 0;

  MrpRunResult _newRun(
    MrpMode mode,
    List<MrpSuggestion> source, {
    required bool commitIfNoPending,
  }) {
    _seq++;
    final list = [
      for (var i = 0; i < source.length; i++)
        source[i].id.isEmpty
            ? source[i].withId('demo-s-$_seq-$i')
            : source[i],
    ];
    final committed =
        commitIfNoPending && !list.any((s) => s.undecided);
    return MrpRunResult(
      executedAt: _now(),
      mode: mode,
      suggestions: list,
      runId: 'demo-run-$_seq',
      isCommitted: committed,
    );
  }

  @override
  Future<List<MrpIssue>> check({List<String> itemIds = const []}) async {
    operations.add('check:${itemIds.join(',')}');
    await Future<void>.delayed(duration);
    return issues;
  }

  @override
  Future<MrpRunResult> calculate({
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
      'op': 'calculate',
    });
    await Future<void>.delayed(duration);
    final code = failure;
    if (code != null) throw MrpFailure(code, '確認用の失敗');
    // 新しい計算は、前の確定待ちを失効させる(DB の `mrp_run`)
    final result = _newRun(mode, suggestions, commitIfNoPending: false);
    _open = result;
    return result;
  }

  @override
  Future<void> decide({
    required String runId,
    required bool adopt,
    required String staffId,
    List<String> suggestionIds = const [],
  }) async {
    operations.add(
      'decide:$runId:${adopt ? 'adopt' : 'reject'}:${suggestionIds.join(',')}',
    );
    final run = _open;
    if (run == null || run.runId != runId) {
      throw const MrpFailure('MRP03', '確定待ちの実行ではありません');
    }
    _open = run.copyWith(
      suggestions: [
        for (final s in run.suggestions)
          suggestionIds.isEmpty || suggestionIds.contains(s.id)
              ? s.decided(adopt: adopt)
              : s,
      ],
    );
  }

  @override
  Future<MrpRunResult> commit({
    required String runId,
    required String staffId,
    bool force = false,
  }) async {
    operations.add('commit:$runId:force=$force');
    final code = commitFailure;
    if (code != null) throw MrpFailure(code, '確認用の失敗');
    final run = _open;
    if (run == null || run.runId != runId) {
      throw const MrpFailure('MRP03', '確定待ちの実行ではありません');
    }
    // DB の `mrp_commit`: 要判断が残っていると確定できない(force は、却下として確定する)
    if (!force && run.suggestions.any((s) => s.undecided)) {
      throw const MrpFailure('MRP01', '要判断が残っています');
    }
    final done = run.copyWith(
      suggestions: [
        for (final s in run.suggestions) s.decided(adopt: false),
      ],
      isCommitted: true,
    );
    _open = null;
    return done;
  }

  @override
  Future<void> discard({
    required String runId,
    required String staffId,
  }) async {
    operations.add('discard:$runId');
    final run = _open;
    if (run == null || run.runId != runId) {
      throw const MrpFailure('MRP03', '確定待ちの実行ではありません');
    }
    _open = null;
  }

  @override
  Future<MrpRunResult?> openRun() async => _open;

  static final demoSuggestions = <MrpSuggestion>[
    MrpSuggestion(
      isPurchase: true,
      isNew: true,
      symbol: 'MS-0001',
      itemCode: 'M-1001',
      itemName: 'SUS304丸棒 φ20',
      quantity: 2100,
      allocation: 1500,
      needDate: DateTime(2026, 11, 6),
      releaseDate: DateTime(2026, 10, 30),
      dueDate: DateTime(2026, 11, 4),
      adopted: true,
      message: '不足分を仕入先へ発注します。',
    ),
    MrpSuggestion(
      isPurchase: true,
      isNew: true,
      itemCode: 'M-1002',
      itemName: 'A5052アルミ板 t3',
      quantity: 80,
      allocation: 20,
      needDate: DateTime(2026, 11, 10),
      releaseDate: DateTime(2026, 10, 29),
      dueDate: DateTime(2026, 11, 12),
      late: true,
      needUser: true,
      undecided: true,
      message: '納期に間に合いません。仕入先の変更か、納期の調整をしてください。',
    ),
    MrpSuggestion(
      isProduction: true,
      isNew: true,
      itemCode: 'S-3001',
      itemName: '精密切削部品 A型',
      quantity: 6000,
      allocation: 800,
      needDate: DateTime(2026, 11, 8),
      releaseDate: DateTime(2026, 11, 2),
      dueDate: DateTime(2026, 11, 7),
      adopted: true,
      message: '切削ライン A に割り当てました。',
    ),
    MrpSuggestion(
      isProduction: true,
      isCancel: true,
      itemCode: 'S-3003',
      itemName: 'カバー部品 B型',
      quantity: 1200,
      allocation: 0,
      needUser: true,
      undecided: true,
      message: '受注の取消で需要がなくなりました。生産を取り消すか確認してください。',
    ),
    MrpSuggestion(
      isException: true,
      subjectEquipment: true,
      itemCode: 'EQ-0001',
      itemName: 'NC旋盤 No.1',
      quantity: 0,
      allocation: 0,
      needDate: DateTime(2026, 11, 4),
      isInfo: true,
      message: '11月4日の負荷が設備の能力を超えています。',
    ),
    MrpSuggestion(
      isOutsource: true,
      isOption: true,
      itemCode: 'S-3001',
      itemName: '精密切削部品 A型',
      quantity: 1500,
      allocation: 0,
      needDate: DateTime(2026, 11, 8),
      releaseDate: DateTime(2026, 11, 2),
      dueDate: DateTime(2026, 11, 6),
      needUser: true,
      undecided: true,
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
