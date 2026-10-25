import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';

class _RecordingLogger implements ILoggerProvider {
  final errors = <String>[];

  @override
  int get level => 0;
  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void error(String message, {Object? ex, StackTrace? trace}) =>
      errors.add(message);
  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) {}
}

class _ThemeSettings implements SettingsOriginator {
  _ThemeSettings({this.dark = false, this.fontSize = 14});

  bool dark;
  int fontSize;

  @override
  String get settingsKey => 'theme';

  @override
  SettingsMemento createMemento() => SettingsMemento(
    key: settingsKey,
    values: {'dark': dark, 'fontSize': fontSize},
  );

  @override
  void restoreFrom(SettingsMemento memento) {
    dark = memento.values['dark'] as bool;
    fontSize = memento.values['fontSize'] as int;
  }
}

class _FailingStorage implements SettingsStorage {
  @override
  Future<SettingsMemento?> read(String key) async =>
      throw const SettingsStorageException('読めない');
  @override
  Future<void> write(SettingsMemento memento) async =>
      throw const SettingsStorageException('書けない');
  @override
  Future<void> delete(String key) async =>
      throw const SettingsStorageException('消せない');
}

void main() {
  group('SettingsMemento', () {
    test('JSONへ変換して戻せる', () {
      final memento = SettingsMemento(
        key: 'theme',
        values: {'dark': true},
        version: 2,
        savedAt: DateTime.utc(2026, 10, 25, 1, 2, 3),
      );
      final restored = SettingsMemento.fromJson(
        jsonDecode(jsonEncode(memento.toJson())) as Map<String, Object?>,
      );
      expect(restored.key, 'theme');
      expect(restored.values, {'dark': true});
      expect(restored.version, 2);
      expect(restored.savedAt.toUtc(), DateTime.utc(2026, 10, 25, 1, 2, 3));
    });

    test('値は外から書き換えられない', () {
      final source = <String, Object?>{'a': 1};
      final memento = SettingsMemento(key: 'k', values: source);
      source['a'] = 2;
      expect(memento.values['a'], 1);
      expect(() => memento.values['a'] = 3, throwsUnsupportedError);
    });

    test('形式が不正ならFormatException', () {
      expect(() => SettingsMemento.fromJson({'key': 1}), throwsFormatException);
    });
  });

  group('SettingsKeeper(メモリ)', () {
    test('保存した状態を別のインスタンスへ復元できる', () async {
      final logger = _RecordingLogger();
      final keeper = SettingsKeeper(
        storage: InMemorySettingsStorage(),
        logger: logger,
      );
      expect(
        await keeper.save(_ThemeSettings(dark: true, fontSize: 18)),
        isTrue,
      );

      final other = _ThemeSettings();
      expect(await keeper.restore(other), isTrue);
      expect(other.dark, isTrue);
      expect(other.fontSize, 18);
      expect(logger.errors, isEmpty);
    });

    test('保存が無ければfalseで、持ち主は変わらずエラーログも出ない', () async {
      final logger = _RecordingLogger();
      final keeper = SettingsKeeper(
        storage: InMemorySettingsStorage(),
        logger: logger,
      );
      final settings = _ThemeSettings(fontSize: 10);
      expect(await keeper.restore(settings), isFalse);
      expect(settings.fontSize, 10);
      expect(logger.errors, isEmpty);
    });

    test('clearで消える', () async {
      final keeper = SettingsKeeper(
        storage: InMemorySettingsStorage(),
        logger: _RecordingLogger(),
      );
      await keeper.save(_ThemeSettings());
      expect(await keeper.clear('theme'), isTrue);
      expect(await keeper.restore(_ThemeSettings()), isFalse);
    });

    test('保存手段の失敗は例外にせず、接頭辞付きでログに残す', () async {
      final logger = _RecordingLogger();
      final keeper = SettingsKeeper(storage: _FailingStorage(), logger: logger);
      expect(await keeper.save(_ThemeSettings()), isFalse);
      expect(await keeper.restore(_ThemeSettings()), isFalse);
      expect(await keeper.clear('theme'), isFalse);
      expect(logger.errors, hasLength(3));
      expect(logger.errors, everyElement(startsWith('[settings_keeper]')));
    });

    test('使えない識別子は保存されない', () async {
      final logger = _RecordingLogger();
      final keeper = SettingsKeeper(
        storage: InMemorySettingsStorage(),
        logger: logger,
      );
      final bad = _BadKeySettings();
      expect(await keeper.save(bad), isFalse);
      expect(logger.errors, hasLength(1));
    });
  });

  group('FileSettingsStorage', () {
    late Directory dir;
    setUp(() => dir = Directory.systemTemp.createTempSync('settings_keeper_'));
    tearDown(() => dir.deleteSync(recursive: true));

    test('<key>.jsonへ保存して読み戻せる(フォルダは自動で作る)', () async {
      final nested = Directory('${dir.path}${Platform.pathSeparator}a');
      final storage = FileSettingsStorage(nested);
      await storage.write(
        SettingsMemento(key: 'theme', values: {'dark': true}),
      );
      expect(
        File('${nested.path}${Platform.pathSeparator}theme.json').existsSync(),
        isTrue,
      );
      expect((await storage.read('theme'))!.values, {'dark': true});
      expect(
        nested.listSync().whereType<File>().where(
          (f) => f.path.endsWith('.tmp'),
        ),
        isEmpty,
      );
    });

    test('無ければnull、delete後もnull', () async {
      final storage = FileSettingsStorage(dir);
      expect(await storage.read('none'), isNull);
      await storage.write(SettingsMemento(key: 'a', values: const {}));
      await storage.delete('a');
      await storage.delete('a'); // 無くてもエラーにしない
      expect(await storage.read('a'), isNull);
    });

    test('壊れたファイルはSettingsStorageException、Keeperはfalseとログ', () async {
      File(
        '${dir.path}${Platform.pathSeparator}theme.json',
      ).writeAsStringSync('{broken');
      final storage = FileSettingsStorage(dir);
      await expectLater(
        storage.read('theme'),
        throwsA(isA<SettingsStorageException>()),
      );
      final logger = _RecordingLogger();
      final keeper = SettingsKeeper(storage: storage, logger: logger);
      expect(await keeper.restore(_ThemeSettings()), isFalse);
      expect(logger.errors, hasLength(1));
    });

    test('フォルダの外へ出る識別子は拒否する', () async {
      final storage = FileSettingsStorage(dir);
      for (final key in ['../x', 'a/b', r'a\b', '', 'A', '.hidden']) {
        await expectLater(
          storage.read(key),
          throwsA(isA<SettingsStorageException>()),
          reason: key,
        );
      }
    });
  });

  group('Riverpod', () {
    test('既定はメモリ、アプリが保存手段を上書きできる', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      expect(
        container.read(settingsStorageProvider),
        isA<InMemorySettingsStorage>(),
      );

      final custom = InMemorySettingsStorage();
      final overridden = ProviderContainer(
        overrides: [settingsStorageProvider.overrideWithValue(custom)],
      );
      addTearDown(overridden.dispose);
      await overridden
          .read(settingsKeeperProvider)
          .save(_ThemeSettings(dark: true));
      expect((await custom.read('theme'))!.values['dark'], isTrue);
    });
  });
}

class _BadKeySettings implements SettingsOriginator {
  @override
  String get settingsKey => '../evil';
  @override
  SettingsMemento createMemento() =>
      SettingsMemento(key: settingsKey, values: const {});
  @override
  void restoreFrom(SettingsMemento memento) {}
}
