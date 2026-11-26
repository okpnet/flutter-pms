// 文書の台帳と承認の申請の評価。接続なしの見本(品質マニュアルは承認待ち)で動く。
import 'package:announcement/announcement.dart' show InMemoryAnnouncementGateway, announcementGatewayProvider;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support/example_harness.dart';

void main() {
  _registerPublished();
  testWidgets('台帳に承認待ちの品質マニュアルが出て、管理者は編集の状態で開き、「承認を申請」で通知が 1 件増える(続けても増えない)', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    await h.go('/manual');
    expect(find.byKey(const Key('manual-ledger-row-m1')), findsOneWidget);
    expect(find.text('QM-001'), findsOneWidget);
    expect(find.text('承認待ち'), findsWidgets);

    // 管理者(編集の権限あり)が承認待ちを開くと、編集の状態
    await tester.tap(find.byKey(const Key('manual-ledger-row-m1')));
    await h.settle();
    expect(h.location, '/manual?id=m1&edit=1');

    // 閲覧に戻ると、「承認を申請」が出る
    await h.go('/manual');
    await h.go('/manual?id=m1');
    final button = find.byKey(const Key('manual-request-approval'));
    expect(button, findsOneWidget);
    await tester.tap(button);
    await h.settle();
    expect(find.textContaining('1 件'), findsOneWidget);
    await tester.pump(const Duration(seconds: 5));
    await tester.tap(button);
    await h.settle();
    expect(find.textContaining('申請済み'), findsOneWidget);

    // 申請の通知は 1 件だけ(2 回目の申請では増えない)
    final gateway = h.container.read(announcementGatewayProvider) as InMemoryAnnouncementGateway;
    expect(gateway.items.where((a) => a.title == '承認の申請があります'), hasLength(1));
  });
}

void _registerPublished() {
  testWidgets('承認済みの安全衛生マニュアル: 台帳に公開で出て、閲覧で開き、承認スタンプが出る。申請のボタンは出ない', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    await h.go('/manual');
    expect(find.byKey(const Key('manual-ledger-row-m1')), findsOneWidget);
    expect(find.byKey(const Key('manual-ledger-row-m90')), findsOneWidget);
    expect(find.text('SM-001'), findsOneWidget);

    // 公開済みは、管理者でも閲覧で開く(編集の状態にしない)
    await tester.tap(find.byKey(const Key('manual-ledger-row-m90')));
    await h.settle();
    expect(h.location, '/manual?id=m90');
    expect(find.byKey(const Key('manual-approval-stamps')), findsOneWidget);
    expect(find.byKey(const Key('manual-approval-pending')), findsNothing);
    expect(find.byKey(const Key('manual-request-approval')), findsNothing);
  });
}
