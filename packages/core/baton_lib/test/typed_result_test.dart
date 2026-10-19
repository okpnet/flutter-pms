import 'package:baton_lib/baton_lib.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

class _Dummy {
  const _Dummy({required this.id, required this.name});
  final int id;
  final String name;

  @override
  bool operator ==(Object other) =>
      other is _Dummy && other.id == id && other.name == name;

  @override
  int get hashCode => Object.hash(id, name);
}

class _EchoString extends ActionCommand<String> {
  const _EchoString(this.text);
  final String text;
}

class _GetNow extends ActionCommand<DateTime> {
  const _GetNow();
}

class _MakeDummy extends ActionCommand<_Dummy> {
  const _MakeDummy(this.id);
  final int id;
  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'id': id};
}

class _StringDestination extends PageDestination<String> {
  const _StringDestination();
}

class _DateDestination extends PageDestination<DateTime> {
  const _DateDestination();
}

class _DummyDestination extends PageDestination<_Dummy> {
  const _DummyDestination();
}

class _CancelledDummyDestination extends PageDestination<_Dummy?> {
  const _CancelledDummyDestination();
}

class _EchoStringHandler implements ActionCommandHandler<_EchoString, String> {
  @override
  Future<String> handle(_EchoString c) async => 'echo:${c.text}';
}

class _NowHandler implements ActionCommandHandler<_GetNow, DateTime> {
  _NowHandler(this.now);
  final DateTime now;
  @override
  Future<DateTime> handle(_GetNow c) async => now;
}

class _DummyHandler implements ActionCommandHandler<_MakeDummy, _Dummy> {
  @override
  Future<_Dummy> handle(_MakeDummy c) async {
    if (c.id < 0) throw ArgumentError('negative id');
    return _Dummy(id: c.id, name: 'dummy-${c.id}');
  }
}

class _TypedNavigator implements DestinationNavigator {
  _TypedNavigator(this.date, this.dummy);
  final DateTime date;
  final _Dummy dummy;

  @override
  Future<R> navigate<R>(PageDestination<R> d) async {
    final Object? result = switch (d) {
      _StringDestination() => 'picked',
      _DateDestination() => date,
      _DummyDestination() => dummy,
      _ => null,
    };
    return result as R;
  }
}

void main() {
  final fixed = DateTime.utc(2026, 10, 19, 9, 30);
  const dummy = _Dummy(id: 7, name: 'dummy');

  DefaultCommandBus bus() {
    final reg = CommandHandlerRegistry()
      ..register(_EchoStringHandler())
      ..register(_NowHandler(fixed))
      ..register(_DummyHandler());
    return DefaultCommandBus(
      handlers: reg,
      navigator: _TypedNavigator(fixed, dummy),
      logger: Logger(level: Level.off),
    );
  }

  group('命令の戻り値の型', () {
    test('String', () async {
      final r = await bus().execute(const _EchoString('abc'));
      expect(r, isA<String>());
      expect(r, 'echo:abc');
    });

    test('DateTime', () async {
      final r = await bus().execute(const _GetNow());
      expect(r, isA<DateTime>());
      expect(r, fixed);
    });

    test('ダミー型', () async {
      final r = await bus().execute(const _MakeDummy(3));
      expect(r, isA<_Dummy>());
      expect(r, const _Dummy(id: 3, name: 'dummy-3'));
    });
  });

  group('遷移の戻り値の型', () {
    test('String', () async {
      final r = await bus().execute(const _StringDestination());
      expect(r, isA<String>());
      expect(r, 'picked');
    });

    test('DateTime', () async {
      final r = await bus().execute(const _DateDestination());
      expect(r, isA<DateTime>());
      expect(r, fixed);
    });

    test('ダミー型', () async {
      final r = await bus().execute(const _DummyDestination());
      expect(r, dummy);
    });

    test('nullable(キャンセル時はnull)', () async {
      final r = await bus().execute(const _CancelledDummyDestination());
      expect(r, isNull);
    });
  });

  test('ハンドラの例外は handler 起因で cause と命令JSONを保持', () async {
    await expectLater(
      bus().execute(const _MakeDummy(-1)),
      throwsA(
        isA<CommandExecutionException>()
            .having((e) => e.origin, 'origin', FailureOrigin.handler)
            .having((e) => e.cause, 'cause', isA<ArgumentError>())
            .having(
              (e) => e.toJson()['command'],
              'command',
              {'type': '_MakeDummy', 'id': -1},
            ),
      ),
    );
  });
}
