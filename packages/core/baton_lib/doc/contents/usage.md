# baton_lib の使い方

```dart
import 'package:baton_lib/baton_lib.dart';
```

## 1. 機能ライブラリ側: 命令を定義する
```dart
class ApproveOrderCommand extends ActionCommand<void> {
  const ApproveOrderCommand({required this.orderId});
  final int orderId;
  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'orderId': orderId};
}

class CustomerPickerDestination extends PageDestination<int?> {
  const CustomerPickerDestination();
}
```

## 2. アプリ側: 組み立てる
```dart
class ApproveOrderHandler implements ActionCommandHandler<ApproveOrderCommand, void> {
  @override
  Future<void> handle(ApproveOrderCommand c) async { /* ... */ }
}

class GoRouterNavigator implements DestinationNavigator {
  GoRouterNavigator(this.router);
  final GoRouter router;
  @override
  Future<R> navigate<R>(PageDestination<R> d) async {
    final result = await router.push<R>(resolveLocation(d)); // 型→パスの対応はアプリが持つ
    return result as R;
  }
}

final bus = DefaultCommandBus(
  handlers: CommandHandlerRegistry()..register(ApproveOrderHandler()),
  navigator: GoRouterNavigator(router),
  middlewares: [/* 権限チェック・ログなど */],
  logger: ref.read(loggerProvider), // アプリ共通のILoggerProvider
);
// アプリ起動時: ProviderScope(overrides: [loggerProvider.overrideWithValue(共通ロガー)])  // logger_provider の共有Provider
// Riverpodで配る場合は Provider<CommandBus>((ref) => bus) をアプリ側で定義する。
```

## 3. 使う側
```dart
final id = await bus.execute(const CustomerPickerDestination()); // int?
await bus.execute(const ApproveOrderCommand(orderId: 10));
```

## エラーとログ
失敗は`CommandExecutionException`で届く。`origin`が
`library`(ハンドラ未登録)/`middleware`/`handler`(機能側の処理の失敗)/`navigator` を示し、`cause`に元の例外が入る。
同内容が`[baton_lib]`接頭辞付きでエラーログにも出る。
