import 'package:logger_provider/logger_provider.dart';

import '../../imports.dart';
import '../router/router.dart';
import 'feature_modules.dart';

///機能(ライブラリ)の命令の窓口の実体。`commandBusProvider`へ`overrideWith`で差し込む。
///
///本番アプリと同じ配線(GoRouter・CommandBus・ハンドラ登録)を、`FeatureHost`と同じ手順で行う。
///
///パターン: Factory Method(配線済みの CommandBus を作る)
CommandBus createFeatureCommandBus(Ref ref) {
  final registry = CommandHandlerRegistry();
  for (final module in [...featureModules, ...standaloneFeatureModules]) {
    module.registerHandlers(registry, ref);
  }
  return DefaultCommandBus(
    handlers: registry,
    logger: ref.watch(loggerProvider),
    navigator: GoRouterDestinationNavigator(
      router: ref.watch(rootRouterProvider),
      modules: [...featureModules, ...standaloneFeatureModules],
    ),
  );
}
