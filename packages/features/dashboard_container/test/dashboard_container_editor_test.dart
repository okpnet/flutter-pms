import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';
import 'package:theme_lib/theme_lib.dart';

class _Source implements ICountSource {
  _Source(this.key, this.label, {this.groups = const []});

  @override
  final String key;
  @override
  final String label;
  @override
  final List<CountFilterGroup> groups;

  @override
  Future<int> count(CountFilterOption? option) async => 1;
}

final _sources = <ICountSource>[
  _Source(
    'shipping',
    '当日出荷',
    groups: const [
      CountFilterGroup(
        key: 'kind',
        label: '区分',
        options: [CountFilterOption(key: 'p', label: '製品')],
      ),
    ],
  ),
  _Source('delay', '進捗遅延'),
];

ProviderContainer _container(SettingsStorage storage) {
  final container = ProviderContainer(
    overrides: [
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
      settingsStorageProvider.overrideWithValue(storage),
      countSourcesProvider.overrideWithValue(_sources),
    ],
  );
  addTearDown(container.dispose);
  return container;
}

Widget _app(ProviderContainer container) => UncontrolledProviderScope(
  container: container,
  child: const MaterialApp(
    home: Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: DashboardContainerEditor(),
      ),
    ),
  ),
);

List<CountContainerSpec> _now(ProviderContainer c) =>
    c.read(dashboardContainersProvider);

void main() {
  testWidgets('コンテナを追加・並び替え・大きさの変更・削除でき、保存される', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1000, 1400));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final storage = InMemorySettingsStorage();
    final container = _container(storage);
    await tester.pumpWidget(_app(container));
    expect(find.text('コンテナがありません。追加してください。'), findsOneWidget);

    // 追加(1/2、先頭の元と、その最初のフィルタグループ)
    await tester.tap(find.byKey(const ValueKey('addContainer')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('addContainer')));
    await tester.pumpAndSettle();
    expect(_now(container), hasLength(2));
    final first = _now(container)[0];
    final second = _now(container)[1];
    expect(first.size, CountContainerSize.half);
    expect(first.tiles.single.sourceKey, 'shipping');
    expect(first.tiles.single.groupKey, 'kind');

    // 並び替え(後ろへ)
    await tester.tap(find.byKey(ValueKey('down:${first.id}')));
    await tester.pumpAndSettle();
    expect(_now(container).map((c) => c.id), [second.id, first.id]);
    // 範囲外は動かさない
    await tester.tap(find.byKey(ValueKey('up:${second.id}')));
    await tester.pumpAndSettle();
    expect(_now(container).map((c) => c.id), [second.id, first.id]);

    // 大きさ
    await container
        .read(dashboardContainersProvider.notifier)
        .setSize(first.id, CountContainerSize.quarter);
    await tester.pumpAndSettle();
    expect(_now(container).last.size, CountContainerSize.quarter);

    // 保存される(次の起動で復元)
    final next = _container(storage);
    await next.read(dashboardContainersProvider.notifier).restore();
    expect(_now(next).map((c) => c.id), [second.id, first.id]);
    expect(_now(next).last.size, CountContainerSize.quarter);

    // 削除
    await tester.tap(find.byKey(ValueKey('delete:${second.id}')));
    await tester.pumpAndSettle();
    expect(_now(container).map((c) => c.id), [first.id]);
  });

  testWidgets('項目の追加は上限(3つ)まで。元・フィルタグループ・項目の削除ができる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1000, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final container = _container(InMemorySettingsStorage());
    await tester.pumpWidget(_app(container));
    await tester.tap(find.byKey(const ValueKey('addContainer')));
    await tester.pumpAndSettle();
    final id = _now(container).single.id;

    await tester.tap(find.byKey(ValueKey('addTile:$id')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('addTile:$id')));
    await tester.pumpAndSettle();
    expect(_now(container).single.tiles, hasLength(3));
    // 上限なので、追加できない
    final add = tester.widget<TextButton>(find.byKey(ValueKey('addTile:$id')));
    expect(add.onPressed, isNull);
    // 1/2 は 2つまで表示するため、3つ目は「表示しない」の注記
    expect(find.text('表示しない(大きさの上限を超えています)'), findsOneWidget);

    // 元を変えると、フィルタグループは新しい元の先頭(無ければなし)になる
    final tile = _now(container).single.tiles[1];
    await container.read(dashboardContainersProvider.notifier).setTiles(id, [
      for (final t in _now(container).single.tiles)
        if (t.id == tile.id) CountTileSpec(id: t.id, sourceKey: 'delay') else t,
    ]);
    await tester.pumpAndSettle();
    expect(_now(container).single.tiles[1].sourceKey, 'delay');
    expect(_now(container).single.tiles[1].groupKey, isNull);

    // 項目の削除
    await tester.tap(find.byKey(ValueKey('deleteTile:${tile.id}')));
    await tester.pumpAndSettle();
    expect(_now(container).single.tiles, hasLength(2));
  });
}
