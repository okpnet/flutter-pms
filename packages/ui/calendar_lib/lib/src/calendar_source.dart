import 'calendar_day.dart';

/// カレンダーの取得元の窓口(Repository / Strategy)。画面は、保存先(GraphQL・メモリ)を知らない。
abstract interface class ICalendarSource<T> {
  /// [range] の日の値を読む(登録が無い日は含めなくてよい)。
  Future<List<CalendarDay<T>>> load(DateRange range);

  /// [range] のすべての日に [value] を保存する(日ごとの保存。1 つのトランザクションにしない)。
  /// 保存できなかった日を返す(すべて成功なら空)。
  Future<List<DateTime>> save(DateRange range, T value);

  /// [range] のすべての日の登録を消す(既定の扱いに戻す)。保存できなかった日を返す。
  Future<List<DateTime>> clear(DateRange range);
}

/// メモリ上の取得元(テスト・example 用)。
class InMemoryCalendarSource<T> implements ICalendarSource<T> {
  InMemoryCalendarSource({
    Map<DateTime, T>? initial,
    this.isHoliday,
    this.labelOf,
    this.failOn = const {},
  }) {
    if (initial != null) {
      for (final e in initial.entries) {
        _values[DateRange.single(e.key).start] = e.value;
      }
    }
  }

  final bool Function(T value)? isHoliday;
  final String Function(T value)? labelOf;

  /// 保存に失敗させる日(テスト用)。
  final Set<DateTime> failOn;

  final Map<DateTime, T> _values = {};

  /// 保存されている値(テスト用)。
  Map<DateTime, T> get values => Map.unmodifiable(_values);

  @override
  Future<List<CalendarDay<T>>> load(DateRange range) async => [
    for (final d in range.days)
      if (_values.containsKey(d))
        CalendarDay<T>(
          date: d,
          value: _values[d],
          holiday: isHoliday?.call(_values[d] as T) ?? false,
          label: labelOf?.call(_values[d] as T) ?? '',
        ),
  ];

  @override
  Future<List<DateTime>> save(DateRange range, T value) async {
    final failed = <DateTime>[];
    for (final d in range.days) {
      if (failOn.contains(d)) {
        failed.add(d);
      } else {
        _values[d] = value;
      }
    }
    return failed;
  }

  @override
  Future<List<DateTime>> clear(DateRange range) async {
    final failed = <DateTime>[];
    for (final d in range.days) {
      if (failOn.contains(d)) {
        failed.add(d);
      } else {
        _values.remove(d);
      }
    }
    return failed;
  }
}
