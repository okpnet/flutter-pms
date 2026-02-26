import 'package:flutter_test/flutter_test.dart';
import 'package:pms_logger/logger_provider.dart';

void main() {
  group('LoggerProvider', () {
    test('シングルトンインスタンスが同じであることを確認', () {
      final instance1 = LoggerProvider();
      final instance2 = LoggerProvider();

      expect(identical(instance1, instance2), true);
    });

    test('複数回呼び出しても同じインスタンスが返される', () {
      final instances = List.generate(5, (_) => LoggerProvider());

      for (int i = 1; i < instances.length; i++) {
        expect(identical(instances[0], instances[i]), true);
      }
    });

    test('critical メソッドが呼び出せる', () {
      final logger = LoggerProvider();
      expect(() => logger.critical('test message'), returnsNormally);
    });

    test('debug メソッドが呼び出せる', () {
      final logger = LoggerProvider();
      expect(() => logger.debug('test message'), returnsNormally);
    });

    test('error メソッドが呼び出せる', () {
      final logger = LoggerProvider();
      expect(() => logger.error('test message'), returnsNormally);
    });

    test('info メソッドが呼び出せる', () {
      final logger = LoggerProvider();
      expect(() => logger.info('test message'), returnsNormally);
    });

    test('warnig メソッドが呼び出せる', () {
      final logger = LoggerProvider();
      expect(() => logger.warnig('test message'), returnsNormally);
    });

    test('例外とスタックトレース付きでログ出力できる', () {
      final logger = LoggerProvider();
      final ex = Exception('test exception');
      final st = StackTrace.current;

      expect(
        () => logger.error('error with exception', ex: ex, st: st),
        returnsNormally,
      );
    });
  });
}
