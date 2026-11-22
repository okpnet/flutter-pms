import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../audit_notice/audit_notice_source.dart';
import '../i18n/strings_provider.dart';
import 'audit_run_paths.dart';
import 'my_audits_page.dart' show formatAuditDate;

/// ダッシュボードの「監査の予定が N 件あります」の通知。チームの担当者への、予定日をもとにした通知
/// (DB の関数 `audit_notice`。予定日から導くため、予定日を変えると結果も変わる)。承認待ちと同じ注意レベルのアラート(読み上げの対象)。
/// 自分のチームの、予定日が近い・過ぎた、未終了の監査があるときだけ出す。0 件のとき・取得に失敗したときは何も出さない。
/// 各行を押すと、その監査の実施の画面へ。「自分の監査」へのリンクを添える。
class AuditNoticeBanner extends ConsumerWidget {
  const AuditNoticeBanner({super.key, this.maxRows = 3});

  /// 一覧に並べる最大の件数(残りは「自分の監査」で見る)。
  final int maxRows;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notices = ref.watch(auditNoticesProvider).value ?? const <AuditNotice>[];
    if (notices.isEmpty) return const SizedBox.shrink();
    final s = ref.watch(qualityStringsProvider).auditNotice;
    final scheme = Theme.of(context).colorScheme;
    String when(AuditNotice n) => n.overdue
        ? s.overdue
        : n.inProgress
        ? s.inProgress
        : n.daysUntil <= 0
        ? s.today
        : s.inDays(n: n.daysUntil);
    return Semantics(
      container: true,
      liveRegion: true,
      child: Container(
        key: const Key('audit-notice'),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: scheme.tertiaryContainer, borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 12,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(Icons.fact_check_outlined, color: scheme.onTertiaryContainer),
                Text(
                  s.summary(n: notices.length),
                  key: const Key('audit-notice-summary'),
                  style: TextStyle(color: scheme.onTertiaryContainer, fontWeight: FontWeight.w700),
                ),
                TextButton(key: const Key('audit-notice-all'), onPressed: () => context.go(AuditRunPaths.myAudits), child: Text(s.all)),
              ],
            ),
            for (final n in notices.take(maxRows))
              TextButton(
                key: Key('audit-notice-${n.detailId}'),
                onPressed: () => context.go(AuditRunPaths.runOf(n.detailId)),
                child: Text(
                  [
                    n.title,
                    if (n.scheduledAt != null) formatAuditDate(n.scheduledAt!),
                    when(n),
                  ].where((e) => e.isNotEmpty).join('  '),
                  style: TextStyle(color: n.overdue ? scheme.error : scheme.onTertiaryContainer),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
