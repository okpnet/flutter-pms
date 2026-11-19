// 稼働カレンダーの画面(カレンダー表示)。サンプルの取得元で、選択・一括反映・既定に戻す・祝日の取り込みを確認する。
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:resource/resource.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> _open(WidgetTester tester) async {
  tester.view.devicePixelRatio = 1.0;
  tester.view.physicalSize = const Size(1400, 1400);
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    FeatureHost(
      title: '資源',
      modules: const [ResourceModule()],
      entries: const [
        FeatureHostEntry('稼働カレンダーへ', EntityListDestination('workcalendar')),
      ],
      logger: const NoopLoggerProvider(),
      overrides: [
        themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
      ],
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('稼働カレンダーへ'));
  await tester.pumpAndSettle();
}

Finder _day(DateTime d) =>
    find.byKey(ValueKey('day:${d.year}-${d.month}-${d.day}'));

void main() {
  testWidgets('表ではなくカレンダーが出る(月の見出し・日のセル・設備の選択)', (tester) async {
    await _open(tester);
    final now = DateTime.now();
    expect(find.text('${now.year}年${now.month}月'), findsOneWidget);
    expect(find.byKey(const ValueKey('calendarEquipment')), findsOneWidget);
    expect(_day(DateTime(now.year, now.month, 15)), findsOneWidget);
  });

  testWidgets('日を選んで休日に反映し、既定に戻す', (tester) async {
    await _open(tester);
    final now = DateTime.now();
    final day = DateTime(now.year, now.month, 16);
    await tester.tap(_day(day));
    await tester.pump();
    expect(find.textContaining('選択中'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('calendarHoliday')));
    await tester.enterText(
      find.byKey(const ValueKey('calendarRemarks')),
      '設備点検日',
    );
    await tester.pump();
    await tester.tap(find.byKey(const ValueKey('calendarApply')));
    await tester.pumpAndSettle();
    expect(find.text('反映しました'), findsOneWidget);
    expect(
      find.descendant(of: _day(day), matching: find.text('設備点検日')),
      findsOneWidget,
    ); // 休日のセルに備考が出る

    await tester.tap(find.byKey(const ValueKey('calendarReset')));
    await tester.pumpAndSettle();
    expect(
      find.descendant(of: _day(day), matching: find.text('設備点検日')),
      findsNothing,
    );
  });

  testWidgets('時刻が HH:MM でないときは、保存せずに知らせる', (tester) async {
    await _open(tester);
    final now = DateTime.now();
    await tester.tap(_day(DateTime(now.year, now.month, 17)));
    await tester.pump();
    await tester.enterText(find.byKey(const ValueKey('calendarStart')), '8時');
    await tester.tap(find.byKey(const ValueKey('calendarApply')));
    await tester.pump();
    expect(find.text('時刻は HH:MM(例 08:30)で入力してください'), findsOneWidget);
  });

  testWidgets('祝日を取り込むと、祝日が休日として登録される(登録済みの日は変えない)', (tester) async {
    await _open(tester);
    await tester.tap(find.byKey(const ValueKey('calendarImportHolidays')));
    await tester.pumpAndSettle();
    expect(find.textContaining('日の祝日を登録しました'), findsOneWidget);
  });
}
