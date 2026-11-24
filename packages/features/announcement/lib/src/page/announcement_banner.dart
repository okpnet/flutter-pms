import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/announcement_data.dart';
import '../i18n/strings_provider.dart';
import 'announcement_paths.dart';

/// ダッシュボードの「未読の通知が N 件あります」。「すべて見る」で通知の一覧へ移る。
/// 表示するとき、ログインのたびに監査の予定の通知を作る(`announcementNotifyProvider`)。
/// 未読が 0 件のときは何も出さない(通知の領域の「メッセージはありません」は、アプリが決める)。
class AnnouncementBanner extends ConsumerWidget {
  const AnnouncementBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final n = ref.watch(unreadAnnouncementCountProvider);
    if (n == 0) return const SizedBox.shrink();
    final s = ref.watch(announcementStringsProvider);
    final scheme = Theme.of(context).colorScheme;
    return Semantics(
      container: true,
      liveRegion: true,
      child: Container(
        key: const Key('announcement-banner'),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: scheme.secondaryContainer, borderRadius: BorderRadius.circular(8)),
        child: Wrap(
          spacing: 12,
          runSpacing: 4,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(Icons.mail_outline, color: scheme.onSecondaryContainer),
            Text(
              s.banner.summary(n: n),
              key: const Key('announcement-banner-summary'),
              style: TextStyle(color: scheme.onSecondaryContainer, fontWeight: FontWeight.w700),
            ),
            TextButton(
              key: const Key('announcement-banner-link'),
              onPressed: () => context.go(AnnouncementPaths.list),
              child: Text(s.banner.viewAll),
            ),
          ],
        ),
      ),
    );
  }
}
