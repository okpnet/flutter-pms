import 'package:app_shell/app_shell.dart';
import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loadux_lib/loadux_lib.dart';

import '../approval_steps/approval_steps_gateway.dart';
import '../i18n/strings_provider.dart';

/// 承認の段(承認パターンの編集の表)。段 = 部署・役職・順位。承認は、順位の小さい段から順に行う。
///
/// - 表は `flgtable_lib`。行をドラッグして並べ替えると([TableConfig.dragEnabled])、順位を 1 から振り直して保存する
///   (変わった段だけを書く。失敗したときは、元の並びに戻す)。
/// - 行のダブルクリック・長押しで、部署・役職の変更と段の削除。「段を追加」で、最後の順位の段を足す。
/// - 並べ替えの結果は、表が元のリストへ書き戻す(ソート・絞り込みをしていないあいだ)ため、このページは、並べ替えを無効にしたソートを持たない。
class ApprovalStepsPage extends ConsumerStatefulWidget {
  const ApprovalStepsPage({super.key, required this.patternId, this.patternName = ''});

  final String patternId;
  final String patternName;

  @override
  ConsumerState<ApprovalStepsPage> createState() => _ApprovalStepsPageState();
}

class _ApprovalStepsPageState extends ConsumerState<ApprovalStepsPage> {
  List<ApprovalStep> _steps = [];
  List<ApprovalStepOption> _departments = const [];
  List<ApprovalStepOption> _positions = const [];
  bool _loaded = false;
  bool _failed = false;
  bool _busy = false;
  bool _actionFailed = false;
  int _generation = 0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  IApprovalStepsGateway get _gateway => ref.read(approvalStepsGatewayProvider);

  Future<void> _load() async {
    try {
      final steps = await _gateway.load(widget.patternId);
      final departments = await _gateway.departments();
      final positions = await _gateway.positions();
      if (!mounted) return;
      setState(() {
        _steps = [...steps];
        _departments = departments;
        _positions = positions;
        _loaded = true;
        _failed = false;
        _generation++;
      });
    } catch (_) {
      if (mounted) {
        setState(() {
          _loaded = true;
          _failed = true;
        });
      }
    }
  }

  /// 書き込みの操作。失敗したときは、表示を読み直して元に戻す。
  Future<void> _run(Future<void> Function() action) async {
    if (_busy) return;
    setState(() {
      _busy = true;
      _actionFailed = false;
    });
    try {
      await action();
    } catch (_) {
      if (mounted) setState(() => _actionFailed = true);
    }
    if (mounted) await _load();
    if (mounted) setState(() => _busy = false);
  }

  /// ドロップのあと。表が元のリスト([_steps])を並べ替え済みなので、その順で順位を振り直して保存する。
  void _onDropped(AfterDropEvent<ApprovalStep> e) {
    final ordered = [..._steps];
    _run(() => _gateway.reorder(ordered));
  }

  String _nameOf(List<ApprovalStepOption> options, String? id) {
    if (id == null) return '';
    for (final o in options) {
      if (o.id == id) return o.name.isEmpty ? id : o.name;
    }
    return id;
  }

  Future<void> _add() async {
    final result = await _showDialog(null);
    if (result == null) return;
    final last = _steps.isEmpty ? 0 : _steps.map((s) => s.priority).reduce((a, b) => a > b ? a : b);
    await _run(() => _gateway.add(widget.patternId, departmentId: result.departmentId, positionId: result.positionId, priority: last + 1));
  }

  Future<void> _edit(ApprovalStep step) async {
    final result = await _showDialog(step);
    if (result == null) return;
    if (result.delete) {
      await _run(() => _gateway.remove(step));
    } else {
      await _run(() => _gateway.update(step, departmentId: result.departmentId, positionId: result.positionId));
    }
  }

  Future<_StepInput?> _showDialog(ApprovalStep? step) {
    final s = ref.read(organizationStringsProvider).approvalSteps;
    return showDialog<_StepInput>(
      context: context,
      builder: (context) => _StepDialog(strings: s, step: step, departments: _departments, positions: _positions),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(organizationStringsProvider).approvalSteps;
    final scheme = Theme.of(context).colorScheme;
    return ScreenScaffold(
      title: s.title,
      backLabel: s.back,
      body: !_loaded
          ? const LoadingIndicator.centered()
          : _failed
          ? Center(child: Text(s.loadFailed, key: const Key('as-load-failed'), style: TextStyle(color: scheme.error)))
          : _body(context, s, scheme),
    );
  }

  Widget _body(BuildContext context, dynamic s, ColorScheme scheme) {
    final text = Theme.of(context).textTheme;
    final columns = <ColumnDefinition<ApprovalStep>>[
      ColumnDefinition<ApprovalStep>(
        key: 'step',
        label: s.colStep as String,
        getter: (r) => (s.stepLabel as dynamic)(n: _steps.indexOf(r) + 1) as String,
        sortable: false,
        filterable: false,
        readOnly: true,
      ),
      ColumnDefinition<ApprovalStep>(
        key: 'department',
        label: s.colDepartment as String,
        getter: (r) => r.departmentId == null ? s.anyDepartment as String : _nameOf(_departments, r.departmentId),
        sortable: false,
        filterable: false,
        readOnly: true,
      ),
      ColumnDefinition<ApprovalStep>(
        key: 'position',
        label: s.colPosition as String,
        getter: (r) => _nameOf(_positions, r.positionId),
        sortable: false,
        filterable: false,
        readOnly: true,
      ),
    ];
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
      children: [
        if (widget.patternName.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              (s.pattern as dynamic)(name: widget.patternName) as String,
              key: const Key('as-pattern'),
              style: text.titleMedium,
            ),
          ),
        Text(s.hint as String, style: text.bodySmall),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FilledButton(key: const Key('as-add'), onPressed: _busy ? null : _add, child: Text(s.add as String)),
            if (_actionFailed) Text(s.actionFailed as String, key: const Key('as-action-failed'), style: TextStyle(color: scheme.error)),
          ],
        ),
        const SizedBox(height: 12),
        if (_steps.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(s.empty as String, key: const Key('as-empty')),
          )
        else
          SizedBox(
            height: (_steps.length + 1) * 44.0 + 16,
            child: FlgTable<ApprovalStep>(
              key: ValueKey('steps:$_generation'),
              columns: columns,
              items: _steps,
              rowKey: (r) => r.id,
              config: const TableConfig(dragEnabled: true),
              events: TableEvents<ApprovalStep>(
                onRowActivated: _busy ? null : _edit,
                onAfterDrop: _onDropped,
              ),
            ),
          ),
      ],
    );
  }
}

/// ダイアログの結果(部署・役職、または削除)。
class _StepInput {
  const _StepInput({this.departmentId, this.positionId, this.delete = false});

  final String? departmentId;
  final String? positionId;
  final bool delete;
}

class _StepDialog extends StatefulWidget {
  const _StepDialog({required this.strings, required this.step, required this.departments, required this.positions});

  final dynamic strings;
  final ApprovalStep? step;
  final List<ApprovalStepOption> departments;
  final List<ApprovalStepOption> positions;

  @override
  State<_StepDialog> createState() => _StepDialogState();
}

class _StepDialogState extends State<_StepDialog> {
  String? _department;
  String? _position;
  bool _confirmDelete = false;
  bool _invalid = false;

  @override
  void initState() {
    super.initState();
    _department = widget.step?.departmentId;
    _position = widget.step?.positionId;
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.strings;
    final isNew = widget.step == null;
    String? known(List<ApprovalStepOption> options, String? id) => options.any((o) => o.id == id) ? id : null;
    return AlertDialog(
      title: Text((isNew ? s.addTitle : s.editTitle) as String),
      content: SizedBox(
        width: 380,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String?>(
              key: const Key('as-department'),
              initialValue: known(widget.departments, _department),
              isExpanded: true,
              decoration: InputDecoration(labelText: s.department as String, border: const OutlineInputBorder()),
              items: [
                DropdownMenuItem<String?>(value: null, child: Text(s.anyDepartment as String)),
                for (final o in widget.departments) DropdownMenuItem<String?>(value: o.id, child: Text(o.name)),
              ],
              onChanged: (v) => setState(() => _department = v),
            ),
            const SizedBox(height: 14),
            DropdownButtonFormField<String?>(
              key: const Key('as-position'),
              initialValue: known(widget.positions, _position),
              isExpanded: true,
              decoration: InputDecoration(
                labelText: s.position as String,
                border: const OutlineInputBorder(),
                errorText: _invalid ? s.positionRequired as String : null,
              ),
              items: [for (final o in widget.positions) DropdownMenuItem<String?>(value: o.id, child: Text(o.name))],
              onChanged: (v) => setState(() {
                _position = v;
                _invalid = false;
              }),
            ),
            if (_confirmDelete)
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text(s.deleteConfirm as String, key: const Key('as-delete-confirm'), style: TextStyle(color: Theme.of(context).colorScheme.error)),
              ),
          ],
        ),
      ),
      actions: [
        if (!isNew)
          TextButton(
            key: const Key('as-delete'),
            onPressed: () {
              if (!_confirmDelete) {
                setState(() => _confirmDelete = true);
              } else {
                Navigator.of(context).pop(const _StepInput(delete: true));
              }
            },
            child: Text(s.delete as String),
          ),
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(s.cancel as String)),
        FilledButton(
          key: const Key('as-save'),
          onPressed: () {
            if (_position == null) {
              setState(() => _invalid = true);
              return;
            }
            Navigator.of(context).pop(_StepInput(departmentId: _department, positionId: _position));
          },
          child: Text(s.save as String),
        ),
      ],
    );
  }
}
