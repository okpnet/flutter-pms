import 'package:announcement/announcement.dart';
import 'package:announcement/announcement_api.dart';
import 'package:feature_shared/feature_shared.dart'
    show UserSummary, UserSummaryNotifier, userSummaryProvider;
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
  Announcement(
    id: 'a2',
    title: '承認待ち',
    isRead: true,
    at: DateTime(2026, 11, 20),
  ),
];

Widget _app(
  InMemoryAnnouncementGateway gateway, {
  bool loggedIn = true,
  String initial = '/dash',
}) {
  final router = GoRouter(
    initialLocation: initial,
    routes: [
      ...const AnnouncementModule().routes,
      GoRoute(
        path: '/dash',
        builder: (_, _) => const Scaffold(body: AnnouncementBanner()),
      ),
    ],
  );
  return ProviderScope(
    overrides: [
      announcementGatewayProvider.overrideWithValue(gateway),
      userSummaryProvider.overrideWith(
        () => UserSummaryNotifier(
          loggedIn ? const UserSummary(name: '田中') : null,
        ),
      ),
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
    expect(
      const AnnouncementListDestination().toJson(),
      isA<Map<String, Object?>>(),
    );
    expect(announcementDestinationSamples, isNotEmpty);
    expect(
      const AnnouncementModule().locationOf(
        const AnnouncementListDestination(),
      ),
      AnnouncementPaths.list,
    );
  });

  testWidgets('ダッシュボード: 未読の件数と「すべて見る」を出し、押すと一覧へ移る。ログインのたびに監査の予定の通知を作る', (
    tester,
  ) async {
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

  testWidgets('一覧: 題名・本文・対象・期限をそのまま出し、既読にすると強調と件数が変わる。未読だけに絞れる', (
    tester,
  ) async {
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
    await _pump(
      tester,
      _app(InMemoryAnnouncementGateway(), initial: '/announcements'),
    );
    expect(find.byKey(const Key('announcement-empty')), findsOneWidget);
  });

  testWidgets('ダッシュボード: 未読の題名を数件(3 件まで)出し、その場で既読にすると件数が減る。残りは「ほか N 件」', (
    tester,
  ) async {
    final many = [
      for (var i = 1; i <= 5; i++) Announcement(id: 'm$i', title: '通知$i'),
    ];
    final gateway = InMemoryAnnouncementGateway(many);
    await _pump(tester, _app(gateway));
    expect(find.text('未読の通知が 5 件あります'), findsOneWidget);
    expect(
      find.byKey(const Key('announcement-banner-item-m1')),
      findsOneWidget,
    );
    expect(
      find.byKey(const Key('announcement-banner-item-m3')),
      findsOneWidget,
    );
    expect(find.byKey(const Key('announcement-banner-item-m4')), findsNothing);
    expect(find.text('ほか 2 件'), findsOneWidget);

    await tester.tap(find.byKey(const Key('announcement-banner-read-m1')));
    await tester.pumpAndSettle();
    expect(gateway.items.first.isRead, isTrue);
    expect(find.text('未読の通知が 4 件あります'), findsOneWidget);
    // 次の未読が繰り上がって見える
    expect(
      find.byKey(const Key('announcement-banner-item-m4')),
      findsOneWidget,
    );
  });

  testWidgets('ダッシュボード: その場で既読にできなかったときは、その旨を出す', (tester) async {
    await _pump(tester, _app(_FailingGateway(_sample())));
    await tester.tap(find.byKey(const Key('announcement-banner-read-a1')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('announcement-banner-error')), findsOneWidget);
    expect(find.text('未読の通知が 1 件あります'), findsOneWidget);
  });

  testWidgets('一覧: 「すべて既読にする」で未読がすべて既読になり、ボタンは消える。「ダッシュボードへ戻る」で戻れる', (
    tester,
  ) async {
    final gateway = InMemoryAnnouncementGateway([
      _sample()[0],
      Announcement(id: 'a3', title: '通知3'),
    ]);
    await _pump(tester, _app(gateway, initial: '/announcements'));
    expect(find.byKey(const Key('announcement-read-all')), findsOneWidget);
    await tester.tap(find.byKey(const Key('announcement-read-all')));
    await tester.pumpAndSettle();
    expect(gateway.items.every((a) => a.isRead), isTrue);
    expect(find.byKey(const Key('announcement-read-all')), findsNothing);

    await tester.tap(find.byKey(const Key('announcement-back')));
    await tester.pumpAndSettle();
    expect(
      find.byKey(const Key('announcement-banner')),
      findsNothing,
    ); // ダッシュボード(未読なし)
    expect(find.byKey(const Key('announcement-back')), findsNothing);
  });

  testWidgets('一覧: 一部の既読に失敗したら、成功した分は反映し、失敗した分は未読のまま残して、その旨を出す', (
    tester,
  ) async {
    final gateway = _PartialGateway([
      _sample()[0],
      Announcement(id: 'a3', title: '通知3'),
    ]);
    await _pump(tester, _app(gateway, initial: '/announcements'));
    await tester.tap(find.byKey(const Key('announcement-read-all')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('announcement-error')), findsOneWidget);
    expect(
      find.byKey(const Key('announcement-read-a1')),
      findsOneWidget,
    ); // 失敗: 未読のまま
    expect(
      find.byKey(const Key('announcement-read-a3')),
      findsNothing,
    ); // 成功: 既読
    expect(
      find.byKey(const Key('announcement-read-all')),
      findsOneWidget,
    ); // もう一度押せる
  });
}

class _FailingGateway extends InMemoryAnnouncementGateway {
  _FailingGateway(super.items);

  @override
  Future<void> markRead(String id) async => throw StateError('network');
}

/// a1 だけ既読にできない(ほかは成功)。
class _PartialGateway extends InMemoryAnnouncementGateway {
  _PartialGateway(super.items);

  @override
  Future<void> markRead(String id) async {
    if (id == 'a1') throw StateError('network');
    return super.markRead(id);
  }
}
