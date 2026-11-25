// 通知(ダッシュボードの未読通知・通知の一覧)の評価。接続なしの見本の通知で動く。
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support/example_harness.dart';

void main() {
  testWidgets('ログインすると、ダッシュボードに未読の通知(2 件)が出て、「すべて見る」で一覧に移り、既読にできる', (tester) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    expect(find.text('未読の通知が 2 件あります'), findsOneWidget);

    await tester.tap(find.byKey(const Key('announcement-banner-link')));
    await h.settle();
    expect(h.location, '/announcements');
    expect(find.text('監査の予定: 工程監査'), findsOneWidget);
    expect(find.text('力量の更新のお知らせ'), findsOneWidget);

    await tester.tap(find.byKey(const Key('announcement-read-n1')));
    await h.settle();
    expect(find.byKey(const Key('announcement-read-n1')), findsNothing);
    expect(find.byKey(const Key('announcement-read-n2')), findsOneWidget);
  });
}
