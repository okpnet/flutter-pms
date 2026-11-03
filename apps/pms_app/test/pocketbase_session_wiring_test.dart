import 'package:auth_files/auth_files.dart' show AuthFilesPaths;
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

    test('PocketBase を使わないときは、これまでの認証(AuthenticatorPageSession)のまま', () async {
      final container = _container(_FakeSession(), pocketbase: false);
      final mediator = container.read(pageSessionMediatorProvider);
      expect(mediator.toJson().toString(), contains('MaintenanceAware'));
      expect(await mediator.refresh(), PageSessionStatus.signedOut);
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

  group('ログアウト', () {
    test('PocketBase を使うとき、セッションを破棄し、ボタンの遷移先はログイン画面', () async {
      final session = _FakeSession(loggedIn: true);
      final container = _container(session);
      container
          .read(userSummaryProvider.notifier)
          .set(const UserSummary(name: 'tanaka.t'));
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

    test('PocketBase を使わないときは、何もせず、これまでの仮のログイン', () async {
      final session = _FakeSession(loggedIn: true);
      final container = _container(session, pocketbase: false);
      expect(container.read(signInDestinationProvider), isNull);
      await container.read(signOutProvider)();
      expect(session.logouts, 0);
    });

    testWidgets('ユーザーメニューのログアウトで開く画面が、セッションを破棄し、ログイン画面へ戻れる', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1200, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final session = _FakeSession(loggedIn: true);
      final container = _container(session);
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
      router.go('/logout');
      await tester.pumpAndSettle();
      expect(find.text('ログアウトしました。'), findsOneWidget);
      expect(session.logouts, 1, reason: 'ログアウト画面を開いたとき、1回だけ実行する');

      await tester.tap(find.text('ログイン画面へ'));
      await tester.pumpAndSettle();
      expect(find.text('生産管理にサインイン'), findsOneWidget);
      expect(find.text('ログアウトしました。'), findsNothing);
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

    test('最初の画面: PocketBase を使うときはログイン、使わないときはこれまでのログイン(仮)', () {
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
        isNot(AuthFilesPaths.login),
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
