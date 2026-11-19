import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'calendar_day.dart';
import 'calendar_source.dart';
import 'calendar_theme.dart';
import 'holidays_jp.dart';

/// カレンダーの文字(多言語)。既定は日本語。
class CalendarLabels {
  const CalendarLabels({
    this.weekdays = const ['月', '火', '水', '木', '金', '土', '日'],
    this.today = '今日',
    this.previousMonth = '前の月',
    this.nextMonth = '次の月',
    this.monthTitle = _defaultMonthTitle,
    this.holiday = '休',
  });

  /// 曜日の短い名前(月・火・水・木・金・土・日の順。[DateTime.monday] が先頭)。
  final List<String> weekdays;
  final String today;
  final String previousMonth;
  final String nextMonth;

  /// 月の見出し(例: 「2026年11月」)。
  final String Function(DateTime month) monthTitle;

  /// 休日のしるし(セルに添える)。
  final String holiday;

  static String _defaultMonthTitle(DateTime m) => '${m.year}年${m.month}月';
}

/// カレンダーの操作(選択・再読み込み・月の移動)。画面の外から使う。
class CalendarController extends ChangeNotifier {
  DateRange? _selection;
  DateTime? _month;
  int _reloadTick = 0;
  List<DateTime> _selectedDays = const [];

  /// 選んでいる範囲(1 日を選んだときは 1 日の範囲)。無ければ null。
  DateRange? get selection => _selection;

  /// 選んでいる日のうち、選べる日だけ。
  List<DateTime> get selectedDays => _selectedDays;

  /// 表示している月(月の 1 日)。
  DateTime? get month => _month;

  int get reloadTick => _reloadTick;

  void select(DateRange? range, {List<DateTime>? days}) {
    _selection = range;
    _selectedDays = days ?? (range == null ? const [] : range.days.toList());
    notifyListeners();
  }

  void clearSelection() => select(null);

  /// 取得元から読み直す(保存のあとに呼ぶ)。
  void reload() {
    _reloadTick++;
    notifyListeners();
  }

  void goTo(DateTime day) {
    _month = DateTime(day.year, day.month);
    notifyListeners();
  }

  void _setMonth(DateTime month) => _month = DateTime(month.year, month.month);
}

/// 日のセルに、日付の下へ出す中身を作る(null は何も出さない)。
typedef CalendarCellBuilder<T> =
    Widget? Function(BuildContext context, CalendarDay<T> day);

/// 月のカレンダー(月のグリッド)。
///
/// - 1 日を押す = その日を選ぶ。ドラッグ(または Shift を押しながら押す)= 範囲を選ぶ。矢印キーで日を移り、
///   Shift + 矢印キーで範囲を広げ、Esc で選択を解く
/// - 選んだ範囲は [CalendarController.selection] で受け取る(一括変更の操作は呼び出し側が持つ)
/// - 開始曜日([firstWeekday])・表示する曜日([visibleWeekdays])・選べない日([selectable])・日本の祝日の表示
///   ([showJapaneseHolidays])を指定できる。色・大きさは [CalendarTheme](テーマ)
/// - 日ごとの値は [ICalendarSource] で読む。保存したあとは [CalendarController.reload] で読み直す
///
/// パターン: Strategy(取得元の窓口)・Observer(コントローラー)
class CalendarView<T> extends StatefulWidget {
  const CalendarView({
    super.key,
    required this.source,
    required this.controller,
    this.firstWeekday = DateTime.sunday,
    this.visibleWeekdays = const {1, 2, 3, 4, 5, 6, 7},
    this.selectable,
    this.cellBuilder,
    this.labels = const CalendarLabels(),
    this.showJapaneseHolidays = false,
    this.header,
    this.onDayActivated,
  });

  final ICalendarSource<T> source;
  final CalendarController controller;

  /// 週の左端の曜日([DateTime.monday]〜[DateTime.sunday])。
  final int firstWeekday;

  /// 表示する曜日([DateTime.monday]〜[DateTime.sunday]の集合)。空のときは、すべて表示する。
  final Set<int> visibleWeekdays;

  /// 選べる日か。null はすべて選べる。false の日は薄く出し、選べない。
  final bool Function(DateTime day)? selectable;

  /// 日のセルの中身。
  final CalendarCellBuilder<T>? cellBuilder;

  final CalendarLabels labels;

  /// 日本の祝日(国民の祝日)を、休日として表示する(取得元の値とは別。表示だけ)。
  final bool showJapaneseHolidays;

  /// 月の見出しの行の右に置く操作(例: 設備の選択、一括変更のボタン)。
  final Widget? header;

  /// 日をダブルクリック(または Enter)したとき。
  final ValueChanged<DateTime>? onDayActivated;

  @override
  State<CalendarView<T>> createState() => _CalendarViewState<T>();
}

class _CalendarViewState<T> extends State<CalendarView<T>> {
  late DateTime _month;
  Map<DateTime, CalendarDay<T>> _days = {};
  DateTime? _anchor;
  DateTime? _cursor;
  bool _dragging = false;
  DateTime? _panFrom;
  DateTime? _lastTapAt;
  DateTime? _lastTapDay;
  int _loadSeq = 0;
  final _focus = FocusNode(debugLabel: 'calendar');

  CalendarController get _c => widget.controller;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _month = _c.month ?? DateTime(now.year, now.month);
    _c._setMonth(_month);
    _c.addListener(_onController);
    _load();
  }

  @override
  void didUpdateWidget(CalendarView<T> old) {
    super.didUpdateWidget(old);
    if (old.controller != widget.controller) {
      old.controller.removeListener(_onController);
      widget.controller.addListener(_onController);
    }
    if (old.source != widget.source) _load();
  }

  @override
  void dispose() {
    _c.removeListener(_onController);
    _focus.dispose();
    super.dispose();
  }

  int _lastTick = 0;

  void _onController() {
    final m = _c.month;
    if (m != null && m != _month) {
      _month = m;
      _load();
    } else if (_c.reloadTick != _lastTick) {
      _load();
    }
    _lastTick = _c.reloadTick;
    if (mounted) setState(() {});
  }

  /// 表示している週の並び(開始曜日から、表示する曜日だけ)。
  List<int> get _columns {
    final visible = widget.visibleWeekdays.isEmpty
        ? const {1, 2, 3, 4, 5, 6, 7}
        : widget.visibleWeekdays;
    return [
      for (var i = 0; i < 7; i++)
        if (visible.contains((widget.firstWeekday - 1 + i) % 7 + 1))
          (widget.firstWeekday - 1 + i) % 7 + 1,
    ];
  }

  /// 月のグリッドの先頭の日(月の 1 日を含む週の、開始曜日)。
  DateTime get _gridStart {
    final first = DateTime(_month.year, _month.month, 1);
    final back = (first.weekday - widget.firstWeekday) % 7;
    return DateTime(first.year, first.month, 1 - back);
  }

  /// グリッドの週の数。
  int get _weeks {
    final first = DateTime(_month.year, _month.month, 1);
    final back = (first.weekday - widget.firstWeekday) % 7;
    final last = DateTime(_month.year, _month.month + 1, 0).day;
    return ((back + last) / 7).ceil();
  }

  DateRange get _gridRange => DateRange(
    _gridStart,
    DateTime(
      _gridStart.year,
      _gridStart.month,
      _gridStart.day + _weeks * 7 - 1,
    ),
  );

  Future<void> _load() async {
    final seq = ++_loadSeq;
    final loaded = await widget.source.load(_gridRange);
    if (!mounted || seq != _loadSeq) return;
    setState(
      () => _days = {for (final d in loaded) DateRange.single(d.date).start: d},
    );
  }

  bool _isSelectable(DateTime day) => widget.selectable?.call(day) ?? true;

  CalendarDay<T> _dayOf(DateTime date) {
    final loaded = _days[date];
    final holidayName = widget.showJapaneseHolidays
        ? japaneseHolidayName(date)
        : null;
    final selectable = _isSelectable(date);
    if (loaded == null) {
      return CalendarDay<T>(
        date: date,
        holiday: holidayName != null,
        label: holidayName ?? '',
        selectable: selectable,
      );
    }
    return CalendarDay<T>(
      date: date,
      value: loaded.value,
      holiday: loaded.holiday || holidayName != null,
      label: loaded.label.isNotEmpty ? loaded.label : (holidayName ?? ''),
      selectable: selectable,
    );
  }

  void _move(int months) {
    setState(() => _month = DateTime(_month.year, _month.month + months));
    _c._setMonth(_month);
    _c.clearSelection();
    _anchor = null;
    _load();
  }

  void _goToday() {
    final now = DateTime.now();
    setState(() => _month = DateTime(now.year, now.month));
    _c._setMonth(_month);
    _load();
  }

  // --- 位置 → 日付 ---

  DateTime? _dateAt(Offset local, double width) {
    final cols = _columns;
    if (cols.isEmpty) return null;
    final theme = CalendarTheme.of(context);
    final cellW = width / cols.length;
    final rowH = theme.cellHeight + theme.spacing;
    final col = (local.dx / cellW).floor();
    final row = (local.dy / rowH).floor();
    if (col < 0 || col >= cols.length || row < 0 || row >= _weeks) return null;
    final weekday = cols[col];
    final offset = (weekday - widget.firstWeekday) % 7;
    return DateTime(
      _gridStart.year,
      _gridStart.month,
      _gridStart.day + row * 7 + offset,
    );
  }

  void _applySelection(DateTime a, DateTime b) {
    final range = DateRange(a, b);
    final days = [
      for (final d in range.days)
        if (_isSelectable(d)) d,
    ];
    _c.select(days.isEmpty ? null : range, days: days);
  }

  void _select(DateTime day, {bool extend = false}) {
    if (!_isSelectable(day)) return;
    _cursor = day;
    if (extend && _anchor != null) {
      _applySelection(_anchor!, day);
    } else {
      _anchor = day;
      _applySelection(day, day);
    }
    _focus.requestFocus();
  }

  KeyEventResult _onKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent && event is! KeyRepeatEvent) {
      return KeyEventResult.ignored;
    }
    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.escape) {
      _c.clearSelection();
      _anchor = null;
      return KeyEventResult.handled;
    }
    final base = _cursor ?? DateTime(_month.year, _month.month, 1);
    final delta = switch (key) {
      LogicalKeyboardKey.arrowLeft => -1,
      LogicalKeyboardKey.arrowRight => 1,
      LogicalKeyboardKey.arrowUp => -7,
      LogicalKeyboardKey.arrowDown => 7,
      _ => 0,
    };
    if (delta != 0) {
      final next = DateTime(base.year, base.month, base.day + delta);
      if (next.month != _month.month || next.year != _month.year) {
        _move((next.year - _month.year) * 12 + next.month - _month.month);
      }
      _select(next, extend: HardwareKeyboard.instance.isShiftPressed);
      return KeyEventResult.handled;
    }
    if ((key == LogicalKeyboardKey.enter ||
            key == LogicalKeyboardKey.numpadEnter) &&
        _cursor != null) {
      widget.onDayActivated?.call(_cursor!);
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  // --- 表示 ---

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _header(theme),
        const SizedBox(height: 8),
        _weekdayRow(theme),
        const SizedBox(height: 4),
        LayoutBuilder(
          builder: (context, constraints) => Focus(
            focusNode: _focus,
            onKeyEvent: _onKey,
            child: _grid(constraints.maxWidth),
          ),
        ),
      ],
    );
  }

  Widget _header(ThemeData theme) => Row(
    children: [
      IconButton(
        key: const ValueKey('calendarPrev'),
        tooltip: widget.labels.previousMonth,
        icon: const Icon(Icons.chevron_left),
        onPressed: () => _move(-1),
      ),
      Text(
        widget.labels.monthTitle(_month),
        key: const ValueKey('calendarTitle'),
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      IconButton(
        key: const ValueKey('calendarNext'),
        tooltip: widget.labels.nextMonth,
        icon: const Icon(Icons.chevron_right),
        onPressed: () => _move(1),
      ),
      TextButton(
        key: const ValueKey('calendarToday'),
        onPressed: _goToday,
        child: Text(widget.labels.today),
      ),
      const Spacer(),
      // 幅が足りないときは縮む(はみ出さない)
      if (widget.header != null) Flexible(child: widget.header!),
    ],
  );

  Color _weekdayColor(CalendarTheme t, int weekday, ThemeData theme) =>
      switch (weekday) {
        DateTime.sunday => t.sunday,
        DateTime.saturday => t.saturday,
        _ => theme.colorScheme.onSurfaceVariant,
      };

  Widget _weekdayRow(ThemeData theme) {
    final t = CalendarTheme.of(context);
    return Row(
      children: [
        for (final w in _columns)
          Expanded(
            child: Center(
              child: Text(
                widget.labels.weekdays[w - 1],
                style: theme.textTheme.labelLarge?.copyWith(
                  color: _weekdayColor(t, w, theme),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _grid(double width) {
    final t = CalendarTheme.of(context);
    final cols = _columns;
    final rowH = t.cellHeight + t.spacing;
    final selection = _c.selection;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      supportedDevices: const {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
        PointerDeviceKind.stylus,
      },
      onTapUp: (d) {
        final day = _dateAt(d.localPosition, width);
        if (day == null) return;
        // 同じ日を続けて押したら、二度押し(日の操作を開く)
        final now = DateTime.now();
        final last = _lastTapAt;
        final repeated =
            last != null &&
            _lastTapDay == day &&
            now.difference(last) < const Duration(milliseconds: 350);
        _lastTapAt = now;
        _lastTapDay = day;
        if (repeated && _isSelectable(day)) {
          widget.onDayActivated?.call(day);
          return;
        }
        _select(day, extend: HardwareKeyboard.instance.isShiftPressed);
      },
      onPanDown: (d) => _panFrom = _dateAt(d.localPosition, width),
      onPanStart: (d) {
        final day = _panFrom ?? _dateAt(d.localPosition, width);
        if (day == null || !_isSelectable(day)) return;
        _dragging = true;
        _anchor = day;
        _cursor = day;
        _applySelection(day, day);
        _focus.requestFocus();
      },
      onPanUpdate: (d) {
        if (!_dragging || _anchor == null) return;
        final day = _dateAt(d.localPosition, width);
        if (day != null) {
          _cursor = day;
          _applySelection(_anchor!, day);
        }
      },
      onPanEnd: (_) => _dragging = false,
      onPanCancel: () => _dragging = false,
      child: SizedBox(
        height: rowH * _weeks,
        child: Column(
          children: [
            for (var r = 0; r < _weeks; r++)
              SizedBox(
                height: rowH,
                child: Row(
                  children: [
                    for (final w in cols)
                      Expanded(
                        child: _cell(
                          DateTime(
                            _gridStart.year,
                            _gridStart.month,
                            _gridStart.day +
                                r * 7 +
                                (w - widget.firstWeekday) % 7,
                          ),
                          t,
                          selection,
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _cell(DateTime date, CalendarTheme t, DateRange? selection) {
    final theme = Theme.of(context);
    final day = _dayOf(date);
    final inMonth = date.month == _month.month;
    final selected = selection?.contains(date) ?? false;
    final today = DateUtils.isSameDay(date, DateTime.now());
    final Color numberColor;
    if (!day.selectable) {
      numberColor = t.disabled;
    } else if (day.holiday || date.weekday == DateTime.sunday) {
      numberColor = day.holiday ? t.holiday : t.sunday;
    } else if (date.weekday == DateTime.saturday) {
      numberColor = t.saturday;
    } else {
      numberColor = theme.colorScheme.onSurface;
    }
    final background = selected
        ? t.selection
        : day.holiday
        ? t.holidayBackground
        : null;
    final custom = widget.cellBuilder?.call(context, day);
    return Padding(
      padding: EdgeInsets.all(t.spacing / 2),
      child: Container(
        key: ValueKey('day:${date.year}-${date.month}-${date.day}'),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(t.cellRadius),
          border: Border.all(
            color: today ? t.today : theme.dividerColor.withValues(alpha: 0.5),
            width: today ? 2 : 1,
          ),
        ),
        padding: const EdgeInsets.all(6),
        child: Opacity(
          opacity: inMonth ? 1 : 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '${date.day}',
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: numberColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (day.label.isNotEmpty && day.holiday) ...[
                    const SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        day.label,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: t.holiday,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              if (custom != null) Expanded(child: custom),
            ],
          ),
        ),
      ),
    );
  }
}
