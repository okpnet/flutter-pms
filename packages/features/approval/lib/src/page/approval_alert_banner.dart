import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/approval_data.dart';
import '../i18n/labels.dart';
import '../i18n/strings_provider.dart';
import 'approval_paths.dart';

/// ダッシュボードの「承認待ちが N 件あります」の通知。遅延と同じ注意レベルのアラート(読み上げの対象)。
/// ログインユーザーが承認者になっている承認待ちがあるときだけ出し、メニューごとの承認一覧へのリンク(区分ごとの件数つき)を並べる。
/// 0 件のときは何も出さない。
class ApprovalAlertBanner extends ConsumerWidget {
  const ApprovalAlertBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counts = ref.watch(pendingCountsByKindProvider);
    final total = counts.values.fold<int>(0, (a, b) => a + b);
    if (total == 0) return const SizedBox.shrink();
    final s = ref.watch(approvalStringsProvider);
    final scheme = Theme.of(context).colorScheme;
    final links = <Widget>[];
    for (final menu in ApprovalMenus.menus) {
      final parts = [
        for (final k in ApprovalMenus.kindsOf(menu))
          if ((counts[k] ?? 0) > 0) s.list.tabCount(label: approvalKindLabel(s, k), count: counts[k]!),
      ];
      if (parts.isEmpty) continue;
      links.add(
        TextButton(
          key: Key('approval-alert-link-$menu'),
          onPressed: () => context.go(ApprovalPaths.of(menu)),
          child: Text(s.alert.link(menu: approvalMenuLabel(s, menu), detail: parts.join('・'))),
        ),
      );
    }
    return Semantics(
      container: true,
      liveRegion: true,
      child: Container(
        key: const Key('approval-alert'),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: scheme.tertiaryContainer, borderRadius: BorderRadius.circular(8)),
        child: Wrap(
          spacing: 12,
          runSpacing: 4,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(Icons.notifications_active_outlined, color: scheme.onTertiaryContainer),
            Text(
              s.alert.summary(n: total),
              key: const Key('approval-alert-summary'),
              style: TextStyle(color: scheme.onTertiaryContainer, fontWeight: FontWeight.w700),
            ),
            ...links,
          ],
        ),
      ),
    );
  }
}
