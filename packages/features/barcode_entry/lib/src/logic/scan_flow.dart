import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

import '../barcode_code.dart';
import 'scan_gateway.dart';
import 'scan_models.dart';
import 'scan_providers.dart';

/// 読み込みの流れの段階(画面の見出しと入力の受け付けが決まる)。
///
/// 開始は「棚 → 開始数量」で 1 回、終了・受入は「合格数量 → 合格の棚 → 不合格の有無 → (不合格の数量・理由・棚)→
/// (差の理由)」を集めて 1 回で登録する(取得元の `startWork`・`registerResult`。1 つの処理)。
///
/// ```
/// top ─ 作業指示 ─ start ─(はい)─ issueShelf ─ issueQty ─ top   (開始: 棚出庫 + 実績の登録)
///        │           └(いいえ)─ top
///        └ 開始中 ─ qty(合格数量。0 は全量不合格) ─ putShelf(合格の棚) ─ eval(不合格はあるか)
///                     ├(ない)─ [差があれば returnReason] ─ 登録 ─ top
///                     └(ある)─ failQty ─ ng(理由) ─ putShelf(不合格の棚) ─ [差があれば returnReason] ─ 登録 ─ top
/// top ─ 棚 ─ stockItem ─ stockQty ─ top
/// top ─ 購入品 ─ recvQty ─ putShelf ─ recvEval ─ (作業と同じ。差の理由は無い) ─ 登録 ─ top
/// top ─ 設備 ─ equipment ─ top
/// top ─ 支給 ─ supplyChoice(受け入れ・合格・不合格をラジオで選び、数量を入れる) ─ top
/// ```
enum ScanStep {
  top,
  start,
  issueShelf,
  issueQty,
  qty,
  eval,
  failQty,
  ng,
  putShelf,
  returnReason,
  stockItem,
  stockQty,
  recvQty,
  recvEval,
  equipment,
  supplyChoice,
}

/// 利用者へ出す通知の種類。文字列は画面が表示時に変換する(多言語)。
enum NoticeKind {
  empty,
  unknown,
  wrongKind,
  needShelfFirst,
  expectShelf,
  expectItem,
  qtyInvalid,
  qtyOverWork,
  qtyOverPurchase,
  workDone,
  purchaseDone,
  workBlocked,
  purchaseBlocked,
  canceled,
  notStarted,
  started,
  stored,
  inspected,
  supplied,
  qtyOverSupply,
  failed,
  queued,
  queueFailed,
  needOperator,
  operatorSet,
  idleCleared,
}

/// 通知。[isError] はやり直しを求める通知、[args] は文面に差し込む値。
class ScanNotice {
  const ScanNotice(this.kind, {this.isError = false, this.args = const {}});

  final NoticeKind kind;
  final bool isError;
  final Map<String, Object> args;
}

/// 履歴の種類。
enum LogKind {
  unknown,
  workDone,
  purchaseDone,
  workBlocked,
  purchaseBlocked,
  canceled,
  notStarted,
  started,
  storedWork,
  storedWorkDone,
  storedPurchase,
  storedItem,
  inspected,
  inspectedWithIssue,
  supplied,
  failed,
  queueFailed,
}

/// 履歴の1件。
class ScanLogEntry {
  const ScanLogEntry(
    this.time,
    this.kind, {
    this.ok = true,
    this.args = const {},
  });

  final DateTime time;
  final LogKind kind;
  final bool ok;
  final Map<String, Object> args;
}

/// 処理待ち(キュー)の 1 件: まとめて登録するまで取得元へ送らないもの(入庫・出庫)。
sealed class QueuedEntry {
  const QueuedEntry();

  /// 対象の symbol(作業指示・購入品・品目)。
  String get symbol;

  Map<String, Object?> toJson();
}

/// 処理待ちの出庫: 作業の開始で、[shelf] から材料を出庫する(棚出庫処理)。
class QueuedIssue extends QueuedEntry {
  const QueuedIssue({required this.order, required this.shelf, required this.quantity});

  final WorkOrderTarget order;
  final ShelfTarget shelf;

  /// 払い出す数量(開始数量)。
  final int quantity;

  @override
  String get symbol => order.symbol;

  @override
  Map<String, Object?> toJson() => {'kind': 'issue', 'order': order.symbol, 'shelf': shelf.symbol, 'quantity': quantity};
}

/// 処理待ちの完了(作業の終了・受入検品): 合格・不合格・差を 1 件にまとめた、1 回の登録。
class QueuedResult extends QueuedEntry {
  const QueuedResult({
    required this.source,
    required this.passQuantity,
    this.passShelf,
    this.failQuantity = 0,
    this.failShelf,
    this.failReason,
    this.returnReason,
  });

  final StockSource source;
  final int passQuantity;
  final ShelfTarget? passShelf;
  final int failQuantity;
  final ShelfTarget? failShelf;
  final RejectReason? failReason;
  final ReturnReason? returnReason;

  @override
  String get symbol => source.symbol;

  @override
  Map<String, Object?> toJson() => {
    'kind': 'result',
    'source': source.symbol,
    'pass': passQuantity,
    'passShelf': passShelf?.symbol,
    'fail': failQuantity,
    'failShelf': failShelf?.symbol,
    'failReason': failReason?.name,
    'returnReason': returnReason?.name,
  };
}

/// 処理待ちの入庫。
/// 不合格かは [reason] の有無で分かる(不合格のときだけ理由を持つ)。
class QueuedPut extends QueuedEntry {
  const QueuedPut({
    required this.source,
    required this.quantity,
    required this.shelf,
    this.reason,
  });

  final StockSource source;
  final int quantity;
  final ShelfTarget shelf;
  final RejectReason? reason;

  @override
  String get symbol => source.symbol;

  @override
  Map<String, Object?> toJson() => {
    'kind': 'put',
    'source': source.symbol,
    'quantity': quantity,
    'shelf': shelf.symbol,
    'reason': reason?.name,
  };
}

/// 読み込み中の対象(段階をまたいで持ち回る値)。
class ScanContext {
  const ScanContext({
    this.order,
    this.purchase,
    this.shelf,
    this.item,
    this.equipment,
    this.supply,
    this.quantity = 0,
    this.rejected = false,
    this.reason,
    this.passShelf,
    this.failQuantity = 0,
    this.failShelf,
    this.returnReason,
  });

  final WorkOrderTarget? order;
  final PurchaseTarget? purchase;
  final ShelfTarget? shelf;
  final ItemTarget? item;
  final EquipmentTarget? equipment;
  final SupplyTarget? supply;
  /// 数量。開始は開始数量、終了・受入は合格数量、棚移動は入庫数量。
  final int quantity;

  /// 不合格の側(不合格の数量・理由・棚)を入力している。
  final bool rejected;
  final RejectReason? reason;

  /// 合格を入れる棚。
  final ShelfTarget? passShelf;

  /// 不合格の数量・不合格を入れる棚。
  final int failQuantity;
  final ShelfTarget? failShelf;

  /// 完了が取り出しより少ない差の理由(作業の終了。差を払出元へ返す)。
  final ReturnReason? returnReason;

  ScanContext copyWith({
    WorkOrderTarget? order,
    PurchaseTarget? purchase,
    ShelfTarget? shelf,
    ItemTarget? item,
    EquipmentTarget? equipment,
    SupplyTarget? supply,
    int? quantity,
    bool? rejected,
    RejectReason? reason,
    ShelfTarget? passShelf,
    int? failQuantity,
    ShelfTarget? failShelf,
    ReturnReason? returnReason,
  }) => ScanContext(
    order: order ?? this.order,
    purchase: purchase ?? this.purchase,
    shelf: shelf ?? this.shelf,
    item: item ?? this.item,
    equipment: equipment ?? this.equipment,
    supply: supply ?? this.supply,
    quantity: quantity ?? this.quantity,
    rejected: rejected ?? this.rejected,
    reason: reason ?? this.reason,
    passShelf: passShelf ?? this.passShelf,
    failQuantity: failQuantity ?? this.failQuantity,
    failShelf: failShelf ?? this.failShelf,
    returnReason: returnReason ?? this.returnReason,
  );

  Map<String, Object?> toJson() => {
    'passShelf': passShelf?.symbol,
    'failQuantity': failQuantity,
    'failShelf': failShelf?.symbol,
    'returnReason': returnReason?.name,
    'order': order?.symbol,
    'purchase': purchase?.symbol,
    'shelf': shelf?.symbol,
    'item': item?.symbol,
    'equipment': equipment?.symbol,
    'supply': supply?.symbol,
    'quantity': quantity,
    'rejected': rejected,
    'reason': reason?.name,
  };
}

/// 読み込みの状態。
class ScanState {
  const ScanState({
    this.mode,
    this.step = ScanStep.top,
    this.context = const ScanContext(),
    this.notice,
    this.log = const [],
    this.working = false,
    this.queue = const [],
    this.operator,
    this.selectedShelf,
    this.shelfContents,
    this.recommended = const [],
  });

  /// 受け付ける種類を絞るモード。null は自動判定。
  final ScanMode? mode;
  final ScanStep step;
  final ScanContext context;
  final ScanNotice? notice;
  final List<ScanLogEntry> log;

  /// 取得元とやりとり中(操作を受け付けない)。
  final bool working;

  /// 処理待ち(キュー)。画面内のメモリだけに持つ。
  final List<QueuedEntry> queue;

  /// 読み取った担当者(null は未読み取り)。
  final OperatorTarget? operator;

  /// 選択して残しているコンテナ(棚)。入庫のたびの選択を省く。null は未選択。
  final ShelfTarget? selectedShelf;

  /// 読み取った棚の中身(持っているアイテム・入れ子)。表示用。引けない・未対応なら null。
  final ShelfContents? shelfContents;

  /// 入庫先のおすすめの棚(合格: 同じ品目の棚 / 不合格: 不良品棚)。入庫先を読み取る段階だけ持つ。
  final List<ShelfRecommendation> recommended;

  ScanState copyWith({
    ScanMode? Function()? mode,
    ScanStep? step,
    ScanContext? context,
    ScanNotice? Function()? notice,
    List<ScanLogEntry>? log,
    bool? working,
    List<QueuedEntry>? queue,
    OperatorTarget? Function()? operator,
    ShelfTarget? Function()? selectedShelf,
    ShelfContents? Function()? shelfContents,
    List<ShelfRecommendation>? recommended,
  }) => ScanState(
    mode: mode != null ? mode() : this.mode,
    step: step ?? this.step,
    context: context ?? this.context,
    notice: notice != null ? notice() : this.notice,
    log: log ?? this.log,
    working: working ?? this.working,
    queue: queue ?? this.queue,
    operator: operator != null ? operator() : this.operator,
    selectedShelf: selectedShelf != null ? selectedShelf() : this.selectedShelf,
    shelfContents: shelfContents != null ? shelfContents() : this.shelfContents,
    recommended: recommended ?? this.recommended,
  );

  Map<String, Object?> toJson() => {
    'mode': mode?.name,
    'step': step.name,
    'context': context.toJson(),
    'notice': notice?.kind.name,
    'working': working,
    'queue': queue.map((q) => q.toJson()).toList(),
    'operator': operator?.symbol,
    'selectedShelf': selectedShelf?.symbol,
    'shelfContents': shelfContents?.shelf.symbol,
    'recommended': recommended.map((r) => r.shelf.symbol).toList(),
  };
}

/// 読み込みの流れ(State)。symbol の読み込み・入力を段階に応じて判定し、取得元([IScanGateway])へ登録する。
///
/// 画面はこの状態を表示して操作を渡すだけで、判定はここに閉じる。
/// 登録の失敗はログ(`[barcode_entry]`)に残し、通知で利用者に知らせて同じ段階にとどまる。
class ScanFlow extends Notifier<ScanState> {
  static const _historyLimit = 20;

  @override
  ScanState build() => const ScanState();

  IScanGateway get _gateway => ref.read(scanGatewayProvider);

  // ---- 状態の更新 ----

  void _notice(ScanNotice notice) =>
      state = state.copyWith(notice: () => notice);

  void _log(
    LogKind kind, {
    bool ok = true,
    Map<String, Object> args = const {},
  }) {
    final entry = ScanLogEntry(DateTime.now(), kind, ok: ok, args: args);
    state = state.copyWith(
      log: [entry, ...state.log].take(_historyLimit).toList(),
    );
  }

  /// リーディングトップへ戻る。モードと履歴は残す。
  void _reset([ScanNotice? notice, List<QueuedEntry>? queue]) =>
      state = ScanState(
        mode: state.mode,
        log: state.log,
        notice: notice,
        queue: queue ?? state.queue,
        operator: state.operator,
        selectedShelf: state.selectedShelf,
      );

  void _go(ScanStep step, ScanContext context) => state = state.copyWith(
    step: step,
    context: context,
    notice: () => null,
    recommended: step == ScanStep.putShelf ? null : const [],
  );

  /// 補助の読み込み(棚の中身・おすすめ)。失敗しても流れを止めない(ログだけ残して null)。
  Future<T?> _soft<T>(String what, Future<T> Function() run) async {
    try {
      return await run();
    } catch (e, st) {
      ref.read(loggerProvider).error('[barcode_entry] $what に失敗', ex: e, trace: st);
      return null;
    }
  }

  /// 入庫先を読み取る段階へ入ったとき、おすすめの棚を引く。
  Future<void> _loadRecommended() async {
    final c = state.context;
    final StockSource? source = c.order != null
        ? WorkSource(c.order!)
        : c.purchase != null
        ? PurchaseSource(c.purchase!)
        : c.item != null
        ? ItemSource(c.item!)
        : null;
    if (source == null) return;
    final list = await _soft(
      'おすすめの棚の取得',
      () => _gateway.recommendShelves(source: source, rejected: c.rejected),
    );
    if (state.step != ScanStep.putShelf || list == null) return;
    state = state.copyWith(recommended: list);
  }

  /// 読み取った棚の中身を引く(表示用)。
  Future<void> _loadContents(ShelfTarget shelf) async {
    final contents = await _soft('棚の中身の取得', () => _gateway.contentsOf(shelf));
    if (state.context.shelf?.symbol != shelf.symbol) return;
    state = state.copyWith(shelfContents: () => contents);
  }

  /// 直近の [_guard] が失敗したか。
  bool _failed = false;

  Future<T?> _guard<T>(
    String what,
    String symbol,
    Future<T> Function() run,
  ) async {
    state = state.copyWith(working: true);
    _failed = false;
    try {
      return await run();
    } catch (e, st) {
      _failed = true;
      ref
          .read(loggerProvider)
          .error('[barcode_entry] $what に失敗: $symbol', ex: e, trace: st);
      _log(LogKind.failed, ok: false, args: {'sym': symbol});
      _notice(const ScanNotice(NoticeKind.failed, isError: true));
      return null;
    } finally {
      state = state.copyWith(working: false);
    }
  }

  // ---- 操作 ----

  /// 受け付ける種類を絞る(同じモードをもう一度選ぶと自動判定へ戻す)。
  void toggleMode(ScanMode mode) => state = state.copyWith(
    mode: () => state.mode == mode ? null : mode,
    notice: () => null,
  );

  /// 取り消して、リーディングトップへ戻る。
  void cancel() {
    _log(LogKind.canceled, ok: false);
    _reset(const ScanNotice(NoticeKind.canceled));
  }

  /// 読み込み/入力の確定(Enter・リーダーの確定)。いまの段階で受け付ける内容を判定する。
  Future<void> submit(String raw) async {
    if (state.working) return;
    final v = raw.trim();
    state = state.copyWith(notice: () => null);
    if (v.isEmpty) {
      return _notice(const ScanNotice(NoticeKind.empty, isError: true));
    }
    if (state.step == ScanStep.top && ref.read(requireOperatorProvider) && state.operator == null) {
      return _submitOperator(v);
    }
    switch (state.step) {
      case ScanStep.top:
        return _submitTop(v);
      case ScanStep.issueShelf:
      case ScanStep.putShelf:
        return _submitShelf(v);
      case ScanStep.stockItem:
        return _submitStockItem(v);
      case ScanStep.issueQty:
      case ScanStep.qty:
      case ScanStep.failQty:
      case ScanStep.stockQty:
      case ScanStep.recvQty:
        return _submitQuantity(v);
      case ScanStep.start:
      case ScanStep.eval:
      case ScanStep.ng:
      case ScanStep.returnReason:
      case ScanStep.recvEval:
      case ScanStep.equipment:
      case ScanStep.supplyChoice:
        return; // ボタンで答える段階。入力は受け付けない
    }
  }

  /// 最初の読み取り: 担当者。担当者以外から始めたら警告して、処理待ちを消す。
  Future<void> _submitOperator(String v) async {
    // 担当者のコード(ST)があれば外す。無い従来の symbol もそのまま読める
    final parsed = BarcodeCode.parse(v);
    final symbol = parsed.code == BarcodeCode.operator ? parsed.symbol : v;
    final op = await _guard('担当者の照会', v, () async {
      final byCode = await _gateway.findOperator(symbol);
      // コードを外した symbol で見つからないとき、全体を symbol として引く(コードに似た接頭辞の symbol)
      return byCode ?? (symbol == v ? null : await _gateway.findOperator(v));
    });
    if (_failed) return;
    if (op == null) {
      state = state.copyWith(
        queue: const [],
        selectedShelf: () => null,
        notice: () => const ScanNotice(NoticeKind.needOperator, isError: true),
      );
      return;
    }
    state = state.copyWith(
      operator: () => op,
      notice: () => ScanNotice(NoticeKind.operatorSet, args: {'name': op.name}),
    );
  }

  /// 担当者を替える(最初の読み取りへ戻る)。処理待ちは残す。
  void changeOperator() => state = state.copyWith(operator: () => null, notice: () => null);

  /// 選択を残したコンテナを外す(次の入庫でまた選ぶ)。
  void changeShelf() => state = state.copyWith(selectedShelf: () => null, notice: () => null);

  /// 開始の選択(はい: 棚出庫へ / いいえ: トップへ)。
  void answerStart(bool start) {
    final order = state.context.order;
    if (state.step != ScanStep.start || order == null) return;
    if (start) return _go(ScanStep.issueShelf, state.context);
    _log(LogKind.notStarted, args: {'sym': order.symbol});
    _reset(const ScanNotice(NoticeKind.notStarted));
  }

  /// 不合格の有無の答え([pass] が true = 不合格なし → 登録へ、false = 不合格あり → 不合格の数量へ)。
  Future<void> evaluate({required bool pass}) async {
    if (state.step != ScanStep.eval && state.step != ScanStep.recvEval) return;
    if (pass) return _afterQuantities();
    final c = state.context;
    if (_limit(c) - c.quantity <= 0) {
      return _notice(const ScanNotice(NoticeKind.qtyInvalid, isError: true));
    }
    _go(ScanStep.failQty, c);
  }

  /// 不合格処理(理由を決めて、不合格の棚へ)。
  Future<void> confirmReject(RejectReason reason) async {
    if (state.step != ScanStep.ng) return;
    _go(ScanStep.putShelf, state.context.copyWith(reason: reason, rejected: true));
    await _loadRecommended();
  }

  /// 差の理由(完了が取り出しより少ない。差は払出元へ返す)を決めて、登録する。
  Future<void> confirmReturn(ReturnReason reason) async {
    if (state.step != ScanStep.returnReason) return;
    await _register(state.context.copyWith(returnReason: reason));
  }

  /// 終了・受入で登録できる数量の上限(作業は取り出した数量、購入品は発注の残り)。
  int _limit(ScanContext c) => c.order?.finishLimit ?? c.purchase?.remaining ?? 0;

  /// 合格・不合格の数量と棚がそろったあと、差があれば差の理由を聞き、なければ登録する。
  Future<void> _afterQuantities() async {
    final c = state.context;
    final total = c.quantity + c.failQuantity;
    if (total <= 0) {
      return _notice(const ScanNotice(NoticeKind.qtyInvalid, isError: true));
    }
    // 作業の終了で、完了が取り出しより少なく、不合格が無いときは、差の理由が要る(差は払出元へ返す)
    if (c.order != null && c.failQuantity == 0 && _limit(c) - total > 0) {
      return _go(ScanStep.returnReason, c);
    }
    await _register(c);
  }

  /// おすすめの棚を選んで入庫する(読み取りと同じ。入庫先を読み取る段階だけ)。
  Future<void> pickShelf(ShelfTarget shelf) async {
    if (state.working || state.step != ScanStep.putShelf) return;
    await _putTo(shelf);
  }

  /// 操作なしが続いたとき(画面の時計が呼ぶ): 処理待ちを消してリーディングトップへ戻る。
  /// 自動では登録しない。担当者・選んだ棚・モードも消して空にする(履歴だけ残す)。
  /// 消すものが無い(トップで処理待ち・担当者・選んだ棚が空)ときは何もしない。
  void idleClear() {
    if (state.working) return;
    final empty = state.step == ScanStep.top &&
        state.queue.isEmpty &&
        state.operator == null &&
        state.selectedShelf == null &&
        state.mode == null;
    if (empty) return;
    state = ScanState(
      log: state.log,
      notice: const ScanNotice(NoticeKind.idleCleared),
    );
  }

  /// 1 つ前のリードに戻る(入力画面の「戻る」)。トップでは何もしない。
  /// 登録はしない。戻り先で入れ直した値は、それ以降の段階でまた入力する。
  void back() {
    if (state.working) return;
    final c = state.context;
    switch (state.step) {
      case ScanStep.top:
        return;
      case ScanStep.issueShelf:
        return _go(ScanStep.start, c);
      case ScanStep.issueQty:
        return _go(ScanStep.issueShelf, c.copyWith(quantity: 0));
      case ScanStep.eval:
      case ScanStep.recvEval:
        // 合格の棚を選び直す(合格が 0 のときは、合格数量へ)
        if (c.quantity > 0) {
          _go(ScanStep.putShelf, c.copyWith(rejected: false));
          return unawaited(_loadRecommended());
        }
        return _go(c.order != null ? ScanStep.qty : ScanStep.recvQty, c);
      case ScanStep.failQty:
        // 合格があれば不合格の有無へ、なければ合格数量へ
        if (c.quantity > 0) return _go(c.order != null ? ScanStep.eval : ScanStep.recvEval, c);
        return _go(c.order != null ? ScanStep.qty : ScanStep.recvQty, c);
      case ScanStep.ng:
        return _go(ScanStep.failQty, c);
      case ScanStep.returnReason:
        return _go(ScanStep.eval, c);
      case ScanStep.putShelf:
        if (c.item != null) return _go(ScanStep.stockQty, c);
        if (c.rejected) return _go(ScanStep.ng, c);
        return _go(c.order != null ? ScanStep.qty : ScanStep.recvQty, c);
      case ScanStep.stockQty:
        return _go(ScanStep.stockItem, c.copyWith(quantity: 0));
      case ScanStep.start:
      case ScanStep.qty:
      case ScanStep.recvQty:
      case ScanStep.stockItem:
      case ScanStep.equipment:
      case ScanStep.supplyChoice:
        return _reset();
    }
  }

  /// 設備点検の結果を記録する(点検項目ごと)。
  Future<void> saveInspection(List<InspectionResult> results) async {
    final eq = state.context.equipment;
    if (state.working || state.step != ScanStep.equipment || eq == null) return;
    final done = await _guard('設備点検の記録', eq.symbol, () async {
      await _gateway.recordInspection(eq, results);
      return true;
    });
    if (done != true) return;
    final issues = results.where((r) => r != InspectionResult.pass).length;
    _log(
      issues == 0 ? LogKind.inspected : LogKind.inspectedWithIssue,
      ok: issues == 0,
      args: {
        'code': eq.symbol,
        'name': eq.name,
        'count': results.length,
        'issues': issues,
      },
    );
    _reset(const ScanNotice(NoticeKind.inspected));
  }

  /// 支給の受け入れ・検品を登録する。受け入れ = [receive](仮止めの + の行)、
  /// 合格 = [receive] も [hold] も false(仮止めを解除)、不合格 = [hold] だけ true(仮止めのまま、異常を登録)。
  /// 「場面」(ラジオの選択肢)は画面にだけあり、ここへは boolean で渡す。
  Future<void> registerSupply({
    required int quantity,
    required bool receive,
    required bool hold,
  }) async {
    final target = state.context.supply;
    if (state.working || state.step != ScanStep.supplyChoice || target == null) {
      return;
    }
    if (quantity <= 0) {
      return _notice(const ScanNotice(NoticeKind.qtyInvalid, isError: true));
    }
    final limit = receive ? target.remaining : target.held;
    if (quantity > limit) {
      return _notice(
        ScanNotice(
          NoticeKind.qtyOverSupply,
          isError: true,
          args: {'remain': limit, 'unit': target.unit},
        ),
      );
    }
    final done = await _guard('支給の登録', target.symbol, () async {
      await _gateway.registerSupply(
        target,
        quantity: quantity,
        receive: receive,
        hold: hold,
      );
      return true;
    });
    if (done != true) return;
    _log(
      LogKind.supplied,
      ok: receive || !hold,
      args: {
        'sym': target.symbol,
        'item': target.itemName,
        'qty': quantity,
        'unit': target.unit,
      },
    );
    _reset(const ScanNotice(NoticeKind.supplied));
  }

  // ---- 段階ごとの判定 ----

  Future<ScanTarget?> _find(String v) async {
    final target = await _guard('symbol の照会', v, () => _findWithCode(v));
    if (target == null && !_failed) {
      _log(LogKind.unknown, ok: false, args: {'value': v});
      _notice(
        ScanNotice(NoticeKind.unknown, isError: true, args: {'value': v}),
      );
    }
    return target;
  }

  /// コード付き(`<コード 2 文字><symbol>`)ならコードを外して照会し、コードの種類と一致した対象だけを返す。
  /// 一致しない・見つからないときは、全体を従来の symbol として照会する(コードに似た接頭辞の symbol を守る)。
  Future<ScanTarget?> _findWithCode(String v) async {
    final parsed = BarcodeCode.parse(v);
    final code = parsed.code;
    if (code == null) return _gateway.find(v);
    final byCode = await _gateway.find(parsed.symbol);
    if (byCode != null && byCode.kind == code.kind) return byCode;
    return _gateway.find(v);
  }

  Future<void> _submitTop(String v) async {
    final target = await _find(v);
    if (target == null) return;
    final mode = state.mode;
    if (mode != null && mode.accepts != target.kind) {
      return _notice(
        ScanNotice(
          NoticeKind.wrongKind,
          isError: true,
          args: {'mode': mode, 'expected': mode.accepts, 'actual': target.kind},
        ),
      );
    }
    switch (target) {
      case WorkOrderTarget():
        if (target.blocked) {
          _log(
            LogKind.workBlocked,
            args: {
              'sym': target.symbol,
              'item': target.itemName,
              'task': target.taskName,
            },
          );
          return _reset(
            ScanNotice(NoticeKind.workBlocked, isError: true, args: {'stopped': target.stopped}),
          );
        }
        if (target.state == WorkState.done || target.remaining == 0) {
          _log(
            LogKind.workDone,
            args: {
              'sym': target.symbol,
              'item': target.itemName,
              'task': target.taskName,
            },
          );
          return _reset(const ScanNotice(NoticeKind.workDone));
        }
        _go(
          target.state == WorkState.inProgress ? ScanStep.qty : ScanStep.start,
          ScanContext(order: target),
        );
      case ShelfTarget():
        _go(ScanStep.stockItem, ScanContext(shelf: target));
        state = state.copyWith(shelfContents: () => null);
        await _loadContents(target);
      case PurchaseTarget():
        if (target.blocked) {
          _log(
            LogKind.purchaseBlocked,
            args: {'sym': target.symbol, 'item': target.itemName},
          );
          return _reset(
            ScanNotice(NoticeKind.purchaseBlocked, isError: true, args: {'stopped': target.stopped}),
          );
        }
        if (target.remaining == 0) {
          _log(
            LogKind.purchaseDone,
            args: {'sym': target.symbol, 'item': target.itemName},
          );
          return _reset(const ScanNotice(NoticeKind.purchaseDone));
        }
        _go(ScanStep.recvQty, ScanContext(purchase: target));
      case EquipmentTarget():
        _go(ScanStep.equipment, ScanContext(equipment: target));
      case SupplyTarget():
        _go(ScanStep.supplyChoice, ScanContext(supply: target));
      case ItemTarget():
        _notice(const ScanNotice(NoticeKind.needShelfFirst, isError: true));
    }
  }

  Future<void> _submitShelf(String v) async {
    final target = await _find(v);
    if (target == null) return;
    if (target is! ShelfTarget) {
      return _notice(
        ScanNotice(
          NoticeKind.expectShelf,
          isError: true,
          args: {'actual': target.kind},
        ),
      );
    }
    if (state.step == ScanStep.putShelf) return _putTo(target);
    if (state.context.order == null) return;
    // 開始: 材料を出す棚を読み取ったら、開始数量を入れる
    _go(ScanStep.issueQty, state.context.copyWith(shelf: target));
  }

  /// 開始を登録する(棚出庫 + 作業実績の登録。1 つの処理)。処理待ちを使うときは、ためる。
  Future<void> _startWork(ScanContext c) async {
    final order = c.order;
    final shelf = c.shelf;
    if (order == null || shelf == null) return;
    if (ref.read(batchQueueProvider)) {
      // 登録せず、処理待ちにためる(まとめて登録は [flushQueue])
      final queue = [...state.queue, QueuedIssue(order: order, shelf: shelf, quantity: c.quantity)];
      state = state.copyWith(queue: queue);
      return _reset(ScanNotice(NoticeKind.queued, args: {'count': queue.length}));
    }
    final done = await _guard('棚出庫', order.symbol, () async {
      await _gateway.startWork(order, shelf, c.quantity);
      return true;
    });
    if (done != true) return;
    _logIssue(order, shelf);
    _reset(ScanNotice(NoticeKind.started, args: {'shelf': shelf.name}));
  }

  /// 入庫先の棚を受け取る。棚移動(製品/購入品)は入庫して終わり。作業の終了・受入は、合格の棚なら
  /// 不合格の有無へ、不合格の棚なら差の理由の確認(または登録)へ進む。
  Future<void> _putTo(ShelfTarget shelf) async {
    final c = state.context;
    if (c.item != null) return _put(shelf);
    if (c.rejected) {
      state = state.copyWith(context: c.copyWith(failShelf: shelf));
      return _afterQuantities();
    }
    // 合格の棚。処理待ちを使うときは、選んだ棚として残す(次の合格の棚の読み取りを省く)
    if (ref.read(batchQueueProvider)) state = state.copyWith(selectedShelf: () => shelf);
    _go(c.order != null ? ScanStep.eval : ScanStep.recvEval, c.copyWith(passShelf: shelf));
  }

  /// 終了・受入を、1 回で登録する(合格・不合格・差)。処理待ちを使うときは、ためる。
  Future<void> _register(ScanContext c) async {
    final StockSource? source = c.order != null
        ? WorkSource(c.order!)
        : c.purchase != null
        ? PurchaseSource(c.purchase!)
        : null;
    if (source == null) return;
    final failReason = c.failQuantity > 0 ? (c.reason ?? RejectReason.other) : null;
    if (ref.read(batchQueueProvider)) {
      final queue = [
        ...state.queue,
        QueuedResult(
          source: source,
          passQuantity: c.quantity,
          passShelf: c.passShelf,
          failQuantity: c.failQuantity,
          failShelf: c.failShelf,
          failReason: failReason,
          returnReason: c.returnReason,
        ),
      ];
      return _reset(ScanNotice(NoticeKind.queued, args: {"count": queue.length}), queue);
    }
    final done = await _guard('完了の登録', source.symbol, () async {
      await _gateway.registerResult(
        source: source,
        passQuantity: c.quantity,
        passShelf: c.passShelf,
        failQuantity: c.failQuantity,
        failShelf: c.failShelf,
        failReason: failReason,
        returnReason: c.returnReason,
      );
      return true;
    });
    if (done != true) return;
    _logResult(source, c.quantity, c.passShelf, c.failQuantity, c.failShelf);
    _reset(ScanNotice(NoticeKind.stored, args: {'shelf': (c.passShelf ?? c.failShelf)?.name ?? ''}));
  }

  /// 完了の履歴(合格・不合格のそれぞれ)。
  void _logResult(StockSource source, int pass, ShelfTarget? passShelf, int fail, ShelfTarget? failShelf) {
    if (pass > 0 && passShelf != null) _logPut(source, pass, false, passShelf, alsoDone: fail);
    if (fail > 0 && failShelf != null) _logPut(source, fail, true, failShelf, alsoDone: pass);
  }

  Future<void> _submitStockItem(String v) async {
    final target = await _find(v);
    if (target == null) return;
    if (target is! ItemTarget) {
      return _notice(
        ScanNotice(
          NoticeKind.expectItem,
          isError: true,
          args: {'actual': target.kind},
        ),
      );
    }
    _go(ScanStep.stockQty, state.context.copyWith(item: target));
  }

  Future<void> _submitQuantity(String v) async {
    final n = int.tryParse(v);
    final step = state.step;
    // 合格数量は 0 を許す(全量が不合格のとき)。そのほかは 1 以上
    final allowZero = step == ScanStep.qty || step == ScanStep.recvQty;
    if (n == null || n < 0 || (n == 0 && !allowZero)) {
      return _notice(const ScanNotice(NoticeKind.qtyInvalid, isError: true));
    }
    final c = state.context;
    final order = c.order;
    final purchase = c.purchase;
    if (order != null) {
      final limit = switch (step) {
        ScanStep.issueQty => order.remaining,
        ScanStep.qty => order.finishLimit,
        ScanStep.failQty => order.finishLimit - c.quantity,
        _ => null,
      };
      if (limit != null && n > limit) {
        return _notice(
          ScanNotice(
            NoticeKind.qtyOverWork,
            isError: true,
            args: {'remain': limit < 0 ? 0 : limit, 'unit': order.unit},
          ),
        );
      }
    }
    if (purchase != null) {
      final limit = switch (step) {
        ScanStep.recvQty => purchase.remaining,
        ScanStep.failQty => purchase.remaining - c.quantity,
        _ => null,
      };
      if (limit != null && n > limit) {
        return _notice(
          ScanNotice(
            NoticeKind.qtyOverPurchase,
            isError: true,
            args: {'remain': limit < 0 ? 0 : limit, 'unit': purchase.unit},
          ),
        );
      }
    }
    final next = c.copyWith(quantity: step == ScanStep.failQty ? null : n);
    switch (step) {
      case ScanStep.stockQty:
        final shelf = c.shelf;
        _go(ScanStep.stockQty, next);
        if (shelf != null) await _put(shelf);
      case ScanStep.issueQty:
        await _startWork(next);
      case ScanStep.qty:
      case ScanStep.recvQty:
        if (n == 0) return _go(ScanStep.failQty, next.copyWith(quantity: 0));
        _go(ScanStep.putShelf, next.copyWith(rejected: false));
        // 処理待ちを使うとき、選んだ棚があれば、合格の棚の読み取りを省く
        final shelf = state.selectedShelf;
        if (shelf != null && ref.read(batchQueueProvider)) return _putTo(shelf);
        await _loadRecommended();
      case ScanStep.failQty:
        _go(ScanStep.ng, c.copyWith(failQuantity: n, rejected: true));
      default:
        break;
    }
  }

  /// 入庫処理。作業・受入・棚移動のどれでも、最後は棚へ入庫してリーディングトップへ戻る。
  Future<void> _put(ShelfTarget shelf) async {
    final c = state.context;
    final item = c.item;
    final StockSource? source = item != null ? ItemSource(item) : null;
    if (source == null) return;
    final reason = c.rejected ? (c.reason ?? RejectReason.other) : null;
    if (ref.read(batchQueueProvider)) {
      // 登録せず、処理待ちにためる(まとめて登録は [flushQueue])
      final queue = [
        ...state.queue,
        QueuedPut(source: source, quantity: c.quantity, shelf: shelf, reason: reason),
      ];
      state = state.copyWith(
        queue: queue,
        selectedShelf: () => reason == null ? shelf : state.selectedShelf,
      );
      return _reset(ScanNotice(NoticeKind.queued, args: {'count': queue.length}));
    }
    final done = await _guard('入庫', source.symbol, () async {
      await _gateway.putAway(
        source: source,
        quantity: c.quantity,
        shelf: shelf,
        reason: reason,
      );
      return true;
    });
    if (done != true) return;
    _logPut(source, c.quantity, c.rejected, shelf);
    _reset(ScanNotice(NoticeKind.stored, args: {'shelf': shelf.name}));
  }

  /// 処理待ちの 1 件を取り消す(登録していないので、取得元へは何も送らない)。
  void removeQueued(int index) {
    if (state.working || index < 0 || index >= state.queue.length) return;
    final queue = [...state.queue]..removeAt(index);
    state = state.copyWith(queue: queue, notice: () => null);
  }

  /// 処理待ちを順に登録する。途中で失敗したら、残りのキューを消して理由を通知する
  /// (登録済みの分は履歴に残る。やり直しは最初から読み取る)。
  Future<void> flushQueue() async {
    if (state.working || state.queue.isEmpty) return;
    final items = List<QueuedEntry>.of(state.queue);
    var done = 0;
    for (final q in items) {
      final ok = await _guard(q is QueuedIssue ? '棚出庫' : q is QueuedResult ? '完了の登録' : '入庫', q.symbol, () async {
        switch (q) {
          case QueuedIssue(:final order, :final shelf, :final quantity):
            await _gateway.startWork(order, shelf, quantity);
          case QueuedResult():
            await _gateway.registerResult(
              source: q.source,
              passQuantity: q.passQuantity,
              passShelf: q.passShelf,
              failQuantity: q.failQuantity,
              failShelf: q.failShelf,
              failReason: q.failReason,
              returnReason: q.returnReason,
            );
          case QueuedPut():
            await _gateway.putAway(
              source: q.source,
              quantity: q.quantity,
              shelf: q.shelf,
              reason: q.reason,
            );
        }
        return true;
      });
      if (ok != true) {
        _log(LogKind.queueFailed, ok: false, args: {'sym': q.symbol, 'done': done, 'total': items.length});
        state = state.copyWith(
          queue: const [],
          notice: () => ScanNotice(
            NoticeKind.queueFailed,
            isError: true,
            args: {'done': done, 'total': items.length},
          ),
        );
        return;
      }
      done++;
      switch (q) {
        case QueuedIssue(:final order, :final shelf):
          _logIssue(order, shelf);
        case QueuedResult():
          _logResult(q.source, q.passQuantity, q.passShelf, q.failQuantity, q.failShelf);
        case QueuedPut():
          _logPut(q.source, q.quantity, q.reason != null, q.shelf);
      }
    }
    final last = items.last;
    state = state.copyWith(
      queue: const [],
      notice: () => ScanNotice(
        last is QueuedIssue ? NoticeKind.started : NoticeKind.stored,
        args: {
          'shelf': switch (last) {
            QueuedIssue(:final shelf) => shelf.name,
            QueuedResult(:final passShelf, :final failShelf) => (passShelf ?? failShelf)?.name ?? '',
            QueuedPut(:final shelf) => shelf.name,
          },
        },
      ),
    );
  }

  void _logIssue(WorkOrderTarget order, ShelfTarget shelf) => _log(
    LogKind.started,
    args: {
      'sym': order.symbol,
      'item': order.itemName,
      'task': order.taskName,
      'shelf': shelf.name,
    },
  );

  /// 入庫の履歴を 1 件残す。
  void _logPut(StockSource source, int quantity, bool rejected, ShelfTarget shelf, {int alsoDone = 0}) {
    final judge = rejected ? 'fail' : 'pass';
    switch (source) {
      case WorkSource(:final order):
        // 完了か: 同じ登録の、もう一方(合格と不合格)の数量も含める
        final complete = order.doneQuantity + quantity + alsoDone >= order.quantity;
        _log(
          complete ? LogKind.storedWorkDone : LogKind.storedWork,
          ok: !rejected,
          args: {
            'sym': order.symbol,
            'item': order.itemName,
            'task': order.taskName,
            'qty': quantity,
            'unit': order.unit,
            'judge': judge,
            'shelf': shelf.name,
          },
        );
      case PurchaseSource(:final purchase):
        _log(
          LogKind.storedPurchase,
          ok: !rejected,
          args: {
            'sym': purchase.symbol,
            'item': purchase.itemName,
            'qty': quantity,
            'unit': purchase.unit,
            'judge': judge,
            'shelf': shelf.name,
          },
        );
      case ItemSource(:final item):
        _log(
          LogKind.storedItem,
          args: {
            'shelf': shelf.name,
            'item': item.name,
            'qty': quantity,
            'unit': item.unit,
          },
        );
    }
  }
}
