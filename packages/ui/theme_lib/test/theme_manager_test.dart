import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:theme_lib/theme_lib.dart';

import 'fake_logger.dart';

const _custom =
    '{"id":"custom","name":"Custom","light":{"seedColor":"#AA0000"},'
    '"metrics":{"radius":10,"spacing":9}}';

void main() {
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

  ThemeState state() => container.read(themeManagerProvider);

  test('初期状態はシステム設定+組み込みの先頭テーマ', () {
    expect(state().mode, ThemeMode.system);
    expect(state().activeId, 'default');
    expect(state().themes.keys, containsAll(['default', 'ocean', 'forest']));
  });

  test('ロガー未設定なら分かりやすいエラー', () {
    final bare = ProviderContainer();
    addTearDown(bare.dispose);
    expect(
      () => bare.read(themeManagerProvider),
      throwsA(predicate((e) => '$e'.contains('is not overridden'))),
    );
  });

  test('モード切り替えが themeModeProvider に反映される', () {
    manager.setMode(ThemeMode.dark);
    expect(container.read(themeModeProvider), ThemeMode.dark);
  });

  test('select でオンザフライに切り替わり、テーマの見た目が変わる', () {
    final before = container.read(lightThemeProvider);
    manager.select('forest');
    final after = container.read(lightThemeProvider);
    expect(after.colorScheme.primary, isNot(before.colorScheme.primary));
    expect(BorderField.of(after).radius, 12);
    expect(SpaceField.of(after).spacing, 6);
  });

  test('ライトとダークで明るさが異なる', () {
    expect(container.read(lightThemeProvider).brightness, Brightness.light);
    expect(container.read(darkThemeProvider).brightness, Brightness.dark);
  });

  test('モード変更では ThemeData を再生成しない', () {
    final light = container.read(lightThemeProvider);
    manager.setMode(ThemeMode.dark);
    expect(identical(container.read(lightThemeProvider), light), isTrue);
  });

  test('JSON取り込みで登録され、既定では適用される', () {
    final imported = manager.importJson(_custom);
    expect(imported.id, 'custom');
    expect(state().activeId, 'custom');
    expect(BorderField.of(container.read(lightThemeProvider)).radius, 10);
  });

  test('activate:false なら登録のみ', () {
    manager.importJson(_custom, activate: false);
    expect(state().themes, contains('custom'));
    expect(state().activeId, 'default');
  });

  test('書き出したJSONを取り込み直すと同じ定義', () {
    manager.importJson(_custom);
    final json = manager.exportJson('custom');
    manager.remove('custom');
    expect(manager.importJson(json), state().themes['custom']);
  });

  test('同じ id の取り込みは置き換え(インスタンスの変更)', () {
    manager.importJson(_custom);
    manager.importJson(_custom.replaceAll('"radius":10', '"radius":20'));
    expect(state().themes['custom']!.metrics.radius, 20);
  });

  test('不正なJSONは例外+エラーログ、状態は変わらない', () {
    final before = state();
    expect(
      () => manager.importJson('{"id":"x"}'),
      throwsA(isA<ThemeFormatException>()),
    );
    expect(identical(state(), before), isTrue);
    expect(logger.errors, hasLength(1));
    expect(logger.errors.single, startsWith('[theme_lib]'));
  });

  test('未登録 id の select/export は ThemeNotFoundException', () {
    expect(
      () => manager.select('nope'),
      throwsA(isA<ThemeNotFoundException>()),
    );
    expect(
      () => manager.exportJson('nope'),
      throwsA(isA<ThemeNotFoundException>()),
    );
    expect(logger.errors, hasLength(2));
  });

  test('組み込みテーマは削除できない', () {
    expect(
      () => manager.remove('default'),
      throwsA(isA<ThemeProtectedException>()),
    );
    expect(state().themes, contains('default'));
  });

  test('適用中のテーマを削除すると先頭の組み込みテーマへ戻る', () {
    manager.importJson(_custom);
    manager.remove('custom');
    expect(state().activeId, 'default');
    expect(state().themes, isNot(contains('custom')));
  });

  test('状態と例外はJSON化できる', () {
    expect(state().toJson()['activeId'], 'default');
    expect(const ThemeNotFoundException('x').toJson()['id'], 'x');
  });
}
