import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/announcement_data.dart';
import '../i18n/strings_provider.dart';

/// 自分宛ての通知の一覧(新しい順)。題名・本文は DB の値のまま出す。未読は強調し、「既読にする」で既読にする。
/// 期限を過ぎた通知も一覧には残す(期限は表示するだけ)。「未読だけ」で絞り込める。
class AnnouncementListPage extends ConsumerStatefulWidget {
  const AnnouncementListPage({super.key});

  @override
  ConsumerState<AnnouncementListPage> createState() => _AnnouncementListPageState();
}

class _AnnouncementListPageState extends ConsumerState<AnnouncementListPage> {
  var _unreadOnly = false;
  String? _error;

  Future<void> _markRead(String id) async {
    final s = ref.read(announcementStringsProvider);
    try {
      await ref.read(announcementsProvider.notifier).markRead(id);
      if (mounted) setState(() => _error = null);
    } catch (_) {
      if (mounted) setState(() => _error = s.markReadFailed);
    }
  }

  static String _date(DateTime d) =>
      '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(announcementStringsProvider);
    final scheme = Theme.of(context).colorScheme;
    final async = ref.watch(announcementsProvider);
    return ScreenScaffold(
      title: s.title,
      body: async.when(
        loading: () => Center(child: Text(s.loading)),
        error: (e, st) => Center(
          child: Text(s.loadFailed, key: const Key('announcement-load-failed'), style: TextStyle(color: scheme.error)),
        ),
        data: (all) {
          final rows = _unreadOnly ? all.where((a) => !a.isRead).toList() : all;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: FilterChip(
                  key: const Key('announcement-unread-only'),
                  label: Text(s.unreadOnly),
                  selected: _unreadOnly,
                  onSelected: (v) => setState(() => _unreadOnly = v),
                ),
              ),
              if (_error != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(_error!, key: const Key('announcement-error'), style: TextStyle(color: scheme.error)),
                ),
              Expanded(
                child: rows.isEmpty
                    ? Center(child: Text(s.empty, key: const Key('announcement-empty')))
                    : ListView.separated(
                        itemCount: rows.length,
                        separatorBuilder: (_, _) => const Divider(height: 1),
                        itemBuilder: (context, i) {
                          final a = rows[i];
                          return ListTile(
                            key: Key('announcement-${a.id}'),
                            leading: a.isRead
                                ? const Icon(Icons.drafts_outlined)
                                : Icon(Icons.mark_email_unread, color: scheme.primary, semanticLabel: s.unread),
                            title: Text(
                              a.title,
                              style: TextStyle(fontWeight: a.isRead ? FontWeight.w400 : FontWeight.w700),
                            ),
                            subtitle: Text(
                              [
                                if (a.message.isNotEmpty) a.message,
                                if (a.targetSymbol != null && a.targetSymbol!.isNotEmpty) '${s.target}: ${a.targetSymbol}',
                                if (a.expiresAt != null) '${s.expires}: ${_date(a.expiresAt!)}',
                              ].join('\n'),
                            ),
                            isThreeLine: a.message.isNotEmpty,
                            trailing: a.isRead
                                ? null
                                : TextButton(
                                    key: Key('announcement-read-${a.id}'),
                                    onPressed: () => _markRead(a.id),
                                    child: Text(s.markRead),
                                  ),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}
