import 'package:flutter/services.dart';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart' as pkg_logger;
import 'package:logger_provider/logger_provider.dart';
import 'package:rotation_log/rotation_log.dart';

void main() {
  late Directory tempDir;

  setUp(() async {
    tempDir = await Directory.systemTemp.createTemp('logger_provider_edge_');
  });

  tearDown(() async {
    if (tempDir.existsSync()) {
      await tempDir.delete(recursive: true);
    }
  });

  String readLogs() => tempDir
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.log'))
      .map((f) => f.readAsStringSync())
      .join();

  group('LoggerProviderConfig の異常系', () {
    test('JSONがオブジェクトでなければFormatException', () {
      expect(
        () => LoggerProviderConfig.fromJson('[1,2]'),
        throwsFormatException,
      );
    });

    test('不正なJSON文字列はFormatException', () {
      expect(
        () => LoggerProviderConfig.fromJson('{broken'),
        throwsFormatException,
      );
    });

    test('子キーがオブジェクトでなければFormatException', () {
      expect(
        () => LoggerProviderConfig.fromMap(const {'logger': 'x'}),
        throwsFormatException,
      );
    });
  });

  group('RotationConfig.buildTerm', () {
    test('line / custom / size の既定値', () {
      expect(
        const RotationConfig(term: RotationLogTermEnum.line).buildTerm().line,
        1000,
      );
      expect(
        const RotationConfig(term: RotationLogTermEnum.size).buildTerm().size,
        1024 * 1024,
      );
      expect(
        const RotationConfig(term: RotationLogTermEnum.custom)
            .buildTerm()
            .option,
        RotationLogTermEnum.custom,
      );
    });

    test('未知のtermはdailyへフォールバック', () {
      expect(
        RotationConfig.fromMap(const {'term': 'nope'}).term,
        RotationLogTermEnum.daily,
      );
    });
  });

  group('DefaultLoggerProvider', () {
    Future<DefaultLoggerProvider> create(String level) =>
        DefaultLoggerProvider.fromMap(
          {
            'logger': {'level': level, 'useConsoleOutput': false},
          },
          directoryProvider: () async => tempDir,
        );

    test('ILoggerProvider として利用でき、fatalが記録される', () async {
      final provider = await create('debug');
      addTearDown(provider.dispose);
      final ILoggerProvider log = provider;

      log.debug('d-msg');
      log.fatal('f-msg');

      final written = readLogs();
      expect(written, contains('d-msg'));
      expect(written, contains('f-msg'));
    });

    test('例外メッセージがログに含まれる', () async {
      final provider = await create('info');
      addTearDown(provider.dispose);

      provider.error('failed', ex: Exception('boom-unique'));

      expect(readLogs(), contains('boom-unique'));
    });

    test('レベル閾値未満(warn設定でinfo)は出力されない', () async {
      final provider = await create('warning');
      addTearDown(provider.dispose);

      provider.info('quiet-info');
      provider.warn('loud-warn');

      final written = readLogs();
      expect(written, isNot(contains('quiet-info')));
      expect(written, contains('loud-warn'));
      expect(provider.level, pkg_logger.Level.warning.value);
    });

    test('fromAsset はJSONオブジェクトでなければFormatException', () async {
      expect(
        DefaultLoggerProvider.fromAsset(
          'a.json',
          bundle: _StringBundle('[]'),
          directoryProvider: () async => tempDir,
        ),
        throwsFormatException,
      );
    });
  });
}

class _StringBundle extends CachingAssetBundle {
  _StringBundle(this._s);
  final String _s;

  @override
  Future<String> loadString(String key, {bool cache = true}) async => _s;

  @override
  Future<ByteData> load(String key) async => throw UnimplementedError();
}
