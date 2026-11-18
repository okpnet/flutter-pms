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
  _Judgement? _judgement;
  String _search = '';

  /// 調査(マスタの不備)の結果。まだ調べていないときは null。
  List<MrpIssue>? _issues;

  /// 前回の計算の確定待ちを、開いたときに引き継いだ。
  bool _resumed = false;

  @override
  void initState() {
    super.initState();
    // 前回の計算で、確定も破棄もしていないものがあれば引き継ぐ(失敗・窓口なしは、何も出さない)
    Future(() async {
      try {
        final open = await ref.read(mrpGatewayProvider).openRun();
        if (open != null && mounted && _result == null) {
          setState(() {
            _result = open;
            _resumed = true;
          });
        }
      } on Object {
        // 引き継ぎは補助の機能。失敗しても画面は通常どおり使える
      }
    });
  }

  /// 窓口の操作を、画面全体を止めて行う。失敗は [MrpFailure] にして画面に出す(操作は元に戻る)。
  Future<({bool ok, T? value})> _guarded<T>(
    String label,
    Future<T> Function() job,
  ) async {
    setState(() => _failure = null);
    try {
      final value = await ref.read(busyProvider.notifier).run(label, job);
      return (ok: true, value: value);
    } on MrpFailure catch (e, st) {
      _failure = e;
      ref
          .read(loggerProvider)
          .error('[production_plan] MRPが失敗しました', ex: e, trace: st);
    } catch (e, st) {
      _failure = const MrpFailure('UNKNOWN');
      ref
          .read(loggerProvider)
          .error('[production_plan] MRPが失敗しました', ex: e, trace: st);
    }
    if (mounted) setState(() {});
    return (ok: false, value: null);
  }

  Future<bool> _confirm(String title, List<String> lines) async {
    final t = ref.read(productionPlanStringsProvider).mrp;
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [for (final l in lines) Text(l)],
        ),
        actions: [
          TextButton(
            key: const ValueKey('mrpStepCancel'),
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(t.confirm.cancel),
          ),
          FilledButton(
            key: const ValueKey('mrpStepOk'),
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(t.step.ok),
          ),
        ],
      ),
    );
    return ok == true && mounted;
  }

  /// 調査: マスタの不備を調べる(読み取りだけ)。
  Future<void> _checkMaster() async {
    final t = ref.read(productionPlanStringsProvider).mrp;
    final r = await _guarded(
      t.check.running,
      () => ref.read(mrpGatewayProvider).check(),
    );
    if (!r.ok || !mounted) return;
    setState(() => _issues = r.value ?? const []);
  }

  /// 判断: 表示中の要判断の提案を、まとめて採用・却下する。
  Future<void> _decide(
    MrpRunResult run,
    List<MrpSuggestion> rows,
    bool adopt,
  ) async {
    final t = ref.read(productionPlanStringsProvider).mrp;
    final targets = [
      for (final x in rows)
        if (x.undecided && x.id.isNotEmpty) x.id,
    ];
    if (targets.isEmpty) return;
    final r = await _guarded(
      t.running,
      () => ref
          .read(mrpGatewayProvider)
          .decide(
            runId: run.runId,
            adopt: adopt,
            staffId: ref.read(mrpStaffIdProvider),
            suggestionIds: targets,
          ),
    );
    if (!r.ok || !mounted) return;
    final ids = targets.toSet();
    setState(() {
      _result = run.copyWith(
        suggestions: [
          for (final x in run.suggestions)
            ids.contains(x.id) ? x.decided(adopt: adopt) : x,
        ],
      );
    });
  }

  /// 実行: 確定する(採用された提案を計画データに反映する)。[force] は、要判断を却下として確定する。
  Future<void> _commit(MrpRunResult run, {bool force = false}) async {
    final t = ref.read(productionPlanStringsProvider).mrp;
    final ok = await _confirm(
      force ? t.step.commitForceTitle : t.step.commitTitle,
      [t.step.commitNote, if (force) t.step.commitForceNote],
    );
    if (!ok) return;
    final r = await _guarded(
      t.running,
      () => ref
          .read(mrpGatewayProvider)
          .commit(
            runId: run.runId,
            staffId: ref.read(mrpStaffIdProvider),
            force: force,
          ),
    );
    if (!r.ok || !mounted) return;
    setState(() {
      _resumed = false;
      _result = r.value ?? run.copyWith(isCommitted: true);
    });
  }

  /// 実行: 破棄する(計画データは変わらない)。
  Future<void> _discard(MrpRunResult run) async {
    final t = ref.read(productionPlanStringsProvider).mrp;
    final ok = await _confirm(t.step.discardTitle, [t.step.discardNote]);
    if (!ok) return;
    final r = await _guarded(
      t.running,
      () => ref
          .read(mrpGatewayProvider)
          .discard(
            runId: run.runId,
            staffId: ref.read(mrpStaffIdProvider),
          ),
    );
    if (!r.ok || !mounted) return;
    setState(() {
      _resumed = false;
      _result = null;
    });
  }

  /// [execute] が true のとき、MRP を実行する(要判断が無ければ、そのまま確定する)。
  /// false のとき、計算だけして確定待ちにする(判断・確定は結果の画面から)。
  Future<void> _run({bool execute = true}) async {
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
            () => execute
                ? ref
                      .read(mrpGatewayProvider)
                      .execute(
                        mode: redo ? MrpMode.redo : MrpMode.order,
                        staffId: ref.read(mrpStaffIdProvider),
                      )
                : ref
                      .read(mrpGatewayProvider)
                      .calculate(
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
      _judgement = null;
      _search = '';
      _resumed = false;
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
            _checkCard(t, busy),
            const SizedBox(height: 12),
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
                    Wrap(
                      spacing: 12,
                      runSpacing: 8,
                      children: [
                        FilledButton.icon(
                          key: const ValueKey('mrpRun'),
                          icon: const Icon(Icons.play_arrow),
                          label: Text(t.run),
                          onPressed: busy ? null : _run,
                        ),
                        OutlinedButton.icon(
                          key: const ValueKey('mrpCalc'),
                          icon: const Icon(Icons.fact_check_outlined),
                          label: Text(t.step.calc),
                          onPressed: busy ? null : () => _run(execute: false),
                        ),
                      ],
                    ),
                    Text(t.step.calcNote, style: theme.textTheme.bodySmall),
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
            // エラーコードに関わらず、一般向けの警告(確定の失敗は、取れる対応が違うため、理由に合わせる)
            Text(switch (f.code) {
              'MRP01' => t.failure.pendingRemains as String,
              'MRP03' => t.failure.cannotCommit as String,
              _ => t.failure.message as String,
            }),
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

  /// boolean の列の表示(チェック)。値は、列の名前と 1 対 1 で、意味を組み立てない。
  static String _check(bool v) => v ? '✓' : '';

  /// 判断の絞り込み(利用者が選ぶ列。値のコードは持たない)。
  String _judgementLabel(dynamic t, _Judgement j) => switch (j) {
    _Judgement.undecided => t.decision.pending as String,
    _Judgement.adopted => t.decision.adopted as String,
    _Judgement.rejected => t.decision.rejected as String,
    _Judgement.info => t.decision.info as String,
  };

  /// 調査のカード(MRP の前に、マスタの不備を調べる。読み取りだけ)。
  Widget _checkCard(dynamic t, bool busy) {
    final theme = Theme.of(context);
    final issues = _issues;
    return Card(
      key: const ValueKey('mrpCheckCard'),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(t.check.title as String, style: theme.textTheme.titleMedium),
            Text(t.check.note as String, style: theme.textTheme.bodySmall),
            Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton.icon(
                key: const ValueKey('mrpCheck'),
                icon: const Icon(Icons.search),
                label: Text(t.check.run as String),
                onPressed: busy ? null : _checkMaster,
              ),
            ),
            if (issues != null && issues.isEmpty)
              Text(
                t.check.none as String,
                key: const ValueKey('mrpCheckNone'),
              ),
            if (issues != null && issues.isNotEmpty) ...[
              Text(
                '${t.check.count}: ${issues.length}${t.success.unit}',
                key: const ValueKey('mrpCheckCount'),
              ),
              // 重い順(DB の重大度。並べ替えだけに使い、値で分岐しない)
              for (final i
                  in ([...issues]..sort((a, b) => a.severity.compareTo(b.severity))).take(30))
                Text('${i.itemCode}  ${i.message}'),
              if (issues.length > 30)
                Text(t.check.more as String, style: theme.textTheme.bodySmall),
            ],
          ],
        ),
      ),
    );
  }

  /// 確定待ちのカード(判断 → 確定・破棄)。
  Widget _awaitingCard(dynamic t, MrpRunResult r, List<MrpSuggestion> rows) {
    final theme = Theme.of(context);
    final busy = ref.watch(busyProvider).isBusy;
    final pending = r.pendingCount;
    final visiblePending = rows.where((x) => x.undecided).length;
    return Card(
      key: const ValueKey('mrpAwaiting'),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(
              t.step.awaitingTitle as String,
              style: theme.textTheme.titleMedium,
            ),
            if (_resumed)
              Text(t.step.resumed as String, key: const ValueKey('mrpResumed')),
            Text(t.step.awaitingNote as String),
            Text(
              '${t.step.pendingLeft}: $pending${t.success.unit}',
              key: const ValueKey('mrpPendingCount'),
            ),
            Wrap(
              spacing: 12,
              runSpacing: 8,
              children: [
                OutlinedButton(
                  key: const ValueKey('mrpAdoptAll'),
                  onPressed: busy || visiblePending == 0
                      ? null
                      : () => _decide(r, rows, true),
                  child: Text(t.step.adoptShown as String),
                ),
                OutlinedButton(
                  key: const ValueKey('mrpRejectAll'),
                  onPressed: busy || visiblePending == 0
                      ? null
                      : () => _decide(r, rows, false),
                  child: Text(t.step.rejectShown as String),
                ),
              ],
            ),
            Wrap(
              spacing: 12,
              runSpacing: 8,
              children: [
                FilledButton(
                  key: const ValueKey('mrpCommit'),
                  onPressed: busy || pending > 0 ? null : () => _commit(r),
                  child: Text(t.step.commit as String),
                ),
                if (pending > 0)
                  OutlinedButton(
                    key: const ValueKey('mrpCommitForce'),
                    onPressed: busy ? null : () => _commit(r, force: true),
                    child: Text(t.step.commitForce as String),
                  ),
                TextButton(
                  key: const ValueKey('mrpDiscard'),
                  onPressed: busy ? null : () => _discard(r),
                  child: Text(t.step.discard as String),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

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
        if ((_judgement == null || _judgement!.test(s)) &&
            (keyword.isEmpty ||
                '${s.itemCode} ${s.itemName} ${s.symbol} ${s.message}'
                    .toLowerCase()
                    .contains(keyword)))
          s,
    ];
    final columns = <ColumnDefinition<MrpSuggestion>>[
      // 対象(ちょうど 1 つ)・動き: 列の名前にチェックで出す
      ColumnDefinition(
        key: 'isPurchase',
        label: t.columns.purchase as String,
        getter: (s) => _check(s.isPurchase),
      ),
      ColumnDefinition(
        key: 'isProduction',
        label: t.columns.production as String,
        getter: (s) => _check(s.isProduction),
      ),
      ColumnDefinition(
        key: 'isOutsource',
        label: t.columns.outsource as String,
        getter: (s) => _check(s.isOutsource),
      ),
      ColumnDefinition(
        key: 'isPlan',
        label: t.columns.plan as String,
        getter: (s) => _check(s.isPlan),
      ),
      ColumnDefinition(
        key: 'isException',
        label: t.columns.exception as String,
        getter: (s) => _check(s.isException),
      ),
      ColumnDefinition(
        key: 'isSupplyRequest',
        label: t.columns.supplyRequest as String,
        getter: (s) => _check(s.isSupplyRequest),
      ),
      ColumnDefinition(
        key: 'isNew',
        label: t.columns.isNew as String,
        getter: (s) => _check(s.isNew),
      ),
      ColumnDefinition(
        key: 'isChange',
        label: t.columns.isChange as String,
        getter: (s) => _check(s.isChange),
      ),
      ColumnDefinition(
        key: 'isCancel',
        label: t.columns.isCancel as String,
        getter: (s) => _check(s.isCancel),
      ),
      ColumnDefinition(
        key: 'isKeep',
        label: t.columns.isKeep as String,
        getter: (s) => _check(s.isKeep),
      ),
      ColumnDefinition(
        key: 'isOption',
        label: t.columns.isOption as String,
        getter: (s) => _check(s.isOption),
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
      // 判断(ちょうど 1 つ): 列の名前にチェックで出す
      ColumnDefinition(
        key: 'undecided',
        label: t.decision.pending as String,
        getter: (s) => _check(s.undecided),
      ),
      ColumnDefinition(
        key: 'adopted',
        label: t.decision.adopted as String,
        getter: (s) => _check(s.adopted),
      ),
      ColumnDefinition(
        key: 'rejected',
        label: t.decision.rejected as String,
        getter: (s) => _check(s.rejected),
      ),
      ColumnDefinition(
        key: 'isInfo',
        label: t.decision.info as String,
        getter: (s) => _check(s.isInfo),
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
              if (r.runId.isNotEmpty)
                Text(
                  '${t.state.title}: ${r.isCommitted ? t.state.committed : t.state.awaiting}',
                  key: const ValueKey('mrpState'),
                ),
            ],
          ),
        ),
      ),
      if (r.awaitingCommit) ...[
        const SizedBox(height: 12),
        _awaitingCard(t, r, rows),
      ],
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
            selected: _judgement == null,
            onSelected: (_) => setState(() => _judgement = null),
          ),
          for (final j in _Judgement.values)
            ChoiceChip(
              key: ValueKey('mrpDecision:${j.name}'),
              label: Text(_judgementLabel(t, j)),
              selected: _judgement == j,
              onSelected: (_) => setState(() => _judgement = j),
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
            key: ValueKey('mrpTable:${_judgement?.name}:$keyword'),
            columns: columns,
            items: rows,
            rowKey: (s) => '${s.symbol}|${s.itemCode}|${s.message}',
            config: const TableConfig(sortEnabled: true, filterEnabled: true),
          ),
        ),
    ];
  }
}

/// 判断の絞り込みの選択肢(画面だけで使う。DB のコード値は持たず、boolean の列で判定する)。
enum _Judgement {
  undecided,
  adopted,
  rejected,
  info;

  bool test(MrpSuggestion s) => switch (this) {
    _Judgement.undecided => s.undecided,
    _Judgement.adopted => s.adopted,
    _Judgement.rejected => s.rejected,
    _Judgement.info => s.isInfo,
  };
}
