import 'package:flutter/material.dart';

import 'theme_definition.dart';

/// テーマ管理の状態。不変。
@immutable
class ThemeState {
  ThemeState({
    required this.mode,
    required this.activeId,
    required Map<String, ThemeDefinition> themes,
  }) : themes = Map.unmodifiable(themes),
       assert(themes.containsKey(activeId));

  /// システム/ライト/ダークの切り替え。
  final ThemeMode mode;

  /// 適用中のテーマ id。
  final String activeId;

  /// 登録済みテーマ（id → 定義）。
  final Map<String, ThemeDefinition> themes;

  ThemeDefinition get active => themes[activeId]!;

  ThemeState copyWith({
    ThemeMode? mode,
    String? activeId,
    Map<String, ThemeDefinition>? themes,
  }) => ThemeState(
    mode: mode ?? this.mode,
    activeId: activeId ?? this.activeId,
    themes: themes ?? this.themes,
  );

  /// エラー追跡用の概要（定義本体は含めない）。
  Map<String, Object?> toJson() => {
    'mode': mode.name,
    'activeId': activeId,
    'themeIds': themes.keys.toList(),
  };
}
