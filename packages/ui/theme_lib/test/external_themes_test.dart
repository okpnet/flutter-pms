import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:theme_lib/theme_lib.dart';

import 'fake_logger.dart';

double _contrast(Color a, Color b) {
  final la = a.computeLuminance(), lb = b.computeLuminance();
  return (math.max(la, lb) + 0.05) / (math.min(la, lb) + 0.05);
}

/// 外部のテーマのJSONファイル(`themes/`)を読む。
String _source(String id) => File('themes/$id.json').readAsStringSync();

/// ファイルから読む代役のアセット。
class _Bundle extends CachingAssetBundle {
  _Bundle(this.files);

  final Map<String, String> files;

  @override
  Future<ByteData> load(String key) async {
    final text = files[key];
    if (text == null) throw FlutterError('Unable to load asset: $key');
    return ByteData.sublistView(Uint8List.fromList(utf8.encode(text)));
  }
}

void main() {
  const ids = ['ocean', 'forest', 'rose'];

  group('外部のテーマ(ocean・forest・rose)', () {
    for (final id in ids) {
      test('$id: 取り込め、ライトとダークの両方が揃い、全項目が指定されている', () {
        final d = ThemeDefinition.parse(_source(id));
        expect(d.id, id);
        expect(d.dark, isNotNull, reason: 'ダークを自動変換に頼らない');
        for (final palette in [d.light, d.dark!]) {
          // 既定のテーマと同じ項目をすべて指定する(不足が無い)
          expect(
            palette.overrides.keys.toSet(),
            ThemePalette.overrideKeys,
            reason: '$id に不足している色',
          );
        }
        expect(d.metrics.cardRadius, isNotNull);
        expect(d.metrics.buttonHeight, 44);
        // 書き出して読み直すと同じ
        expect(ThemeDefinition.parse(d.toJsonString()), d);
      });

      test('$id: 文字は 4.5:1 以上、枠は背景に対して 3:1 以上(ライト・ダーク)', () {
        final d = ThemeDefinition.parse(_source(id));
        for (final b in [Brightness.light, Brightness.dark]) {
          final t = ThemeBuilder.build(d, b);
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
          expect(_contrast(c.onError, c.error), greaterThan(4.5));
          expect(
            _contrast(c.onErrorContainer, c.errorContainer),
            greaterThan(4.5),
          );
          expect(_contrast(c.outline, c.surface), greaterThan(3));
          expect(_contrast(AppColors.of(t).focus, c.surface), greaterThan(3));
        }
      });
    }
  });

  group('AppColors・文字・フォント', () {
    final t = ThemeBuilder.build(builtInThemes.first, Brightness.light);

    test('AppColors: ColorScheme の色から作り、フォーカスだけ個別に指定できる', () {
      final colors = AppColors.of(t);
      final s = t.colorScheme;
      expect(colors.surface2, s.surfaceContainerHighest);
      expect(colors.muted, s.onSurfaceVariant);
      expect(colors.line, s.outlineVariant);
      expect(colors.accentSoft, s.primaryContainer);
      expect(colors.seg1, s.primary);
      expect(colors.seg2, s.secondary);
      expect(colors.seg3, s.tertiary);
      expect(colors.focus, const Color(0xFF1A5FD0)); // --focus
      expect(t.focusColor, const Color(0xFF1A5FD0));
      final dark = ThemeBuilder.build(builtInThemes.first, Brightness.dark);
      expect(AppColors.of(dark).focus, const Color(0xFF8AB4FF));
    });

    test('AppColors: 指定が無いとフォーカスは主色。lerp と copyWith', () {
      final d = ThemeDefinition.parse(
        '{"id":"x","name":"X","light":{"seedColor":"#112233"}}',
      );
      final theme = ThemeBuilder.build(d, Brightness.light);
      expect(AppColors.of(theme).focus, theme.colorScheme.primary);
      final a = AppColors.of(t);
      final b = a.copyWith(muted: const Color(0xFF000000));
      expect(b.muted, const Color(0xFF000000));
      expect(a.lerp(b, 1).muted, const Color(0xFF000000));
      expect(a.lerp(null, 0.5), a);
    });

    test('ThemeExtension が無いテーマでは分かりやすいエラー', () {
      expect(() => AppColors.of(ThemeData()), throwsFlutterError);
    });

    test('文字の大きさは画面案の 28 / 20 / 16 / 14 / 12', () {
      final x = t.textTheme;
      expect(x.headlineMedium!.fontSize, 28);
      expect(x.titleLarge!.fontSize, 20);
      expect(x.titleMedium!.fontSize, 16);
      expect(x.bodyLarge!.fontSize, 16);
      expect(x.bodyMedium!.fontSize, 14);
      expect(x.bodyMedium!.height, 1.6);
      expect(x.labelSmall!.fontSize, 12);
      expect(x.titleLarge!.fontWeight, FontWeight.w700);
    });

    test('フォントは OS のフォントだけ(同梱しない。Noto Sans JP は使わない)', () {
      expect(ThemeBuilder.fontFamilyFallback, [
        'Hiragino Sans',
        'Yu Gothic UI',
        'Meiryo',
      ]);
      expect(
        t.textTheme.bodyMedium!.fontFamilyFallback,
        ThemeBuilder.fontFamilyFallback,
      );
    });
  });

  group('アセットからの取り込み', () {
    late FakeLogger logger;
    late ProviderContainer container;
    late ThemeManager manager;

    setUp(() {
      logger = FakeLogger();
      container = ProviderContainer(
        overrides: [themeLoggerProvider.overrideWithValue(logger)],
      );
      addTearDown(container.dispose);
      manager = container.read(themeManagerProvider.notifier);
    });

    test('ThemeAssets の全ファイルを登録する。適用中のテーマは変えない', () async {
      final bundle = _Bundle({
        ThemeAssets.ocean: _source('ocean'),
        ThemeAssets.forest: _source('forest'),
        ThemeAssets.rose: _source('rose'),
      });
      final failures = await manager.importAssets(
        ThemeAssets.all,
        bundle: bundle,
      );
      expect(failures, isEmpty);
      final state = container.read(themeManagerProvider);
      expect(state.themes.keys, containsAll(['default', 'ocean', 'forest', 'rose']));
      expect(state.activeId, 'default');
      // 取り込んだテーマへ切り替えられ、見た目が変わる
      manager.select('ocean');
      expect(
        container.read(lightThemeProvider).colorScheme.primary,
        const Color(0xFF00697A),
      );
    });

    test('読めないファイル・不正なJSONがあっても残りを取り込み、失敗を返す', () async {
      final bundle = _Bundle({
        ThemeAssets.ocean: '{ not json',
        ThemeAssets.forest: _source('forest'),
      });
      final failures = await manager.importAssets([
        ThemeAssets.ocean,
        'packages/theme_lib/themes/missing.json',
        ThemeAssets.forest,
      ], bundle: bundle);
      expect(failures.map((f) => f.path), [
        ThemeAssets.ocean,
        'packages/theme_lib/themes/missing.json',
      ]);
      expect(failures.first.error, isA<ThemeFormatException>());
      final state = container.read(themeManagerProvider);
      expect(state.themes.keys, containsAll(['default', 'forest']));
      expect(state.themes.keys, isNot(contains('ocean')));
      expect(logger.errors, isNotEmpty); // 不正なJSONは [theme_lib] のログに残る
    });

    test('同じテーマを何度取り込んでも1つ(置き換え)', () async {
      final bundle = _Bundle({ThemeAssets.ocean: _source('ocean')});
      await manager.importAssets([ThemeAssets.ocean], bundle: bundle);
      await manager.importAssets([ThemeAssets.ocean], bundle: bundle);
      expect(
        container
            .read(themeManagerProvider)
            .themes
            .keys
            .where((k) => k == 'ocean'),
        hasLength(1),
      );
    });

    test('組み込みテーマは既定の1つ。削除できない', () {
      expect(builtInThemes.map((t) => t.id), ['default']);
      expect(
        () => manager.remove('default'),
        throwsA(isA<ThemeProtectedException>()),
      );
    });
  });
}
