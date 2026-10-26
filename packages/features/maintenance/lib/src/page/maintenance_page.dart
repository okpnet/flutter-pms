import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../i18n/strings_provider.dart';
import '../status/maintenance_providers.dart';
import '../status/maintenance_status.dart';

/// メンテナンス中のページ。サイドバー・タイトルバー・戻る操作・リンクを一切持たない。
///
/// 「再確認」でサーバーへ確認する。終わっていれば、ルーターの `redirect`
/// ([maintenanceRedirect])が元のページへ戻す。
class MaintenancePage extends ConsumerStatefulWidget {
  const MaintenancePage({super.key});

  @override
  ConsumerState<MaintenancePage> createState() => _MaintenancePageState();
}

enum _Check { idle, checking, stillUnder, failed }

class _MaintenancePageState extends ConsumerState<MaintenancePage> {
  _Check _check = _Check.idle;

  Future<void> _retry() async {
    setState(() => _check = _Check.checking);
    try {
      final status = await ref
          .read(maintenanceStatusProvider.notifier)
          .refresh();
      if (!mounted) return;
      setState(
        () => _check = status.isUnderMaintenance
            ? _Check.stillUnder
            : _Check.idle,
      );
    } catch (_) {
      if (mounted) setState(() => _check = _Check.failed);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(maintenanceStringsProvider);
    final status = ref.watch(maintenanceStatusProvider);
    final theme = Theme.of(context);
    final note = switch (_check) {
      _Check.checking => t.retry.checking,
      _Check.stillUnder => t.retry.stillUnder,
      _Check.failed => t.retry.failed,
      _Check.idle => null,
    };
    // メンテナンス中は、戻る操作でほかのページへ移れないようにする
    return PopScope(
      canPop: !status.isUnderMaintenance,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [
                  Icon(
                    Icons.build_circle_outlined,
                    size: 72,
                    color: theme.colorScheme.primary,
                  ),
                  Text(
                    t.title,
                    style: theme.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    status.message ?? t.defaultMessage,
                    textAlign: TextAlign.center,
                  ),
                  _Period(status: status),
                  FilledButton(
                    onPressed: _check == _Check.checking ? null : _retry,
                    child: Text(t.retry.label),
                  ),
                  if (note != null)
                    Text(note, style: theme.textTheme.bodySmall),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Period extends ConsumerWidget {
  const _Period({required this.status});

  final MaintenanceStatus status;

  static String _format(DateTime t) =>
      '${t.year}-${t.month.toString().padLeft(2, '0')}-'
      '${t.day.toString().padLeft(2, '0')} '
      '${t.hour.toString().padLeft(2, '0')}:'
      '${t.minute.toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(maintenanceStringsProvider).period;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t.title, style: Theme.of(context).textTheme.labelLarge),
            Text(
              '${t.start}: ${status.startAt == null ? t.undecided : _format(status.startAt!)}',
            ),
            Text(
              '${t.end}: ${status.endAt == null ? t.undecided : _format(status.endAt!)}',
            ),
          ],
        ),
      ),
    );
  }
}
