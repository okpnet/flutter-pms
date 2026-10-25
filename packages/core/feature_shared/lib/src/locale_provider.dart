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

  void set(Locale locale) => state = locale;
}
