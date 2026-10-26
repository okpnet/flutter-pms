// Project imports:
import 'package:app_core/app_core.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pms_app/services/services.dart';

import 'contents/_splash/_splash.dart';
import 'imports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromAsset(
    'assets/logger_config.json',
  );
  runApp(
    ProviderScope(
      overrides: [
        loggerProvider.overrideWithValue(logger),
        commandBusProvider.overrideWith(createFeatureCommandBus),
        //使用言語は実行環境(OS)に従う。設定画面で変更できる
        localeProvider.overrideWith(SystemLocaleNotifier.new),
        themeLoggerProvider.overrideWithValue(logger),
        //設定の保存先は shared_preferences
        settingsStorageProvider.overrideWithValue(
          SharedPreferencesSettingsStorage(SharedPreferencesAsync()),
        ),
      ],
      child: const AppMain(),
    ),
  );
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
    //保存した設定(言語・サイドバー・ユーザー)を復元してから、変更の保存を始める
    await ref
        .read(settingsKeeperProvider)
        .restore(ref.read(userSettingsOriginatorProvider));
    ref.read(userSettingsAutoSaveProvider);
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
            theme: ref.watch(lightThemeProvider),
            darkTheme: ref.watch(darkThemeProvider),
            themeMode: ref.watch(themeModeProvider),
          )
        : const StartSplashScreen();
  }
}
