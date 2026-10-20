import 'package:baton_lib/baton_lib.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_logger.dart';

class _Approve extends ActionCommand<String> {
  const _Approve(this.id);
  final int id;
  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'id': id};
}

class _Unknown extends ActionCommand<void> {
  const _Unknown();
}

class _Picker extends PageDestination<int?> {
  const _Picker();
}

class _ApproveHandler implements ActionCommandHandler<_Approve, String> {
  @override
  Future<String> handle(_Approve c) async => 'ok:${c.id}';
}

class _FakeNavigator implements DestinationNavigator {
  @override
  Future<R> navigate<R>(PageDestination<R> d) async => 42 as R;
}

DefaultCommandBus _bus([List<CommandMiddleware> m = const []]) {
  final reg = CommandHandlerRegistry()..register(_ApproveHandler());
  return DefaultCommandBus(
    handlers: reg,
    navigator: _FakeNavigator(),
    middlewares: m,
    logger: FakeLoggerProvider(),
  );
}

void main() {
  _logTests();
  test('command goes to handler', () async {
    expect(await _bus().execute(const _Approve(10)), 'ok:10');
  });

  test('destination goes to navigator', () async {
    expect(await _bus().execute(const _Picker()), 42);
  });

  test('missing handler is a library failure', () async {
    expect(
      _bus().execute(const _Unknown()),
      throwsA(
        isA<CommandExecutionException>().having(
          (e) => e.origin,
          'origin',
          FailureOrigin.library,
        ),
      ),
    );
  });

  test('middleware wraps in order', () async {
    final order = <String>[];
    CommandMiddleware mw(String n) => (c, next) async {
      order.add('>$n');
      final r = await next();
      order.add('<$n');
      return r;
    };
    await _bus([mw('a'), mw('b')]).execute(const _Approve(1));
    expect(order, ['>a', '>b', '<b', '<a']);
  });

  test('toJson includes fields', () {
    expect(const _Approve(3).toJson(), {'type': '_Approve', 'id': 3});
  });
}

class _FailHandler implements ActionCommandHandler<_Unknown, void> {
  @override
  Future<void> handle(_Unknown c) async => throw StateError('boom');
}

void _logTests() {
  group('ログ', () {
    test('ハンドラ未登録は[baton_lib]付きでerrorに残る', () async {
      final log = FakeLoggerProvider();
      final bus = DefaultCommandBus(
        handlers: CommandHandlerRegistry(),
        navigator: _FakeNavigator(),
        logger: log,
      );
      await expectLater(
        bus.execute(const _Unknown()),
        throwsA(isA<CommandExecutionException>()),
      );
      expect(log.errors, hasLength(1));
      expect(log.errors.single, startsWith('[baton_lib]'));
      expect(log.errors.single, contains('library'));
    });

    test('ハンドラ例外はorigin=handlerで残り、成功時は残らない', () async {
      final log = FakeLoggerProvider();
      final bus = DefaultCommandBus(
        handlers: CommandHandlerRegistry()
          ..register(_FailHandler())
          ..register(_ApproveHandler()),
        navigator: _FakeNavigator(),
        logger: log,
      );
      expect(await bus.execute(const _Approve(1)), 'ok:1');
      expect(log.errors, isEmpty);
      await expectLater(
        bus.execute(const _Unknown()),
        throwsA(isA<CommandExecutionException>()),
      );
      expect(log.errors.single, contains('handler'));
    });
  });
}

