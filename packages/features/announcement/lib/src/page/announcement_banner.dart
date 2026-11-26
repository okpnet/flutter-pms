import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/announcement_data.dart';
import '../i18n/strings_provider.dart';
import 'announcement_paths.dart';

/// ダッシュボードの「未読の通知が N 件あります」。「すべて見る」で通知の一覧へ移る。
/// 表示するとき、ログインのたびに監査の予定の通知を作る(`announcementNotifyProvider`)。
/// 未読が 0 件のときは何も出さない(通知の領域の「メッセージはありません」は、アプリが決める)。
class AnnouncementBanner extends ConsumerStatefulWidget {
  const AnnouncementBanner({super.key});

  /// その場で見せる未読の題名の件数(残りは「ほか N 件」。「すべて見る」で一覧へ)。
  static const previewCount = 3;

  @override
  ConsumerState<AnnouncementBanner> createState() => _AnnouncementBannerState();
}

class _AnnouncementBannerState extends ConsumerState<AnnouncementBanner> {
  bool _failed = false;

  Future<void> _markRead(String id) async {
    try {
      await ref.read(announcementsProvider.notifier).markRead(id);
      if (mounted) setState(() => _failed = false);
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final n = ref.watch(unreadAnnouncementCountProvider);
    if (n == 0) return const SizedBox.shrink();
    final unread = [for (final a in ref.watch(announcementsProvider).value ?? const <Announcement>[]) if (!a.isRead) a];
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
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
            // 未読の題名を数件、その場で既読にできる(ダッシュボードから離れずに件数を減らせる)
            for (final a in unread.take(AnnouncementBanner.previewCount))
              Row(
                key: Key('announcement-banner-item-${a.id}'),
                children: [
                  Expanded(
                    child: Text(a.title, overflow: TextOverflow.ellipsis, style: TextStyle(color: scheme.onSecondaryContainer)),
                  ),
                  TextButton(
                    key: Key('announcement-banner-read-${a.id}'),
                    onPressed: () => _markRead(a.id),
                    child: Text(s.markRead),
                  ),
                ],
              ),
            if (unread.length > AnnouncementBanner.previewCount)
              Text(s.more(n: unread.length - AnnouncementBanner.previewCount), style: TextStyle(color: scheme.onSecondaryContainer)),
            if (_failed)
              Text(s.markReadFailed, key: const Key('announcement-banner-error'), style: TextStyle(color: scheme.error)),
          ],
        ),
      ),
    );
  }
}
