import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'strings.g.dart';

export 'strings.g.dart' show MaintenanceStrings;

/// メンテナンス中のページの文字列。言語は feature_shared の [localeProvider] に従い、
/// 対応していない言語のときは基準言語(日本語)にする。
///
/// 基準言語以外は遅延読み込み(slang の生成物)のため、読み込みが終わるまでは
/// 基準言語の文字列を返し、終わった時点で差し替える。
final maintenanceStringsProvider =
    NotifierProvider<MaintenanceStringsNotifier, MaintenanceStrings>(
      MaintenanceStringsNotifier.new,
    );

class MaintenanceStringsNotifier extends Notifier<MaintenanceStrings> {
  @override
  MaintenanceStrings build() {
    final languageCode = ref.watch(localeProvider).languageCode;
    final locale =
        MaintenanceLocale.values
            .where((l) => l.languageCode == languageCode)
            .firstOrNull ??
        MaintenanceLocale.ja;
    if (locale != MaintenanceLocale.ja) {
      locale.build().then((strings) {
        if (ref.mounted) state = strings;
      });
    }
    return MaintenanceLocale.ja.buildSync();
  }
}
