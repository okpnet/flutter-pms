import 'package:customer/customer.dart';
import 'package:customer_api/customer_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

/// テストでは何も出力しないロガー。
class _SilentLogger implements ILoggerProvider {
  @override
  int get level => 0;
  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void error(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) {}
}

/// テストでは遷移しない。
class _NoNavigator implements DestinationNavigator {
  @override
  Future<R> navigate<R>(PageDestination<R> destination) =>
      throw UnimplementedError();
}

void main() {
  const module = CustomerModule();

  test('見本の遷移先はすべてパスに変換できる(登録漏れ検出)', () {
    for (final d in customerDestinationSamples) {
      expect(module.locationOf(d), isNotNull, reason: '$d');
    }
  });

  test('パスの対応', () {
    expect(module.locationOf(const CustomerListDestination()), '/customers');
    expect(
      module.locationOf(const CustomerEditDestination(id: 7)),
      '/customers/7',
    );
    expect(
      module.locationOf(const CustomerPickerDestination()),
      '/customers/pick',
    );
  });

  group('ハンドラ', () {
    late ProviderContainer container;
    late CommandHandlerRegistry registry;
    late CommandBus bus;

    setUp(() {
      container = ProviderContainer();
      registry = CommandHandlerRegistry();
      // ハンドラは Ref を受け取るので、Provider の中で登録する
      bus = container.read(
        Provider<CommandBus>((ref) {
          module.registerHandlers(registry, ref);
          return DefaultCommandBus(
            handlers: registry,
            navigator: _NoNavigator(),
            logger: _SilentLogger(),
          );
        }),
      );
    });

    tearDown(() => container.dispose());

    test('見本の命令はすべてハンドラが登録されている(登録漏れ検出)', () {
      for (final c in customerCommandSamples) {
        expect(registry.resolve(c), isNotNull, reason: '$c');
      }
    });

    test('FindCustomerNameCommand で顧客名が取れる', () async {
      expect(
        await bus.execute(const FindCustomerNameCommand(id: 1)),
        '東京精機',
      );
      expect(await bus.execute(const FindCustomerNameCommand(id: 999)), isNull);
    });
  });
}
