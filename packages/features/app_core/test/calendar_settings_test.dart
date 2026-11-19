import 'package:app_core/app_core.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('カレンダーの設定(保存する形)', () {
    test('開始曜日と表示する曜日を書き、読み戻せる', () {
      const model = UserSettingsModel(
        calendarFirstWeekday: DateTime.monday,
        calendarVisibleWeekdays: [1, 2, 3, 4, 5],
      );
      expect(UserSettingsModel.fromJson(model.toJson()), model);
    });

    test('壊れた値・空は標準(日曜始まり・すべての曜日)', () {
      final m = UserSettingsModel.fromJson({
        'calendarFirstWeekday': 9,
        'calendarVisibleWeekdays': <Object?>[],
      });
      expect(m.calendarFirstWeekday, DateTime.sunday);
      expect(m.calendarVisibleWeekdays, [1, 2, 3, 4, 5, 6, 7]);
      final bad = UserSettingsModel.fromJson({
        'calendarVisibleWeekdays': ['x', 0, 8, 3],
      });
      expect(bad.calendarVisibleWeekdays, [3]);
    });
  });

  group('カレンダーの設定(状態)', () {
    test('開始曜日は 1〜7 だけ。表示する曜日は空にできない', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      expect(c.read(calendarFirstWeekdayProvider), DateTime.sunday);
      c.read(calendarFirstWeekdayProvider.notifier).set(DateTime.monday);
      expect(c.read(calendarFirstWeekdayProvider), DateTime.monday);
      c.read(calendarFirstWeekdayProvider.notifier).set(0);
      expect(c.read(calendarFirstWeekdayProvider), DateTime.monday);

      final days = c.read(calendarVisibleWeekdaysProvider.notifier);
      days.set({1, 2, 3, 4, 5});
      expect(c.read(calendarVisibleWeekdaysProvider), {1, 2, 3, 4, 5});
      days.toggle(6);
      expect(c.read(calendarVisibleWeekdaysProvider), {1, 2, 3, 4, 5, 6});
      days.set({});
      expect(c.read(calendarVisibleWeekdaysProvider), {1, 2, 3, 4, 5, 6});
      days.set({3});
      days.toggle(3); // 最後の 1 つは消せない
      expect(c.read(calendarVisibleWeekdaysProvider), {3});
    });
  });
}
