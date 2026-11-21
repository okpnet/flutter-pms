import 'package:approval_stamp/approval_stamp.dart';
import 'package:approval_stamp_view/approval_stamp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/manual_approval.dart';
import '../data/manual_pdf_service.dart';
import '../i18n/strings_provider.dart';
import '../model/manual_page_record.dart';
import '../model/manual_wiki.dart';

/// 承認の状態に応じて、本文の上に「承認待ち」の帯と承認スタンプを出し、読めないときは本文の代わりに案内を出す。
///
/// 判定は DB のビューの値(`ManualApproval.pending`・`readable`)。スタンプはルートの文書にだけ出す
/// (子ページには、承認がルートにあることを示す小さな文字と、承認待ちの印だけを出す)。
class ManualApprovalGate extends ConsumerWidget {
  const ManualApprovalGate({super.key, required this.wiki, required this.page, required this.child});

  final ManualWiki wiki;
  final ManualPageRecord page;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final root = ManualPdfService.rootOf(wiki, page.id) as ManualPageRecord?;
    if (root == null) return child;
    final approval = ref.watch(manualApprovalProvider(root.id)).value;
    if (approval == null) return child;
    final s = ref.watch(manualStringsProvider);
    final scheme = Theme.of(context).colorScheme;

    final header = <Widget>[];
    if (approval.pending) {
      header.add(
        Container(
          key: const Key('manual-approval-pending'),
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: scheme.tertiaryContainer,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              Icon(Icons.hourglass_top, size: 18, color: scheme.onTertiaryContainer),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  approval.readable ? s.approval.pendingNote : s.approval.unreadable,
                  style: TextStyle(color: scheme.onTertiaryContainer),
                ),
              ),
            ],
          ),
        ),
      );
    }
    if (approval.steps.isNotEmpty) {
      header.add(_StampRow(rootPage: page.id == root.id, approval: approval));
    }
    final body = approval.readable
        ? child
        : Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(s.approval.unreadable, key: const Key('manual-approval-unreadable')),
          );
    if (header.isEmpty) return body;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [...header, body]);
  }
}

class _StampRow extends ConsumerWidget {
  const _StampRow({required this.rootPage, required this.approval});

  final bool rootPage;
  final ManualApproval approval;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(manualStringsProvider);
    final settings = ref.watch(manualAppSettingsProvider);
    final style = StampStyle.resolve(settings.stamp.toJson(), approval.stampStyleOverride);
    final cards = const StampContentBuilder().build(style, approval.steps);
    final scheme = Theme.of(context).colorScheme;
    if (!rootPage) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          '${s.approval.stamps}: ${approval.statusLabel.isEmpty ? '' : approval.statusLabel} — ${s.approval.rootOnly}',
          key: const Key('manual-approval-root-note'),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Wrap(
        key: const Key('manual-approval-stamps'),
        spacing: 12,
        runSpacing: 8,
        children: [
          for (final c in cards)
            ApprovalStampView(card: c, style: style, themeVars: settings.pdf.theme.vars, pxPerMm: 2.6, rotationDeg: 0),
        ],
      ),
    );
  }
}
