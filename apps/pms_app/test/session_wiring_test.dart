import 'package:auth_files/auth_files.dart' show AuthFilesPaths;
import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:maintenance/maintenance.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pms_app/contents/controls/route/dashboard_constant.dart';
import 'package:pms_app/imports.dart';
import 'package:pms_app/services/services.dart';

class _Checker implements IMaintenanceChecker {
  MaintenanceStatus status = const MaintenanceStatus(
    isUnderMaintenance: true,
    message: '定期メンテナンス',
  );
  int calls = 0;

  @override
  Future<MaintenanceStatus> check() async {
    calls++;
    return status;
  }
}

/// ログイン済みのセッション(接続先が設定されたアプリの、ログイン後の状態の代わり)。
class _SignedInSession implements IPageSessionMediator {
  @override
  Future<PageSessionStatus> check() async => PageSessionStatus.valid;

  @override
  Future<PageSessionStatus> refresh() async => PageSessionStatus.valid;

  @override
  Map<String, Object?> toJson() => {'type': '_SignedInSession'};
}

List<Override> _overrides(_Checker checker, {bool signedIn = false}) => [
  loggerProvider.overrideWithValue(const NoopLoggerProvider()),
  themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
  commandBusProvider.overrideWith(createFeatureCommandBus),
  // ログイン済みのときは、セッションの確認だけを差し替える(メンテナンスの確認は下で差し替える)
  if (signedIn)
    pageSessionMediatorProvider.overrideWith((ref) => _SignedInSession())
  else
    ...sessionOverrides(),
  ...dashboardOverrides(),
  maintenanceCheckerProvider.overrideWithValue(checker),
];

Widget _app(ProviderContainer container) => UncontrolledProviderScope(
  container: container,
  child: Consumer(
    builder: (context, ref, _) => MaterialApp.router(
      routerConfig: ref.read(rootRouterProvider),
      theme: ref.watch(lightThemeProvider),
    ),
  ),
);

void main() {
  test('セッション確認は、メンテナンスを先に確認し、メンテナンス中ならそれを返す', () async {
    final checker = _Checker();
    final container = ProviderContainer(overrides: _overrides(checker));
    addTearDown(container.dispose);
    final session = container.read(pageSessionMediatorProvider);
    expect(await session.refresh(), PageSessionStatus.maintenance);
    expect(
      container.read(maintenanceStatusProvider).isUnderMaintenance,
      isTrue,
    );

    // メンテナンスでなければ、認証を確認する(ログインしていないので、ログアウト)
    checker.status = MaintenanceStatus.available;
    expect(await session.refresh(), PageSessionStatus.signedOut);
  });

  testWidgets('メンテナンス中は、どのページもメンテナンスページになり、終わると戻る', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final checker = _Checker();
    final container = ProviderContainer(overrides: _overrides(checker));
    addTearDown(container.dispose);
    await tester.pumpWidget(_app(container));
    await tester.pumpAndSettle();

    // 最初のページ(ログイン)へ向かっても、メンテナンスページ。枠・メニューは無い
    expect(find.text('メンテナンス中です'), findsOneWidget);
    expect(find.text('定期メンテナンス'), findsOneWidget);
    expect(find.byType(Drawer), findsNothing);

    // ほかのページへ行こうとしても、メンテナンスページのまま
    container.read(rootRouterProvider).go('/settings');
    await tester.pumpAndSettle();
    expect(find.text('メンテナンス中です'), findsOneWidget);
    expect(find.text('使用言語'), findsNothing);

    // メンテナンスが終わって再確認すると、ダッシュボードへ戻る
    checker.status = MaintenanceStatus.available;
    await tester.tap(find.text('再確認'));
    await tester.pumpAndSettle();
    expect(find.text('メンテナンス中です'), findsNothing);
    // 接続先が未設定でログインしていないので、ログインへ向く(開発用の例外はない)
    expect(
      container.read(rootRouterProvider).state.uri.path,
      AuthFilesPaths.login,
    );
  });

  testWidgets('ダッシュボードは app_core のページで、保存した配置の件数を表示する', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final checker = _Checker()..status = MaintenanceStatus.available;
    final container = ProviderContainer(
      overrides: _overrides(checker, signedIn: true),
    );
    addTearDown(container.dispose);
    await container
        .read(dashboardContainersProvider.notifier)
        .replace(defaultDashboardLayout());
    await tester.pumpWidget(_app(container));
    await tester.pumpAndSettle();
    container.read(rootRouterProvider).go(DashboardConstant.path);
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('container:full')), findsOneWidget);
    expect(find.byKey(const ValueKey('container:half')), findsOneWidget);
    expect(find.byKey(const ValueKey('container:quarter')), findsOneWidget);
    expect(
      (tester.widget(find.byKey(const ValueKey('count:f1'))) as Text).data,
      '12',
    );
  });
}
