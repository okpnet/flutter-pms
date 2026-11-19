import 'package:flutter/material.dart';

/// カレンダーの色・大きさ。テーマの拡張([ThemeExtension])として登録できる。
/// 登録が無いときは、[CalendarTheme.of] が `ColorScheme` から導く(色の値を部品の中に直接書かない)。
@immutable
class CalendarTheme extends ThemeExtension<CalendarTheme> {
  const CalendarTheme({
    required this.sunday,
    required this.saturday,
    required this.holiday,
    required this.holidayBackground,
    required this.today,
    required this.selection,
    required this.range,
    required this.disabled,
    this.cellHeight = 72,
    this.cellRadius = 8,
    this.spacing = 4,
  });

  /// `ColorScheme` から導く既定。
  factory CalendarTheme.fromScheme(ColorScheme scheme) => CalendarTheme(
    sunday: scheme.error,
    saturday: scheme.primary,
    holiday: scheme.error,
    holidayBackground: scheme.errorContainer.withValues(alpha: 0.4),
    today: scheme.primary,
    selection: scheme.primaryContainer,
    range: scheme.secondaryContainer,
    disabled: scheme.onSurface.withValues(alpha: 0.38),
  );

  /// 日曜の日付の色。
  final Color sunday;

  /// 土曜の日付の色。
  final Color saturday;

  /// 休日(登録した休日・祝日)の日付の色。
  final Color holiday;

  /// 休日のセルの背景。
  final Color holidayBackground;

  /// 今日の強調(枠の色)。
  final Color today;

  /// 選んだ日の背景。
  final Color selection;

  /// 範囲選択の途中の日の背景。
  final Color range;

  /// 選べない日の文字の色。
  final Color disabled;

  /// セルの高さ。
  final double cellHeight;

  /// セルの角丸。
  final double cellRadius;

  /// セルの間隔。
  final double spacing;

  /// [context] のテーマから取る。拡張が無ければ `ColorScheme` から導く。
  static CalendarTheme of(BuildContext context) {
    final theme = Theme.of(context);
    return theme.extension<CalendarTheme>() ??
        CalendarTheme.fromScheme(theme.colorScheme);
  }

  @override
  CalendarTheme copyWith({
    Color? sunday,
    Color? saturday,
    Color? holiday,
    Color? holidayBackground,
    Color? today,
    Color? selection,
    Color? range,
    Color? disabled,
    double? cellHeight,
    double? cellRadius,
    double? spacing,
  }) => CalendarTheme(
    sunday: sunday ?? this.sunday,
    saturday: saturday ?? this.saturday,
    holiday: holiday ?? this.holiday,
    holidayBackground: holidayBackground ?? this.holidayBackground,
    today: today ?? this.today,
    selection: selection ?? this.selection,
    range: range ?? this.range,
    disabled: disabled ?? this.disabled,
    cellHeight: cellHeight ?? this.cellHeight,
    cellRadius: cellRadius ?? this.cellRadius,
    spacing: spacing ?? this.spacing,
  );

  @override
  CalendarTheme lerp(ThemeExtension<CalendarTheme>? other, double t) {
    if (other is! CalendarTheme) return this;
    return CalendarTheme(
      sunday: Color.lerp(sunday, other.sunday, t)!,
      saturday: Color.lerp(saturday, other.saturday, t)!,
      holiday: Color.lerp(holiday, other.holiday, t)!,
      holidayBackground: Color.lerp(
        holidayBackground,
        other.holidayBackground,
        t,
      )!,
      today: Color.lerp(today, other.today, t)!,
      selection: Color.lerp(selection, other.selection, t)!,
      range: Color.lerp(range, other.range, t)!,
      disabled: Color.lerp(disabled, other.disabled, t)!,
      cellHeight: cellHeight + (other.cellHeight - cellHeight) * t,
      cellRadius: cellRadius + (other.cellRadius - cellRadius) * t,
      spacing: spacing + (other.spacing - spacing) * t,
    );
  }
}
