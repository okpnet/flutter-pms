import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:theme_lib/theme_lib.dart';

/// WCAG のコントラスト比。
double _contrast(Color a, Color b) {
  final la = a.computeLuminance(), lb = b.computeLuminance();
  return (math.max(la, lb) + 0.05) / (math.min(la, lb) + 0.05);
}

void main() {
  // 画面案(tools/open-design/design/theme.md)のトークン
  final light = ThemeBuilder.build(builtInThemes.first, Brightness.light);
  final dark = ThemeBuilder.build(builtInThemes.first, Brightness.dark);

  test('既定のテーマは画面案の配色(ライト)', () {
    final c = light.colorScheme;
    expect(builtInThemes.first.id, 'default');
    expect(light.scaffoldBackgroundColor, const Color(0xFFF2F5F6)); // bg
    expect(c.surface, const Color(0xFFFFFFFF));
    expect(c.onSurface, const Color(0xFF12202A)); // ink
    expect(c.primary, const Color(0xFF0B6B6F)); // accent
    expect(c.onPrimary, const Color(0xFFFFFFFF));
    expect(c.primaryContainer, const Color(0xFFDCEFEF)); // accent-soft
    expect(c.error, const Color(0xFFB3261E)); // danger
    expect(c.errorContainer, const Color(0xFFFBE3E1)); // danger-soft
    expect(c.surfaceContainerHighest, const Color(0xFFEAF0F1)); // surface-2
    expect(c.onSurfaceVariant, const Color(0xFF4F5E69)); // muted
    expect(c.outlineVariant, const Color(0xFFD3DCE1)); // line
  });

  test('既定のテーマは画面案の配色(ダーク。ライトの自動変換ではなく独立した値)', () {
    final c = dark.colorScheme;
    expect(dark.scaffoldBackgroundColor, const Color(0xFF0E171D));
    expect(c.surface, const Color(0xFF16232B));
    expect(c.onSurface, const Color(0xFFE8EFF2));
    expect(c.primary, const Color(0xFF5CC3C6));
    expect(c.onPrimary, const Color(0xFF062A2C));
    expect(c.primaryContainer, const Color(0xFF1B3F43));
    expect(c.error, const Color(0xFFFF8A80));
    expect(c.errorContainer, const Color(0xFF4A1F1D));
    expect(c.outlineVariant, const Color(0xFF2D4250));
  });

  test('角丸・タップ領域・線幅・フォントは画面案の値', () {
    // ボタン・入力は 8、カード・ダイアログ・シートは 12
    final button = light.filledButtonTheme.style!;
    expect(button.minimumSize!.resolve({}), const Size(44, 44));
    expect(
      (button.shape!.resolve({}) as RoundedRectangleBorder).borderRadius,
      BorderRadius.circular(8),
    );
    final card = light.cardTheme.shape! as RoundedRectangleBorder;
    expect(card.borderRadius, BorderRadius.circular(12));
    expect(card.side.color, const Color(0xFFD3DCE1)); // 面は影ではなく罫線で区切る
    expect(light.cardTheme.elevation, 0);
    expect(
      (light.dialogTheme.shape! as RoundedRectangleBorder).borderRadius,
      BorderRadius.circular(12),
    );
    expect(light.appBarTheme.backgroundColor, const Color(0xFFFFFFFF));
    expect(light.appBarTheme.elevation, 0);
    expect(
      light.iconButtonTheme.style!.minimumSize!.resolve({}),
      const Size(44, 44),
    );
    // 日本語を優先するフォントの代替
    expect(light.textTheme.bodyMedium!.fontFamilyFallback, [
      'Noto Sans JP',
      'Hiragino Sans',
      'Yu Gothic UI',
      'Meiryo',
    ]);
  });

  test('エラー表示の色: 丸いアイコンは danger-soft の地に danger、ダークでも読める', () {
    for (final t in [light, dark]) {
      final c = t.colorScheme;
      expect(_contrast(c.onErrorContainer, c.errorContainer), greaterThan(4.5));
      expect(_contrast(c.onError, c.error), greaterThan(4.5));
    }
  });

  test('文字のコントラストは 4.5:1 以上、枠は背景に対して 3:1 以上', () {
    for (final t in [light, dark]) {
      final c = t.colorScheme;
      final bg = t.scaffoldBackgroundColor;
      expect(_contrast(c.onSurface, c.surface), greaterThan(4.5));
      expect(_contrast(c.onSurface, bg), greaterThan(4.5));
      expect(_contrast(c.onSurfaceVariant, c.surface), greaterThan(4.5));
      expect(_contrast(c.onPrimary, c.primary), greaterThan(4.5));
      expect(
        _contrast(c.onPrimaryContainer, c.primaryContainer),
        greaterThan(4.5),
      );
      expect(_contrast(c.primary, c.surface), greaterThan(4.5));
      expect(_contrast(c.outline, c.surface), greaterThan(3));
    }
  });

  test('既定のテーマはJSONに書き出して読み直すと同じ(新しい色名・cardRadiusを含む)', () {
    final original = builtInThemes.first;
    final restored = ThemeDefinition.parse(original.toJsonString());
    expect(restored, original);
    expect(restored.metrics.cardRadius, 12);
    expect(restored.light.overrides['background'], const Color(0xFFF2F5F6));
  });

  test('cardRadius を省略したテーマは、カードの角丸が radius と同じ(従来どおり)', () {
    final ocean = builtInThemes.firstWhere((t) => t.id == 'ocean');
    expect(ocean.metrics.cardRadius, isNull);
    final card =
        ThemeBuilder.build(ocean, Brightness.light).cardTheme.shape!
            as RoundedRectangleBorder;
    expect(card.borderRadius, BorderRadius.circular(3));
    final forest = builtInThemes.firstWhere((t) => t.id == 'forest');
    final forestCard =
        ThemeBuilder.build(forest, Brightness.light).cardTheme.shape!
            as RoundedRectangleBorder;
    expect(forestCard.borderRadius, BorderRadius.circular(12));
  });

  test('取り込むJSONで、背景などの新しい色も指定できる。未知の色名は拒否', () {
    final d = ThemeDefinition.parse(
      '{"id":"x","name":"X","light":{"seedColor":"#112233",'
      '"colors":{"background":"#F2F5F6","errorContainer":"#FBE3E1"}}}',
    );
    final t = ThemeBuilder.build(d, Brightness.light);
    expect(t.scaffoldBackgroundColor, const Color(0xFFF2F5F6));
    expect(t.colorScheme.errorContainer, const Color(0xFFFBE3E1));
    expect(
      () => ThemeDefinition.parse(
        '{"id":"x","name":"X","light":{"seedColor":"#112233","colors":{"nope":"#000000"}}}',
      ),
      throwsA(isA<ThemeFormatException>()),
    );
  });
}
