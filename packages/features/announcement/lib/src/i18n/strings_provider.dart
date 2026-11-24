import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'strings.g.dart';

export 'strings.g.dart' show AnnouncementStrings;

/// 通知の文字列。言語は feature_shared の [localeProvider] に従い、対応していない言語のときは基準言語(日本語)にする。
/// 基準言語以外は遅延読み込みのため、読み込みが終わるまでは基準言語の文字列を返し、終わった時点で差し替える。
final announcementStringsProvider = NotifierProvider<AnnouncementStringsNotifier, AnnouncementStrings>(
  AnnouncementStringsNotifier.new,
);

class AnnouncementStringsNotifier extends Notifier<AnnouncementStrings> {
  @override
  AnnouncementStrings build() {
    final languageCode = ref.watch(localeProvider).languageCode;
    final locale = AnnouncementLocale.values.where((l) => l.languageCode == languageCode).firstOrNull ?? AnnouncementLocale.ja;
    if (locale != AnnouncementLocale.ja) {
      locale.build().then((strings) {
        if (ref.mounted) state = strings;
      });
    }
    return AnnouncementLocale.ja.buildSync();
  }
}
