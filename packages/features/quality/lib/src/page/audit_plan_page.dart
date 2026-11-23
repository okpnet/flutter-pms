import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loadux_lib/loadux_lib.dart';

import '../audit_plan/audit_plan_gateway.dart';
import '../i18n/strings_provider.dart';
import 'audit_run_paths.dart';
import 'my_audits_page.dart' show formatAuditDate;

/// 監査計画の登録。監査の題名・詳細・監査標準と、チームと予定の行(1 行 = チーム 1 つ + 監査員 + 監査実施 1 件)を入れて登録する。
///
/// 入力の検査は、登録の前に画面でも行う([validateAuditPlan]。誤りは種類(enum)で持ち、表示時に文字へ変える)。
/// 登録は、DB の関数 `audit_plan_register`(提案)の導入後に GraphQL 版が実装される(それまで「登録できませんでした」)。
/// 登録できたら「自分の監査へ」のボタンを出す(自分が監査員のとき、そこに現れる)。
class AuditPlanPage extends ConsumerStatefulWidget {
  const AuditPlanPage({super.key});

  @override
  ConsumerState<AuditPlanPage> createState() => _AuditPlanPageState();
}

class _AuditPlanPageState extends ConsumerState<AuditPlanPage> {
  final _title = TextEditingController();
  final _details = TextEditingController();
  List<AuditPlanOption> _standards = const [];
  List<AuditPlanOption> _staff = const [];
  String? _standardId;
  List<AuditPlanLine> _lines = [const AuditPlanLine()];
  int _generation = 0; // 行の追加・削除のたびに、入力欄を作り直す
  bool _loaded = false;
  bool _failed = false;
  bool _saving = false;
  bool _registered = false;
  bool _registerFailed = false;
  bool _submitted = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _title.dispose();
    _details.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    try {
      final g = ref.read(auditPlanGatewayProvider);
      final standards = await g.standards();
      final staff = await g.staff();
      if (!mounted) return;
      setState(() {
        _standards = standards;
        _staff = staff;
        _loaded = true;
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

  AuditPlanInput get _input => AuditPlanInput(title: _title.text, details: _details.text, standardId: _standardId, lines: _lines);

  List<({AuditPlanError error, int? line})> get _errors => _submitted ? validateAuditPlan(_input) : const [];

  void _setLine(int i, AuditPlanLine line) => setState(() => _lines = [..._lines]..[i] = line);

  Future<void> _register() async {
    setState(() {
      _submitted = true;
      _registerFailed = false;
      _registered = false;
    });
    if (validateAuditPlan(_input).isNotEmpty || _saving) return;
    setState(() => _saving = true);
    try {
      await ref.read(auditPlanGatewayProvider).register(_input);
      if (mounted) setState(() => _registered = true);
    } catch (_) {
      if (mounted) setState(() => _registerFailed = true);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<DateTime?> _pickDateTime(DateTime? initial) async {
    final base = initial ?? DateTime.now();
    final date = await showDatePicker(context: context, initialDate: base, firstDate: DateTime(2020), lastDate: DateTime(2100));
    if (date == null || !mounted) return null;
    final time = await showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(base));
    if (time == null) return DateTime(date.year, date.month, date.day);
    return DateTime(date.year, date.month, date.day, time.hour, time.minute);
  }

  Future<void> _pickAuditors(int i) async {
    final s = ref.read(qualityStringsProvider).auditPlan;
    final picked = await showDialog<List<String>>(
      context: context,
      builder: (context) => _AuditorDialog(title: s.pickerTitle, ok: s.ok, cancel: s.cancel, options: _staff, selected: _lines[i].auditorIds),
    );
    if (picked != null) _setLine(i, _lines[i].copyWith(auditorIds: picked));
  }

  String _errorText(dynamic s, AuditPlanError e) => switch (e) {
    AuditPlanError.titleRequired => s.errTitle,
    AuditPlanError.standardRequired => s.errStandard,
    AuditPlanError.linesRequired => s.errLines,
    AuditPlanError.teamNameRequired => s.errTeam,
    AuditPlanError.auditorRequired => s.errAuditor,
    AuditPlanError.periodInvalid => s.errPeriod,
  };

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(qualityStringsProvider).auditPlan;
    final scheme = Theme.of(context).colorScheme;
    return ScreenScaffold(
      title: s.title,
      backLabel: s.back,
      body: !_loaded
          ? const LoadingIndicator.centered()
          : _failed
          ? Center(child: Text(s.loadFailed, key: const Key('ap-load-failed'), style: TextStyle(color: scheme.error)))
          : _form(context, s, scheme),
    );
  }

  Widget _form(BuildContext context, dynamic s, ColorScheme scheme) {
    final errors = _errors;
    String? err(AuditPlanError e, {int? line}) {
      for (final x in errors) {
        if (x.error == e && x.line == line) return _errorText(s, e);
      }
      return null;
    }

    final names = {for (final o in _staff) o.id: o.name};
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
      children: [
        Text(s.hint, style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 14),
        SizedBox(
          width: 560,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                key: const Key('ap-title'),
                controller: _title,
                onChanged: (_) => setState(() {}),
                decoration: InputDecoration(
                  labelText: s.fieldTitle,
                  border: const OutlineInputBorder(),
                  errorText: err(AuditPlanError.titleRequired),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                key: const Key('ap-details'),
                controller: _details,
                minLines: 2,
                maxLines: 5,
                decoration: InputDecoration(labelText: s.fieldDetails, border: const OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                key: const Key('ap-standard'),
                initialValue: _standardId,
                isExpanded: true,
                decoration: InputDecoration(
                  labelText: s.fieldStandard,
                  border: const OutlineInputBorder(),
                  errorText: err(AuditPlanError.standardRequired),
                ),
                items: [for (final o in _standards) DropdownMenuItem(value: o.id, child: Text(o.label, overflow: TextOverflow.ellipsis))],
                onChanged: (v) => setState(() => _standardId = v),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(s.lines, style: Theme.of(context).textTheme.titleSmall),
        if (err(AuditPlanError.linesRequired) != null)
          Text(err(AuditPlanError.linesRequired)!, key: const Key('ap-err-lines'), style: TextStyle(color: scheme.error)),
        for (var i = 0; i < _lines.length; i++)
          KeyedSubtree(key: ValueKey('line-$_generation-$i'), child: _lineCard(context, s, scheme, i, names, err)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 12,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            OutlinedButton.icon(
              key: const Key('ap-add-line'),
              onPressed: () => setState(() {
                _lines = [..._lines, const AuditPlanLine()];
                _generation++;
              }),
              icon: const Icon(Icons.add, size: 18),
              label: Text(s.addLine),
            ),
            FilledButton(key: const Key('ap-register'), onPressed: _saving ? null : _register, child: Text(s.register)),
            if (_registered) Text(s.registered, key: const Key('ap-registered'), style: TextStyle(color: scheme.primary)),
            if (_registered)
              TextButton(key: const Key('ap-go-my'), onPressed: () => context.go(AuditRunPaths.myAudits), child: Text(s.goMyAudits)),
            if (_registerFailed) Text(s.registerFailed, key: const Key('ap-register-failed'), style: TextStyle(color: scheme.error)),
          ],
        ),
      ],
    );
  }

  Widget _lineCard(BuildContext context, dynamic s, ColorScheme scheme, int i, Map<String, String> names, String? Function(AuditPlanError, {int? line}) err) {
    final line = _lines[i];
    Widget dateRow(String label, DateTime? value, Key pickKey, Key clearKey, void Function(DateTime?) set) => Row(
      children: [
        SizedBox(width: 120, child: Text(label)),
        Text(value == null ? s.notSet : formatAuditDate(value)),
        const SizedBox(width: 8),
        TextButton(key: pickKey, onPressed: () async => set(await _pickDateTime(value)), child: Text(s.pickDate)),
        if (value != null) TextButton(key: clearKey, onPressed: () => set(null), child: Text(s.clearDate)),
      ],
    );
    return Card(
      margin: const EdgeInsets.only(top: 10),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(s.line(n: i + 1), style: const TextStyle(fontWeight: FontWeight.w600))),
                if (_lines.length > 1)
                  IconButton(
                    key: Key('ap-remove-$i'),
                    tooltip: s.removeLine,
                    onPressed: () => setState(() {
                      _lines = [..._lines]..removeAt(i);
                      _generation++;
                    }),
                    icon: const Icon(Icons.delete_outline),
                  ),
              ],
            ),
            SizedBox(
              width: 420,
              child: TextFormField(
                key: Key('ap-team-$i'),
                initialValue: line.teamName,
                onChanged: (v) => _lines[i] = _lines[i].copyWith(teamName: v),
                decoration: InputDecoration(
                  labelText: s.teamName,
                  isDense: true,
                  border: const OutlineInputBorder(),
                  errorText: err(AuditPlanError.teamNameRequired, line: i),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SizedBox(width: 120, child: Text(s.auditors)),
                if (line.auditorIds.isEmpty) Text(s.noAuditors, style: Theme.of(context).textTheme.bodySmall),
                for (final id in line.auditorIds) Chip(key: Key('ap-auditor-$i-$id'), label: Text(names[id] ?? id), visualDensity: VisualDensity.compact),
                TextButton(key: Key('ap-pick-auditors-$i'), onPressed: () => _pickAuditors(i), child: Text(s.pickAuditors)),
              ],
            ),
            if (err(AuditPlanError.auditorRequired, line: i) != null)
              Text(err(AuditPlanError.auditorRequired, line: i)!, key: Key('ap-err-auditor-$i'), style: TextStyle(color: scheme.error)),
            dateRow(s.scheduledAt, line.scheduledAt, Key('ap-scheduled-$i'), Key('ap-scheduled-clear-$i'), (v) => _setLine(i, v == null ? line.copyWith(clearScheduled: true) : line.copyWith(scheduledAt: v))),
            dateRow(
              s.expectedEndAt,
              line.expectedEndAt,
              Key('ap-end-$i'),
              Key('ap-end-clear-$i'),
              (v) => _setLine(i, v == null ? line.copyWith(clearEnd: true) : line.copyWith(expectedEndAt: v)),
            ),
            if (err(AuditPlanError.periodInvalid, line: i) != null)
              Text(err(AuditPlanError.periodInvalid, line: i)!, key: Key('ap-err-period-$i'), style: TextStyle(color: scheme.error)),
          ],
        ),
      ),
    );
  }
}

/// 監査員を複数選ぶダイアログ(入力の管理はダイアログ自身が持つ)。結果は選んだ担当者の ID(キャンセルは null)。
class _AuditorDialog extends StatefulWidget {
  const _AuditorDialog({required this.title, required this.ok, required this.cancel, required this.options, required this.selected});

  final String title;
  final String ok;
  final String cancel;
  final List<AuditPlanOption> options;
  final List<String> selected;

  @override
  State<_AuditorDialog> createState() => _AuditorDialogState();
}

class _AuditorDialogState extends State<_AuditorDialog> {
  late final Set<String> _selected = {...widget.selected};

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: SizedBox(
        width: 380,
        height: 360,
        child: ListView(
          children: [
            for (final o in widget.options)
              CheckboxListTile(
                key: Key('ap-option-${o.id}'),
                dense: true,
                value: _selected.contains(o.id),
                title: Text(o.label),
                onChanged: (v) => setState(() => v == true ? _selected.add(o.id) : _selected.remove(o.id)),
              ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(widget.cancel)),
        FilledButton(
          key: const Key('ap-picker-ok'),
          onPressed: () => Navigator.of(context).pop([
            for (final o in widget.options)
              if (_selected.contains(o.id)) o.id,
          ]),
          child: Text(widget.ok),
        ),
      ],
    );
  }
}
