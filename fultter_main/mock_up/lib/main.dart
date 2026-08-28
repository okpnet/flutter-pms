// Project imports:
import 'package:mock_up/services/services.dart';

import 'contents/_splash/_splash.dart';
import 'imports.dart';

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
    await Future.delayed(const Duration(seconds: 3)); //仮の待ち時間
    await ref.read(mockCoreServiceProvider.future);
    setState(() => isInitialized = true);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('main_widget');

    return isInitialized
        ? MaterialApp.router(
            routerConfig: ref.read(rootRouterProvider),
            theme: AppTheme.customTheme,
          )
        : const StartSplashScreen();
  }
}
