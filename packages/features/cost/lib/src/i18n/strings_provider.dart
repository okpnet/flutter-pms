import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'strings.g.dart';

export 'strings.g.dart' show CostStrings;

/// 原価の文字列。言語は feature_shared の [localeProvider] に従い、
/// 対応していない言語のときは基準言語(日本語)にする。
///
/// 基準言語以外は遅延読み込み(slang の生成物)のため、読み込みが終わるまでは
/// 基準言語の文字列を返し、終わった時点で差し替える。
final costStringsProvider =
    NotifierProvider<CostStringsNotifier, CostStrings>(CostStringsNotifier.new);

class CostStringsNotifier extends Notifier<CostStrings> {
  @override
  CostStrings build() {
    final languageCode = ref.watch(localeProvider).languageCode;
    final locale =
        CostLocale.values
            .where((l) => l.languageCode == languageCode)
            .firstOrNull ??
        CostLocale.ja;
    if (locale != CostLocale.ja) {
      locale.build().then((strings) {
        if (ref.mounted) state = strings;
      });
    }
    return CostLocale.ja.buildSync();
  }
}
