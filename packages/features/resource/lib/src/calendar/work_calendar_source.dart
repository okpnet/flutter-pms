import 'package:calendar_lib/calendar_lib.dart';
import 'package:entity_screens/entity_screens.dart';

/// 稼働カレンダーの 1 日の値(DB `mstr_work_calendar` の列に対応)。
class WorkDay {
  const WorkDay({
    this.holiday = false,
    this.startTime = '08:00',
    this.workInterval = '08:00',
    this.remarks = '',
  });

  /// 休日か(`holiday`)。
  final bool holiday;

  /// 始業時刻(`start_time`。HH:MM)。
  final String startTime;

  /// 稼働時間(`work_interval`。HH:MM)。
  final String workInterval;

  /// 備考(`remarks`)。
  final String remarks;

  factory WorkDay.fromRecord(EntityRecord r) => WorkDay(
    holiday: r.valueOf('holiday') == flagOn,
    startTime: r.valueOf('start_time'),
    workInterval: r.valueOf('work_interval'),
    remarks: r.valueOf('remarks'),
  );

  Map<String, Object?> toJson() => {
    'holiday': holiday,
    'startTime': startTime,
    'workInterval': workInterval,
    'remarks': remarks,
  };

  @override
  String toString() =>
      'WorkDay(holiday: $holiday, $startTime, $workInterval, $remarks)';
}

/// 稼働カレンダーの取得元(Adapter)。実体の取得元([IEntityRepository])を、カレンダーの窓口にする。
/// 取得元がメモリでも GraphQL でも同じに動く。
///
/// [equipmentId] が空のときは全体(設備の空の行)、設備の id のときは、その設備の特別な日(上書き)だけを扱う。
class WorkCalendarSource implements ICalendarSource<WorkDay> {
  WorkCalendarSource(this.repository, {this.equipmentId = ''});

  final IEntityRepository repository;
  final String equipmentId;

  static DateTime? _dateOf(String text) {
    final d = DateTime.tryParse(text);
    return d == null ? null : DateTime(d.year, d.month, d.day);
  }

  static String dateText(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  /// 対象の設備(または全体)の、日付 → 行。
  Future<Map<DateTime, EntityRecord>> _records(DateRange range) async {
    final result = <DateTime, EntityRecord>{};
    for (final r in await repository.find(take: 100000)) {
      if (r.valueOf('equipment') != equipmentId) continue;
      final d = _dateOf(r.valueOf('work_date'));
      if (d != null && range.contains(d)) result[d] = r;
    }
    return result;
  }

  @override
  Future<List<CalendarDay<WorkDay>>> load(DateRange range) async => [
    for (final e in (await _records(range)).entries)
      () {
        final v = WorkDay.fromRecord(e.value);
        return CalendarDay<WorkDay>(
          date: e.key,
          value: v,
          holiday: v.holiday,
          label: v.holiday ? v.remarks : v.workInterval,
        );
      }(),
  ];

  @override
  Future<List<DateTime>> save(DateRange range, WorkDay value) async {
    final existing = await _records(range);
    final failed = <DateTime>[];
    for (final d in range.days) {
      try {
        await repository.save(
          EntityRecord(
            id: existing[d]?.id ?? '',
            values: {
              'work_date': dateText(d),
              'equipment': equipmentId,
              'start_time': value.startTime,
              'work_interval': value.workInterval,
              'holiday': value.holiday ? flagOn : '',
              'remarks': value.remarks,
            },
          ),
        );
      } catch (_) {
        failed.add(d);
      }
    }
    return failed;
  }

  @override
  Future<List<DateTime>> clear(DateRange range) async {
    final existing = await _records(range);
    final failed = <DateTime>[];
    for (final d in range.days) {
      final r = existing[d];
      if (r == null) continue;
      try {
        await repository.remove(r.id);
      } catch (_) {
        failed.add(d);
      }
    }
    return failed;
  }

  /// [range] の日のうち、登録がある日(祝日の取り込みで上書きしないため)。
  Future<Set<DateTime>> registeredDays(DateRange range) async =>
      (await _records(range)).keys.toSet();
}
