import 'dart:async';

import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:view_responsiveness/constants/media_break_point.dart';
import 'package:work_record/work_record_api.dart';

import '../i18n/strings_provider.dart';
import '../logic/in_memory_scan_gateway.dart';
import '../logic/scan_flow.dart';
import '../logic/scan_models.dart';
import '../logic/scan_providers.dart';
import 'barcode_entry_labels.dart';
import 'camera_scanner.dart';

/// バーコード実績登録の画面(リーディングトップから入庫・点検まで1画面で進める)。
///
/// バーコードリーダーはキーボード入力として届き、末尾の Enter で確定する。
/// 入力欄は常に選択された状態にして、続けて読み取れるようにする。
/// 判定は [ScanFlow] に閉じ、この画面は状態の表示と操作の受け渡しだけを行う。
/// 支給の画面の選択肢(画面だけの値。登録へは boolean で渡す)。
enum _SupplyChoice { receive, accept, reject }

class BarcodeEntryPage extends ConsumerStatefulWidget {
  const BarcodeEntryPage({super.key, this.symbol, this.item});

  /// 開いた直後に読み込んだものとして進める symbol(ショートカット用。コード付きでもよい)。
  final String? symbol;

  /// `symbol` の次に読み込んだものとして進める品目(コード付き)。例: 棚を読み込んだあとの品目。
  final String? item;

  @override
  ConsumerState<BarcodeEntryPage> createState() => _BarcodeEntryPageState();
}

class _BarcodeEntryPageState extends ConsumerState<BarcodeEntryPage> {
  final _input = TextEditingController();
  final _focus = FocusNode();

  /// 入力要求(ダイアログ・全画面)の入力欄。トップの入力欄とは別に持つ(同時に 2 か所へ付けない)。
  final _reqInput = TextEditingController();
  final _reqFocus = FocusNode();

  /// 入力要求の画面は別のルートで出すため、この画面が持つ入力値の変更を知らせる。
  final _uiTick = ValueNotifier<int>(0);

  /// 開いている入力要求のルート(スマートフォンは全画面・PC/タブレットはダイアログ)。
  Route<void>? _request;
  bool _camera = false;
  RejectReason _reason = RejectReason.dimension;
  List<InspectionResult> _results = const [];
  _SupplyChoice _supplyChoice = _SupplyChoice.receive;
  final _supplyQty = TextEditingController();

  /// 操作なしの時計(画面案 6.4。処理待ちを消して最初に戻る。登録はしない)。
  Timer? _idleTimer;
  DateTime _lastActivity = DateTime.now();

  /// 戻るまでの残り秒(案内中だけ。null は案内なし)。
  int? _idleWarnSec;

  @override
  void initState() {
    super.initState();
    _input.addListener(_touch);
    _idleTimer = Timer.periodic(const Duration(seconds: 1), (_) => _onIdleTick());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _syncRequest(ref.read(scanFlowProvider).step);
    });
    final symbol = widget.symbol;
    if (symbol != null && symbol.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final flow = ref.read(scanFlowProvider.notifier);
        flow.submit(symbol).then((_) {
          final next = widget.item;
          if (mounted && next != null && next.isNotEmpty) flow.submit(next);
        });
      });
    }
  }

  /// 操作があった(入力・状態の変化)。時計をやり直す。
  void _touch() {
    _lastActivity = DateTime.now();
    if (mounted && _idleWarnSec != null) _ui(() => _idleWarnSec = null);
  }

  /// 画面の状態を変えて、入力要求の画面(別のルート)にも知らせる。
  void _ui(VoidCallback change) {
    setState(change);
    _uiTick.value++;
  }

  void _onIdleTick() {
    if (!mounted) return;
    final timeout = ref.read(idleTimeoutProvider);
    final st = ref.read(scanFlowProvider);
    // 消すものが無い(トップで処理待ちが空)・通信中は数えない
    final idleable = st.queue.isNotEmpty || st.step != ScanStep.top;
    if (timeout == Duration.zero || !idleable || st.working) {
      _lastActivity = DateTime.now();
      if (_idleWarnSec != null) _ui(() => _idleWarnSec = null);
      return;
    }
    final remaining = timeout - DateTime.now().difference(_lastActivity);
    if (remaining <= Duration.zero) {
      ref.read(scanFlowProvider.notifier).idleClear();
      _lastActivity = DateTime.now();
      _ui(() => _idleWarnSec = null);
    } else if (remaining <= ref.read(idleWarningProvider)) {
      _ui(() => _idleWarnSec = (remaining.inMilliseconds / 1000).ceil());
    }
  }

  @override
  void dispose() {
    _idleTimer?.cancel();
    final request = _request;
    if (request != null) {
      // 画面を離れるとき、開いている入力要求も閉じる(ビルド中の操作を避けて、次のフレームで)
      final nav = request.navigator;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (request.isActive) nav?.removeRoute(request);
      });
    }
    _uiTick.dispose();
    _reqInput.dispose();
    _reqFocus.dispose();
    _input.dispose();
    _focus.dispose();
    _supplyQty.dispose();
    super.dispose();
  }

  Future<void> _commit(
    String value, {
    TextEditingController? input,
    FocusNode? focus,
  }) async {
    (input ?? _input).clear();
    await ref.read(scanFlowProvider.notifier).submit(value);
    if (mounted) (focus ?? _focus).requestFocus();
  }

  // ---- 入力要求の画面(画面案 6.4): スマートフォンは全画面、PC・タブレットはダイアログ ----

  /// 段階がトップ以外になったら入力要求を開き、トップへ戻ったら閉じる(ビルド中を避けて次のフレームで)。
  void _syncRequest(ScanStep step) {
    if (step != ScanStep.top && _request == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _openRequest());
    } else if (step == ScanStep.top && _request != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _closeRequest());
    }
  }

  void _openRequest() {
    if (!mounted || _request != null) return;
    if (ref.read(scanFlowProvider).step == ScanStep.top) return;
    final wide = MediaBreakPoint.of(MediaQuery.sizeOf(context).width) != MediaBreakPoint.mobile;
    final nav = Navigator.of(context, rootNavigator: true);
    // 閉じる操作(戻る・システムの戻る)は、閉じずに 1 つ前のリードへ戻す。閉じるのは段階がトップになったとき。
    Widget guard(Widget child) => PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) ref.read(scanFlowProvider.notifier).back();
      },
      child: child,
    );
    final Route<void> route = wide
        ? DialogRoute<void>(
            context: context,
            barrierDismissible: false,
            builder: (_) => guard(
              Dialog(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 560),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: _requestContent(),
                  ),
                ),
              ),
            ),
          )
        : MaterialPageRoute<void>(
            fullscreenDialog: true,
            builder: (_) => guard(
              Scaffold(
                body: SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: _requestContent(),
                  ),
                ),
              ),
            ),
          );
    _request = route;
    nav.push(route).whenComplete(() {
      if (identical(_request, route)) _request = null;
    });
  }

  void _closeRequest() {
    final route = _request;
    if (route == null || ref.read(scanFlowProvider).step != ScanStep.top) return;
    _request = null;
    if (route.isActive) route.navigator?.removeRoute(route);
    if (mounted) _focus.requestFocus();
  }

  void _ensureResults(EquipmentTarget? inspection) {
    if (inspection != null && _results.length != inspection.checkItems.length) {
      _results = List.filled(inspection.checkItems.length, InspectionResult.pass);
    }
  }

  /// 入力要求の中身(段階の見出し・対象の概要・通知・入力・おすすめ・「戻る」「トップに戻る」)。
  /// 状態は画面と同じ [scanFlowProvider]。
  Widget _requestContent() => Consumer(
    builder: (context, ref, _) => ValueListenableBuilder<int>(
      valueListenable: _uiTick,
      builder: (context, _, _) {
        final t = ref.watch(barcodeEntryStringsProvider);
        final s = ref.watch(scanFlowProvider);
        final flow = ref.read(scanFlowProvider.notifier);
        final theme = Theme.of(context);
        final notice = s.notice;
        _ensureResults(s.context.equipment);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(t.stepTitle(s.step), style: theme.textTheme.titleLarge),
            const SizedBox(height: 8),
            _Summary(context: s.context),
            // 作業指示の工程から、その生産計画の実績登録の画面(作業実績 › 実績登録)を開く(画面案 6.5)
            if (ref.watch(openWorkRegisterLinkProvider))
              if (s.context.order?.operationsPlanId case final planId?)
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton.icon(
                    key: const ValueKey('openWorkRegister'),
                    icon: const Icon(Icons.open_in_new, size: 18),
                    label: Text(t.input.openRegister),
                    onPressed: () => ref
                        .read(commandBusProvider)
                        .execute(WorkRegisterDestination(planId: planId)),
                  ),
                ),
            if (_idleWarnSec case final sec?)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  t.idle.warning(sec: sec),
                  key: const ValueKey('idleWarning'),
                  style: TextStyle(color: theme.colorScheme.tertiary),
                ),
              ),
            if (notice != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  t.noticeText(notice),
                  style: TextStyle(
                    color: notice.isError ? theme.colorScheme.error : theme.colorScheme.primary,
                  ),
                ),
              ),
            const SizedBox(height: 8),
            _stepBody(t, s, flow, input: _reqInput, focus: _reqFocus),
            if (s.step == ScanStep.putShelf && s.recommended.isNotEmpty)
              _RecommendPanel(state: s, flow: flow),
            const SizedBox(height: 16),
            Row(
              children: [
                OutlinedButton(
                  key: const ValueKey('requestBack'),
                  onPressed: s.working ? null : flow.back,
                  child: Text(t.request.back),
                ),
                const SizedBox(width: 8),
                TextButton(
                  key: const ValueKey('requestTop'),
                  onPressed: s.working ? null : flow.cancel,
                  child: Text(t.request.top),
                ),
              ],
            ),
          ],
        );
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(barcodeEntryStringsProvider);
    final s = ref.watch(scanFlowProvider);
    final flow = ref.read(scanFlowProvider.notifier);
    final theme = Theme.of(context);
    final notice = s.notice;
    _ensureResults(s.context.equipment);
    ref.listen<ScanState>(scanFlowProvider, (prev, next) {
      _touch();
      _syncRequest(next.step);
    });

    // 1 層目: 状態(ScanFlow)は 1 つ。2 層目: それを見る部品(ブロック)。広い画面は並べ、モバイルは縦に積む。
    final primary = <Widget>[
      if (s.step == ScanStep.top)
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final m in ScanMode.values)
              ChoiceChip(
                label: Text(t.modeLabel(m)),
                selected: s.mode == m,
                onSelected: (_) => flow.toggleMode(m),
              ),
          ],
        ),
      const SizedBox(height: 12),
      Text(
        // 段階の見出しは入力要求の画面([_requestContent])が持つ(ここは画面の見出しだけ)
        s.step == ScanStep.top && ref.watch(requireOperatorProvider) && s.operator == null
            ? t.staff.topTitle
            : t.input.topTitle,
        style: theme.textTheme.titleLarge,
      ),
      const SizedBox(height: 8),
      // トップ以外の段階(入力要求)は、ダイアログ(PC・タブレット)・全画面(モバイル)で出す([_requestContent])。
      if (s.step == ScanStep.top) ...[
        if (_idleWarnSec case final sec?)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              t.idle.warning(sec: sec),
              key: const ValueKey('idleWarning'),
              style: TextStyle(color: theme.colorScheme.tertiary),
            ),
          ),
        if (notice != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              t.noticeText(notice),
              style: TextStyle(
                color: notice.isError ? theme.colorScheme.error : theme.colorScheme.primary,
              ),
            ),
          ),
        const SizedBox(height: 8),
        _stepBody(t, s, flow, input: _input, focus: _focus),
      ],
      const SizedBox(height: 16),
      if (s.operator != null || s.selectedShelf != null)
        Wrap(
          spacing: 8,
          children: [
            if (s.operator case final op?)
              InputChip(
                key: const ValueKey('operatorChip'),
                label: Text(t.staff.label(name: op.name)),
                onDeleted: s.working ? null : flow.changeOperator,
                deleteButtonTooltipMessage: t.staff.change,
              ),
            if (s.selectedShelf case final shelf?)
              InputChip(
                key: const ValueKey('shelfChip'),
                label: Text(t.staff.shelf(name: shelf.name)),
                onDeleted: s.working ? null : flow.changeShelf,
                deleteButtonTooltipMessage: t.staff.changeShelf,
              ),
          ],
        ),
      _SampleSymbols(onPick: _commit),
    ];
    final secondary = <Widget>[
      if (s.queue.isNotEmpty) _QueuePanel(state: s, flow: flow),
      if (s.shelfContents case final contents?) _ContentsPanel(contents: contents),
      const SizedBox(height: 16),
      Text(t.log.title, style: theme.textTheme.titleMedium),
      const SizedBox(height: 4),
      if (s.log.isEmpty)
        Text(t.log.empty)
      else
        for (final e in s.log)
          ListTile(
            dense: true,
            leading: Icon(
              e.ok ? Icons.check_circle_outline : Icons.error_outline,
              color: e.ok ? null : theme.colorScheme.error,
            ),
            title: Text(t.logText(e)),
            subtitle: Text(_time(e.time)),
          ),
    ];
    return ScreenScaffold(
      title: t.title,
      actions: [
        if (s.step != ScanStep.top)
          TextButton(
            onPressed: s.working ? null : flow.cancel,
            child: Text(t.input.cancel),
          ),
      ],
      body: LayoutBuilder(
        builder: (context, constraints) {
          final wide = MediaBreakPoint.of(constraints.maxWidth) != MediaBreakPoint.mobile;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: wide ? 1200 : 720),
                child: wide
                    // PC・タブレット: 左に読み取りと入力、右に処理待ち・棚の中身・履歴(同じ状態を見る 2 つのブロック)
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Column(
                              key: const ValueKey('primaryBlock'),
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: primary,
                            ),
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            flex: 4,
                            child: Column(
                              key: const ValueKey('secondaryBlock'),
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: secondary,
                            ),
                          ),
                        ],
                      )
                    // モバイル: 1 列(現在の段階を先頭に、処理待ち・棚の中身・履歴を続ける)
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [...primary, ...secondary],
                      ),
              ),
            ),
          );
        },
      ),
    );
  }

  String _time(DateTime d) =>
      '${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}:${d.second.toString().padLeft(2, '0')}';

  Widget _stepBody(
    BarcodeEntryStrings t,
    ScanState s,
    ScanFlow flow, {
    required TextEditingController input,
    required FocusNode focus,
  }) {
    final c = s.context;
    switch (s.step) {
      case ScanStep.start:
        return _Question(
          text: t.input.startQuestion,
          buttons: [
            FilledButton(
              onPressed: () => flow.answerStart(true),
              child: Text(t.input.answerYes),
            ),
            OutlinedButton(
              onPressed: () => flow.answerStart(false),
              child: Text(t.input.answerNo),
            ),
          ],
        );
      case ScanStep.eval:
      case ScanStep.recvEval:
        return _Question(
          text: t.input.evalQuestion,
          buttons: [
            FilledButton(
              onPressed: () => flow.evaluate(pass: true),
              child: Text(t.input.pass),
            ),
            OutlinedButton(
              onPressed: () => flow.evaluate(pass: false),
              child: Text(t.input.fail),
            ),
          ],
        );
      case ScanStep.ng:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<RejectReason>(
              initialValue: _reason,
              decoration: InputDecoration(labelText: t.input.ngReason),
              items: [
                for (final r in RejectReason.values)
                  DropdownMenuItem(value: r, child: Text(t.reasonLabel(r))),
              ],
              onChanged: (r) => _ui(() => _reason = r ?? _reason),
            ),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () => flow.confirmReject(_reason),
              child: Text(t.input.ngConfirm),
            ),
          ],
        );
      case ScanStep.equipment:
        final eq = c.equipment!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var i = 0; i < eq.checkItems.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: DropdownButtonFormField<InspectionResult>(
                  initialValue: _results[i],
                  decoration: InputDecoration(labelText: eq.checkItems[i]),
                  items: [
                    for (final r in InspectionResult.values)
                      DropdownMenuItem(value: r, child: Text(t.resultLabel(r))),
                  ],
                  onChanged: (r) => _ui(
                    () => _results = [..._results]..[i] = r ?? _results[i],
                  ),
                ),
              ),
            FilledButton(
              onPressed: s.working ? null : () => flow.saveInspection(_results),
              child: Text(t.input.inspectionSave),
            ),
          ],
        );
      case ScanStep.supplyChoice:
        final sp = c.supply!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              t.input.supplySummary(
                item: sp.itemName,
                remain: sp.remaining,
                held: sp.held,
                unit: sp.unit,
              ),
            ),
            const SizedBox(height: 8),
            Text(t.input.supplyChoiceLabel),
            RadioGroup<_SupplyChoice>(
              groupValue: _supplyChoice,
              onChanged: (v) =>
                  _ui(() => _supplyChoice = v ?? _supplyChoice),
              child: Column(
                children: [
                  RadioListTile<_SupplyChoice>(
                    value: _SupplyChoice.receive,
                    title: Text(t.input.supplyReceive),
                  ),
                  RadioListTile<_SupplyChoice>(
                    value: _SupplyChoice.accept,
                    title: Text(t.input.supplyAccept),
                  ),
                  RadioListTile<_SupplyChoice>(
                    value: _SupplyChoice.reject,
                    title: Text(t.input.supplyReject),
                  ),
                ],
              ),
            ),
            TextField(
              controller: _supplyQty,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: t.input.qtyLabel),
            ),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: s.working
                  ? null
                  : () => flow.registerSupply(
                      quantity: int.tryParse(_supplyQty.text.trim()) ?? 0,
                      receive: _supplyChoice == _SupplyChoice.receive,
                      hold: _supplyChoice != _SupplyChoice.accept,
                    ),
              child: Text(t.input.supplyRegister),
            ),
          ],
        );
      case ScanStep.top:
      case ScanStep.issueShelf:
      case ScanStep.qty:
      case ScanStep.putShelf:
      case ScanStep.stockItem:
      case ScanStep.stockQty:
      case ScanStep.recvQty:
        final isQty = const {
          ScanStep.qty,
          ScanStep.stockQty,
          ScanStep.recvQty,
        }.contains(s.step);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(_hint(t, s)),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: input,
                    focusNode: focus,
                    autofocus: true,
                    enabled: !s.working,
                    keyboardType: isQty ? TextInputType.number : null,
                    decoration: InputDecoration(
                      labelText: isQty ? t.input.qtyLabel : t.input.label,
                      border: const OutlineInputBorder(),
                    ),
                    onSubmitted: (v) => _commit(v, input: input, focus: focus),
                  ),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: s.working ? null : () => _commit(input.text, input: input, focus: focus),
                  child: Text(t.input.commit),
                ),
              ],
            ),
            if (!isQty && cameraScanSupported) ...[
              const SizedBox(height: 8),
              OutlinedButton.icon(
                icon: Icon(_camera ? Icons.videocam_off : Icons.photo_camera),
                label: Text(_camera ? t.input.cameraClose : t.input.camera),
                onPressed: () => _ui(() => _camera = !_camera),
              ),
              if (_camera)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: CameraScanner(
                    errorText: t.input.cameraError,
                    onDetect: (symbol) {
                      if (!s.working) _commit(symbol, input: input, focus: focus);
                    },
                  ),
                ),
            ],
          ],
        );
    }
  }

  String _hint(BarcodeEntryStrings t, ScanState s) {
    final c = s.context;
    switch (s.step) {
      case ScanStep.top:
        return t.modeHint(s.mode);
      case ScanStep.issueShelf:
        return t.input.issueShelfHint(item: c.order?.itemName ?? '');
      case ScanStep.putShelf:
        final unit = c.order?.unit ?? c.purchase?.unit ?? c.item?.unit ?? '';
        return t.input.putShelfHint(
          judge: c.rejected ? t.input.judgeFail : t.input.judgePass,
          qty: c.quantity,
          unit: unit,
        );
      case ScanStep.stockItem:
        return t.input.stockItemHint(shelf: c.shelf?.name ?? '');
      case ScanStep.qty:
        return t.input.qtyHint(
          remain: c.order?.remaining ?? 0,
          unit: c.order?.unit ?? '',
        );
      case ScanStep.recvQty:
        return t.input.qtyHint(
          remain: c.purchase?.remaining ?? 0,
          unit: c.purchase?.unit ?? '',
        );
      default:
        return '';
    }
  }
}

/// 読み込み中の対象の概要。
class _Summary extends StatelessWidget {
  const _Summary({required this.context});

  final ScanContext context;

  @override
  Widget build(BuildContext context_) {
    final lines = <String>[
      if (context.order case final o?)
        '${o.symbol}  ${o.itemName} / ${o.taskName}  (${o.doneQuantity}/${o.quantity}${o.unit})',
      if (context.purchase case final p?)
        '${p.symbol}  ${p.itemName}  (${p.receivedQuantity}/${p.quantity}${p.unit})',
      if (context.shelf case final s?) '${s.symbol}  ${s.name}',
      if (context.item case final i?) '${i.symbol}  ${i.name}',
      if (context.equipment case final e?) '${e.symbol}  ${e.name}',
      if (context.supply case final sp?) '${sp.symbol}  ${sp.itemName}',
    ];
    if (lines.isEmpty) return const SizedBox.shrink();
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [for (final l in lines) Text(l)],
        ),
      ),
    );
  }
}

class _Question extends StatelessWidget {
  const _Question({required this.text, required this.buttons});

  final String text;
  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text),
      const SizedBox(height: 12),
      Wrap(spacing: 8, runSpacing: 8, children: buttons),
    ],
  );
}

/// 試すための symbol(取得元がメモリ上のサンプルのときだけ出す)。押すと読み取ったことになる。
class _SampleSymbols extends ConsumerWidget {
  const _SampleSymbols({required this.onPick});

  final void Function(String symbol) onPick;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gateway = ref.watch(scanGatewayProvider);
    if (gateway is! InMemoryScanGateway) return const SizedBox.shrink();
    return ExpansionTile(
      title: const Text('Samples'),
      children: [
        Wrap(
          spacing: 8,
          children: [
            for (final s in gateway.sampleSymbols)
              ActionChip(label: Text(s), onPressed: () => onPick(s)),
          ],
        ),
      ],
    );
  }
}

/// 処理待ち(キュー)。「まとめて登録(N件)」と、1 件ずつの取り消し。
class _QueuePanel extends ConsumerWidget {
  const _QueuePanel({required this.state, required this.flow});

  final ScanState state;
  final ScanFlow flow;

  static String _unit(StockSource s) => switch (s) {
    WorkSource(:final order) => order.unit,
    PurchaseSource(:final purchase) => purchase.unit,
    ItemSource(:final item) => item.unit,
  };

  static String _label(BarcodeEntryStrings t, QueuedEntry e) => switch (e) {
    QueuedIssue(:final order, :final shelf) => t.queue.issueItem(sym: order.symbol, shelf: shelf.name),
    QueuedPut(:final source, :final quantity, :final shelf) =>
      t.queue.item(sym: source.symbol, qty: quantity, unit: _unit(source), shelf: shelf.name),
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(barcodeEntryStringsProvider);
    return Card(
      key: const ValueKey('queuePanel'),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(t.queue.title, style: Theme.of(context).textTheme.titleMedium),
            for (var i = 0; i < state.queue.length; i++)
              ListTile(
                dense: true,
                title: Text(_label(t, state.queue[i])),
                trailing: TextButton(
                  key: ValueKey('queueRemove$i'),
                  onPressed: state.working ? null : () => flow.removeQueued(i),
                  child: Text(t.queue.remove),
                ),
              ),
            const SizedBox(height: 8),
            FilledButton(
              key: const ValueKey('queueRegister'),
              onPressed: state.working ? null : flow.flushQueue,
              child: Text(t.queue.register(count: state.queue.length)),
            ),
          ],
        ),
      ),
    );
  }
}
/// 入庫先のおすすめ(合格: 同じ品目が入っている棚 / 不合格: 不良品棚)と、その根拠。押すと、その棚を読み取ったものとして入庫する。
class _RecommendPanel extends ConsumerWidget {
  const _RecommendPanel({required this.state, required this.flow});

  final ScanState state;
  final ScanFlow flow;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(barcodeEntryStringsProvider);
    return Padding(
      key: const ValueKey('recommendPanel'),
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${t.recommend.title}(${state.context.rejected ? t.recommend.fail : t.recommend.pass})',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          for (final r in state.recommended)
            ListTile(
              key: ValueKey('recommend_${r.shelf.symbol}'),
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.recommend_outlined),
              title: Text(r.shelf.name),
              // 根拠(値で持つ: 不良品棚か・同じ品目の保有数量)。文は画面が作る
              subtitle: Text(
                r.reject
                    ? t.recommend.rejectShelf
                    : t.recommend.sameItem(qty: r.heldQuantity, unit: r.unit),
              ),
              trailing: TextButton(
                onPressed: state.working ? null : () => flow.pickShelf(r.shelf),
                child: Text(t.recommend.pick),
              ),
              onTap: state.working ? null : () => flow.pickShelf(r.shelf),
            ),
        ],
      ),
    );
  }
}

/// 読み取った棚(コンテナ)の中身。持っているアイテムと、入れ子の子の棚を字下げで出す。
class _ContentsPanel extends ConsumerWidget {
  const _ContentsPanel({required this.contents});

  final ShelfContents contents;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(barcodeEntryStringsProvider);
    return Card(
      key: const ValueKey('contentsPanel'),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t.contents.title(name: contents.shelf.name), style: Theme.of(context).textTheme.titleMedium),
            if (contents.totalItems == 0) Text(t.contents.empty) else ..._lines(t, contents, 0),
          ],
        ),
      ),
    );
  }

  List<Widget> _lines(BarcodeEntryStrings t, ShelfContents node, int depth) => [
    if (depth > 0)
      Padding(
        padding: EdgeInsets.only(left: 16.0 * depth, top: 4),
        child: Text(node.shelf.name, style: const TextStyle(fontWeight: FontWeight.w600)),
      ),
    for (final h in node.items)
      Padding(
        padding: EdgeInsets.only(left: 16.0 * (depth + 1)),
        child: Text(t.contents.item(item: h.itemName, qty: h.quantity, unit: h.unit)),
      ),
    for (final c in node.children) ..._lines(t, c, depth + 1),
  ];
}
