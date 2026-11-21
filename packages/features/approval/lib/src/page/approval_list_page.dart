import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart' show userSummaryProvider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/approval_data.dart';
import '../i18n/labels.dart';
import '../i18n/strings_provider.dart';
import 'approval_dialog.dart';

/// メニューごとの承認一覧。区分ごとのタブ(承認待ちの件数つき)で、ログインユーザーが承認者になっている承認待ちを出す。
///
/// 行を押して選ぶ(複数可。選択はタブごと)。「承認する(N 件)」で、内容の確認とパスワードの再入力のあと、まとめて承認する。
/// 承認した行は一覧から消え、タブの件数・ダッシュボードの通知の件数も減る。「参照」は、対象の画面へ移る。
class ApprovalListPage extends ConsumerStatefulWidget {
  const ApprovalListPage({super.key, required this.menu});

  final String menu;

  @override
  ConsumerState<ApprovalListPage> createState() => _ApprovalListPageState();
}

class _ApprovalListPageState extends ConsumerState<ApprovalListPage> {
  /// 選択はタブ(区分)ごと。
  final Map<String, Set<String>> _selected = {};
  final _search = TextEditingController();
  int _sortColumn = 3; // 申請日
  var _ascending = true;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  List<PendingApproval> _rows(List<PendingApproval> all, String kind) {
    final q = _search.text.trim().toLowerCase();
    final rows = all.where((e) => e.kind == kind).where((e) {
      if (q.isEmpty) return true;
      return '${e.subject} ${e.detail} ${e.applicant} ${e.reference}'.toLowerCase().contains(q);
    }).toList();
    int cmp(PendingApproval a, PendingApproval b) => switch (_sortColumn) {
      0 => a.subject.compareTo(b.subject),
      1 => a.detail.compareTo(b.detail),
      2 => a.applicant.compareTo(b.applicant),
      3 => (a.appliedAt ?? DateTime(0)).compareTo(b.appliedAt ?? DateTime(0)),
      _ => a.stepPriority.compareTo(b.stepPriority),
    };
    rows.sort((a, b) => _ascending ? cmp(a, b) : cmp(b, a));
    return rows;
  }

  Future<void> _approve(List<PendingApproval> picked) async {
    final name = ref.read(userSummaryProvider)?.name ?? '';
    final done = await showApprovalDialog(context, items: picked, approverName: name);
    if (!mounted) return;
    if (done) {
      await ref.read(pendingApprovalsProvider.notifier).refresh();
    }
    // 承認(または失敗)した行の選択を外す
    setState(() {
      for (final set in _selected.values) {
        set.removeWhere((id) => picked.any((p) => p.preapprovalId == id));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(approvalStringsProvider);
    final kinds = ApprovalMenus.kindsOf(widget.menu);
    final async = ref.watch(pendingApprovalsProvider);
    final scheme = Theme.of(context).colorScheme;
    final title = '${approvalMenuLabel(s, widget.menu)} › ${s.title}';

    return ScreenScaffold(
      title: title,
      body: async.when(
        loading: () => Center(child: Text(s.loading)),
        error: (e, st) => Center(child: Text(s.loadFailed, key: const Key('approval-load-failed'), style: TextStyle(color: scheme.error))),
        data: (all) => DefaultTabController(
          length: kinds.length,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TabBar(
                key: const Key('approval-tabs'),
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                tabs: [
                  for (final k in kinds)
                    Tab(
                      key: Key('approval-tab-$k'),
                      text: s.list.tabCount(label: approvalKindLabel(s, k), count: all.where((e) => e.kind == k).length),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: TabBarView(
                  children: [for (final k in kinds) _tab(context, s, all, k)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tab(BuildContext context, ApprovalStrings s, List<PendingApproval> all, String kind) {
    final rows = _rows(all, kind);
    final selected = _selected.putIfAbsent(kind, () => <String>{});
    // 一覧にない(承認して消えた)行の選択は数えない
    selected.removeWhere((id) => !all.any((e) => e.preapprovalId == id));
    final locator = ref.watch(approvalTargetLocatorProvider);
    final picked = rows.where((r) => selected.contains(r.preapprovalId)).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
              width: 280,
              child: TextField(
                key: const Key('approval-search'),
                controller: _search,
                decoration: InputDecoration(hintText: s.list.searchHint, prefixIcon: const Icon(Icons.search), isDense: true, border: const OutlineInputBorder()),
                onChanged: (_) => setState(() {}),
              ),
            ),
            OutlinedButton(
              key: const Key('approval-select-all'),
              onPressed: rows.isEmpty ? null : () => setState(() => selected.addAll(rows.map((r) => r.preapprovalId))),
              child: Text(s.list.selectAll),
            ),
            OutlinedButton(
              key: const Key('approval-clear'),
              onPressed: selected.isEmpty ? null : () => setState(selected.clear),
              child: Text(s.list.clearSelection),
            ),
            FilledButton.icon(
              key: const Key('approval-approve'),
              onPressed: picked.isEmpty ? null : () => _approve(picked),
              icon: const Icon(Icons.check),
              label: Text('${s.list.approve}(${picked.length})'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Expanded(
          child: rows.isEmpty
              ? Center(child: Text(s.empty, key: const Key('approval-empty')))
              : SingleChildScrollView(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      key: Key('approval-table-$kind'),
                      sortColumnIndex: _sortColumn,
                      sortAscending: _ascending,
                      showCheckboxColumn: true,
                      onSelectAll: (v) => setState(() {
                        if (v == true) {
                          selected.addAll(rows.map((r) => r.preapprovalId));
                        } else {
                          selected.clear();
                        }
                      }),
                      columns: [
                        DataColumn(label: Text(s.list.cols.subject), onSort: _sort),
                        DataColumn(label: Text(s.list.cols.detail), onSort: _sort),
                        DataColumn(label: Text(s.list.cols.applicant), onSort: _sort),
                        DataColumn(label: Text(s.list.cols.appliedAt), onSort: _sort),
                        DataColumn(label: Text(s.list.cols.step), onSort: _sort),
                        const DataColumn(label: SizedBox()),
                      ],
                      rows: [
                        for (final r in rows)
                          DataRow(
                            key: ValueKey('approval-row-${r.preapprovalId}'),
                            selected: selected.contains(r.preapprovalId),
                            onSelectChanged: (v) => setState(() {
                              if (v == true) {
                                selected.add(r.preapprovalId);
                              } else {
                                selected.remove(r.preapprovalId);
                              }
                            }),
                            cells: [
                              DataCell(Text('${r.reference} ${r.subject}'.trim())),
                              DataCell(Text(r.detail)),
                              DataCell(Text(r.applicant)),
                              DataCell(Text(approvalDateText(r.appliedAt))),
                              DataCell(Text(r.stepName.isEmpty ? s.list.step(n: r.stepPriority) : '${s.list.step(n: r.stepPriority)} ${r.stepName}')),
                              DataCell(
                                locator(r.kind, r.targetId) == null
                                    ? const SizedBox()
                                    : TextButton(
                                        key: Key('approval-refer-${r.preapprovalId}'),
                                        onPressed: () => context.go(locator(r.kind, r.targetId)!),
                                        child: Text(s.list.refer),
                                      ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
        ),
        if (selected.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(s.list.selectedNote(n: selected.length), key: const Key('approval-selected-note')),
          ),
      ],
    );
  }

  void _sort(int column, bool ascending) => setState(() {
    _sortColumn = column;
    _ascending = ascending;
  });
}
