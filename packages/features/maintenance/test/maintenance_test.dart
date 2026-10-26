import 'dart:convert';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:maintenance/maintenance.dart';
import 'package:maintenance/maintenance_api.dart';
import 'package:page_mediator/page_mediator.dart';
import 'package:theme_lib/theme_lib.dart';

class _Checker implements IMaintenanceChecker {
  _Checker(this.status);

  MaintenanceStatus status;
  int calls = 0;

  @override
  Future<MaintenanceStatus> check() async {
    calls++;
    return status;
  }
}

const _under = MaintenanceStatus(isUnderMaintenance: true);

class _InnerSession implements IPageSessionMediator {
  int refreshed = 0;

  @override
  Future<PageSessionStatus> check() async => PageSessionStatus.valid;

  @override
  Future<PageSessionStatus> refresh() async {
    refreshed++;
    return PageSessionStatus.expired;
  }

  @override
  Map<String, Object?> toJson() => {};
}

Widget _app(List<Override> overrides, {String initial = '/maintenance'}) {
  final router = GoRouter(
    initialLocation: initial,
    routes: [
      GoRoute(path: '/', builder: (_, _) => const Text('ホーム')),
      ...const MaintenanceModule().routes,
    ],
  );
  return ProviderScope(
    overrides: [
      themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
      ...overrides,
    ],
    child: Consumer(
      builder: (context, ref, _) => MaterialApp.router(
        theme: ref.watch(lightThemeProvider),
        routerConfig: router,
      ),
    ),
  );
}

void main() {
  group('状態と判定', () {
    test('メンテナンス中は、どのページもメンテナンスページへ向ける', () {
      for (final location in ['/', '/e/order', '/settings?x=1']) {
        expect(
          maintenanceRedirect(status: _under, location: location),
          MaintenancePaths.maintenance,
        );
      }
      expect(
        maintenanceRedirect(status: _under, location: '/maintenance'),
        isNull,
      );
    });

    test('メンテナンスが終わったら、メンテナンスページから戻す。それ以外はそのまま', () {
      expect(
        maintenanceRedirect(
          status: MaintenanceStatus.available,
          location: '/maintenance',
        ),
        '/',
      );
      expect(
        maintenanceRedirect(
          status: MaintenanceStatus.available,
          location: '/maintenance',
          home: '/dashboard',
        ),
        '/dashboard',
      );
      expect(
        maintenanceRedirect(
          status: MaintenanceStatus.available,
          location: '/e/order',
        ),
        isNull,
      );
    });

    test('refresh は確認の結果を状態にする。report は応答からの通知', () async {
      final checker = _Checker(_under);
      final container = ProviderContainer(
        overrides: [maintenanceCheckerProvider.overrideWithValue(checker)],
      );
      addTearDown(container.dispose);
      expect(
        container.read(maintenanceStatusProvider).isUnderMaintenance,
        isFalse,
      );
      await container.read(maintenanceStatusProvider.notifier).refresh();
      expect(
        container.read(maintenanceStatusProvider).isUnderMaintenance,
        isTrue,
      );
      container
          .read(maintenanceStatusProvider.notifier)
          .report(MaintenanceStatus.available);
      expect(
        container.read(maintenanceStatusProvider).isUnderMaintenance,
        isFalse,
      );
    });
  });

  group('HTTP の確認', () {
    test('HTTP 503 はメンテナンス中。本文の文面・時間と Retry-After を読む', () async {
      final checker = HttpMaintenanceChecker(
        uri: Uri.parse('https://example.test/health'),
        client: MockClient(
          (_) async => http.Response.bytes(
            utf8.encode(
              '{"message":"定期メンテナンス","startAt":"2026-10-27T01:00:00","endAt":"2026-10-27T03:00:00"}',
            ),
            503,
            headers: {'retry-after': '120'},
          ),
        ),
      );
      final status = await checker.check();
      expect(status.isUnderMaintenance, isTrue);
      expect(status.message, '定期メンテナンス');
      expect(status.startAt, DateTime(2026, 10, 27, 1));
      expect(status.endAt, DateTime(2026, 10, 27, 3));
      expect(status.retryAfter, const Duration(seconds: 120));
    });

    test('本文が JSON でなくても、503 ならメンテナンス中(既定の文面)', () async {
      final checker = HttpMaintenanceChecker(
        uri: Uri.parse('https://example.test/health'),
        client: MockClient((_) async => http.Response('<html>', 503)),
      );
      final status = await checker.check();
      expect(status.isUnderMaintenance, isTrue);
      expect(status.message, isNull);
    });

    test('200 は利用可能。通信の失敗もメンテナンスとはしない', () async {
      expect(
        (await HttpMaintenanceChecker(
          uri: Uri.parse('https://example.test/health'),
          client: MockClient((_) async => http.Response('ok', 200)),
        ).check()).isUnderMaintenance,
        isFalse,
      );
      expect(
        (await HttpMaintenanceChecker(
          uri: Uri.parse('https://example.test/health'),
          client: MockClient(
            (_) async => throw http.ClientException('接続できません'),
          ),
        ).check()).isUnderMaintenance,
        isFalse,
      );
    });
  });

  group('セッション確認', () {
    test('メンテナンス中は、認証の確認をせずにメンテナンスを返す', () async {
      final inner = _InnerSession();
      final session = MaintenanceAwarePageSession(
        refreshMaintenance: () async => true,
        inner: inner,
      );
      expect(await session.refresh(), PageSessionStatus.maintenance);
      expect(inner.refreshed, 0);
    });

    test('メンテナンスでなければ、内側(認証)の結果を返す', () async {
      final inner = _InnerSession();
      final session = MaintenanceAwarePageSession(
        refreshMaintenance: () async => false,
        inner: inner,
      );
      expect(await session.refresh(), PageSessionStatus.expired);
      expect(inner.refreshed, 1);
    });
  });

  group('モジュール', () {
    test('遷移先をパスに変換できる(登録漏れ検出)。メニューの項目は持たない', () {
      const module = MaintenanceModule();
      for (final d in maintenanceDestinationSamples) {
        expect(module.locationOf(d), isNotNull, reason: '$d');
      }
      expect(module is MenuContributor, isFalse);
    });
  });

  group('ページ', () {
    testWidgets('文面・実施時間を表示し、ほかのページへのリンクを持たない', (tester) async {
      await tester.binding.setSurfaceSize(const Size(900, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final checker = _Checker(_under);
      await tester.pumpWidget(
        _app([
          maintenanceCheckerProvider.overrideWithValue(checker),
          maintenanceStatusProvider.overrideWith(
            () => _FixedStatus(
              MaintenanceStatus(
                isUnderMaintenance: true,
                message: '定期メンテナンス中',
                startAt: DateTime(2026, 10, 27, 1),
              ),
            ),
          ),
        ]),
      );
      await tester.pumpAndSettle();
      expect(find.text('メンテナンス中です'), findsOneWidget);
      expect(find.text('定期メンテナンス中'), findsOneWidget);
      expect(find.text('開始: 2026-10-27 01:00'), findsOneWidget);
      expect(find.text('終了: 未定'), findsOneWidget);
      // 枠・戻る・リンクが無い
      expect(find.byType(AppBar), findsNothing);
      expect(find.byType(BackButton), findsNothing);
      expect(find.byType(Drawer), findsNothing);
      expect(find.byType(TextButton), findsNothing);
      expect(find.byType(FilledButton), findsOneWidget);
    });

    testWidgets('再確認: まだメンテナンス中なら知らせ、ページに残る', (tester) async {
      final checker = _Checker(_under);
      await tester.pumpWidget(
        _app([maintenanceCheckerProvider.overrideWithValue(checker)]),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('再確認'));
      await tester.pumpAndSettle();
      expect(checker.calls, 1);
      expect(find.text('まだメンテナンス中です。'), findsOneWidget);
    });
  });
}

class _FixedStatus extends MaintenanceStatusNotifier {
  _FixedStatus(this._status);

  final MaintenanceStatus _status;

  @override
  MaintenanceStatus build() => _status;
}
