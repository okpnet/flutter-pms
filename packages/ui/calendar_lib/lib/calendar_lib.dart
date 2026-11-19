/// 月のカレンダー表示のライブラリ。
///
/// - [CalendarDay]・[DateRange]・[ICalendarSource]・[InMemoryCalendarSource]: 日付ごとの値と、その読み書きの窓口
/// - [CalendarView]: 月のグリッド(1 日・範囲の選択、開始曜日、表示する曜日)
/// - [CalendarTheme]: 色・大きさ(テーマの拡張。無ければ `ColorScheme` から導く)
/// - [japaneseHolidays]: 日本の国民の祝日(振替休日・国民の休日を含む)
library;

export 'src/calendar_day.dart';
export 'src/calendar_source.dart';
export 'src/calendar_theme.dart';
export 'src/calendar_view.dart';
export 'src/holidays_jp.dart';
