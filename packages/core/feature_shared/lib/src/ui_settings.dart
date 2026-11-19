import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'backstage.dart';

/// サイドバーをアイコンだけにする設定(使用ユーザーにだけ影響する設定)。
/// 画面が狭いタブレットでは、この設定にかかわらずアイコンだけになる。
/// 設定画面(AppCore)が変更し、アプリの枠が読む。
final sidebarIconOnlyProvider = NotifierProvider<SidebarIconOnlyNotifier, bool>(
  SidebarIconOnlyNotifier.new,
);

class SidebarIconOnlyNotifier extends Notifier<bool> {
  @override
  bool build() => ref.read(backstageValuesProvider).sidebarIconOnly ?? false;

  void set(bool value) => state = value;
}

/// カレンダーの週の左端の曜日(`DateTime.monday`〜`DateTime.sunday`)。既定は日曜。
/// 設定画面(AppCore)が変更し、カレンダー(稼働カレンダーなど)が読む。使用ユーザーにだけ影響する設定。
final calendarFirstWeekdayProvider =
    NotifierProvider<CalendarFirstWeekdayNotifier, int>(
      CalendarFirstWeekdayNotifier.new,
    );

class CalendarFirstWeekdayNotifier extends Notifier<int> {
  @override
  int build() => DateTime.sunday;

  void set(int weekday) {
    if (weekday >= DateTime.monday && weekday <= DateTime.sunday) {
      state = weekday;
    }
  }
}

/// カレンダーに表示する曜日(`DateTime.monday`〜`DateTime.sunday` の集合)。既定はすべて。空にはできない。
final calendarVisibleWeekdaysProvider =
    NotifierProvider<CalendarVisibleWeekdaysNotifier, Set<int>>(
      CalendarVisibleWeekdaysNotifier.new,
    );

class CalendarVisibleWeekdaysNotifier extends Notifier<Set<int>> {
  @override
  Set<int> build() => const {1, 2, 3, 4, 5, 6, 7};

  /// 表示する曜日を置き換える。範囲外を除き、空になるときは変えない。
  void set(Set<int> weekdays) {
    final valid = {
      for (final w in weekdays)
        if (w >= DateTime.monday && w <= DateTime.sunday) w,
    };
    if (valid.isNotEmpty) state = valid;
  }

  /// [weekday] の表示・非表示を切り替える(最後の 1 つは消せない)。
  void toggle(int weekday) {
    final next = {...state};
    if (!next.remove(weekday)) next.add(weekday);
    set(next);
  }
}
