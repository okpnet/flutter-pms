import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// アプリが使う言語。各機能は多言語(slang)の文字列を選ぶために `ref.watch` する。
///
/// 既定は日本語。原則はアプリの実行環境(ISO 639-1)に従い、設定画面で変更する。
/// 実体の切り替えはアプリが [LocaleNotifier.set] または override で行う
/// (「宣言はライブラリ、実体はアプリ」)。
final localeProvider = NotifierProvider<LocaleNotifier, Locale>(
  LocaleNotifier.new,
);

class LocaleNotifier extends Notifier<Locale> {
  @override
  Locale build() => const Locale('ja');

  void set(Locale locale) {
    ref.read(localeFollowsSystemProvider.notifier).set(false);
    state = locale;
  }

  /// OS(実行環境)の言語に合わせる。
  void useSystemLocale() {
    ref.read(localeFollowsSystemProvider.notifier).set(true);
    state = PlatformDispatcher.instance.locale;
  }
}

/// 使用言語を実行環境(OS)に従わせているか。設定画面の選択と、設定の保存に使う。
final localeFollowsSystemProvider =
    NotifierProvider<LocaleFollowsSystemNotifier, bool>(
      LocaleFollowsSystemNotifier.new,
    );

class LocaleFollowsSystemNotifier extends Notifier<bool> {
  @override
  bool build() => true;

  void set(bool value) => state = value;
}

/// 初期値を OS(実行環境)の言語にする [LocaleNotifier]。アプリが `localeProvider` へ override する。
/// 対応していない言語は、各機能の文字列が基準言語(日本語)にする。
class SystemLocaleNotifier extends LocaleNotifier {
  @override
  Locale build() => PlatformDispatcher.instance.locale;
}
