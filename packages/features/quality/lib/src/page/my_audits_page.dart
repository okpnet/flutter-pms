import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loadux_lib/loadux_lib.dart';

import '../audit_run/audit_run_gateway.dart';
import '../i18n/strings_provider.dart';
import 'audit_run_destination.dart';

/// 日時の文字(yyyy/MM/dd HH:mm)。
String formatAuditDate(DateTime d, {bool time = true}) {
  String two(int v) => v.toString().padLeft(2, '0');
  final date = '${d.year}/${two(d.month)}/${two(d.day)}';
  return time ? '$date ${two(d.hour)}:${two(d.minute)}' : date;
}

/// 自分の監査。自分のチームに割り当てられた監査実施詳細だけを、検索なしで出す(実施中 → 予定の近い順 → 完了)。
///
/// 予定日時が [dueSoon] 以内、または過ぎたものは、印を付ける(チームの担当者への、予定日をもとにした通知の画面側。
/// DB の通知 `audit_notice` の導入後は、その結果を使う。Issue 20261122_0001)。押すと、監査の実施の画面へ進む。
class MyAuditsPage extends ConsumerStatefulWidget {
  const MyAuditsPage({super.key, this.dueSoon = const Duration(days: 3), this.now});

  final Duration dueSoon;

  /// 現在時刻(テスト用)。
  final DateTime? now;

  @override
  ConsumerState<MyAuditsPage> createState() => _MyAuditsPageState();
}

class _MyAuditsPageState extends ConsumerState<MyAuditsPage> {
  List<AuditAssignment> _rows = const [];
  bool _loaded = false;
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final rows = await ref.read(auditRunGatewayProvider).myAssignments();
      if (!mounted) return;
      setState(() {
        _rows = rows;
        _loaded = true;
        _failed = false;
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

  DateTime get _now => widget.now ?? DateTime.now();

  int _byDate(AuditAssignment a, AuditAssignment b) {
    final x = a.scheduledAt, y = b.scheduledAt;
    if (x == null && y == null) return 0;
    if (x == null) return 1;
    if (y == null) return -1;
    return x.compareTo(y);
  }

  Future<void> _open(AuditAssignment a) async {
    await ref.read(commandBusProvider).execute(AuditRunDestination(a.id));
    if (mounted) await _load(); // 戻ったときに、状態を読み直す
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(qualityStringsProvider).auditRun;
    final scheme = Theme.of(context).colorScheme;
    return ScreenScaffold(
      title: s.myTitle,
      body: !_loaded
          ? const LoadingIndicator.centered()
          : _failed
          ? Center(child: Text(s.loadFailed, key: const Key('ma-load-failed'), style: TextStyle(color: scheme.error)))
          : _list(context, s),
    );
  }

  Widget _list(BuildContext context, dynamic s) {
    final inProgress = _rows.where((a) => a.isInProgress).toList()..sort(_byDate);
    final planned = _rows.where((a) => a.isPlanned).toList()..sort(_byDate);
    final done = _rows.where((a) => a.isDone).toList()..sort((a, b) => _byDate(b, a));
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
      children: [
        Row(
          children: [
            Expanded(child: Text(s.myHint, style: Theme.of(context).textTheme.bodySmall)),
            IconButton(key: const Key('ma-refresh'), tooltip: s.refresh, onPressed: _load, icon: const Icon(Icons.refresh)),
          ],
        ),
        if (_rows.isEmpty)
          Padding(padding: const EdgeInsets.symmetric(vertical: 24), child: Text(s.empty, key: const Key('ma-empty'))),
        _section(context, s.sectionInProgress, inProgress, s, 'ma-inprogress'),
        _section(context, s.sectionPlanned, planned, s, 'ma-planned'),
        _section(context, s.sectionDone, done, s, 'ma-done'),
      ],
    );
  }

  Widget _section(BuildContext context, String title, List<AuditAssignment> rows, dynamic s, String key) {
    if (rows.isEmpty) return const SizedBox.shrink();
    return Column(
      key: Key(key),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 6),
          child: Text(title, style: Theme.of(context).textTheme.titleSmall),
        ),
        for (final a in rows) _card(context, a, s),
      ],
    );
  }

  Widget _card(BuildContext context, AuditAssignment a, dynamic s) {
    final scheme = Theme.of(context).colorScheme;
    final now = _now;
    final overdue = a.isOverdue(now);
    final soon = a.isPlanned && !overdue && a.scheduledAt != null && a.scheduledAt!.difference(now) <= widget.dueSoon;
    final (baseLabel, color) = a.isDone
        ? (s.statusDone, scheme.outline)
        : a.isInProgress
        ? (s.statusInProgress, scheme.primary)
        : overdue
        ? (s.statusOverdue, scheme.error)
        : (s.statusPlanned, scheme.secondary);
    // 状態の文字は、ビュー(v_audit_assignment)の文字を使う。無い取得元(メモリ上)は画面の文字
    final label = a.statusLabel.isEmpty ? baseLabel : a.statusLabel;
    return Card(
      key: Key('ma-card-${a.id}'),
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        onTap: () => _open(a),
        title: Text(a.title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Wrap(
            spacing: 14,
            runSpacing: 2,
            children: [
              if (a.auditName.isNotEmpty && a.name.isNotEmpty) Text(a.auditName),
              if (a.teamName.isNotEmpty) Text(s.team(name: a.teamName)),
              if (a.scheduledAt != null) Text(s.scheduled(date: formatAuditDate(a.scheduledAt!))),
              if (a.performedDate != null) Text(s.performed(date: formatAuditDate(a.performedDate!, time: false))),
              if (a.itemCount > 0) Text(s.progress(done: a.answeredCount, total: a.itemCount), key: Key('ma-progress-${a.id}')),
            ],
          ),
        ),
        trailing: Chip(
          key: Key('ma-status-${a.id}'),
          label: Text(label),
          avatar: soon || overdue ? Icon(Icons.notifications_active, size: 16, color: color) : null,
          side: BorderSide(color: color),
        ),
      ),
    );
  }
}
