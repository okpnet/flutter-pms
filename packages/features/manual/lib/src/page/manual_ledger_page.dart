import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/manual_approval.dart';
import '../data/manual_providers.dart';
import '../i18n/strings_provider.dart';
import '../model/manual_page_record.dart';
import 'manual_dialogs.dart';
import 'manual_format.dart';
import 'manual_paths.dart';

/// 文書の台帳。ルートの文書(管理番号・名称・版・状態・更新日)を並べる入口。
///
/// - 状態(公開 / 承認待ち)の文字は、DB のビューの値(`ManualApproval.statusLabel`)。ここでは判定しない。
/// - 読めない文書(承認待ちで、承認の該当者でも編集者でもない人)は出さない(`readable`)。
/// - 行を押すと、閲覧(公開済み)へ。編集の権限がある人が承認待ちを開くときは、編集の状態で開く。
/// - 「新規」(編集の権限がある人だけ)で、ルートの文書を作る(管理番号を入れる。文書レベルは自動)。
class ManualLedgerPage extends ConsumerWidget {
  const ManualLedgerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(manualStringsProvider);
    final state = ref.watch(manualProvider);
    final canEdit = ref.watch(manualCanEditProvider);

    if (!state.loaded) {
      return ScreenScaffold(title: s.ledger.title, body: Center(child: Text(s.loading)));
    }

    Future<void> addRoot() async {
      final page = await showManualCreateDialog(context, parentId: null, dialogTitle: s.create.titleRoot);
      if (page != null && context.mounted) context.go(ManualPaths.pageOf(page.id, edit: true));
    }

    final roots = state.wiki.roots;
    return ScreenScaffold(
      title: s.ledger.title,
      actions: [
        if (canEdit)
          FilledButton.icon(
            key: const Key('manual-ledger-add'),
            onPressed: addRoot,
            icon: const Icon(Icons.add),
            label: Text(s.ledger.addRoot),
          ),
      ],
      body: roots.isEmpty
          ? Center(child: Text(s.ledger.empty, key: const Key('manual-ledger-empty')))
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(s.ledger.heading, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 8),
                const _HeaderRow(),
                for (final r in roots) _Row(root: r, canEdit: canEdit),
              ],
            ),
    );
  }
}

const _widths = <double>[140, 0, 90, 120, 130];

class _HeaderRow extends ConsumerWidget {
  const _HeaderRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(manualStringsProvider);
    final scheme = Theme.of(context).colorScheme;
    final style = Theme.of(context).textTheme.labelLarge?.copyWith(color: scheme.onSurfaceVariant);
    Widget cell(String t, int i) => i == 1
        ? Expanded(child: Text(t, style: style))
        : SizedBox(width: _widths[i], child: Text(t, style: style));
    return Container(
      key: const Key('manual-ledger-header'),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: scheme.outlineVariant))),
      child: Row(
        children: [
          cell(s.ledger.controlNumber, 0),
          cell(s.ledger.name, 1),
          cell(s.ledger.version, 2),
          cell(s.ledger.status, 3),
          cell(s.ledger.updatedAt, 4),
        ],
      ),
    );
  }
}

/// 台帳の 1 行。承認の状態は文書ごとに取り(`manualApprovalProvider`)、読めない文書は何も出さない。
class _Row extends ConsumerWidget {
  const _Row({required this.root, required this.canEdit});

  final ManualPageRecord root;
  final bool canEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approval = ref.watch(manualApprovalProvider(root.id)).value ?? ManualApproval.none;
    if (!approval.readable && !canEdit) return const SizedBox.shrink();
    final scheme = Theme.of(context).colorScheme;
    // 編集の権限がある人が承認待ちの文書を開くときは、編集の状態で開く
    final edit = canEdit && approval.pending;
    final status = approval.statusLabel;
    return InkWell(
      key: Key('manual-ledger-row-${root.id}'),
      onTap: () => context.go(ManualPaths.pageOf(root.id, edit: edit)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: scheme.outlineVariant))),
        child: Row(
          children: [
            SizedBox(width: _widths[0], child: Text(approval.controlNumber)),
            Expanded(child: Text(root.title)),
            SizedBox(width: _widths[2], child: Text(approval.versionCode)),
            SizedBox(
              width: _widths[3],
              child: Text(
                status,
                key: Key('manual-ledger-status-${root.id}'),
                style: TextStyle(color: approval.pending ? scheme.tertiary : null),
              ),
            ),
            SizedBox(width: _widths[4], child: Text(manualDateText(root.updatedAt))),
          ],
        ),
      ),
    );
  }
}
