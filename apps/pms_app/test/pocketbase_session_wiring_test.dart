import 'package:auth_files/auth_files.dart'
    show
        AuthFilesPaths,
        AuthMode,
        authModeProvider,
        signOutProvider,
        tokenStoreProvider;
import 'package:app_core/app_core_api.dart';
import 'package:auth_files/auth_files_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:maintenance/maintenance.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pbapi/pbapi.dart';
import 'package:pms_app/imports.dart';
import 'package:pms_app/services/services.dart';

/// `SessionService` の代役。ログインの有無と確認の結果を決められる。
class _FakeSession implements SessionService {
  _FakeSession({this.loggedIn = false});

  bool loggedIn;
  bool valid = true;
  var logouts = 0;

  @override
  Future<void> logout() async {
    logouts++;
    loggedIn = false;
  }

  PbException? failure;
  final intervals = <Duration>[];

  @override
  AuthSession? get current => loggedIn
      ? const AuthSession(
          token: 't',
          userId: 'u1',
          username: 'tanaka.t',
          appUserId: 'U0001',
        )
      : null;

  @override
  Future<bool> ensureSession({Duration minInterval = Duration.zero}) async {
    intervals.add(minInterval);
    if (failure != null) throw failure!;
    if (!valid) loggedIn = false;
    return valid;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

ProviderContainer _container(_FakeSession session, {bool pocketbase = true}) {
  final container = ProviderContainer(
    overrides: [
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
      commandBusProvider.overrideWith(createFeatureCommandBus),
      pocketbaseEnabledProvider.overrideWithValue(pocketbase),
      sessionServiceProvider.overrideWithValue(session),
      // 保管庫(OS のプラグイン)は使わない
      tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
      ...sessionOverrides(),
    ],
  );
  addTearDown(container.dispose);
  return container;
}

void main() {
  group('PocketBasePageSession', () {
    test('ログインしていなければ signedOut(通信しない)', () async {
      final session = _FakeSession();
      final status = _container(session).read(pageSessionMediatorProvider);
      expect(await status.refresh(), PageSessionStatus.signedOut);
      expect(session.intervals, isEmpty);
    });

    test('ログイン中で有効なら valid。短い間隔内の再確認を省く設定で確認する', () async {
      final session = _FakeSession(loggedIn: true);
      final mediator = _container(session).read(pageSessionMediatorProvider);
      expect(await mediator.refresh(), PageSessionStatus.valid);
      expect(await mediator.check(), PageSessionStatus.valid);
      expect(session.intervals, [const Duration(seconds: 30)]);
    });

    test('セッションが無効になったら expired。その後は signedOut', () async {
      final session = _FakeSession(loggedIn: true);
      final mediator = _container(session).read(pageSessionMediatorProvider);
      expect(await mediator.refresh(), PageSessionStatus.valid);
      session.valid = false;
      expect(await mediator.refresh(), PageSessionStatus.expired);
      expect(await mediator.refresh(), PageSessionStatus.signedOut);
    });

    test('通信できないときは unknown(ログアウトにしない)', () async {
      final session = _FakeSession(loggedIn: true)
        ..failure = const PbException(PbFailureKind.network);
      final mediator = _container(session).read(pageSessionMediatorProvider);
      expect(await mediator.refresh(), PageSessionStatus.unknown);
      expect(session.loggedIn, isTrue);
    });

    test('メンテナンス中は、メンテナンスを先に返す(認証は確認しない)', () async {
      final session = _FakeSession(loggedIn: true);
      final container = ProviderContainer(
        overrides: [
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          pocketbaseEnabledProvider.overrideWithValue(true),
          sessionServiceProvider.overrideWithValue(session),
          maintenanceCheckerProvider.overrideWithValue(_UnderMaintenance()),
          ...sessionOverrides(),
        ],
      );
      addTearDown(container.dispose);
      expect(
        await container.read(pageSessionMediatorProvider).refresh(),
        PageSessionStatus.maintenance,
      );
      expect(session.intervals, isEmpty);
    });

    test('PocketBase を使わないときは、開発用の確認(ユーザーがいれば有効、いなければログアウト)', () async {
      final container = _container(_FakeSession(), pocketbase: false);
      final mediator = container.read(pageSessionMediatorProvider);
      expect(mediator.toJson().toString(), contains('MaintenanceAware'));
      expect(await mediator.refresh(), PageSessionStatus.signedOut);
      container
          .read(userSummaryProvider.notifier)
          .set(const UserSummary(name: 'dev'));
      expect(await mediator.refresh(), PageSessionStatus.valid);
      expect(await mediator.check(), PageSessionStatus.valid);
    });
  });

  group('authRedirect', () {
    const open = [
      AuthFilesPaths.login,
      AuthFilesPaths.register,
      AuthFilesPaths.forgot,
    ];
    String? go(PageSessionStatus status, String location) => authRedirect(
      status: status,
      location: location,
      loginPath: AuthFilesPaths.login,
      openPaths: open,
    );

    test('ログインしていない・期限切れは、ログイン前の画面以外をログインへ向ける', () {
      for (final s in [
        PageSessionStatus.signedOut,
        PageSessionStatus.expired,
      ]) {
        expect(go(s, '/dashboard'), AuthFilesPaths.login);
        expect(go(s, '/auth/files'), AuthFilesPaths.login);
        expect(go(s, '/e/item?x=1'), AuthFilesPaths.login);
        expect(go(s, AuthFilesPaths.login), isNull);
        expect(go(s, AuthFilesPaths.register), isNull);
        expect(go(s, AuthFilesPaths.forgotCode), isNull, reason: '配下も開く');
        expect(go(s, AuthFilesPaths.forgotReset), isNull);
        expect(
          go(s, '/auth/forgotten'),
          AuthFilesPaths.login,
          reason: '前方一致の誤判定をしない',
        );
      }
    });

    test('有効・メンテナンス・不明は、そのまま表示する(通信できないだけでログインへ向けない)', () {
      for (final s in [
        PageSessionStatus.valid,
        PageSessionStatus.maintenance,
        PageSessionStatus.unknown,
      ]) {
        expect(go(s, '/dashboard'), isNull);
      }
    });
  });

  group('ログイン・ログアウト(auth_files に集約)', () {
    test('PocketBase を使うとき、サーバーの認証。ログアウトはセッションを破棄する', () async {
      final session = _FakeSession(loggedIn: true);
      final container = _container(session);
      container
          .read(userSummaryProvider.notifier)
          .set(const UserSummary(name: 'tanaka.t'));
      expect(container.read(authModeProvider), AuthMode.server);
      expect(
        container.read(signInDestinationProvider),
        isA<LoginDestination>(),
      );

      await container.read(signOutProvider)();
      expect(session.logouts, 1);
      expect(container.read(userSummaryProvider), isNull);
      // ログアウトの後は、確認の結果が signedOut になり、ログインへ向く
      expect(
        await container.read(pageSessionMediatorProvider).refresh(),
        PageSessionStatus.signedOut,
      );
    });

    test('PocketBase を使わないときは、開発用の仮のログイン。ログアウトはセッションを触らない', () async {
      final session = _FakeSession(loggedIn: true);
      final container = _container(session, pocketbase: false);
      container
          .read(userSummaryProvider.notifier)
          .set(const UserSummary(name: 'dev'));
      expect(container.read(authModeProvider), AuthMode.provisional);
      // ログイン画面の遷移先は、使わないときも auth_files のログイン(画面は1つ)
      expect(
        container.read(signInDestinationProvider),
        isA<LoginDestination>(),
      );
      await container.read(signOutProvider)();
      expect(session.logouts, 0);
      expect(container.read(userSummaryProvider), isNull);
    });

    testWidgets('ユーザーメニューのログアウト: 確認 → セッションを破棄 → ログイン画面へ戻れる', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1200, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final session = _FakeSession(loggedIn: true);
      final container = _container(session);
      container
          .read(userSummaryProvider.notifier)
          .set(const UserSummary(name: 'tanaka.t'));
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: Consumer(
            builder: (context, ref, _) => MaterialApp.router(
              routerConfig: ref.read(rootRouterProvider),
              theme: ThemeData(splashFactory: NoSplash.splashFactory),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final router = container.read(rootRouterProvider);
      router.go(AuthFilesPaths.logout);
      await tester.pumpAndSettle();
      expect(find.text('ログアウトしますか?'), findsOneWidget);
      expect(session.logouts, 0, reason: '確認の前には何もしない');

      await tester.tap(find.text('ログアウト'));
      await tester.pump();
      await tester.pump();
      expect(find.text('ログアウトしました'), findsOneWidget);
      expect(session.logouts, 1, reason: 'ログアウトは1回だけ実行する');

      await tester.tap(find.text('今すぐログイン画面へ'));
      await tester.pumpAndSettle();
      expect(find.text('生産管理にサインイン'), findsOneWidget);
      expect(find.text('ログアウトしました'), findsNothing);
    });

    test('ログアウトの完了は、ログインしていない状態でも開ける(ログインへ向けない)', () {
      final container = _container(_FakeSession());
      final redirect = authRedirect(
        status: PageSessionStatus.signedOut,
        location: AuthFilesPaths.logout,
        loginPath: AuthFilesPaths.login,
        openPaths: const [AuthFilesPaths.login, AuthFilesPaths.logout],
      );
      expect(redirect, isNull);
      expect(container.read(rootRouterProvider), isNotNull);
    });
  });

  group('組み込み', () {
    test('ログイン前の画面は枠の外(standalone)、共有ファイル・管理者は枠の中', () {
      final container = _container(_FakeSession());
      final navigator = GoRouterDestinationNavigator(
        router: container.read(rootRouterProvider),
        modules: [...featureModules, ...standaloneFeatureModules],
      );
      expect(navigator.resolve(const LoginDestination()), AuthFilesPaths.login);
      expect(
        navigator.resolve(const SharedFilesDestination()),
        AuthFilesPaths.files,
      );
      expect(
        navigator.resolve(const AdminSignupsDestination()),
        AuthFilesPaths.adminSignups,
      );
      final standalone = [
        for (final m in standaloneFeatureModules) ...m.routes,
      ];
      final framed = [for (final m in featureModules) ...m.routes];
      bool has(List<RouteBase> routes, String path) =>
          routes.any((r) => r is GoRoute && r.path == path);
      expect(has(standalone, AuthFilesPaths.login), isTrue);
      expect(has(framed, AuthFilesPaths.login), isFalse);
      expect(has(framed, AuthFilesPaths.files), isTrue);
      expect(has(standalone, AuthFilesPaths.files), isFalse);
    });

    test('最初の画面は、PocketBase を使うときも使わないときも auth_files のログイン(画面は1つ)', () {
      expect(
        _container(
          _FakeSession(),
        ).read(rootRouterProvider).routeInformationProvider.value.uri.path,
        AuthFilesPaths.login,
      );
      expect(
        _container(
          _FakeSession(),
          pocketbase: false,
        ).read(rootRouterProvider).routeInformationProvider.value.uri.path,
        AuthFilesPaths.login,
      );
    });

    testWidgets('PocketBase を使い、ログインしていないとき、どのページもログインへ向く', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1200, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final container = _container(_FakeSession());
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: Consumer(
            builder: (context, ref, _) => MaterialApp.router(
              routerConfig: ref.read(rootRouterProvider),
              theme: ThemeData(splashFactory: NoSplash.splashFactory),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final router = container.read(rootRouterProvider);
      expect(
        router.routeInformationProvider.value.uri.path,
        AuthFilesPaths.login,
      );
      router.go('/e/item');
      await tester.pumpAndSettle();
      expect(
        router.routeInformationProvider.value.uri.path,
        AuthFilesPaths.login,
        reason: 'ログインしていなければ、台帳へは進めない',
      );
      expect(find.text('生産管理にサインイン'), findsOneWidget);
    });
  });
}

class _UnderMaintenance implements IMaintenanceChecker {
  @override
  Future<MaintenanceStatus> check() async =>
      const MaintenanceStatus(isUnderMaintenance: true, message: 'm');
}
