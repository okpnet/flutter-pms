import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart';
import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger, storage: await seededStorage()));
}

/// 見本の件数の元(固定の件数を返す)。
class DemoCountSource implements ICountSource {
  const DemoCountSource(this.key, this.label, this.total);

  @override
  final String key;

  @override
  final String label;

  final int total;

  @override
  List<CountFilterGroup> get groups => const [];

  @override
  Future<int> count(CountFilterOption? option) async => total;
}

const demoSources = <ICountSource>[
  DemoCountSource('shipping', '当日出荷', 12),
  DemoCountSource('delay', '進捗遅延', 4),
  DemoCountSource('order', '受注', 40),
];

/// ダッシュボードの初期の配置(Full・1/2・1/4)を保存した、メモリ上の保存先。
Future<SettingsStorage> seededStorage() async {
  final storage = InMemorySettingsStorage();
  await storage.write(
    SettingsMemento(
      key: DashboardContainerOriginator.key,
      values: DashboardContainerSettings(
        containers: const [
          CountContainerSpec(
            id: 'full',
            size: CountContainerSize.full,
            tiles: [
              CountTileSpec(id: 'f1', sourceKey: 'shipping'),
              CountTileSpec(id: 'f2', sourceKey: 'delay'),
              CountTileSpec(id: 'f3', sourceKey: 'order'),
            ],
          ),
          CountContainerSpec(
            id: 'half',
            size: CountContainerSize.half,
            tiles: [
              CountTileSpec(id: 'h1', sourceKey: 'shipping'),
              CountTileSpec(id: 'h2', sourceKey: 'delay'),
            ],
          ),
          CountContainerSpec(
            id: 'quarter',
            size: CountContainerSize.quarter,
            tiles: [CountTileSpec(id: 'q1', sourceKey: 'order')],
          ),
        ],
      ).toJson(),
    ),
  );
  return storage;
}

/// 画面の状態を切り替える見本の条件。
class ExampleConditions {
  const ExampleConditions({this.hasSources = true});

  /// ダッシュボードの件数の元がある。
  final bool hasSources;

  ExampleConditions copyWith({bool? hasSources}) =>
      ExampleConditions(hasSources: hasSources ?? this.hasSources);
}

class ExampleConditionsNotifier extends Notifier<ExampleConditions> {
  @override
  ExampleConditions build() => const ExampleConditions();

  void update(ExampleConditions Function(ExampleConditions) change) =>
      state = change(state);
}

final exampleConditionsProvider =
    NotifierProvider<ExampleConditionsNotifier, ExampleConditions>(
      ExampleConditionsNotifier.new,
    );

/// 状態を切り替える画面への遷移先(example だけのもの)。
final class ConditionsDestination extends PageDestination<void> {
  const ConditionsDestination();
}

/// 状態を切り替える画面を、example にだけ載せるモジュール。
class ConditionsModule implements FeatureModule {
  const ConditionsModule();

  static const path = '/example/conditions';

  @override
  List<RouteBase> get routes => [
    GoRoute(path: path, builder: (context, state) => const ConditionsPage()),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      destination is ConditionsDestination ? path : null;

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}

/// 各画面の状態を切り替える画面。切り替えたあと、戻って該当の画面を開く。
class ConditionsPage extends ConsumerWidget {
  const ConditionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c = ref.watch(exampleConditionsProvider);
    final notifier = ref.read(exampleConditionsProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('状態の切り替え')),
      body: ListView(
        children: [
          SwitchListTile(
            key: const ValueKey('hasSources'),
            title: const Text('ダッシュボードの件数の元がある'),
            subtitle: const Text('ダッシュボード: 件数の元が無いときの表示'),
            value: c.hasSources,
            onChanged: (v) => notifier.update((s) => s.copyWith(hasSources: v)),
          ),
        ],
      ),
    );
  }
}

/// アプリの基盤(ブート・ダッシュボード・エラー・設定・ログアウト)を単体で確認するアプリ。
/// 本番(pms_app)と同じ配線で、この機能だけを載せる。
///
/// 状態の違う画面(エラーの内容あり/なし、ダッシュボードの閲覧/編集、ログアウトの失敗など)は、
/// 一覧の項目と「状態の切り替え」から目視で確認する。
class ExampleApp extends StatelessWidget {
  const ExampleApp({
    super.key,
    required this.logger,
    required this.storage,
    this.extraOverrides = const [],
  });

  final ILoggerProvider logger;
  final SettingsStorage storage;

  /// 追加の上書き(テスト用)。
  final List<Override> extraOverrides;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: 'AppCore (example)',
    modules: const [AppCoreModule(), ConditionsModule()],
    entries: const [
      FeatureHostEntry('状態の切り替え', ConditionsDestination()),
      FeatureHostEntry('ブート(読み込み中)', BootDestination()),
      FeatureHostEntry('ダッシュボード', DashboardDestination()),
      FeatureHostEntry('エラー(内容なし)', ErrorDestination()),
      FeatureHostEntry(
        'エラー(内容あり)',
        ErrorDestination(message: 'サーバーに接続できません(example)'),
      ),
      FeatureHostEntry('設定', SettingsDestination()),
    ],
    logger: logger,
    overrides: [
      themeLoggerProvider.overrideWithValue(logger),
      settingsStorageProvider.overrideWithValue(storage),
      userSummaryProvider.overrideWith(
        () =>
            UserSummaryNotifier(const UserSummary(name: '山田 太郎', role: '管理者')),
      ),
      countSourcesProvider.overrideWith(
        (ref) => ref.watch(exampleConditionsProvider).hasSources
            ? demoSources
            : const <ICountSource>[],
      ),
      ...extraOverrides,
    ],
    themeOf: (ref) => ref.watch(lightThemeProvider),
    darkThemeOf: (ref) => ref.watch(darkThemeProvider),
    themeModeOf: (ref) => ref.watch(themeModeProvider),
  );
}
