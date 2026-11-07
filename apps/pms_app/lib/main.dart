// Project imports:
import 'package:app_core/app_core.dart';
import 'package:backstage/backstage.dart';
import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pms_app/services/services.dart';

import 'contents/_splash/_splash.dart';
import 'imports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 準備(裏設定・ログ・接続先)の間も、最初のフレームから読み込み中を表示する
  runApp(const BootSplash());
  await yieldToFrame();
  // 裏設定の材料を読む(アセット・保管庫・起動時の値)。値の優先順位は 起動時の指定 > 裏設定 > 既定値。
  // 接続先・ログのレベルは起動時に使うので、ここで決める(保存した変更は再起動で反映される)
  var backstage = await loadBackstageForStartup();
  final values = backstage.values;
  final logger = await createLoggerWithLevel(
    'assets/logger_config.json',
    values.logLevel,
  );
  backstage = backstage.withStore(SecureBackstageStore(logger: logger));
  final pocketbase = await pocketbaseOverrides(
    logger,
    url: values.pocketbaseUrl ?? '',
  );
  runApp(
    ProviderScope(
      overrides: [
        loggerProvider.overrideWithValue(logger),
        commandBusProvider.overrideWith(createFeatureCommandBus),
        //ページ用の拡張(メンテナンス・認証のセッション確認)とダッシュボードの件数の元
        ...backstageOverrides(backstage),
        ...sessionOverrides(url: values.maintenanceUrl ?? ''),
        ...dashboardOverrides(),
        //画面の取得元(GRAPHQL_URL を指定したときだけ GraphQL 版)
        ...graphqlOverrides(),
        //PocketBase への接続(POCKETBASE_URL を指定したときだけ)
        ...pocketbase,
        //使用言語は実行環境(OS)に従う。設定画面で変更できる
        localeProvider.overrideWith(SystemLocaleNotifier.new),
        themeLoggerProvider.overrideWithValue(logger),
        //画面の見出しに入れるアプリの名前は、使用言語に合わせる
        appNameProvider.overrideWith(
          (ref) => ref.watch(appCoreStringsProvider).app.title,
        ),
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
    await yieldToFrame();
    //追加のテーマ(ocean・forest。theme_lib の外部のJSONファイル)を取り込む。保存した設定にテーマの選択が
    //あるので、設定の復元より前に行う。取り込めないテーマがあっても起動は止めず、ログに残す
    final themeFailures = await ref
        .read(themeManagerProvider.notifier)
        .importAssets(ThemeAssets.all);
    for (final failure in themeFailures) {
      ref.read(loggerProvider).error('[pms_app] テーマを取り込めませんでした: $failure');
    }
    await yieldToFrame();
    //保存した設定(言語・サイドバー・テーマ・ユーザー)を復元してから、変更の保存を始める
    await ref
        .read(settingsKeeperProvider)
        .restore(ref.read(userSettingsOriginatorProvider));
    ref.read(userSettingsAutoSaveProvider);
    //ログインしたユーザーごとに、ダッシュボードの配置を読み出す(ユーザーの変更で読み直す)
    ref.read(userDashboardProvider);
    await yieldToFrame();
    //ダッシュボードの配置を復元する。保存が無いときは初期の配置にする
    final dashboard = ref.read(dashboardContainersProvider.notifier);
    if (!await dashboard.restore()) {
      await dashboard.replace(defaultDashboardLayout());
    }
    await yieldToFrame();
    await ref.read(mockCoreServiceProvider.future);
    setState(() => isInitialized = true);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('main_widget');

    return isInitialized
        ? MaterialApp.router(
            routerConfig: ref.read(rootRouterProvider),
            //長時間の処理(資材所要計算など)の間は、メニューを含む画面全体の操作と戻る操作を無効にする
            builder: (context, child) =>
                BusyScope(child: child ?? const SizedBox.shrink()),
            theme: ref.watch(lightThemeProvider),
            darkTheme: ref.watch(darkThemeProvider),
            themeMode: ref.watch(themeModeProvider),
          )
        : const StartSplashScreen();
  }
}
