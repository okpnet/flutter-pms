import 'package:data_strategist/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:page_mediator/page_mediator.dart';
import 'package:settings_keeper/settings_keeper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger, session: DemoSession()));
}

/// 見本のデータ取得元(果物の一覧)。
class FruitRepository implements IDataRepository<List<String>> {
  static const _all = ['りんご', 'みかん', 'ぶどう', 'もも', 'なし'];

  @override
  Future<List<String>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => _all.skip(skip).take(take).toList();
}

/// 見本の設定(回数)。保存・復元は設定の窓口が行う。
class CounterSettings implements SettingsOriginator {
  int count = 0;

  @override
  String get settingsKey => 'page_mediator_example';

  @override
  SettingsMemento createMemento() =>
      SettingsMemento(key: settingsKey, values: {'count': count});

  @override
  void restoreFrom(SettingsMemento memento) {
    final value = memento.values['count'];
    if (value is int) count = value;
  }
}

/// 見本のセッション確認。確認のたびに、有効・期限切れを交互に返す。
class DemoSession implements IPageSessionMediator {
  int _calls = 0;

  @override
  Future<PageSessionStatus> check() async => PageSessionStatus.valid;

  @override
  Future<PageSessionStatus> refresh() async {
    final n = _calls++;
    return n.isEven ? PageSessionStatus.valid : PageSessionStatus.expired;
  }

  @override
  Map<String, Object?> toJson() => {'type': 'DemoSession'};
}

/// ページ用の拡張 を単体で確認するアプリ。データ取得・設定の保存・セッション確認を1つのページで使う。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger, required this.session});

  final ILoggerProvider logger;
  final IPageSessionMediator session;

  @override
  Widget build(BuildContext context) => ProviderScope(
    overrides: [
      loggerProvider.overrideWithValue(logger),
      settingsStorageProvider.overrideWithValue(InMemorySettingsStorage()),
      pageSessionMediatorProvider.overrideWithValue(session),
    ],
    child: const MaterialApp(
      title: 'page_mediator (example)',
      home: DemoPage(),
    ),
  );
}

class DemoPage extends ConsumerStatefulWidget {
  const DemoPage({super.key});

  @override
  ConsumerState<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends ConsumerState<DemoPage>
    with PageMediatorMixin<DemoPage> {
  final _settings = CounterSettings();
  List<String> _fruits = const [];
  PageSessionStatus? _status;

  late final _state = QueryState<List<String>>(
    expressionVisitorType: ExpressionVisitorType.list,
    repository: FruitRepository(),
    limit: 3,
  );

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final fruits = await pageData.fetch(_state);
    final status = await enterPage();
    if (!mounted) return;
    setState(() {
      _fruits = fruits;
      _status = status;
    });
  }

  @override
  void onSessionUnusable(PageSessionStatus status) =>
      setState(() => _status = status);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('page_mediator (example)')),
    body: ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('データ取得: ${_fruits.join('、')}'),
        const SizedBox(height: 16),
        Text('セッション: ${_status?.name ?? '-'}'),
        FilledButton(onPressed: _load, child: const Text('ページを更新(セッション確認)')),
        const Divider(height: 32),
        Text('設定の回数: ${_settings.count}'),
        Wrap(
          spacing: 8,
          children: [
            OutlinedButton(
              onPressed: () => setState(() => _settings.count++),
              child: const Text('+1'),
            ),
            OutlinedButton(
              onPressed: () => pageSettings.save(_settings),
              child: const Text('保存'),
            ),
            OutlinedButton(
              onPressed: () async {
                await pageSettings.restore(_settings);
                if (mounted) setState(() {});
              },
              child: const Text('復元'),
            ),
          ],
        ),
      ],
    ),
  );
}
