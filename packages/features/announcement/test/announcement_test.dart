import 'package:announcement/announcement.dart';
import 'package:announcement/announcement_api.dart';
import 'package:feature_shared/feature_shared.dart' show UserSummary, UserSummaryNotifier, userSummaryProvider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

List<Announcement> _sample() => [
  Announcement(
    id: 'a1',
    title: '監査の予定: 工程監査',
    message: '2026-11-26 に予定されています',
    category: 'audit',
    targetSymbol: 'AD-1',
    expiresAt: DateTime(2026, 11, 30),
    at: DateTime(2026, 11, 23),
  ),
  Announcement(id: 'a2', title: '承認待ち', isRead: true, at: DateTime(2026, 11, 20)),
];

Widget _app(InMemoryAnnouncementGateway gateway, {bool loggedIn = true, String initial = '/dash'}) {
  final router = GoRouter(
    initialLocation: initial,
    routes: [
      ...const AnnouncementModule().routes,
      GoRoute(path: '/dash', builder: (_, _) => const Scaffold(body: AnnouncementBanner())),
    ],
  );
  return ProviderScope(
    overrides: [
      announcementGatewayProvider.overrideWithValue(gateway),
      userSummaryProvider.overrideWith(() => UserSummaryNotifier(loggedIn ? const UserSummary(name: '田中') : null)),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _pump(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1200, 800));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

void main() {
  test('遷移先は JSON にでき、見本が揃っている', () {
    expect(const AnnouncementListDestination().toJson(), isA<Map<String, Object?>>());
    expect(announcementDestinationSamples, isNotEmpty);
    expect(const AnnouncementModule().locationOf(const AnnouncementListDestination()), AnnouncementPaths.list);
  });

  testWidgets('ダッシュボード: 未読の件数と「すべて見る」を出し、押すと一覧へ移る。ログインのたびに監査の予定の通知を作る', (tester) async {
    final gateway = InMemoryAnnouncementGateway(_sample());
    await _pump(tester, _app(gateway));
    expect(find.byKey(const Key('announcement-banner')), findsOneWidget);
    expect(find.text('未読の通知が 1 件あります'), findsOneWidget);
    expect(gateway.notifyCalls, 1);

    await tester.tap(find.byKey(const Key('announcement-banner-link')));
    await tester.pumpAndSettle();
    expect(find.text('監査の予定: 工程監査'), findsOneWidget);
    // 一覧へ移っても、通知づくりは繰り返さない(ログインユーザーが変わるまで 1 回)
    expect(gateway.notifyCalls, 1);
  });

  testWidgets('ダッシュボード: 未読が無いとき・ログイン前は何も出さず、ログイン前は通知づくりを呼ばない', (tester) async {
    final read = InMemoryAnnouncementGateway([_sample()[1]]);
    await _pump(tester, _app(read));
    expect(find.byKey(const Key('announcement-banner')), findsNothing);

    final before = InMemoryAnnouncementGateway(_sample());
    await _pump(tester, _app(before, loggedIn: false));
    expect(find.byKey(const Key('announcement-banner')), findsNothing);
    expect(before.notifyCalls, 0);
  });

  testWidgets('一覧: 題名・本文・対象・期限をそのまま出し、既読にすると強調と件数が変わる。未読だけに絞れる', (tester) async {
    final gateway = InMemoryAnnouncementGateway(_sample());
    await _pump(tester, _app(gateway, initial: '/announcements'));
    expect(find.text('監査の予定: 工程監査'), findsOneWidget);
    expect(find.textContaining('2026-11-26 に予定されています'), findsOneWidget);
    expect(find.textContaining('AD-1'), findsOneWidget);
    expect(find.textContaining('2026-11-30'), findsOneWidget);
    expect(find.text('承認待ち'), findsOneWidget);

    // 未読だけ
    await tester.tap(find.byKey(const Key('announcement-unread-only')));
    await tester.pumpAndSettle();
    expect(find.text('承認待ち'), findsNothing);

    // 既読にする(未読だけの表示から消える)
    await tester.tap(find.byKey(const Key('announcement-read-a1')));
    await tester.pumpAndSettle();
    expect(gateway.items.first.isRead, isTrue);
    expect(find.byKey(const Key('announcement-empty')), findsOneWidget);
  });

  testWidgets('一覧: 既読にできなかったときは、その旨を出す', (tester) async {
    final failing = _FailingGateway(_sample());
    await _pump(tester, _app(failing, initial: '/announcements'));
    await tester.tap(find.byKey(const Key('announcement-read-a1')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('announcement-error')), findsOneWidget);
  });

  testWidgets('一覧: 通知が無いときは空の文', (tester) async {
    await _pump(tester, _app(InMemoryAnnouncementGateway(), initial: '/announcements'));
    expect(find.byKey(const Key('announcement-empty')), findsOneWidget);
  });
}

class _FailingGateway extends InMemoryAnnouncementGateway {
  _FailingGateway(super.items);

  @override
  Future<void> markRead(String id) async => throw StateError('network');
}
