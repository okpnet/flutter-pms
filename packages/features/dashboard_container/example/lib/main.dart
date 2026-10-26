import 'dart:io';

import 'package:dashboard_container/dashboard_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  // 配置は、一時フォルダのファイルへ保存する(再起動しても残る)
  final directory = Directory(
    '${Directory.systemTemp.path}${Platform.pathSeparator}dashboard_container_example',
  );
  runApp(ExampleApp(logger: logger, storage: FileSettingsStorage(directory)));
}

/// 見本の件数の元。区分と利害関係者(顧客・外部)のフィルタグループを持つ。
class DemoCountSource implements ICountSource {
  DemoCountSource(this.key, this.label, this.counts);

  @override
  final String key;

  @override
  final String label;

  /// フィルタの項目のキー(null は条件なし)→ 件数。
  final Map<String?, int> counts;

  @override
  List<CountFilterGroup> get groups => const [
    CountFilterGroup(
      key: 'kind',
      label: '区分',
      options: [
        CountFilterOption(key: 'product', label: '製品'),
        CountFilterOption(key: 'part', label: '部品'),
      ],
    ),
    CountFilterGroup(
      key: 'stakeholder',
      label: '利害関係者',
      options: [
        CountFilterOption(key: 'customer', label: '顧客'),
        CountFilterOption(key: 'supplier', label: '外部'),
      ],
    ),
  ];

  @override
  Future<int> count(CountFilterOption? option) async =>
      counts[option?.key] ?? counts[null] ?? 0;
}

final demoSources = <ICountSource>[
  DemoCountSource('shipping', '当日出荷', {
    null: 12,
    'product': 7,
    'part': 5,
    'customer': 9,
    'supplier': 3,
  }),
  DemoCountSource('delay', '進捗遅延', {
    null: 4,
    'product': 3,
    'part': 1,
    'customer': 2,
    'supplier': 2,
  }),
  DemoCountSource('order', '受注', {null: 40, 'product': 25, 'part': 15}),
];

/// 初期の配置(Full・1/2・1/4)。
List<CountContainerSpec> defaultLayout() => [
  const CountContainerSpec(
    id: 'full',
    size: CountContainerSize.full,
    tiles: [
      CountTileSpec(id: 'f1', sourceKey: 'shipping', groupKey: 'kind'),
      CountTileSpec(id: 'f2', sourceKey: 'delay', groupKey: 'stakeholder'),
      CountTileSpec(id: 'f3', sourceKey: 'order', groupKey: 'kind'),
    ],
  ),
  const CountContainerSpec(
    id: 'half',
    size: CountContainerSize.half,
    tiles: [
      CountTileSpec(id: 'h1', sourceKey: 'shipping', groupKey: 'stakeholder'),
      CountTileSpec(id: 'h2', sourceKey: 'delay', groupKey: 'kind'),
    ],
  ),
  const CountContainerSpec(
    id: 'quarter',
    size: CountContainerSize.quarter,
    tiles: [CountTileSpec(id: 'q1', sourceKey: 'order', groupKey: 'kind')],
  ),
];

/// 件数のコンテナ を単体で確認するアプリ。ダッシュボードの領域だけを表示する。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger, required this.storage});

  final ILoggerProvider logger;
  final SettingsStorage storage;

  @override
  Widget build(BuildContext context) => ProviderScope(
    overrides: [
      loggerProvider.overrideWithValue(logger),
      themeLoggerProvider.overrideWithValue(logger),
      settingsStorageProvider.overrideWithValue(storage),
      countSourcesProvider.overrideWithValue(demoSources),
    ],
    child: Consumer(
      builder: (context, ref, _) => MaterialApp(
        title: '件数のコンテナ (example)',
        theme: ref.watch(lightThemeProvider),
        home: const _Home(),
      ),
    ),
  );
}

class _Home extends ConsumerStatefulWidget {
  const _Home();

  @override
  ConsumerState<_Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<_Home> {
  @override
  void initState() {
    super.initState();
    // 初回(保存が無い)だけ、初期の配置にする
    Future<void>.microtask(() async {
      final notifier = ref.read(dashboardContainersProvider.notifier);
      if (!await notifier.restore()) await notifier.replace(defaultLayout());
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('件数のコンテナ (example)'),
      actions: [
        TextButton(
          onPressed: () => ref
              .read(dashboardContainersProvider.notifier)
              .replace(defaultLayout()),
          child: const Text('初期の配置に戻す'),
        ),
      ],
    ),
    body: const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(child: DashboardContainerArea()),
    ),
  );
}
