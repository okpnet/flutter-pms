import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
class BarcodeEntryPage extends ConsumerStatefulWidget {
  const BarcodeEntryPage({super.key, this.symbol});

  /// 開いた直後に読み込んだものとして進める symbol(ショートカット用)。
  final String? symbol;

  @override
  ConsumerState<BarcodeEntryPage> createState() => _BarcodeEntryPageState();
}

class _BarcodeEntryPageState extends ConsumerState<BarcodeEntryPage> {
  final _input = TextEditingController();
  final _focus = FocusNode();
  bool _camera = false;
  RejectReason _reason = RejectReason.dimension;
  List<InspectionResult> _results = const [];

  @override
  void initState() {
    super.initState();
    final symbol = widget.symbol;
    if (symbol != null && symbol.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) ref.read(scanFlowProvider.notifier).submit(symbol);
      });
    }
  }

  @override
  void dispose() {
    _input.dispose();
    _focus.dispose();
    super.dispose();
  }

  Future<void> _commit(String value) async {
    _input.clear();
    await ref.read(scanFlowProvider.notifier).submit(value);
    if (mounted) _focus.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(barcodeEntryStringsProvider);
    final s = ref.watch(scanFlowProvider);
    final flow = ref.read(scanFlowProvider.notifier);
    final theme = Theme.of(context);
    final notice = s.notice;
    final inspection = s.context.equipment;
    if (inspection != null && _results.length != inspection.checkItems.length) {
      _results = List.filled(
        inspection.checkItems.length,
        InspectionResult.pass,
      );
    }
    return ScreenScaffold(
      title: t.title,
      actions: [
        if (s.step != ScanStep.top)
          TextButton(
            onPressed: s.working ? null : flow.cancel,
            child: Text(t.input.cancel),
          ),
      ],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                  s.step == ScanStep.top
                      ? t.input.topTitle
                      : t.stepTitle(s.step),
                  style: theme.textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                _Summary(context: s.context),
                if (notice != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      t.noticeText(notice),
                      style: TextStyle(
                        color: notice.isError
                            ? theme.colorScheme.error
                            : theme.colorScheme.primary,
                      ),
                    ),
                  ),
                const SizedBox(height: 8),
                _stepBody(t, s, flow),
                const SizedBox(height: 24),
                _SampleSymbols(onPick: _commit),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _time(DateTime d) =>
      '${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}:${d.second.toString().padLeft(2, '0')}';

  Widget _stepBody(BarcodeEntryStrings t, ScanState s, ScanFlow flow) {
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
              onChanged: (r) => setState(() => _reason = r ?? _reason),
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
                  onChanged: (r) => setState(
                    () => _results = [..._results]..[i] = r ?? _results[i],
                  ),
                ),
              ),
            FilledButton(
              onPressed: s.working
                  ? null
                  : () => flow.saveInspection(_results),
              child: Text(t.input.inspectionSave),
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
                    controller: _input,
                    focusNode: _focus,
                    autofocus: true,
                    enabled: !s.working,
                    keyboardType: isQty ? TextInputType.number : null,
                    decoration: InputDecoration(
                      labelText: isQty ? t.input.qtyLabel : t.input.label,
                      border: const OutlineInputBorder(),
                    ),
                    onSubmitted: _commit,
                  ),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: s.working ? null : () => _commit(_input.text),
                  child: Text(t.input.commit),
                ),
              ],
            ),
            if (!isQty && cameraScanSupported) ...[
              const SizedBox(height: 8),
              OutlinedButton.icon(
                icon: Icon(_camera ? Icons.videocam_off : Icons.photo_camera),
                label: Text(_camera ? t.input.cameraClose : t.input.camera),
                onPressed: () => setState(() => _camera = !_camera),
              ),
              if (_camera)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: CameraScanner(
                    errorText: t.input.cameraError,
                    onDetect: (symbol) {
                      if (!s.working) _commit(symbol);
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
