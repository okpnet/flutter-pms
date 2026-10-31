import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

import '../i18n/strings_provider.dart';
import 'mrp_gateway.dart';
import 'mrp_models.dart';

/// 資材所要計算(MRP)の画面。
///
/// 「再MRPとして実行する」と「MRPを実行」。実行前に確認ダイアログで警告を出し、「実行する」を押したときだけ
/// 実行する。実行中は画面全体の操作と戻る操作を無効にし([busyProvider])、「計算中」と経過時間を出す。
/// 成功したらお知らせと結果の表を出し、失敗したら一般向けの警告(エラーコードは小さく添える)を出す。
class MrpPage extends ConsumerStatefulWidget {
  const MrpPage({super.key});

  @override
  ConsumerState<MrpPage> createState() => _MrpPageState();
}

class _MrpPageState extends ConsumerState<MrpPage> {
  bool _redo = false;
  MrpRunResult? _result;
  MrpFailure? _failure;
  MrpDecision? _decision;
  String _search = '';

  Future<void> _run() async {
    final t = ref.read(productionPlanStringsProvider).mrp;
    final redo = _redo;
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(redo ? t.confirm.titleRedo : t.confirm.titleOrder),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            for (final line in [
              t.confirm.warnHeavy,
              t.confirm.warnWide,
              if (redo) t.confirm.warnRedo,
              t.confirm.warnLock,
            ])
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  const Icon(Icons.warning_amber, size: 18),
                  Expanded(child: Text(line)),
                ],
              ),
          ],
        ),
        actions: [
          TextButton(
            key: const ValueKey('mrpCancel'),
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(t.confirm.cancel),
          ),
          FilledButton(
            key: const ValueKey('mrpGo'),
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(t.confirm.go),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;

    setState(() {
      _failure = null;
      _result = null;
    });
    MrpRunResult? result;
    MrpFailure? failure;
    try {
      result = await ref
          .read(busyProvider.notifier)
          .run(
            t.running,
            () => ref
                .read(mrpGatewayProvider)
                .execute(
                  mode: redo ? MrpMode.redo : MrpMode.order,
                  staffId: ref.read(mrpStaffIdProvider),
                ),
          );
    } on MrpFailure catch (e, s) {
      failure = e;
      ref
          .read(loggerProvider)
          .error('[production_plan] MRPが失敗しました', ex: e, trace: s);
    } catch (e, s) {
      failure = const MrpFailure('UNKNOWN');
      ref
          .read(loggerProvider)
          .error('[production_plan] MRPが失敗しました', ex: e, trace: s);
    }
    if (!mounted) return;
    // 失敗後も、操作は元に戻っていて、そのまま再実行できる
    setState(() {
      _result = result;
      _failure = failure;
      _decision = null;
      _search = '';
    });
  }

  String _date(DateTime? d) => d == null
      ? '―'
      : '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  String _dateTime(DateTime d) =>
      '${_date(d)} ${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(productionPlanStringsProvider).mrp;
    final busy = ref.watch(busyProvider).isBusy;
    final theme = Theme.of(context);
    return PopScope(
      // 実行中は、戻る操作でも画面を離れられない
      canPop: !busy,
      child: ScreenScaffold(
        title: t.title,
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(t.controlTitle, style: theme.textTheme.titleMedium),
                    CheckboxListTile(
                      key: const ValueKey('mrpRedo'),
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(t.redoLabel),
                      value: _redo,
                      onChanged: busy
                          ? null
                          : (v) => setState(() => _redo = v ?? false),
                    ),
                    Text(t.redoNote, style: theme.textTheme.bodySmall),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FilledButton.icon(
                        key: const ValueKey('mrpRun'),
                        icon: const Icon(Icons.play_arrow),
                        label: Text(t.run),
                        onPressed: busy ? null : _run,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            if (_failure != null) _failureCard(t, _failure!),
            if (_result != null) ..._resultViews(t, _result!),
            if (_result == null && _failure == null)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text(t.empty.title, style: theme.textTheme.titleMedium),
                      Text(t.empty.message),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _failureCard(dynamic t, MrpFailure f) {
    final theme = Theme.of(context);
    return Card(
      key: const ValueKey('mrpFailure'),
      color: theme.colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Row(
              spacing: 8,
              children: [
                Icon(Icons.error_outline, color: theme.colorScheme.error),
                Text(
                  t.failure.title as String,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            // エラーコードに関わらず、一般向けの警告
            Text(t.failure.message as String),
            Text(
              '${t.failure.code}: ${f.code}',
              key: const ValueKey('mrpErrorCode'),
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  String _kindLabel(dynamic t, MrpSuggestionKind k) => switch (k) {
    MrpSuggestionKind.purchaseNew => t.kind.purchaseNew as String,
    MrpSuggestionKind.productionNew => t.kind.productionNew as String,
    MrpSuggestionKind.purchaseReschedule => t.kind.purchaseReschedule as String,
    MrpSuggestionKind.productionReschedule =>
      t.kind.productionReschedule as String,
    MrpSuggestionKind.purchaseCancel => t.kind.purchaseCancel as String,
    MrpSuggestionKind.productionCancel => t.kind.productionCancel as String,
    MrpSuggestionKind.outsourceOption => t.kind.outsourceOption as String,
    MrpSuggestionKind.excOverload => t.kind.excOverload as String,
    MrpSuggestionKind.excExcess => t.kind.excExcess as String,
    MrpSuggestionKind.excMaster => t.kind.excMaster as String,
    MrpSuggestionKind.outsourceNew => t.kind.outsourceNew as String,
    MrpSuggestionKind.outsourceCancel => t.kind.outsourceCancel as String,
    MrpSuggestionKind.planNew => t.kind.planNew as String,
    MrpSuggestionKind.planUpdate => t.kind.planUpdate as String,
    MrpSuggestionKind.planKeep => t.kind.planKeep as String,
    MrpSuggestionKind.planCancel => t.kind.planCancel as String,
  };

  String _decisionLabel(dynamic t, MrpDecision d) => switch (d) {
    MrpDecision.pending => t.decision.pending as String,
    MrpDecision.adopted => t.decision.adopted as String,
    MrpDecision.rejected => t.decision.rejected as String,
    MrpDecision.info => t.decision.info as String,
  };

  List<Widget> _resultViews(dynamic t, MrpRunResult r) {
    final theme = Theme.of(context);
    final modeLabel = r.mode == MrpMode.redo
        ? t.mode.redo as String
        : t.mode.order as String;
    final unit = t.success.unit as String;
    // 判断での絞り込みと検索
    final keyword = _search.trim().toLowerCase();
    final rows = [
      for (final s in r.suggestions)
        if ((_decision == null || s.decision == _decision) &&
            (keyword.isEmpty ||
                '${s.itemCode} ${s.itemName} ${s.symbol} ${_kindLabel(t, s.kind)} ${s.message}'
                    .toLowerCase()
                    .contains(keyword)))
          s,
    ];
    final columns = <ColumnDefinition<MrpSuggestion>>[
      ColumnDefinition(
        key: 'kind',
        label: t.columns.kind as String,
        getter: (s) => _kindLabel(t, s.kind),
      ),
      ColumnDefinition(
        key: 'itemCode',
        label: t.columns.itemCode as String,
        getter: (s) => s.itemCode,
      ),
      ColumnDefinition(
        key: 'itemName',
        label: t.columns.itemName as String,
        getter: (s) => s.itemName,
      ),
      ColumnDefinition(
        key: 'symbol',
        label: t.columns.symbol as String,
        getter: (s) => s.symbol,
      ),
      ColumnDefinition(
        key: 'quantity',
        label: t.columns.quantity as String,
        type: ColumnType.number,
        getter: (s) => '${s.quantity}',
      ),
      ColumnDefinition(
        key: 'allocation',
        label: t.columns.allocation as String,
        type: ColumnType.number,
        getter: (s) => '${s.allocation}',
      ),
      ColumnDefinition(
        key: 'needDate',
        label: t.columns.needDate as String,
        getter: (s) => _date(s.needDate),
      ),
      ColumnDefinition(
        key: 'releaseDate',
        label: t.columns.releaseDate as String,
        getter: (s) => _date(s.releaseDate),
      ),
      ColumnDefinition(
        key: 'dueDate',
        label: t.columns.dueDate as String,
        getter: (s) => _date(s.dueDate),
      ),
      // 状態は色だけでなく文字でも示す
      ColumnDefinition(
        key: 'late',
        label: t.columns.late as String,
        getter: (s) =>
            s.late ? t.result.lateYes as String : t.result.lateNo as String,
      ),
      ColumnDefinition(
        key: 'decision',
        label: t.columns.decision as String,
        getter: (s) => _decisionLabel(t, s.decision),
      ),
      ColumnDefinition(
        key: 'message',
        label: t.columns.message as String,
        getter: (s) => s.message,
      ),
    ];
    return [
      Card(
        key: const ValueKey('mrpSuccess'),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Row(
                spacing: 8,
                children: [
                  const Icon(Icons.check_circle_outline),
                  Text(
                    t.success.title as String,
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
              Text('${t.success.at}: ${_dateTime(r.executedAt)}'),
              Text('${t.success.mode}: $modeLabel'),
              Text('${t.success.count}: ${r.suggestionCount}$unit'),
              Text('${t.success.pending}: ${r.pendingCount}$unit'),
              Text('${t.success.late}: ${r.lateCount}$unit'),
            ],
          ),
        ),
      ),
      const SizedBox(height: 12),
      Text(t.result.title as String, style: theme.textTheme.titleMedium),
      const SizedBox(height: 8),
      Row(
        spacing: 12,
        children: [
          Expanded(
            child: TextField(
              key: const ValueKey('mrpSearch'),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: t.result.search as String,
                isDense: true,
              ),
              onChanged: (v) => setState(() => _search = v),
            ),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Wrap(
        spacing: 8,
        children: [
          ChoiceChip(
            key: const ValueKey('mrpDecision:all'),
            label: Text(t.result.all as String),
            selected: _decision == null,
            onSelected: (_) => setState(() => _decision = null),
          ),
          for (final d in MrpDecision.values)
            ChoiceChip(
              key: ValueKey('mrpDecision:${d.name}'),
              label: Text(_decisionLabel(t, d)),
              selected: _decision == d,
              onSelected: (_) => setState(() => _decision = d),
            ),
        ],
      ),
      const SizedBox(height: 8),
      if (rows.isEmpty)
        Padding(
          padding: const EdgeInsets.all(16),
          child: Center(child: Text(t.result.noRows as String)),
        )
      else
        SizedBox(
          height: 520,
          child: FlgTable<MrpSuggestion>(
            key: ValueKey('mrpTable:${_decision?.name}:$keyword'),
            columns: columns,
            items: rows,
            rowKey: (s) =>
                '${s.kind.code}|${s.itemCode}|${s.decision.code}|${s.message}',
            config: const TableConfig(sortEnabled: true, filterEnabled: true),
          ),
        ),
    ];
  }
}
