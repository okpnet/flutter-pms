/// 日本の国民の祝日(2000〜2099 年。振替休日・国民の休日を含む)。日付(時刻なし)→ 名前。
///
/// 祝日の一括取り込み(稼働カレンダーの休日の登録)に使う。春分・秋分は近似式(1980〜2099 年)。
/// 2019 年の即位の日・即位礼正殿の儀、2020・2021 年のオリンピックによる祝日の移動を含む。
Map<DateTime, String> japaneseHolidays(int year) {
  final holidays = <DateTime, String>{};
  void add(int month, int day, String name) =>
      holidays[DateTime(year, month, day)] = name;

  // 第 n 月曜日
  DateTime nthMonday(int month, int n) {
    final first = DateTime(year, month, 1);
    final offset = (DateTime.monday - first.weekday) % 7;
    return DateTime(year, month, 1 + offset + (n - 1) * 7);
  }

  add(1, 1, '元日');
  final comingOfAge = nthMonday(1, 2);
  holidays[comingOfAge] = '成人の日';
  add(2, 11, '建国記念の日');
  if (year >= 2020) add(2, 23, '天皇誕生日');
  add(3, _springEquinox(year), '春分の日');
  add(4, 29, year >= 2007 ? '昭和の日' : 'みどりの日');
  add(5, 3, '憲法記念日');
  add(5, 4, 'みどりの日');
  add(5, 5, 'こどもの日');
  if (year == 2019) {
    add(5, 1, '天皇の即位の日');
    add(10, 22, '即位礼正殿の儀');
  }
  // 海の日・山の日・スポーツの日(2020・2021 年はオリンピックのため移動)
  switch (year) {
    case 2020:
      add(7, 23, '海の日');
      add(7, 24, 'スポーツの日');
      add(8, 10, '山の日');
    case 2021:
      add(7, 22, '海の日');
      add(7, 23, 'スポーツの日');
      add(8, 8, '山の日');
    default:
      holidays[nthMonday(7, 3)] = '海の日';
      add(8, 11, '山の日');
      holidays[nthMonday(10, 2)] = year >= 2020 ? 'スポーツの日' : '体育の日';
  }
  holidays[nthMonday(9, 3)] = '敬老の日';
  add(9, _autumnEquinox(year), '秋分の日');
  add(11, 3, '文化の日');
  add(11, 23, '勤労感謝の日');
  if (year >= 1989 && year <= 2018) add(12, 23, '天皇誕生日');

  // 国民の休日: 前日と翌日が祝日の平日(日曜・祝日以外)
  final days = holidays.keys.toList();
  for (final d in days) {
    final next = DateTime(d.year, d.month, d.day + 2);
    final between = DateTime(d.year, d.month, d.day + 1);
    if (holidays.containsKey(next) &&
        !holidays.containsKey(between) &&
        between.weekday != DateTime.sunday &&
        between.year == year) {
      holidays[between] = '国民の休日';
    }
  }
  // 振替休日: 祝日が日曜のとき、次の祝日でない日
  for (final d in List.of(holidays.keys)) {
    if (d.weekday != DateTime.sunday) continue;
    var sub = DateTime(d.year, d.month, d.day + 1);
    while (holidays.containsKey(sub)) {
      sub = DateTime(sub.year, sub.month, sub.day + 1);
    }
    if (sub.year == year) holidays[sub] = '振替休日';
  }
  return Map.fromEntries(
    holidays.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
  );
}

/// 日付 [day] が祝日なら、その名前。祝日でなければ null。
String? japaneseHolidayName(DateTime day) =>
    japaneseHolidays(day.year)[DateTime(day.year, day.month, day.day)];

int _springEquinox(int year) =>
    (20.8431 + 0.242194 * (year - 1980) - ((year - 1980) ~/ 4)).floor();

int _autumnEquinox(int year) =>
    (23.2488 + 0.242194 * (year - 1980) - ((year - 1980) ~/ 4)).floor();
