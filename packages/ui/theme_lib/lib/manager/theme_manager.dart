import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

import '../build/built_in_themes.dart';
import '../build/theme_builder.dart';
import '../model/theme_definition.dart';
import '../model/theme_exceptions.dart';
import '../model/theme_state.dart';

/// アプリ全体で共通のロガー。アプリ側が`overrideWithValue`で実体を差し込む。
///
/// 出力するのは theme_lib 自身の失敗のみ（メッセージ先頭は`[theme_lib]`）。
final themeLoggerProvider = Provider<ILoggerProvider>(
  (ref) => throw StateError(
    'themeLoggerProvider is not overridden. '
    'Override it with the application-wide ILoggerProvider.',
  ),
);

/// テーマの管理インスタンス。切り替え・取り込み・書き出しはすべてオンザフライ。
final themeManagerProvider = NotifierProvider<ThemeManager, ThemeState>(
  ThemeManager.new,
);

/// システム/ライト/ダークの選択。`MaterialApp.themeMode`へ渡す。
final themeModeProvider = Provider<ThemeMode>(
  (ref) => ref.watch(themeManagerProvider.select((s) => s.mode)),
);

/// 適用中のテーマ定義。内容が変わったときだけ通知される。
final activeThemeProvider = Provider<ThemeDefinition>(
  (ref) => ref.watch(themeManagerProvider.select((s) => s.active)),
);

/// `MaterialApp.theme`へ渡す。
final lightThemeProvider = Provider<ThemeData>(
  (ref) => ThemeBuilder.build(ref.watch(activeThemeProvider), Brightness.light),
);

/// `MaterialApp.darkTheme`へ渡す。
final darkThemeProvider = Provider<ThemeData>(
  (ref) => ThemeBuilder.build(ref.watch(activeThemeProvider), Brightness.dark),
);

/// テーマの登録・切り替え・取り込み・書き出しを行う。
///
/// 失敗時は[ThemeLibException]を投げ、同時に[themeLoggerProvider]へエラーを残す。
/// 呼び出し側がどの層の失敗か切り分けられるよう、ログは`[theme_lib]`で始まる。
class ThemeManager extends Notifier<ThemeState> {
  late ILoggerProvider _log;

  @override
  ThemeState build() {
    _log = ref.read(themeLoggerProvider);
    return ThemeState(
      mode: ThemeMode.system,
      activeId: builtInThemes.first.id,
      themes: {for (final t in builtInThemes) t.id: t},
    );
  }

  /// システム/ライト/ダークを切り替える。
  void setMode(ThemeMode mode) => state = state.copyWith(mode: mode);

  /// 登録済みのテーマへ切り替える。
  void select(String id) => _guard('select', () {
    _require(id);
    state = state.copyWith(activeId: id);
  });

  /// テーマを登録する。同じ id があれば置き換える（インスタンスの変更）。
  void register(ThemeDefinition definition, {bool activate = false}) {
    state = state.copyWith(
      themes: {...state.themes, definition.id: definition},
      activeId: activate ? definition.id : null,
    );
  }

  /// JSON文字列からテーマを取り込む。取り込んだ定義を返す。
  ///
  /// 構造が不正なら[ThemeFormatException]。何も変更されない。
  ThemeDefinition importJson(String source, {bool activate = true}) =>
      _guard('importJson', () {
        final definition = ThemeDefinition.parse(source);
        register(definition, activate: activate);
        return definition;
      });

  /// 登録済みのテーマをJSON文字列として書き出す。
  String exportJson(String id, {bool pretty = true}) =>
      _guard('exportJson', () => _require(id).toJsonString(pretty: pretty));

  /// 取り込んだテーマを削除する。適用中なら先頭の組み込みテーマへ戻る。
  void remove(String id) => _guard('remove', () {
    _require(id);
    if (builtInThemes.any((t) => t.id == id)) {
      throw ThemeProtectedException(id);
    }
    state = state.copyWith(
      themes: {...state.themes}..remove(id),
      activeId: state.activeId == id ? builtInThemes.first.id : null,
    );
  });

  ThemeDefinition _require(String id) {
    final definition = state.themes[id];
    if (definition == null) throw ThemeNotFoundException(id);
    return definition;
  }

  T _guard<T>(String operation, T Function() body) {
    try {
      return body();
    } on ThemeLibException catch (e, trace) {
      _log.error(
        '[theme_lib] ThemeManager.$operation failed: $e',
        ex: e,
        trace: trace,
      );
      rethrow;
    }
  }
}
