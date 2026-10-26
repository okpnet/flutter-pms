import 'package:data_strategist/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:page_mediator/page_mediator.dart';
import 'package:dashboard_container/dashboard_container.dart';
import 'package:settings_keeper/settings_keeper.dart';
import 'package:theme_lib/theme_lib.dart';

/// 区分(製品・部品)と利害関係者(顧客・外部)ごとの件数を持つ、見本の元。
class _Source implements ICountSource {
  _Source(this.key, this.label, this.counts);

  @override
  final String key;
  @override
  final String label;

  /// オプションのキー(null は「すべて」)→ 件数。
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
  Future<int> count(CountFilterOption? option) async => counts[option?.key]!;
}

final _sources = [
  _Source('shipping', '当日出荷', {
    null: 12,
    'product': 7,
    'part': 5,
    'customer': 9,
  }),
  _Source('delay', '進捗遅延', {null: 3, 'customer': 2, 'supplier': 1}),
  _Source('order', '受注', {null: 40}),
];

CountTileSpec _tile(String id, String source, [String? group]) =>
    CountTileSpec(id: id, sourceKey: source, groupKey: group);

CountContainerSpec _container(String id, CountContainerSize size) =>
    CountContainerSpec(
      id: id,
      size: size,
      tiles: [
        _tile('$id-a', 'shipping', 'kind'),
        _tile('$id-b', 'delay', 'stakeholder'),
        _tile('$id-c', 'order'),
      ],
    );

List<Override> _overrides(SettingsStorage storage) => [
  loggerProvider.overrideWithValue(const NoopLoggerProvider()),
  themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
  settingsStorageProvider.overrideWithValue(storage),
  countSourcesProvider.overrideWithValue(_sources),
];

Widget _app(SettingsStorage storage, {double width = 1200}) => ProviderScope(
  overrides: _overrides(storage),
  child: MaterialApp(
    home: Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: width,
          child: const SingleChildScrollView(child: DashboardContainerArea()),
        ),
      ),
    ),
  ),
);

/// 保存済みの配置を用意する(前の起動で保存した状態)。
Future<InMemorySettingsStorage> _saved(List<CountContainerSpec> list) async {
  final storage = InMemorySettingsStorage();
  final container = ProviderContainer(overrides: _overrides(storage));
  addTearDown(container.dispose);
  await container.read(dashboardContainersProvider.notifier).replace(list);
  return storage;
}

class _CountRepository implements IDataRepository<int> {
  Expression? lastPredicate;
  int? lastTake;

  @override
  Future<int> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async {
    lastTake = take;
    lastPredicate = predicate;
    return 42;
  }
}

void main() {
  group('配置の形', () {
    test('大きさごとに、表示できる件数の項目は 3・2・1', () {
      expect(CountContainerSize.full.visibleTiles, 3);
      expect(CountContainerSize.half.visibleTiles, 2);
      expect(CountContainerSize.quarter.visibleTiles, 1);
      expect(_container('x', CountContainerSize.half).visibleTiles.length, 2);
      expect(
        _container(
          'x',
          CountContainerSize.quarter,
        ).visibleTiles.map((t) => t.id),
        ['x-a'],
      );
    });

    test('JSON にして読み戻せる。読めない項目は捨てる', () {
      final settings = DashboardContainerSettings(
        containers: [
          _container('a', CountContainerSize.full),
          _container('b', CountContainerSize.quarter),
        ],
      );
      final restored = DashboardContainerSettings.fromJson(settings.toJson());
      expect(restored.containers.map((c) => c.id), ['a', 'b']);
      expect(restored.containers[1].size, CountContainerSize.quarter);
      expect(restored.containers[0].tiles[0].groupKey, 'kind');

      final broken = DashboardContainerSettings.fromJson({
        'containers': [
          {
            'id': 'ok',
            'size': '不明',
            'tiles': [
              {'id': 1},
              'x',
            ],
          },
          'bad',
          {'size': 'full'},
        ],
      });
      expect(broken.containers.map((c) => c.id), ['ok']);
      expect(broken.containers.single.size, CountContainerSize.half);
      expect(broken.containers.single.tiles, isEmpty);
    });
  });

  test('件数を返す取得元から、抽出条件つきで数える(page_mediator のデータ取得)', () async {
    final repository = _CountRepository();
    final container = ProviderContainer(
      overrides: _overrides(InMemorySettingsStorage()),
    );
    addTearDown(container.dispose);
    final source = RepositoryCountSource(
      key: 'x',
      label: 'X',
      state: QueryState<int>(
        expressionVisitorType: ExpressionVisitorType.list,
        repository: repository,
      ),
      data: container.read(pageDataMediatorProvider),
    );
    expect(await source.count(null), 42);
    expect(repository.lastTake, 0);
    expect(repository.lastPredicate, isNull);
  });

  group('ダッシュボード', () {
    testWidgets('表示するタイミングで設定から読み込み、大きさに応じた数の項目を出す', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1300, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final storage = await _saved([
        _container('full', CountContainerSize.full),
        _container('half', CountContainerSize.half),
        _container('quarter', CountContainerSize.quarter),
      ]);
      await tester.pumpWidget(_app(storage));
      await tester.pumpAndSettle();

      // Full は 3 つ、1/2 は 2 つ、1/4 は 1 つ
      expect(find.byKey(const ValueKey('count:full-a')), findsOneWidget);
      expect(find.byKey(const ValueKey('count:full-b')), findsOneWidget);
      expect(find.byKey(const ValueKey('count:full-c')), findsOneWidget);
      expect(find.byKey(const ValueKey('count:half-a')), findsOneWidget);
      expect(find.byKey(const ValueKey('count:half-b')), findsOneWidget);
      expect(find.byKey(const ValueKey('count:half-c')), findsNothing);
      expect(find.byKey(const ValueKey('count:quarter-a')), findsOneWidget);
      expect(find.byKey(const ValueKey('count:quarter-b')), findsNothing);

      // 件数の合計(絞り込みなし)
      expect(
        (tester.widget(find.byKey(const ValueKey('count:full-a'))) as Text)
            .data,
        '12',
      );
      expect(find.text('当日出荷'), findsNWidgets(3));
    });

    testWidgets('コンテナの幅は、大きさの割合(Full は全幅、1/2、1/4)', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1300, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final storage = await _saved([
        _container('full', CountContainerSize.full),
        _container('half', CountContainerSize.half),
        _container('quarter', CountContainerSize.quarter),
      ]);
      await tester.pumpWidget(_app(storage, width: 1200));
      await tester.pumpAndSettle();
      double widthOf(String id) =>
          tester.getSize(find.byKey(ValueKey('container:$id'))).width;
      expect(widthOf('full'), 1200);
      expect(widthOf('half'), closeTo((1200 - 12) / 2, 0.01));
      expect(widthOf('quarter'), closeTo((1200 - 36) / 4, 0.01));
    });

    testWidgets('狭い画面では、どのコンテナも全幅。項目の数は大きさのとおり', (tester) async {
      await tester.binding.setSurfaceSize(const Size(500, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final storage = await _saved([
        _container('half', CountContainerSize.half),
      ]);
      await tester.pumpWidget(_app(storage, width: 480));
      await tester.pumpAndSettle();
      expect(
        tester.getSize(find.byKey(const ValueKey('container:half'))).width,
        480,
      );
      expect(find.byKey(const ValueKey('count:half-b')), findsOneWidget);
      expect(find.byKey(const ValueKey('count:half-c')), findsNothing);
    });

    testWidgets('フィルタグループの項目を選ぶと件数が変わり、設定として保存される', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1300, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final storage = await _saved([
        _container('main', CountContainerSize.half),
      ]);
      await tester.pumpWidget(_app(storage));
      await tester.pumpAndSettle();
      Finder countOf(String id) => find.byKey(ValueKey('count:$id'));
      expect((tester.widget(countOf('main-a')) as Text).data, '12');

      await tester.tap(find.byKey(const ValueKey('filter:main-a')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('製品').last);
      await tester.pumpAndSettle();
      expect((tester.widget(countOf('main-a')) as Text).data, '7');

      // 次の起動(新しい状態)で、選んだ項目が復元される
      await tester.pumpWidget(const SizedBox());
      await tester.pumpWidget(_app(storage));
      await tester.pumpAndSettle();
      expect((tester.widget(countOf('main-a')) as Text).data, '7');
      expect(find.text('区分: 製品'), findsOneWidget);
    });

    testWidgets('元が登録されていない項目は、未設定と表示する', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1300, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final storage = await _saved([
        CountContainerSpec(
          id: 'c',
          size: CountContainerSize.quarter,
          tiles: [_tile('c-a', 'unknown')],
        ),
      ]);
      await tester.pumpWidget(_app(storage));
      await tester.pumpAndSettle();
      expect(find.text('未設定の項目です'), findsOneWidget);
    });
  });
}
