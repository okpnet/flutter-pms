import 'package:calendar_lib/calendar_lib.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget _host(Widget child) => MaterialApp(
  home: Scaffold(
    body: SizedBox(width: 700, height: 700, child: child),
  ),
);

Finder _day(int y, int m, int d) => find.byKey(ValueKey('day:$y-$m-$d'));

void main() {
  group('日本の祝日', () {
    test('2026 年: 固定・月曜・春分・秋分・振替休日・国民の休日', () {
      final h = japaneseHolidays(2026);
      expect(h[DateTime(2026, 1, 1)], '元日');
      expect(h[DateTime(2026, 1, 12)], '成人の日');
      expect(h[DateTime(2026, 3, 20)], '春分の日');
      expect(h[DateTime(2026, 5, 6)], '振替休日'); // 5/3 が日曜
      expect(h[DateTime(2026, 7, 20)], '海の日');
      expect(h[DateTime(2026, 9, 22)], '国民の休日'); // 敬老の日(9/21)と秋分の日(9/23)に挟まれる
      expect(h[DateTime(2026, 9, 23)], '秋分の日');
      expect(h[DateTime(2026, 10, 12)], 'スポーツの日');
      expect(h[DateTime(2026, 11, 23)], '勤労感謝の日');
      expect(h.length, 18);
    });

    test('2020・2021 年のオリンピックによる移動、2019 年の即位の日', () {
      expect(japaneseHolidays(2020)[DateTime(2020, 7, 24)], 'スポーツの日');
      expect(japaneseHolidays(2021)[DateTime(2021, 8, 8)], '山の日');
      expect(japaneseHolidays(2021)[DateTime(2021, 8, 9)], '振替休日');
      expect(japaneseHolidays(2019)[DateTime(2019, 5, 1)], '天皇の即位の日');
    });

    test('日付から名前を引ける。祝日でなければ null', () {
      expect(japaneseHolidayName(DateTime(2026, 1, 1)), '元日');
      expect(japaneseHolidayName(DateTime(2026, 1, 2)), isNull);
    });
  });

  group('日付の範囲', () {
    test('順序が逆でも昇順にそろえ、両端を含む', () {
      final r = DateRange(DateTime(2026, 11, 5), DateTime(2026, 11, 3));
      expect(r.start, DateTime(2026, 11, 3));
      expect(r.length, 3);
      expect(r.days.map((d) => d.day), [3, 4, 5]);
      expect(r.contains(DateTime(2026, 11, 4, 23)), isTrue);
      expect(r.contains(DateTime(2026, 11, 6)), isFalse);
    });
  });

  group('取得元(メモリ)', () {
    test('範囲で保存・消去し、失敗した日を返す', () async {
      final source = InMemoryCalendarSource<String>(
        failOn: {DateTime(2026, 11, 4)},
      );
      final failed = await source.save(
        DateRange(DateTime(2026, 11, 3), DateTime(2026, 11, 5)),
        'x',
      );
      expect(failed, [DateTime(2026, 11, 4)]);
      expect(source.values.length, 2);
      await source.clear(DateRange.single(DateTime(2026, 11, 3)));
      expect(source.values.length, 1);
    });
  });

  group('CalendarView', () {
    testWidgets('開始曜日(日曜・月曜)で、1 列目の曜日が変わる', (tester) async {
      final controller = CalendarController()..goTo(DateTime(2026, 11, 1));
      await tester.pumpWidget(
        _host(
          CalendarView<String>(
            source: InMemoryCalendarSource<String>(),
            controller: controller,
          ),
        ),
      );
      // 2026-11-01 は日曜。日曜始まりなら 1 行目の左端
      final sundayStart = tester.getTopLeft(_day(2026, 11, 1));
      expect(sundayStart.dx, lessThan(tester.getTopLeft(_day(2026, 11, 2)).dx));

      await tester.pumpWidget(
        _host(
          CalendarView<String>(
            key: const ValueKey('mon'),
            source: InMemoryCalendarSource<String>(),
            controller: controller,
            firstWeekday: DateTime.monday,
          ),
        ),
      );
      await tester.pumpAndSettle();
      // 月曜始まりなら、日曜は 1 行目ではなく、月曜(10/26)の週の右端
      expect(
        tester.getTopLeft(_day(2026, 11, 1)).dx,
        greaterThan(tester.getTopLeft(_day(2026, 11, 2)).dx),
      );
    });

    testWidgets('表示する曜日を絞ると、その曜日の列だけになる', (tester) async {
      final controller = CalendarController()..goTo(DateTime(2026, 11, 1));
      await tester.pumpWidget(
        _host(
          CalendarView<String>(
            source: InMemoryCalendarSource<String>(),
            controller: controller,
            visibleWeekdays: const {1, 2, 3, 4, 5},
          ),
        ),
      );
      expect(_day(2026, 11, 2), findsOneWidget); // 月
      expect(_day(2026, 11, 1), findsNothing); // 日
      expect(_day(2026, 11, 7), findsNothing); // 土
    });

    testWidgets('1 日を押して選び、Shift で範囲を広げる。選べない日は選べない', (tester) async {
      final controller = CalendarController()..goTo(DateTime(2026, 11, 1));
      await tester.pumpWidget(
        _host(
          CalendarView<String>(
            source: InMemoryCalendarSource<String>(),
            controller: controller,
            selectable: (d) => d.day != 10,
          ),
        ),
      );
      await tester.tap(_day(2026, 11, 4));
      await tester.pump();
      expect(controller.selection, DateRange.single(DateTime(2026, 11, 4)));

      // 選べない日(10 日)を押しても、選択は変わらない
      await tester.tap(_day(2026, 11, 10));
      await tester.pump();
      expect(controller.selection, DateRange.single(DateTime(2026, 11, 4)));
    });

    testWidgets('ドラッグで範囲を選び、選べない日は選んだ日に含めない', (tester) async {
      final controller = CalendarController()..goTo(DateTime(2026, 11, 1));
      await tester.pumpWidget(
        _host(
          CalendarView<String>(
            source: InMemoryCalendarSource<String>(),
            controller: controller,
            selectable: (d) => d.day != 5,
          ),
        ),
      );
      final from = tester.getCenter(_day(2026, 11, 3));
      final to = tester.getCenter(_day(2026, 11, 6));
      final g = await tester.startGesture(from, kind: PointerDeviceKind.mouse);
      await g.moveBy(const Offset(12, 0)); // 距離の閾値を超えて、ドラッグを始める
      await g.moveTo(to);
      await g.up();
      await tester.pump();
      expect(controller.selection, DateRange(DateTime(2026, 11, 3), DateTime(2026, 11, 6)));
      expect(controller.selectedDays.map((d) => d.day), [3, 4, 6]);
    });

    testWidgets('取得元の値(休日)と、日本の祝日を、休日の見た目で出す', (tester) async {
      final controller = CalendarController()..goTo(DateTime(2026, 11, 1));
      await tester.pumpWidget(
        _host(
          CalendarView<bool>(
            source: InMemoryCalendarSource<bool>(
              initial: {DateTime(2026, 11, 12): true},
              isHoliday: (v) => v,
            ),
            controller: controller,
            showJapaneseHolidays: true,
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('勤労感謝の日'), findsOneWidget);
      // 取得元の休日(12 日)は、背景が休日の色
      final box = tester.widget<Container>(_day(2026, 11, 12));
      expect((box.decoration! as BoxDecoration).color, isNotNull);
    });

    testWidgets('月を移動すると、見出しが変わり、選択が解ける', (tester) async {
      final controller = CalendarController()..goTo(DateTime(2026, 11, 1));
      await tester.pumpWidget(
        _host(
          CalendarView<String>(
            source: InMemoryCalendarSource<String>(),
            controller: controller,
          ),
        ),
      );
      expect(find.text('2026年11月'), findsOneWidget);
      await tester.tap(_day(2026, 11, 4));
      await tester.tap(find.byKey(const ValueKey('calendarNext')));
      await tester.pumpAndSettle();
      expect(find.text('2026年12月'), findsOneWidget);
      expect(controller.selection, isNull);
    });
  });
}
