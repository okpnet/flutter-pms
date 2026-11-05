import 'package:app_core/app_core_api.dart';
import 'package:auth_files/auth_files.dart';
import 'package:auth_files/auth_files_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';

/// ダッシュボードの代役。app_core の実装には依存しない。
class _StubDashboardModule implements FeatureModule {
  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: '/dashboard',
      builder: (_, _) => const Scaffold(body: Text('ダッシュボード')),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      destination is DashboardDestination ? '/dashboard' : null;

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}

class _RecordingLogger implements ILoggerProvider {
  final errors = <String>[];

  @override
  int get level => 0;
  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void error(String message, {Object? ex, StackTrace? trace}) =>
      errors.add(message);
  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) {}
}

class _CountingSession implements SessionService {
  int loggedOut = 0;

  @override
  Future<void> logout() async => loggedOut++;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

const _user = UserSummary(name: '山田 太郎', role: '生産管理部');

Future<ProviderContainer> _open(
  WidgetTester tester,
  PageDestination<Object?> start, {
  List<Override> overrides = const [],
  UserSummary? user = _user,
  ILoggerProvider? logger,
}) async {
  await tester.binding.setSurfaceSize(const Size(900, 900));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    FeatureHost(
      title: 'AuthFiles',
      modules: [const AuthFilesModule(), _StubDashboardModule()],
      entries: [FeatureHostEntry('開く', start)],
      logger: logger,
      overrides: [
        userSummaryProvider.overrideWith(() => UserSummaryNotifier(user)),
        ...overrides,
      ],
    ),
  );
  await tester.pumpAndSettle();
  final container = ProviderScope.containerOf(
    tester.element(find.byType(Scaffold).first),
  );
  await tester.tap(find.text('開く'));
  await tester.pumpAndSettle();
  return container;
}

void main() {
  group('ログアウト', () {
    testWidgets('確認 → ログアウト → 完了。5秒後にログイン画面へ進む', (tester) async {
      var calls = 0;
      final container = await _open(
        tester,
        const LogoutDestination(),
        overrides: [
          signOutProvider.overrideWith(
            (ref) => () async {
              calls++;
              ref.read(userSummaryProvider.notifier).logout();
            },
          ),
        ],
      );
      expect(find.text('ログアウトしますか?'), findsOneWidget);
      expect(find.textContaining('山田 太郎 さんとしてサインインしています'), findsOneWidget);
      expect(calls, 0, reason: '確認の前には何もしない');

      await tester.tap(find.text('ログアウト'));
      await tester.pump();
      await tester.pump();
      expect(find.text('ログアウトしました'), findsOneWidget);
      expect(calls, 1);
      expect(container.read(userSummaryProvider), isNull);
      expect(find.textContaining('5秒後にログイン画面へ移動します'), findsOneWidget);

      await tester.pump(const Duration(seconds: 2));
      expect(find.textContaining('3秒後にログイン画面へ移動します'), findsOneWidget);
      await tester.pump(const Duration(seconds: 3));
      await tester.pumpAndSettle();
      expect(find.text('生産管理にサインイン'), findsOneWidget);
      expect(calls, 1, reason: '再描画やカウントダウンでは実行しない');
    });

    testWidgets('「今すぐログイン画面へ」ですぐ進む', (tester) async {
      await _open(
        tester,
        const LogoutDestination(),
        overrides: [signOutProvider.overrideWith((ref) => () async {})],
      );
      await tester.tap(find.text('ログアウト'));
      await tester.pump();
      await tester.pump();
      await tester.tap(find.text('今すぐログイン画面へ'));
      await tester.pumpAndSettle();
      expect(find.text('生産管理にサインイン'), findsOneWidget);
    });

    testWidgets('キャンセルでダッシュボードへ戻り、ログアウトしない', (tester) async {
      var calls = 0;
      await _open(
        tester,
        const LogoutDestination(),
        overrides: [
          signOutProvider.overrideWith(
            (ref) => () async {
              calls++;
            },
          ),
        ],
      );
      await tester.tap(find.text('キャンセル'));
      await tester.pumpAndSettle();
      expect(find.text('ダッシュボード'), findsOneWidget);
      expect(calls, 0);
    });

    testWidgets('セッション切れは、確認を出さずにログアウトして案内する', (tester) async {
      var calls = 0;
      await _open(
        tester,
        const LogoutDestination(sessionExpired: true),
        overrides: [
          signOutProvider.overrideWith(
            (ref) => () async {
              calls++;
            },
          ),
        ],
      );
      expect(find.text('ログアウトしますか?'), findsNothing);
      expect(find.text('セッションが切れました'), findsOneWidget);
      expect(calls, 1);
      // 画面案: セッションが切れたときも、この画面を表示する
      expect(find.textContaining('セッションが切れたときも'), findsOneWidget);
    });

    testWidgets('すでにログアウトしている(ユーザーなし)ときも、確認せずに完了を表示する', (tester) async {
      var calls = 0;
      await _open(
        tester,
        const LogoutDestination(),
        user: null,
        overrides: [
          signOutProvider.overrideWith(
            (ref) => () async {
              calls++;
            },
          ),
        ],
      );
      expect(find.text('ログアウトしますか?'), findsNothing);
      expect(find.text('ログアウトしました'), findsOneWidget);
      expect(calls, 1);
    });

    testWidgets('実体が失敗しても、ログに残して完了を表示する(ログアウトで止めない)', (tester) async {
      final logger = _RecordingLogger();
      await _open(
        tester,
        const LogoutDestination(),
        logger: logger,
        overrides: [
          signOutProvider.overrideWith(
            (ref) =>
                () async => throw StateError('boom'),
          ),
        ],
      );
      await tester.tap(find.text('ログアウト'));
      await tester.pump();
      await tester.pump();
      expect(find.text('ログアウトしました'), findsOneWidget);
      expect(logger.errors.single, startsWith('[auth_files]'));
    });
  });

  group('認証サーバーに接続しない開発用(provisional)', () {
    testWidgets('ログイン画面は資格情報を求めず、標準のユーザーでログインする', (tester) async {
      final container = await _open(
        tester,
        const LoginDestination(),
        overrides: [authModeProvider.overrideWithValue(AuthMode.provisional)],
      );
      // 標準のユーザーを消した状態から始める
      container.read(userSummaryProvider.notifier).logout();
      await tester.pump();
      expect(container.read(userSummaryProvider), isNull);
      expect(find.byType(TextField), findsNothing);
      expect(find.textContaining('認証サーバーに接続していません'), findsOneWidget);
      await tester.tap(find.text('標準のユーザーでログイン'));
      await tester.pumpAndSettle();
      expect(find.text('ダッシュボード'), findsOneWidget);
      expect(container.read(userSummaryProvider)?.name, '山田 太郎');
    });

    test('ログアウトは、セッションも保管庫も触らず、表示だけを消す', () async {
      final session = _CountingSession();
      final container = ProviderContainer(
        overrides: [
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          authModeProvider.overrideWithValue(AuthMode.provisional),
          sessionServiceProvider.overrideWithValue(session),
          userSummaryProvider.overrideWith(() => UserSummaryNotifier(_user)),
        ],
      );
      addTearDown(container.dispose);
      await container.read(signOutProvider)();
      expect(session.loggedOut, 0);
      expect(container.read(userSummaryProvider), isNull);
    });
  });

  test('パスと遷移先: ログアウトはセッション切れだけ ?expired=1 を付ける', () {
    const module = AuthFilesModule();
    expect(module.locationOf(const LogoutDestination()), '/auth/logout');
    expect(
      module.locationOf(const LogoutDestination(sessionExpired: true)),
      '/auth/logout?expired=1',
    );
    expect(
      const LogoutDestination(sessionExpired: true).toJson()['sessionExpired'],
      isTrue,
    );
  });
}
