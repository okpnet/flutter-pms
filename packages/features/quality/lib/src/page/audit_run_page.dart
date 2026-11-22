import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loadux_lib/loadux_lib.dart';

import '../audit_run/audit_run_gateway.dart';
import '../i18n/strings_provider.dart';
import 'my_audits_page.dart' show formatAuditDate;

/// 監査の実施。下のナビで **「項目」と「異常」の 2 画面**を行き来する(どちらも状態を保つ。[IndexedStack])。
///
/// - 項目の画面: 基準(監査標準項目)ごとに、値・所見(コメント)を入力して保存する。「異常を入力」で、その項目を選んだまま異常の画面へ移る。
/// - 異常の画面: 対象の項目を選び、異常(題名・内容)を登録する。その項目につないだ異常の一覧を出す。「項目へ戻る」で項目の画面へ戻る。
/// - 開始(実施日を今日にして項目を用意)・終了(結論)は、DB の関数の導入後に GraphQL 版が実装される(それまで失敗の表示)。
class AuditRunPage extends ConsumerStatefulWidget {
  const AuditRunPage({super.key, required this.detailId});

  final String detailId;

  @override
  ConsumerState<AuditRunPage> createState() => _AuditRunPageState();
}

class _AuditRunPageState extends ConsumerState<AuditRunPage> {
  AuditAssignment? _assignment;
  List<AuditItem> _items = const [];
  bool _loaded = false;
  bool _failed = false;
  bool _actionFailed = false;
  int _tab = 0;
  String? _selectedItemId;

  @override
  void initState() {
    super.initState();
    _load();
  }

  IAuditRunGateway get _gateway => ref.read(auditRunGatewayProvider);

  Future<void> _load() async {
    try {
      final a = await _gateway.assignment(widget.detailId);
      final items = await _gateway.items(widget.detailId);
      if (!mounted) return;
      setState(() {
        _assignment = a;
        _items = items;
        _selectedItemId ??= items.isEmpty ? null : items.first.id;
        _loaded = true;
        _failed = a == null;
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

  Future<void> _guard(Future<void> Function() action) async {
    setState(() => _actionFailed = false);
    try {
      await action();
      await _load();
    } catch (_) {
      if (mounted) setState(() => _actionFailed = true);
    }
  }

  void _goComplaint(String itemId) => setState(() {
    _selectedItemId = itemId;
    _tab = 1;
  });

  Future<void> _finish() async {
    final conclusion = await showDialog<String>(context: context, builder: (context) => const _ConclusionDialog());
    if (conclusion != null) await _guard(() => _gateway.finish(widget.detailId, conclusion: conclusion));
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(qualityStringsProvider).auditRun;
    final scheme = Theme.of(context).colorScheme;
    final a = _assignment;
    return ScreenScaffold(
      title: a?.title ?? s.runTitle,
      backLabel: s.back,
      body: !_loaded
          ? const LoadingIndicator.centered()
          : _failed || a == null
          ? Center(child: Text(s.loadFailed, key: const Key('ar-load-failed'), style: TextStyle(color: scheme.error)))
          : Column(
              children: [
                _header(context, a, s, scheme),
                Expanded(
                  child: IndexedStack(
                    index: _tab,
                    children: [
                      _ItemsPane(
                        items: _items,
                        selectedId: _selectedItemId,
                        editable: !a.isDone,
                        onSelect: (id) => setState(() => _selectedItemId = id),
                        onSave: (item, value, findings) => _guard(() => _gateway.saveItem(item, value: value, findings: findings)),
                        onEnterComplaint: _goComplaint,
                      ),
                      _ComplaintsPane(
                        items: _items,
                        selectedId: _selectedItemId,
                        editable: !a.isDone,
                        onSelect: (id) => setState(() => _selectedItemId = id),
                        onRegister: (itemId, title, details) => _guard(() => _gateway.registerComplaint(itemId, title: title, details: details)),
                        onBack: () => setState(() => _tab = 0),
                      ),
                    ],
                  ),
                ),
                NavigationBar(
                  key: const Key('ar-nav'),
                  selectedIndex: _tab,
                  onDestinationSelected: (i) => setState(() => _tab = i),
                  destinations: [
                    NavigationDestination(icon: const Icon(Icons.checklist), label: s.tabItems),
                    NavigationDestination(icon: const Icon(Icons.report_problem_outlined), label: s.tabComplaints),
                  ],
                ),
              ],
            ),
    );
  }

  Widget _header(BuildContext context, AuditAssignment a, dynamic s, ColorScheme scheme) {
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 4, 24, 8),
      child: Wrap(
        spacing: 16,
        runSpacing: 4,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          if (a.teamName.isNotEmpty) Text(s.team(name: a.teamName), style: text.bodySmall),
          if (a.scheduledAt != null) Text(s.scheduled(date: formatAuditDate(a.scheduledAt!)), style: text.bodySmall),
          if (a.performedDate != null)
            Text(s.performed(date: formatAuditDate(a.performedDate!, time: false)), style: text.bodySmall),
          if (a.isDone) Chip(key: const Key('ar-done'), label: Text(s.statusDone)),
          if (a.isPlanned) FilledButton(key: const Key('ar-start'), onPressed: () => _guard(() => _gateway.start(a.id)), child: Text(s.start)),
          if (a.isInProgress)
            OutlinedButton(key: const Key('ar-finish'), onPressed: _finish, child: Text(s.finish)),
          if (_actionFailed) Text(s.actionFailed, key: const Key('ar-action-failed'), style: TextStyle(color: scheme.error)),
        ],
      ),
    );
  }
}

/// 項目の画面。
class _ItemsPane extends StatelessWidget {
  const _ItemsPane({
    required this.items,
    required this.selectedId,
    required this.editable,
    required this.onSelect,
    required this.onSave,
    required this.onEnterComplaint,
  });

  final List<AuditItem> items;
  final String? selectedId;
  final bool editable;
  final void Function(String id) onSelect;
  final Future<void> Function(AuditItem item, String value, String findings) onSave;
  final void Function(String itemId) onEnterComplaint;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final s = ref.watch(qualityStringsProvider).auditRun;
        if (items.isEmpty) {
          return Center(child: Text(s.noItems, key: const Key('ar-no-items')));
        }
        return ListView(
          padding: const EdgeInsets.fromLTRB(24, 4, 24, 24),
          children: [
            for (final item in items)
              _ItemCard(
                key: ValueKey('item-${item.id}'),
                item: item,
                selected: item.id == selectedId,
                editable: editable,
                onTap: () => onSelect(item.id),
                onSave: onSave,
                onEnterComplaint: () => onEnterComplaint(item.id),
              ),
          ],
        );
      },
    );
  }
}

class _ItemCard extends ConsumerStatefulWidget {
  const _ItemCard({
    super.key,
    required this.item,
    required this.selected,
    required this.editable,
    required this.onTap,
    required this.onSave,
    required this.onEnterComplaint,
  });

  final AuditItem item;
  final bool selected;
  final bool editable;
  final VoidCallback onTap;
  final Future<void> Function(AuditItem item, String value, String findings) onSave;
  final VoidCallback onEnterComplaint;

  @override
  ConsumerState<_ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends ConsumerState<_ItemCard> {
  late final TextEditingController _value = TextEditingController(text: widget.item.value);
  late final TextEditingController _findings = TextEditingController(text: widget.item.findings);

  @override
  void dispose() {
    _value.dispose();
    _findings.dispose();
    super.dispose();
  }

  bool get _dirty => _value.text != widget.item.value || _findings.text != widget.item.findings;

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(qualityStringsProvider).auditRun;
    final scheme = Theme.of(context).colorScheme;
    final item = widget.item;
    final id = item.id;
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: widget.selected ? scheme.primary : scheme.outlineVariant, width: widget.selected ? 2 : 1),
      ),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      item.code.isEmpty ? item.name : '${item.code}  ${item.name}',
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Chip(
                    key: Key('ar-state-$id'),
                    label: Text((item.answered ? s.answered : s.unanswered)),
                    visualDensity: VisualDensity.compact,
                  ),
                  if (item.complaints.isNotEmpty) ...[
                    const SizedBox(width: 6),
                    Chip(
                      key: Key('ar-count-$id'),
                      label: Text(s.complaintCount(n: item.complaints.length)),
                      visualDensity: VisualDensity.compact,
                      side: BorderSide(color: scheme.error),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 10),
              TextField(
                key: Key('ar-value-$id'),
                controller: _value,
                enabled: widget.editable,
                onChanged: (_) => setState(() {}),
                decoration: InputDecoration(labelText: s.itemValue, isDense: true, border: const OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                key: Key('ar-findings-$id'),
                controller: _findings,
                enabled: widget.editable,
                minLines: 2,
                maxLines: 5,
                onChanged: (_) => setState(() {}),
                decoration: InputDecoration(labelText: s.itemFindings, isDense: true, border: const OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                children: [
                  FilledButton(
                    key: Key('ar-save-$id'),
                    onPressed: widget.editable && _dirty ? () => widget.onSave(item, _value.text, _findings.text) : null,
                    child: Text(s.save),
                  ),
                  OutlinedButton.icon(
                    key: Key('ar-enter-complaint-$id'),
                    onPressed: widget.onEnterComplaint,
                    icon: const Icon(Icons.report_problem_outlined, size: 18),
                    label: Text(s.enterComplaint),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 異常の画面。
class _ComplaintsPane extends ConsumerStatefulWidget {
  const _ComplaintsPane({
    required this.items,
    required this.selectedId,
    required this.editable,
    required this.onSelect,
    required this.onRegister,
    required this.onBack,
  });

  final List<AuditItem> items;
  final String? selectedId;
  final bool editable;
  final void Function(String id) onSelect;
  final Future<void> Function(String itemId, String title, String details) onRegister;
  final VoidCallback onBack;

  @override
  ConsumerState<_ComplaintsPane> createState() => _ComplaintsPaneState();
}

class _ComplaintsPaneState extends ConsumerState<_ComplaintsPane> {
  final _title = TextEditingController();
  final _details = TextEditingController();
  bool _titleMissing = false;

  @override
  void dispose() {
    _title.dispose();
    _details.dispose();
    super.dispose();
  }

  AuditItem? get _selected {
    for (final i in widget.items) {
      if (i.id == widget.selectedId) return i;
    }
    return null;
  }

  Future<void> _register() async {
    final item = _selected;
    if (item == null) return;
    if (_title.text.trim().isEmpty) {
      setState(() => _titleMissing = true);
      return;
    }
    setState(() => _titleMissing = false);
    await widget.onRegister(item.id, _title.text.trim(), _details.text.trim());
    _title.clear();
    _details.clear();
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(qualityStringsProvider).auditRun;
    final item = _selected;
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 4, 24, 24),
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton.icon(
            key: const Key('ar-back-to-items'),
            onPressed: widget.onBack,
            icon: const Icon(Icons.arrow_back, size: 18),
            label: Text(s.backToItem),
          ),
        ),
        DropdownButtonFormField<String>(
          key: const Key('ar-complaint-item'),
          initialValue: item?.id,
          isExpanded: true,
          decoration: InputDecoration(labelText: s.complaintItem, border: const OutlineInputBorder()),
          items: [
            for (final i in widget.items)
              DropdownMenuItem(value: i.id, child: Text(i.code.isEmpty ? i.name : '${i.code}  ${i.name}', overflow: TextOverflow.ellipsis)),
          ],
          onChanged: (v) {
            if (v != null) widget.onSelect(v);
          },
        ),
        const SizedBox(height: 14),
        TextField(
          key: const Key('ar-complaint-title'),
          controller: _title,
          enabled: widget.editable,
          decoration: InputDecoration(
            labelText: s.complaintTitle,
            border: const OutlineInputBorder(),
            errorText: _titleMissing ? s.titleRequired : null,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          key: const Key('ar-complaint-details'),
          controller: _details,
          enabled: widget.editable,
          minLines: 3,
          maxLines: 6,
          decoration: InputDecoration(labelText: s.complaintDetails, border: const OutlineInputBorder()),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: FilledButton(
            key: const Key('ar-register'),
            onPressed: widget.editable && item != null ? _register : null,
            child: Text(s.register),
          ),
        ),
        const SizedBox(height: 18),
        Text(s.complaintsOfItem, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 6),
        if (item == null || item.complaints.isEmpty)
          Text(s.noComplaints, key: const Key('ar-no-complaints'))
        else
          for (final c in item.complaints)
            ListTile(
              key: Key('ar-complaint-${c.linkId}'),
              dense: true,
              leading: const Icon(Icons.report_problem_outlined),
              title: Text(c.title.isEmpty ? c.complaintId : c.title),
            ),
      ],
    );
  }
}

/// 終了の結論を入れるダイアログ(入力欄の管理はダイアログ自身が持つ)。結果は結論の文(キャンセルは null)。
class _ConclusionDialog extends ConsumerStatefulWidget {
  const _ConclusionDialog();

  @override
  ConsumerState<_ConclusionDialog> createState() => _ConclusionDialogState();
}

class _ConclusionDialogState extends ConsumerState<_ConclusionDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(qualityStringsProvider).auditRun;
    return AlertDialog(
      title: Text(s.finishTitle),
      content: TextField(
        key: const Key('ar-conclusion'),
        controller: _controller,
        maxLines: 4,
        decoration: InputDecoration(labelText: s.conclusion, border: const OutlineInputBorder()),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(s.cancel)),
        FilledButton(key: const Key('ar-finish-ok'), onPressed: () => Navigator.of(context).pop(_controller.text), child: Text(s.ok)),
      ],
    );
  }
}
