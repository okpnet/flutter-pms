import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart' as pkg_logger;
import 'package:logger_provider/logger_provider.dart';
import 'package:rotation_log/rotation_log.dart';

/// テスト用のダミー [AssetBundle]。実際のプラットフォームチャネルを使わずに
/// 固定のJSON文字列を返す。
class _FakeAssetBundle extends CachingAssetBundle {
  _FakeAssetBundle(this._contents);

  final Map<String, String> _contents;

  @override
  Future<String> loadString(String key, {bool cache = true}) async {
    final content = _contents[key];
    if (content == null) {
      throw Exception('asset not found: $key');
    }
    return content;
  }

  @override
  Future<ByteData> load(String key) async {
    throw UnimplementedError();
  }
}

void main() {
  late Directory tempDir;

  setUp(() async {
    tempDir = await Directory.systemTemp.createTemp('logger_provider_test_');
  });

  tearDown(() async {
    if (tempDir.existsSync()) {
      await tempDir.delete(recursive: true);
    }
  });

  Future<Directory> directoryProvider() async => tempDir;

  group('LoggerConfig', () {
    test('デフォルト値を持つ', () {
      const config = LoggerConfig();
      expect(config.level, pkg_logger.Level.info);
      expect(config.printer, LoggerPrinterKind.pretty);
      expect(config.useConsoleOutput, isTrue);
    });

    test('Mapから値を復元できる', () {
      final config = LoggerConfig.fromMap(const {
        'level': 'warning',
        'printer': 'simple',
        'useConsoleOutput': false,
      });
      expect(config.level, pkg_logger.Level.warning);
      expect(config.printer, LoggerPrinterKind.simple);
      expect(config.useConsoleOutput, isFalse);
    });

    test('未知の値はデフォルトへフォールバックする', () {
      final config = LoggerConfig.fromMap(const {
        'level': 'no-such-level',
        'printer': 'no-such-printer',
      });
      expect(config.level, pkg_logger.Level.info);
      expect(config.printer, LoggerPrinterKind.pretty);
    });
  });

  group('RotationConfig', () {
    test('デフォルト値を持つ', () {
      const config = RotationConfig();
      expect(config.term, RotationLogTermEnum.daily);
      expect(config.directoryName, 'logs');
      expect(config.fileNamePrefix, 'rotation');
    });

    test('Mapから値を復元し、rotation_logの型へ変換できる', () {
      final config = RotationConfig.fromMap(const {
        'term': 'size',
        'size': 2048,
        'directoryName': 'custom_logs',
        'fileNamePrefix': 'app',
        'maxArchivedFiles': 3,
        'minimumLevel': 'debug',
      });
      expect(config.term, RotationLogTermEnum.size);
      expect(config.size, 2048);

      final term = config.buildTerm();
      expect(term.option, RotationLogTermEnum.size);
      expect(term.size, 2048);

      final options = config.buildOptions();
      expect(options.directoryName, 'custom_logs');
      expect(options.fileNamePrefix, 'app');
      expect(options.maxArchivedFiles, 3);
      expect(options.minimumLevel, pkg_logger.Level.debug);
    });
  });

  group('LoggerProviderConfig', () {
    test('logger/rotationそれぞれのキーをネストしたMapから復元できる', () {
      final config = LoggerProviderConfig.fromMap(const {
        'logger': {'level': 'error'},
        'rotation': {'term': 'line', 'line': 500},
      });
      expect(config.logger.level, pkg_logger.Level.error);
      expect(config.rotation.term, RotationLogTermEnum.line);
      expect(config.rotation.line, 500);
    });

    test('JSON文字列から復元できる', () {
      final config = LoggerProviderConfig.fromJson(jsonEncode({
        'logger': {'printer': 'simple'},
        'rotation': {'term': 'daily'},
      }));
      expect(config.logger.printer, LoggerPrinterKind.simple);
      expect(config.rotation.term, RotationLogTermEnum.daily);
    });

    test('キーが欠けている場合はデフォルト設定になる', () {
      final config = LoggerProviderConfig.fromMap(const {});
      expect(config.logger.level, pkg_logger.Level.info);
      expect(config.rotation.term, RotationLogTermEnum.daily);
    });
  });

  group('DefaultLoggerProvider', () {
    test('設定クラスからロガーを生成し、ログレベルに応じてファイルへ書き込む', () async {
      final provider = await DefaultLoggerProvider.fromConfig(
        const LoggerProviderConfig(
          logger: LoggerConfig(useConsoleOutput: false),
          rotation: RotationConfig(term: RotationLogTermEnum.daily),
        ),
        directoryProvider: directoryProvider,
      );
      addTearDown(provider.dispose);

      expect(provider.level, pkg_logger.Level.info.value);
      expect(provider.logger, isA<pkg_logger.Logger>());

      provider.info('info message');
      provider.warn('warn message');
      provider.error(
        'error message',
        ex: Exception('boom'),
        trace: StackTrace.current,
      );

      final logFiles = tempDir
          .listSync(recursive: true)
          .whereType<File>()
          .where((file) => file.path.endsWith('.log'))
          .toList();
      expect(logFiles, isNotEmpty);

      final written = logFiles.map((f) => f.readAsStringSync()).join();
      expect(written, contains('info message'));
      expect(written, contains('warn message'));
      expect(written, contains('error message'));
    });

    test('debugレベルはデフォルト設定(info)では出力されない', () async {
      final provider = await DefaultLoggerProvider.fromConfig(
        const LoggerProviderConfig(
          logger: LoggerConfig(useConsoleOutput: false),
        ),
        directoryProvider: directoryProvider,
      );
      addTearDown(provider.dispose);

      provider.debug('debug message');

      final logFiles = tempDir
          .listSync(recursive: true)
          .whereType<File>()
          .where((file) => file.path.endsWith('.log'))
          .toList();
      final written = logFiles.map((f) => f.readAsStringSync()).join();
      expect(written, isNot(contains('debug message')));
    });

    test('Mapから生成できる', () async {
      final provider = await DefaultLoggerProvider.fromMap(
        const {
          'logger': {'level': 'debug', 'useConsoleOutput': false},
        },
        directoryProvider: directoryProvider,
      );
      addTearDown(provider.dispose);

      expect(provider.level, pkg_logger.Level.debug.value);
    });

    test('アセットのパスから生成できる', () async {
      final bundle = _FakeAssetBundle({
        'assets/logger_provider.json': jsonEncode({
          'logger': {'level': 'warning', 'useConsoleOutput': false},
          'rotation': {'term': 'daily'},
        }),
      });

      final provider = await DefaultLoggerProvider.fromAsset(
        'assets/logger_provider.json',
        bundle: bundle,
        directoryProvider: directoryProvider,
      );
      addTearDown(provider.dispose);

      expect(provider.level, pkg_logger.Level.warning.value);
    });
  });
}
