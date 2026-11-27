import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../i18n/strings_provider.dart';
import 'exchange_providers.dart';

/// 為替レートの台帳の見出しに出す、確定の状態と「確定する」ボタン。
///
/// 確定日(`yyyy-MM-dd`)以前のレートは、登録・変更・取り消しができない(DB が止める)。確定すると、確定した期間の
/// 出荷・受入の換算額が、あとからレートを足しても動かない。確定日は前へ戻せない(DB が止める)。
/// 確定できるのは、[exchangeFetchAllowedProvider] が真の人(管理者)だけで、保存の窓口([exchangeLockSaverProvider])があるときだけ。
class ExchangeLockControl extends ConsumerStatefulWidget {
  const ExchangeLockControl({super.key, required this.reload, this.today});

  /// 確定したあとに、台帳を読み込み直す。
  final VoidCallback reload;

  /// 今日(テストで差し替える)。確定できるのは今日まで(DB が未来の日付を止める)。
  final DateTime Function()? today;

  @override
  ConsumerState<ExchangeLockControl> createState() =>
      _ExchangeLockControlState();
}

class _ExchangeLockControlState extends ConsumerState<ExchangeLockControl> {
  bool _saving = false;

  static String _ymd(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  Future<void> _lock() async {
    final saver = ref.read(exchangeLockSaverProvider);
    if (saver == null) return;
    final settings = ref.read(exchangeSettingsProvider);
    final now = (widget.today ?? DateTime.now)();
    final today = DateTime(now.year, now.month, now.day);
    final current = settings.lockedDate;
    // 最初の候補は、先月末(確定日より後・今日まで)
    var initial = DateTime(today.year, today.month, 0);
    if (current != null && !initial.isAfter(current))
      initial = current.add(const Duration(days: 1));
    if (initial.isAfter(today)) initial = today;
    final first = current == null
        ? DateTime(2000)
        : current.add(const Duration(days: 1));
    if (first.isAfter(today)) return; // 今日まで確定済み
    final picked = await showDatePicker(
      context: context,
      initialDate: initial.isBefore(first) ? first : initial,
      firstDate: first,
      lastDate: today,
    );
    if (picked == null || !mounted) return;
    final s = ref.read(systemStringsProvider).exchange;
    final date = _ymd(picked);
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        key: const ValueKey('exchange-lock-confirm'),
        title: Text(s.lockTitle),
        content: Text(s.lockBody.replaceAll('{date}', date)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(s.lockCancel),
          ),
          FilledButton(
            key: const ValueKey('exchange-lock-ok'),
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(s.lockConfirm),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    setState(() => _saving = true);
    String message;
    try {
      await saver(date);
      message = s.lockDone;
      widget.reload();
    } catch (_) {
      message = s.lockFailed;
    }
    if (!mounted) return;
    setState(() => _saving = false);
    ScaffoldMessenger.maybeOf(
      context,
    )?.showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(systemStringsProvider).exchange;
    final locked = ref.watch(exchangeSettingsProvider).lockedUntil;
    final canLock =
        ref.watch(exchangeFetchAllowedProvider) &&
        ref.watch(exchangeLockSaverProvider) != null;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          locked == null
              ? s.notLocked
              : s.lockedUntil.replaceAll('{date}', locked),
          key: const ValueKey('exchange-lock-status'),
          style: Theme.of(context).textTheme.bodySmall,
        ),
        if (canLock) ...[
          const SizedBox(width: 8),
          OutlinedButton.icon(
            key: const ValueKey('exchange-lock'),
            icon: const Icon(Icons.lock_outline, size: 18),
            label: Text(s.lock),
            onPressed: _saving ? null : _lock,
          ),
        ],
      ],
    );
  }
}
