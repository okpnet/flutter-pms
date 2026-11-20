import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

import '../barcode_code.dart';
import 'scan_gateway.dart';
import 'scan_models.dart';
import 'scan_providers.dart';

/// 読み込みの流れの段階(画面の見出しと入力の受け付けが決まる)。
///
/// ```
/// top ─ 作業指示 ─ start ─(はい)─ issueShelf ─ top
///        │           └(いいえ)─ top
///        └ 開始中 ─ qty ─ eval ─(合格)─ putShelf ─ top
///                              └(不合格)─ ng ─ putShelf
/// top ─ 棚 ─ stockItem ─ stockQty ─ top
/// top ─ 購入品 ─ recvQty ─ recvEval ─(合格)─ putShelf / (不合格)─ ng ─ putShelf
/// top ─ 設備 ─ equipment ─ top
/// top ─ 支給 ─ supplyChoice(受け入れ・合格・不合格をラジオで選び、数量を入れる) ─ top
/// ```
enum ScanStep {
  top,
  start,
  issueShelf,
  qty,
  eval,
  ng,
  putShelf,
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

/// 処理待ち(キュー)の 1 件: まとめて登録するまで取得元へ送らない入庫。
/// 不合格かは [reason] の有無で分かる(不合格のときだけ理由を持つ)。
class QueuedPut {
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

  Map<String, Object?> toJson() => {
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
  });

  final WorkOrderTarget? order;
  final PurchaseTarget? purchase;
  final ShelfTarget? shelf;
  final ItemTarget? item;
  final EquipmentTarget? equipment;
  final SupplyTarget? supply;
  final int quantity;
  final bool rejected;
  final RejectReason? reason;

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
  );

  Map<String, Object?> toJson() => {
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
  final List<QueuedPut> queue;

  ScanState copyWith({
    ScanMode? Function()? mode,
    ScanStep? step,
    ScanContext? context,
    ScanNotice? Function()? notice,
    List<ScanLogEntry>? log,
    bool? working,
    List<QueuedPut>? queue,
  }) => ScanState(
    mode: mode != null ? mode() : this.mode,
    step: step ?? this.step,
    context: context ?? this.context,
    notice: notice != null ? notice() : this.notice,
    log: log ?? this.log,
    working: working ?? this.working,
    queue: queue ?? this.queue,
  );

  Map<String, Object?> toJson() => {
    'mode': mode?.name,
    'step': step.name,
    'context': context.toJson(),
    'notice': notice?.kind.name,
    'working': working,
    'queue': queue.map((q) => q.toJson()).toList(),
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
  void _reset([ScanNotice? notice]) =>
      state = ScanState(
        mode: state.mode,
        log: state.log,
        notice: notice,
        queue: state.queue,
      );

  void _go(ScanStep step, ScanContext context) =>
      state = state.copyWith(step: step, context: context, notice: () => null);

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
    switch (state.step) {
      case ScanStep.top:
        return _submitTop(v);
      case ScanStep.issueShelf:
      case ScanStep.putShelf:
        return _submitShelf(v);
      case ScanStep.stockItem:
        return _submitStockItem(v);
      case ScanStep.qty:
      case ScanStep.stockQty:
      case ScanStep.recvQty:
        return _submitQuantity(v);
      case ScanStep.start:
      case ScanStep.eval:
      case ScanStep.ng:
      case ScanStep.recvEval:
      case ScanStep.equipment:
      case ScanStep.supplyChoice:
        return; // ボタンで答える段階。入力は受け付けない
    }
  }

  /// 開始の選択(はい: 棚出庫へ / いいえ: トップへ)。
  void answerStart(bool start) {
    final order = state.context.order;
    if (state.step != ScanStep.start || order == null) return;
    if (start) return _go(ScanStep.issueShelf, state.context);
    _log(LogKind.notStarted, args: {'sym': order.symbol});
    _reset(const ScanNotice(NoticeKind.notStarted));
  }

  /// 評価(合格: 入庫へ / 不合格: 不合格処理へ)。
  void evaluate({required bool pass}) {
    if (state.step != ScanStep.eval && state.step != ScanStep.recvEval) return;
    if (pass) {
      return _go(ScanStep.putShelf, state.context.copyWith(rejected: false));
    }
    _go(ScanStep.ng, state.context.copyWith(rejected: true));
  }

  /// 不合格処理(理由を決めて入庫へ)。
  void confirmReject(RejectReason reason) {
    if (state.step != ScanStep.ng) return;
    _go(ScanStep.putShelf, state.context.copyWith(reason: reason));
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
    if (state.step == ScanStep.putShelf) return _put(target);
    final order = state.context.order;
    if (order == null) return;
    final done = await _guard('棚出庫', order.symbol, () async {
      await _gateway.startWork(order, target);
      return true;
    });
    if (done != true) return;
    _log(
      LogKind.started,
      args: {
        'sym': order.symbol,
        'item': order.itemName,
        'task': order.taskName,
        'shelf': target.name,
      },
    );
    _reset(ScanNotice(NoticeKind.started, args: {'shelf': target.name}));
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
    if (n == null || n <= 0) {
      return _notice(const ScanNotice(NoticeKind.qtyInvalid, isError: true));
    }
    final c = state.context;
    final order = c.order;
    final purchase = c.purchase;
    if (state.step == ScanStep.qty && order != null && n > order.remaining) {
      return _notice(
        ScanNotice(
          NoticeKind.qtyOverWork,
          isError: true,
          args: {'remain': order.remaining, 'unit': order.unit},
        ),
      );
    }
    if (state.step == ScanStep.recvQty &&
        purchase != null &&
        n > purchase.remaining) {
      return _notice(
        ScanNotice(
          NoticeKind.qtyOverPurchase,
          isError: true,
          args: {'remain': purchase.remaining, 'unit': purchase.unit},
        ),
      );
    }
    final next = c.copyWith(quantity: n);
    switch (state.step) {
      case ScanStep.stockQty:
        final shelf = c.shelf;
        _go(ScanStep.stockQty, next);
        if (shelf != null) await _put(shelf);
      case ScanStep.qty:
        _go(ScanStep.eval, next);
      default:
        _go(ScanStep.recvEval, next);
    }
  }

  /// 入庫処理。作業・受入・棚移動のどれでも、最後は棚へ入庫してリーディングトップへ戻る。
  Future<void> _put(ShelfTarget shelf) async {
    final c = state.context;
    final order = c.order;
    final purchase = c.purchase;
    final item = c.item;
    final StockSource? source = order != null
        ? WorkSource(order)
        : purchase != null
        ? PurchaseSource(purchase)
        : item != null
        ? ItemSource(item)
        : null;
    if (source == null) return;
    final reason = c.rejected ? (c.reason ?? RejectReason.other) : null;
    if (ref.read(batchQueueProvider)) {
      // 登録せず、処理待ちにためる(まとめて登録は [flushQueue])
      final queue = [
        ...state.queue,
        QueuedPut(source: source, quantity: c.quantity, shelf: shelf, reason: reason),
      ];
      state = state.copyWith(queue: queue);
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
    final items = List<QueuedPut>.of(state.queue);
    var done = 0;
    for (final q in items) {
      final ok = await _guard('入庫', q.source.symbol, () async {
        await _gateway.putAway(
          source: q.source,
          quantity: q.quantity,
          shelf: q.shelf,
          reason: q.reason,
        );
        return true;
      });
      if (ok != true) {
        _log(LogKind.queueFailed, ok: false, args: {'sym': q.source.symbol, 'done': done, 'total': items.length});
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
      _logPut(q.source, q.quantity, q.reason != null, q.shelf);
    }
    state = state.copyWith(
      queue: const [],
      notice: () => ScanNotice(NoticeKind.stored, args: {'shelf': items.last.shelf.name}),
    );
  }

  /// 入庫の履歴を 1 件残す。
  void _logPut(StockSource source, int quantity, bool rejected, ShelfTarget shelf) {
    final judge = rejected ? 'fail' : 'pass';
    switch (source) {
      case WorkSource(:final order):
        final complete = order.doneQuantity + quantity >= order.quantity;
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
