import 'package:baton_lib/baton_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

import 'fake_logger.dart';

class _Unknown extends ActionCommand<void> {
  const _Unknown();
}

class _FakeNavigator implements DestinationNavigator {
  @override
  Future<R> navigate<R>(PageDestination<R> d) => throw UnimplementedError();
}

DefaultCommandBus _bus(ProviderContainer c) => DefaultCommandBus(
  handlers: CommandHandlerRegistry(),
  navigator: _FakeNavigator(),
  logger: c.read(loggerProvider),
);

void main() {
  test('RiverpodのloggerProviderで登録したロガーにエラーが残る', () async {
    final fake = FakeLoggerProvider();
    final c = ProviderContainer(
      overrides: [loggerProvider.overrideWithValue(fake)],
    );
    addTearDown(c.dispose);

    await expectLater(
      _bus(c).execute(const _Unknown()),
      throwsA(isA<CommandExecutionException>()),
    );
    expect(fake.errors.single, startsWith('[baton_lib]'));
  });

  test('未登録(Noop)でもロガーは渡せ、失敗は例外として届く', () async {
    final c = ProviderContainer();
    addTearDown(c.dispose);

    await expectLater(
      _bus(c).execute(const _Unknown()),
      throwsA(isA<CommandExecutionException>()),
    );
  });
}
