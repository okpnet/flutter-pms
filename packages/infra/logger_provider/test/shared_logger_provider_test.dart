import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

class _Spy extends NoopLoggerProvider {
  final messages = <String>[];

  @override
  void info(String message, {Object? ex, StackTrace? trace}) =>
      messages.add(message);
}

void main() {
  test('未登録なら何もしないロガーが返り、呼び出しても例外にならない', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final log = container.read(loggerProvider);
    expect(log, isA<NoopLoggerProvider>());
    log
      ..debug('a')
      ..info('b')
      ..warn('c')
      ..error('d', ex: Exception('x'))
      ..fatal('e');
  });

  test('overrideWithValue で登録したロガーが各所から同一インスタンスで取得できる', () {
    final spy = _Spy();
    final container = ProviderContainer(
      overrides: [loggerProvider.overrideWithValue(spy)],
    );
    addTearDown(container.dispose);

    container.read(loggerProvider).info('hello');

    expect(container.read(loggerProvider), same(spy));
    expect(spy.messages, ['hello']);
  });
}
