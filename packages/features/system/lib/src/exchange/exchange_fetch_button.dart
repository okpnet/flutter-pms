import 'package:entity_screens/entity_screens.dart' show entityCatalogProvider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../i18n/strings_provider.dart';
import 'exchange_providers.dart';
import 'exchange_rate_fetcher.dart';
import 'exchange_rate_importer.dart';

/// 為替レートの台帳の見出しに出す「自動取得」ボタン。押すと、自動取得の対象の通貨のレートを取得元から取り、為替レートへ追記する。
/// 結果(登録・省略・失敗)をダイアログに出す。登録のあとは台帳を読み込み直す。実行できるのは [exchangeFetchAllowedProvider] が真の人だけ。
class ExchangeFetchButton extends ConsumerStatefulWidget {
  const ExchangeFetchButton({super.key, required this.reload});

  /// 登録のあとに、台帳を読み込み直す。
  final VoidCallback reload;

  @override
  ConsumerState<ExchangeFetchButton> createState() =>
      _ExchangeFetchButtonState();
}

class _ExchangeFetchButtonState extends ConsumerState<ExchangeFetchButton> {
  bool _running = false;

  Future<void> _run() async {
    setState(() => _running = true);
    ImportResult? result;
    try {
      final importer = ExchangeRateImporter(
        catalog: ref.read(entityCatalogProvider),
        fetcher: ExchangeRateFetcher.fromSettings(
          ref.read(exchangeSettingsProvider),
          fetcher: ref.read(exchangeTextFetcherProvider),
        ),
      );
      result = await importer.run();
    } finally {
      if (mounted) setState(() => _running = false);
    }
    if (!mounted) return;
    if (result.registered.isNotEmpty) widget.reload();
    await showDialog<void>(
      context: context,
      builder: (_) => ExchangeFetchResultDialog(result: result!),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!ref.watch(exchangeFetchAllowedProvider))
      return const SizedBox.shrink();
    final s = ref.watch(systemStringsProvider).exchange;
    return OutlinedButton.icon(
      key: const ValueKey('exchange-fetch'),
      icon: Icon(
        _running ? Icons.hourglass_empty : Icons.cloud_download_outlined,
        size: 18,
      ),
      label: Text(_running ? s.running : s.fetch),
      onPressed: _running ? null : _run,
    );
  }
}

/// 自動取得の結果。登録・省略の件数と、取得できなかった通貨(理由つき。手入力で補える)、接続できなかった取得元。
class ExchangeFetchResultDialog extends ConsumerWidget {
  const ExchangeFetchResultDialog({super.key, required this.result});

  final ImportResult result;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(systemStringsProvider).exchange;
    String count(String template, int n) =>
        template.replaceAll('{count}', '$n');
    final nothing =
        result.registered.isEmpty &&
        result.skipped.isEmpty &&
        result.failures.isEmpty;
    return AlertDialog(
      key: const ValueKey('exchange-fetch-result'),
      title: Text(s.title),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (nothing)
              Text(s.nothingToDo, key: const ValueKey('exchange-nothing')),
            if (result.registered.isNotEmpty)
              Text(
                '${count(s.registered, result.registered.length)}(${[for (final r in result.registered) r.code].join('・')})',
                key: const ValueKey('exchange-registered'),
              ),
            if (result.skipped.isNotEmpty)
              Text(
                '${count(s.skipped, result.skipped.length)}(${result.skipped.join('・')})',
                key: const ValueKey('exchange-skipped'),
              ),
            if (result.failures.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(s.failed, style: Theme.of(context).textTheme.titleSmall),
              for (final f in result.failures)
                Text(
                  '${f.code}: ${f.reason == FetchFailureReason.sourcesUnavailable ? s.sourcesUnavailable : s.notProvided}',
                  key: ValueKey('exchange-failure-${f.code}'),
                ),
            ],
            if (result.sourceErrors.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                s.sourceErrors,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              for (final e in result.sourceErrors.entries)
                Text(e.key, key: ValueKey('exchange-source-error-${e.key}')),
            ],
            const SizedBox(height: 12),
            Text(s.note, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(s.close),
        ),
      ],
    );
  }
}
