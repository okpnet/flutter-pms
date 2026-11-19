import 'package:app_shell/app_shell.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loadux_lib/loadux_lib.dart';

import '../i18n/strings_provider.dart';
import 'register_dialogs.dart';
import 'register_gateway.dart';
import 'register_models.dart';

/// 実績登録の画面。生産計画(工程計画)が中心で、工程計画明細は同じ表の子の表(行を展開して見る)に出す。
///
/// 計画と明細は変更も追加もできない。登録できるのは、明細と対になる実績だけ(開始・終了)。
/// 開始・終了・探して開始は、明細の行のボタンからダイアログで行う。登録したら、DB の更新結果を表示して再読み込みする。
/// 実績の履歴は、表の子は 1 階層までのため、明細の「実績」ボタンのダイアログに出す。
class WorkRegisterPage extends ConsumerStatefulWidget {
  const WorkRegisterPage({super.key, required this.scope, this.initialPlanId});

  final EntityScope scope;

  /// 開いたとき、この計画を先頭にして展開する(`/wr/<計画>` 相当)。
  final String? initialPlanId;

  @override
  ConsumerState<WorkRegisterPage> createState() => _WorkRegisterPageState();
}

class _WorkRegisterPageState extends ConsumerState<WorkRegisterPage> {
  late Future<List<PlanRow>> _future = ref.read(workRegisterGatewayProvider).plans();
  int _generation = 0;

  void _reload() => setState(() {
    _generation++;
    _future = ref.read(workRegisterGatewayProvider).plans();
  });

  String _date(DateTime? d) => d == null
      ? ''
      : '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  String _time(DateTime? d) => d == null
      ? ''
      : '${_date(d)} ${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';

  Future<void> _start(PlanRow plan, StepRow step, {bool search = false}) async {
    final s = ref.read(workRecordStringsProvider);
    final outcome = await showDialog<RegisterOutcome>(
      context: context,
      builder: (_) => StartDialog(
        gateway: ref.read(workRegisterGatewayProvider),
        step: step,
        planNo: plan.planNo,
        scope: widget.scope,
        strings: s,
        searchFirst: search,
      ),
    );
    await _afterRegister(outcome);
  }

  Future<void> _finish(PlanRow plan, StepRow step) async {
    final s = ref.read(workRecordStringsProvider);
    final outcome = await showDialog<RegisterOutcome>(
      context: context,
      builder: (_) => FinishDialog(
        gateway: ref.read(workRegisterGatewayProvider),
        step: step,
        planNo: plan.planNo,
        strings: s,
      ),
    );
    await _afterRegister(outcome);
  }

  Future<void> _afterRegister(RegisterOutcome? outcome) async {
    if (outcome == null || !mounted) return;
    _reload();
    await showDialog<void>(
      context: context,
      builder: (_) => OutcomeDialog(
        outcome: outcome,
        strings: ref.read(workRecordStringsProvider),
      ),
    );
  }

  Future<void> _history(StepRow step) {
    final s = ref.read(workRecordStringsProvider);
    return showDialog<void>(
      context: context,
      builder: (context) => RegisterDialogFrame(
        title: s.register.history.title(process: step.processName),
        actions: [
          FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: RegisterDialogFrame.label(s.register.action.close),
          ),
        ],
        child: step.results.isEmpty
            ? Text(s.register.history.empty)
            : SizedBox(
                height: 120 + 44.0 * step.results.length,
                child: FlgTable<ResultRow>(
                  items: step.results,
                  rowKey: (r) => r.id,
                  columns: _historyColumns(s),
                  config: const TableConfig(rowHeight: 44),
                ),
              ),
      ),
    );
  }

  List<ColumnDefinition<ResultRow>> _historyColumns(WorkRecordStrings s) {
    final h = s.register.history;
    return [
      ColumnDefinition<ResultRow>(
        key: 'round',
        label: h.round,
        type: ColumnType.number,
        width: 80,
        getter: (r) => '${r.round}',
      ),
      ColumnDefinition<ResultRow>(
        key: 'resultNo',
        label: h.resultNo,
        width: 120,
        getter: (r) => r.resultNo,
      ),
      ColumnDefinition<ResultRow>(
        key: 'startedAt',
        label: h.startedAt,
        width: 160,
        getter: (r) => _time(r.startedAt),
      ),
      ColumnDefinition<ResultRow>(
        key: 'finishedAt',
        label: h.finishedAt,
        width: 160,
        getter: (r) => _time(r.finishedAt),
      ),
      ColumnDefinition<ResultRow>(
        key: 'staff',
        label: h.staff,
        width: 120,
        getter: (r) => r.staffName,
      ),
      ColumnDefinition<ResultRow>(
        key: 'container',
        label: h.container,
        width: 140,
        getter: (r) => r.containerName,
      ),
      ColumnDefinition<ResultRow>(
        key: 'startQuantity',
        label: h.startQuantity,
        type: ColumnType.number,
        width: 110,
        getter: (r) => '${r.startQuantity}',
      ),
      ColumnDefinition<ResultRow>(
        key: 'doneQuantity',
        label: h.doneQuantity,
        type: ColumnType.number,
        width: 110,
        getter: (r) => r.doneQuantity == null ? '' : '${r.doneQuantity}',
      ),
      ColumnDefinition<ResultRow>(
        key: 'defect',
        label: h.defect,
        type: ColumnType.number,
        width: 100,
        getter: (r) => r.defectQuantity == 0 ? '' : '${r.defectQuantity}',
      ),
      ColumnDefinition<ResultRow>(
        key: 'handover',
        label: h.handover,
        width: 90,
        getter: (r) => r.handover ? '✓' : '',
      ),
    ];
  }

  List<ColumnDefinition<PlanRow>> _planColumns(WorkRecordStrings s) {
    final p = s.register.plan;
    return [
      ColumnDefinition<PlanRow>(
        key: 'planNo',
        label: p.no,
        width: 130,
        getter: (r) => r.planNo,
      ),
      ColumnDefinition<PlanRow>(
        key: 'item',
        label: p.item,
        width: 180,
        getter: (r) => r.itemName,
      ),
      ColumnDefinition<PlanRow>(
        key: 'order',
        label: p.order,
        width: 130,
        getter: (r) => r.orderNo,
      ),
      ColumnDefinition<PlanRow>(
        key: 'customer',
        label: p.customer,
        width: 160,
        getter: (r) => r.customer,
      ),
      ColumnDefinition<PlanRow>(
        key: 'quantity',
        label: p.quantity,
        type: ColumnType.number,
        width: 110,
        getter: (r) => '${r.quantity}',
      ),
      ColumnDefinition<PlanRow>(
        key: 'completed',
        label: p.completed,
        type: ColumnType.number,
        width: 140,
        getter: (r) => '${r.completedQuantity}',
      ),
      ColumnDefinition<PlanRow>(
        key: 'due',
        label: p.due,
        width: 120,
        getter: (r) => _date(r.due),
      ),
      ColumnDefinition<PlanRow>(
        key: 'inProgress',
        label: p.inProgress,
        type: ColumnType.number,
        width: 120,
        getter: (r) => '${r.inProgressSteps}',
      ),
    ];
  }

  String _status(WorkRecordStrings s, StepRow r) => r.completed
      ? s.register.status.completed
      : r.inProgress
      ? s.register.status.inProgress
      : s.register.status.notStarted;

  List<ColumnDefinition<StepRow>> _stepColumns(
    WorkRecordStrings s,
    Map<String, PlanRow> plans,
  ) {
    final c = s.register.step;
    return [
      ColumnDefinition<StepRow>(
        key: 'sequence',
        label: c.sequence,
        type: ColumnType.number,
        width: 90,
        getter: (r) => '${r.sequence}',
      ),
      ColumnDefinition<StepRow>(
        key: 'process',
        label: c.process,
        width: 130,
        getter: (r) => r.processName,
      ),
      ColumnDefinition<StepRow>(
        key: 'status',
        label: c.status,
        width: 100,
        getter: (r) => _status(s, r),
      ),
      ColumnDefinition<StepRow>(
        key: 'planned',
        label: c.planned,
        type: ColumnType.number,
        width: 150,
        getter: (r) => '${r.plannedMinutes}',
      ),
      ColumnDefinition<StepRow>(
        key: 'startPlan',
        label: c.startPlan,
        width: 120,
        visible: false,
        getter: (r) => _date(r.startPlan),
      ),
      ColumnDefinition<StepRow>(
        key: 'finishPlan',
        label: c.finishPlan,
        width: 120,
        visible: false,
        getter: (r) => _date(r.finishPlan),
      ),
      ColumnDefinition<StepRow>(
        key: 'equipment',
        label: c.equipment,
        width: 100,
        visible: false,
        getter: (r) => r.equipment,
      ),
      ColumnDefinition<StepRow>(
        key: 'rounds',
        label: c.rounds,
        type: ColumnType.number,
        width: 120,
        getter: (r) => '${r.results.length}',
      ),
      ColumnDefinition<StepRow>(
        key: 'staff',
        label: c.staff,
        width: 120,
        getter: (r) => r.latest?.staffName ?? '',
      ),
      ColumnDefinition<StepRow>(
        key: 'container',
        label: c.container,
        width: 110,
        getter: (r) => r.latest?.containerName ?? '',
      ),
      ColumnDefinition<StepRow>(
        key: 'startedAt',
        label: c.startedAt,
        width: 150,
        getter: (r) => _time(r.latest?.startedAt),
      ),
      ColumnDefinition<StepRow>(
        key: 'finishedAt',
        label: c.finishedAt,
        width: 150,
        getter: (r) => _time(r.latest?.finishedAt),
      ),
      ColumnDefinition<StepRow>(
        key: 'actions',
        label: c.actions,
        width: 440,
        sortable: false,
        filterable: false,
        exportable: false,
        getter: (r) => '',
        renderer: BuilderCellRenderer<StepRow>(
          (context, cell) => _actions(s, plans[cell.item.planId]!, cell.item),
        ),
      ),
    ];
  }

  Widget _actions(WorkRecordStrings s, PlanRow plan, StepRow step) {
    final a = s.register.action;
    Widget button(String key, String text, VoidCallback? onPressed,
        {bool filled = true}) {
      final child = RegisterDialogFrame.label(text);
      return filled
          ? FilledButton(
              key: ValueKey('$key:${step.id}'),
              onPressed: onPressed,
              child: child,
            )
          : OutlinedButton(
              key: ValueKey('$key:${step.id}'),
              onPressed: onPressed,
              child: child,
            );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        if (!step.completed && !step.inProgress) ...[
          button('start', a.start, () => _start(plan, step)),
          button(
            'search',
            a.search,
            () => _start(plan, step, search: true),
            filled: false,
          ),
        ],
        if (step.inProgress) button('finish', a.finish, () => _finish(plan, step)),
        button('history', a.history, () => _history(step), filled: false),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final scope = widget.scope;
    final s = ref.watch(workRecordStringsProvider);
    return ScreenScaffold(
      title: s.register.title,
      asOf: scope.asOfText,
      backLabel: scope.strings.back,
      body: FutureBuilder<List<PlanRow>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(s.register.loadFailed),
                  const SizedBox(height: 8),
                  OutlinedButton(
                    onPressed: _reload,
                    child: RegisterDialogFrame.label(s.register.retry),
                  ),
                ],
              ),
            );
          }
          final plans = snapshot.data;
          if (plans == null) return const LoadingIndicator.centered();
          if (plans.isEmpty) return Center(child: Text(s.register.empty));
          final first = widget.initialPlanId;
          final ordered = [
            ...plans.where((p) => p.id == first),
            ...plans.where((p) => p.id != first),
          ];
          final byId = {for (final p in plans) p.id: p};
          return FlgTable<PlanRow>(
            // 登録や言語の変更のあと、表を作り直す
            key: ValueKey('plans:$_generation:${s.register.title}'),
            columns: _planColumns(s),
            items: ordered,
            rowKey: (p) => p.id,
            config: const TableConfig(rowHeight: 48),
            childTable: ChildTableDefinition<PlanRow, StepRow>(
              arrayGetter: (p) => p.steps,
              rowKey: (r) => r.id,
              columns: _stepColumns(s, byId),
              config: const TableConfig(rowHeight: 56),
            ),
          );
        },
      ),
    );
  }
}
