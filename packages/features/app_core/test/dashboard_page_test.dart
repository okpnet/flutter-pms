import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart';
import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';

class _Source implements ICountSource {
  @override
  String get key => 'shipping';
  @override
  String get label => '当日出荷';
  @override
  List<CountFilterGroup> get groups => const [];
  @override
  Future<int> count(CountFilterOption? option) async => 12;
}

void main() {
  test('ダッシュボードの遷移先は /dashboard', () {
    expect(
      const AppCoreModule().locationOf(const DashboardDestination()),
      '/dashboard',
    );
  });

  testWidgets('保存された配置を表示し、編集に切り替えられる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    // 前の起動で保存した配置
    final storage = InMemorySettingsStorage();
    await storage.write(
      SettingsMemento(
        key: DashboardContainerOriginator.key,
        values: DashboardContainerSettings(
          containers: const [
            CountContainerSpec(
              id: 'main',
              size: CountContainerSize.half,
              tiles: [CountTileSpec(id: 'a', sourceKey: 'shipping')],
            ),
          ],
        ).toJson(),
      ),
    );
    await tester.pumpWidget(
      FeatureHost(
        title: 'AppCore',
        modules: const [AppCoreModule()],
        entries: const [FeatureHostEntry('ダッシュボード', DashboardDestination())],
        logger: const NoopLoggerProvider(),
        overrides: [
          settingsStorageProvider.overrideWithValue(storage),
          countSourcesProvider.overrideWithValue([_Source()]),
        ],
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('ダッシュボード'));
    await tester.pumpAndSettle();

    // 設定から読み込んだ配置と件数
    expect(find.byKey(const ValueKey('container:main')), findsOneWidget);
    expect(
      (tester.widget(find.byKey(const ValueKey('count:a'))) as Text).data,
      '12',
    );
    // AppBar を持たない見出し
    expect(find.byType(AppBar), findsNothing);

    // 編集
    await tester.tap(find.byKey(const ValueKey('dashboardEdit')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('addContainer')), findsOneWidget);
    expect(find.text('完了'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('addContainer')));
    await tester.pumpAndSettle();

    // 完了で表示に戻ると、追加したコンテナも並ぶ
    await tester.tap(find.byKey(const ValueKey('dashboardEdit')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('addContainer')), findsNothing);
    expect(find.textContaining('当日出荷'), findsNWidgets(2));
  });
}
