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

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    // テスト用の遅延
    await Future.delayed(const Duration(seconds: 5));

    // アプリ全体の初期化処理（Provider）
    await ref.read(mockCoreServiceProvider.future);

    // 初期化完了
    setState(() => isInitialized = true);
  }

  @override
  Widget build(BuildContext context) {
    return isInitialized
        ? MaterialApp.router(routerConfig: ref.read(rootRouterProvider))
        : const StartSplashScreen();
  }
}
