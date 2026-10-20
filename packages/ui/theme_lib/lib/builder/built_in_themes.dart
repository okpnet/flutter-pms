import 'package:flutter/painting.dart';

import '../model/theme_definition.dart';

/// 組み込みテーマ。先頭が既定で、いずれも削除できない。
final List<ThemeDefinition> builtInThemes = List.unmodifiable([
  ThemeDefinition(
    id: 'default',
    name: 'Default',
    light: ThemePalette(seed: const Color(0xFF3F51B5)),
  ),
  ThemeDefinition(
    id: 'ocean',
    name: 'Ocean',
    light: ThemePalette(seed: const Color(0xFF00838F)),
  ),
  ThemeDefinition(
    id: 'forest',
    name: 'Forest',
    light: ThemePalette(seed: const Color(0xFF2E7D32)),
    metrics: const ThemeMetrics(spacing: 6, radius: 12, fullRadius: 28),
  ),
]);
