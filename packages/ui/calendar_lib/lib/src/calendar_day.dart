/// 日付だけ(時刻なし)の範囲。[start]・[end] を含む(両端を含む閉区間)。
class DateRange {
  DateRange(DateTime a, DateTime b)
    : start = _day(a.isBefore(b) ? a : b),
      end = _day(a.isBefore(b) ? b : a);

  /// 1 日だけの範囲。
  DateRange.single(DateTime day) : this(day, day);

  final DateTime start;
  final DateTime end;

  static DateTime _day(DateTime d) => DateTime(d.year, d.month, d.day);

  /// 日数。
  int get length => end.difference(start).inDays + 1;

  bool contains(DateTime day) {
    final d = _day(day);
    return !d.isBefore(start) && !d.isAfter(end);
  }

  /// 範囲のすべての日(昇順)。
  Iterable<DateTime> get days sync* {
    for (var i = 0; i < length; i++) {
      yield DateTime(start.year, start.month, start.day + i);
    }
  }

  @override
  bool operator ==(Object other) =>
      other is DateRange && other.start == start && other.end == end;

  @override
  int get hashCode => Object.hash(start, end);

  Map<String, Object?> toJson() => {
    'start': start.toIso8601String(),
    'end': end.toIso8601String(),
  };

  @override
  String toString() =>
      'DateRange(${start.toIso8601String()}..${end.toIso8601String()})';
}

/// カレンダーの 1 日。値 [value] は、取得元が決める型(稼働カレンダーなら、休日か・始業・稼働時間)。
class CalendarDay<T> {
  const CalendarDay({
    required this.date,
    this.value,
    this.holiday = false,
    this.label = '',
    this.selectable = true,
  });

  /// 日付(時刻なし)。
  final DateTime date;

  /// 登録された値。登録が無い日は null(既定の曜日の扱い)。
  final T? value;

  /// 休日か(登録した休日・祝日)。土日の色とは別に、休日の色で出す。
  final bool holiday;

  /// セルに添える短い文字(例: 「祝」、稼働時間)。
  final String label;

  /// 選択できるか。false の日は薄く出して、選べない。
  final bool selectable;

  Map<String, Object?> toJson() => {
    'date': date.toIso8601String(),
    'value': value?.toString(),
    'holiday': holiday,
    'label': label,
    'selectable': selectable,
  };
}
