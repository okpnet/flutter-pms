import 'package:app_shell/app_shell.dart';
import 'package:calendar_lib/calendar_lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../i18n/strings_provider.dart';
import 'work_calendar_source.dart';

/// 稼働カレンダー(実際のカレンダー表示。`calendar_lib`)。
///
/// 日を選ぶ・範囲を選んで、休日・始業時刻・稼働時間・備考を一括で変更できる。設備を選ぶと、その設備だけの
/// 特別な日(上書き)を扱う。祝日の一括取り込みと、登録を消して既定に戻す操作つき。
/// 範囲の保存は日ごとの保存で、保存できなかった日は件数で知らせる(部分成功)。
class WorkCalendarPage extends ConsumerStatefulWidget {
  const WorkCalendarPage({super.key, required this.scope});

  final EntityScope scope;

  @override
  ConsumerState<WorkCalendarPage> createState() => _WorkCalendarPageState();
}

class _WorkCalendarPageState extends ConsumerState<WorkCalendarPage> {
  final _controller = CalendarController();
  final _start = TextEditingController(text: '08:00');
  final _interval = TextEditingController(text: '08:00');
  final _remarks = TextEditingController();
  bool _holiday = false;
  String _equipment = '';
  List<EntityOption> _equipments = const [];
  String? _message;
  bool _error = false;
  bool _busy = false;

  static final _time = RegExp(r'^([01]?\d|2[0-3]):[0-5]\d$');

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onSelection);
    _loadEquipments();
  }

  @override
  void dispose() {
    _controller.removeListener(_onSelection);
    _controller.dispose();
    _start.dispose();
    _interval.dispose();
    _remarks.dispose();
    super.dispose();
  }

  IEntityRepository get _repository =>
      widget.scope.catalog.repository('workcalendar')!;

  WorkCalendarSource get _source =>
      WorkCalendarSource(_repository, equipmentId: _equipment);

  Future<void> _loadEquipments() async {
    final options = await loadReferenceOptions(
      widget.scope.catalog,
      _repository.definition,
    );
    if (mounted) setState(() => _equipments = options['equipment'] ?? const []);
  }

  void _onSelection() {
    if (mounted) setState(() {});
  }

  String _dateText(DateTime d) => WorkCalendarSource.dateText(d);

  String? _validate(ResourceStrings t) {
    if (!_time.hasMatch(_start.text.trim()) ||
        !_time.hasMatch(_interval.text.trim())) {
      return t.calendar.invalidTime;
    }
    return null;
  }

  String _pad(String hhmm) {
    final p = hhmm.trim().split(':');
    return '${p[0].padLeft(2, '0')}:${p[1]}';
  }

  Future<void> _run(Future<String> Function() body) async {
    setState(() {
      _busy = true;
      _message = null;
    });
    try {
      final text = await body();
      if (mounted) {
        setState(() {
          _message = text;
          _error = false;
        });
      }
    } finally {
      if (mounted) setState(() => _busy = false);
      _controller.reload();
    }
  }

  Future<void> _apply(ResourceStrings t) async {
    final range = _controller.selection;
    if (range == null) return;
    final invalid = _validate(t);
    if (invalid != null) {
      setState(() {
        _message = invalid;
        _error = true;
      });
      return;
    }
    final value = WorkDay(
      holiday: _holiday,
      startTime: _pad(_start.text),
      workInterval: _pad(_interval.text),
      remarks: _remarks.text,
    );
    await _run(() async {
      // 選べる日だけ(選べない日は含めない)を、日ごとに保存する
      var failed = 0;
      for (final d in _controller.selectedDays) {
        failed += (await _source.save(DateRange.single(d), value)).length;
      }
      if (failed > 0) {
        _error = true;
        return t.calendar.failed(count: failed);
      }
      return t.calendar.saved;
    });
  }

  Future<void> _reset(ResourceStrings t) async {
    if (_controller.selection == null) return;
    await _run(() async {
      var failed = 0;
      for (final d in _controller.selectedDays) {
        failed += (await _source.clear(DateRange.single(d))).length;
      }
      if (failed > 0) {
        _error = true;
        return t.calendar.failed(count: failed);
      }
      return t.calendar.saved;
    });
  }

  Future<void> _importHolidays(ResourceStrings t) async {
    final year = (_controller.month ?? DateTime.now()).year;
    await _run(() async {
      final source = _source;
      final registered = await source.registeredDays(
        DateRange(DateTime(year, 1, 1), DateTime(year, 12, 31)),
      );
      var count = 0;
      var failed = 0;
      for (final e in japaneseHolidays(year).entries) {
        if (registered.contains(e.key)) continue;
        final r = await source.save(
          DateRange.single(e.key),
          WorkDay(holiday: true, remarks: e.value),
        );
        if (r.isEmpty) {
          count++;
        } else {
          failed++;
        }
      }
      if (failed > 0) {
        _error = true;
        return t.calendar.failed(count: failed);
      }
      return t.calendar.importDone(count: count);
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(resourceStringsProvider);
    final scope = widget.scope;
    return ScreenScaffold(
      title: scope.labels.entity('workcalendar'),
      breadcrumbs: [
        if (scope.groupLabel.isNotEmpty) BreadcrumbItem(scope.groupLabel),
      ],
      asOf: scope.asOfText,
      backLabel: scope.strings.back,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final wide = constraints.maxWidth >= 900;
          final calendar = _calendarCard(t);
          final panel = _panel(t);
          return SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: EntityListPage.contentWidth(constraints.maxWidth),
                child: wide
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Expanded(flex: 3, child: calendar),
                          SizedBox(width: 320, child: panel),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        spacing: 16,
                        children: [calendar, panel],
                      ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _calendarCard(ResourceStrings t) {
    final theme = Theme.of(context);
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 8,
          children: [
            CalendarView<WorkDay>(
              // 設備を変えたら、取得元ごと作り直す
              key: ValueKey('calendar:$_equipment'),
              source: _source,
              controller: _controller,
              firstWeekday: ref.watch(calendarFirstWeekdayProvider),
              visibleWeekdays: ref.watch(calendarVisibleWeekdaysProvider),
              showJapaneseHolidays: true,
              header: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 260),
                child: DropdownButton<String>(
                  key: const ValueKey('calendarEquipment'),
                  isExpanded: true,
                  value: _equipment,
                  items: [
                    DropdownMenuItem(
                      value: '',
                      child: Text(t.calendar.allEquipment),
                    ),
                    for (final o in _equipments)
                      DropdownMenuItem(value: o.id, child: Text(o.label)),
                  ],
                  onChanged: (v) {
                    _controller.clearSelection();
                    setState(() => _equipment = v ?? '');
                  },
                ),
              ),
              cellBuilder: (context, day) => day.value == null || day.holiday
                  ? null
                  : Text(
                      day.label,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
            ),
            Text(
              t.calendar.legend,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            Text(
              t.calendar.defaultNote,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _panel(ResourceStrings t) {
    final theme = Theme.of(context);
    final range = _controller.selection;
    final String summary;
    if (range == null) {
      summary = t.calendar.noSelection;
    } else if (range.length == 1) {
      summary = t.calendar.selectedOne(date: _dateText(range.start));
    } else {
      summary = t.calendar.selectedRange(
        from: _dateText(range.start),
        to: _dateText(range.end),
        count: _controller.selectedDays.length,
      );
    }
    final enabled = range != null && !_busy;
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 12,
          children: [
            Text(
              summary,
              key: const ValueKey('calendarSummary'),
              style: theme.textTheme.titleSmall,
            ),
            SwitchListTile(
              key: const ValueKey('calendarHoliday'),
              contentPadding: EdgeInsets.zero,
              title: Text(t.calendar.holiday),
              value: _holiday,
              onChanged: enabled ? (v) => setState(() => _holiday = v) : null,
            ),
            TextField(
              key: const ValueKey('calendarStart'),
              controller: _start,
              enabled: enabled && !_holiday,
              decoration: InputDecoration(
                labelText: t.calendar.startTime,
                isDense: true,
              ),
            ),
            TextField(
              key: const ValueKey('calendarInterval'),
              controller: _interval,
              enabled: enabled && !_holiday,
              decoration: InputDecoration(
                labelText: t.calendar.workInterval,
                isDense: true,
              ),
            ),
            TextField(
              key: const ValueKey('calendarRemarks'),
              controller: _remarks,
              enabled: enabled,
              decoration: InputDecoration(
                labelText: t.calendar.remarks,
                isDense: true,
              ),
            ),
            FilledButton(
              key: const ValueKey('calendarApply'),
              onPressed: enabled ? () => _apply(t) : null,
              child: Text(t.calendar.apply),
            ),
            OutlinedButton(
              key: const ValueKey('calendarReset'),
              onPressed: enabled ? () => _reset(t) : null,
              child: Text(t.calendar.reset),
            ),
            const Divider(),
            Text(
              t.calendar.importHint,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            OutlinedButton.icon(
              key: const ValueKey('calendarImportHolidays'),
              icon: const Icon(Icons.event_available_outlined, size: 18),
              onPressed: _busy ? null : () => _importHolidays(t),
              label: Text(t.calendar.importHolidays),
            ),
            if (_message != null)
              Text(
                _message!,
                key: const ValueKey('calendarMessage'),
                style: TextStyle(
                  color: _error
                      ? theme.colorScheme.error
                      : theme.colorScheme.primary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
