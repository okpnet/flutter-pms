// Project imports:
import 'package:mock_up/services/services.dart';

import 'contents/_splash/splash.dart';
import 'imports.dart';
import 'services/router/router.dart';

void main() {
  runApp(ProviderScope(overrides: [], child: const AppMain()));
}

class AppMain extends ConsumerStatefulWidget {
  const AppMain({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppMain();
}

class _AppMain extends ConsumerState {
  bool isInitialized = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _initialize();
  // }

  // Future<void> _initialize() async {
  //   // テスト用の遅延
  //   await Future.delayed(const Duration(seconds: 5));

  //   // アプリ全体の初期化処理（Provider）
  //   await ref.watch(mockCoreServiceProvider.future);

  //   // 初期化完了
  //   setState(() => isInitialized = true);
  // }

  @override
  Widget build(BuildContext context) {
    debugPrint('main_widget');
    final init = ref.watch(appInitializeProvider);
    return init.when(
      data: (_) => MaterialApp.router(
        routerConfig: ref.read(rootRouterProvider),
        theme: AppTheme.customTheme,
      ),
      error: (e, st) => Text('初期化失敗: $e'), //エラーページへ遷移
      loading: () => const StartSplashScreen(),
    );
  }
}

final appInitializeProvider = FutureProvider<void>((ref) async {
  await ref.read(mockCoreServiceProvider.future);
  await Future.delayed(const Duration(seconds: 5)); //削除
  debugPrint('end init provider');
});
