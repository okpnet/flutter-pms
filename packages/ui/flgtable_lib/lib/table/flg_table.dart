import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';
import 'package:view_responsiveness/responsiveness.dart';

import '../cell/cell_context.dart';
import '../column/child_table_definition.dart';
import '../column/column_definition.dart';
import '../data/condition_matcher.dart';
import '../data/conditions.dart';
import '../data/csv_exporter.dart';
import '../data/load_models.dart';
import '../event/table_events.dart';
import '../label/table_labels.dart';
import '../logging/table_log.dart';
import '../row/row_model.dart';
import '../view/filter_dialog.dart';
import '../view/mobile_toolbar.dart';
import '../view/pagination_panel.dart';
import 'table_config.dart';
import 'table_controller.dart';

/// ジェネリックなテーブル。[items] か [loader] のどちらかでデータを渡す。
///
/// ロガーは Riverpod の [loggerProvider] から取得するため、
/// 祖先に `ProviderScope` が必要。
class FlgTable<T> extends ConsumerStatefulWidget {
  const FlgTable({
    super.key,
    required this.columns,
    this.items,
    this.loader,
    this.config = const TableConfig(),
    this.rowKey,
    this.events,
    this.labels = const TableLabels(),
    this.controller,
    this.pagination = const PaginationBuilders(),
    this.loadingIndicator,
    this.childTable,
    this.mobileBuilder,
  }) : assert(items != null || loader != null, 'items か loader が必要');

  final List<ColumnDefinition<T>> columns;
  final List<T>? items;
  final TableDataLoader<T>? loader;
  final TableConfig config;

  /// 行の同一性を判定するキー。フラグ・選択の保持に使う。null は参照の同一性。
  final Object Function(T item)? rowKey;
  final TableEvents<T>? events;
  final TableLabels labels;
  final FlgTableController<T>? controller;
  final PaginationBuilders pagination;

  /// ローディングのサークル。null は標準のサークル。
  final Widget? loadingIndicator;

  /// 子テーブルの定義(1階層のみ)。
  final ChildTableDefinition<T, dynamic>? childTable;

  /// モバイル表示のタイル。null のときはモバイルでも表形式。
  final Widget Function(BuildContext context, T item)? mobileBuilder;

  @override
  ConsumerState<FlgTable<T>> createState() => _FlgTableState<T>();
}

/// ドラッグ元の窓口。型が同じテーブル同士で行を移動するために使う。
abstract interface class _DragSource {
  Type get itemType;
  void removeDragged(Object? item);
}

class _DragPayload {
  _DragPayload(this.source, this.item);
  final _DragSource source;
  final Object? item;

  /// 長押し後に実際に動かしたか。動かさなければメニュー扱いにする。
  bool moved = false;
}

/// 1行分の表示情報。
class _Entry<T> {
  _Entry(this.item, this.index, this.pinned, this.first);
  final T item;

  /// 表示行リスト内の位置。
  final int index;
  final bool pinned;

  /// グループ階層ごとの「グループの先頭行か」。
  final List<bool> first;
}

class _View<T> {
  _View(
    this.rows,
    this.pinnedCount,
    this.total, {
    required this.all,
    required this.loaded,
  });
  final List<T> rows;
  final int pinnedCount;

  /// フィルタ適用後の件数。
  final int total;

  /// 全件数(フィルタ前)。
  final int all;

  /// 読み込み済み(今の1ページ/これまでに読み込んだ)件数。
  final int loaded;
}

class _Layout<T> {
  _Layout({
    required this.cols,
    required this.widths,
    required this.leadingW,
    required this.frozen,
    required this.scrolling,
    required this.frozenW,
    required this.scrollW,
    required this.viewportW,
    required this.overflow,
  });

  final List<ColumnDefinition<T>> cols;
  final List<double> widths;
  final double leadingW;
  final List<int> frozen;
  final List<int> scrolling;
  final double frozenW;
  final double scrollW;
  final double viewportW;
  final bool overflow;

  double get maxOffset => math.max(0, scrollW - viewportW);
}

class _FlgTableState<T> extends ConsumerState<FlgTable<T>>
    implements TableControllerHost<T>, _DragSource {
  List<T> _source = [];
  List<T>? _syncedItems;
  int _syncedLength = 0;
  int _filteredCount = 0;
  int _totalCount = 0;
  int _page = 0;
  int _visibleCount = 0;
  bool _loading = false;
  Object? _error;
  int _request = 0;

  late SortCondition? _sort;
  late List<FilterCondition> _filters;
  final Map<Object, T> _flagged = {};
  final Set<Object> _selected = {};
  (Object, String)? _selectedCell;
  (Object, String)? _editing;
  final Set<String> _collapsed = {};
  final Set<Object> _expanded = {};
  Object? _actionKey;

  ({int index, bool lower, bool canDrop})? _dropOver;
  Timer? _doubleTapTimer;
  Object? _lastTapKey;
  Offset? _pointerDown;
  bool _pointerSlideArmed = false;

  final _vScroll = ScrollController();
  final _hScroll = ScrollController();
  final _hOffset = ValueNotifier<double>(0);
  final _focus = FocusNode();
  final _editFocus = FocusNode();
  final _editController = TextEditingController();

  _View<T>? _cache;

  // 破棄後(読み込み中に表が作り直されたとき)も使えるよう、initState で確保する。
  late final TableLog _log;
  TableConfig get _cfg => widget.config;
  TableEvents<T> get _events => widget.events ?? TableEvents<T>();
  TableLabels get _labels => widget.labels;

  bool get _remote => widget.loader != null && _cfg.loadMode != LoadMode.none;

  bool get _isTouch =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.fuchsia;

  Object _key(T item) => widget.rowKey?.call(item) ?? item as Object;

  // ---------------------------------------------------------------- 状態

  @override
  void initState() {
    super.initState();
    _log = TableLog(ref.read(loggerProvider));
    _sort = _cfg.initialSort;
    _filters = List.of(_cfg.initialFilters);
    _visibleCount = _cfg.pageSize;
    _hScroll.addListener(() {
      if (_hScroll.hasClients) _hOffset.value = _hScroll.offset;
    });
    _vScroll.addListener(_maybeLoadMore);
    _editFocus.addListener(() {
      if (!_editFocus.hasFocus && _editing != null) _commitEdit();
    });
    widget.controller?.attach(this);
    _initialLoad();
  }

  @override
  void didUpdateWidget(FlgTable<T> old) {
    super.didUpdateWidget(old);
    if (old.controller != widget.controller) {
      old.controller?.detach(this);
      widget.controller?.attach(this);
    }
    if (old.config.rowSelection != widget.config.rowSelection) {
      _selected.clear(); // 選択方式が変わったら選択を解除する
    }
    final items = widget.items;
    if (items != null &&
        (!identical(items, _syncedItems) || items.length != _syncedLength)) {
      _syncStatic();
      _cache = null;
    }
  }

  @override
  void dispose() {
    widget.controller?.detach(this);
    _doubleTapTimer?.cancel();
    _vScroll.dispose();
    _hScroll.dispose();
    _hOffset.dispose();
    _focus.dispose();
    _editFocus.dispose();
    _editController.dispose();
    super.dispose();
  }

  void _syncStatic() {
    final items = widget.items!;
    _source = List.of(items);
    _syncedItems = items;
    _syncedLength = items.length;
  }

  void _initialLoad() {
    if (widget.loader == null) {
      _syncStatic();
    } else if (_remote) {
      _fetch();
    } else {
      _loadOnce();
    }
  }

  Future<void> _loadOnce() async {
    final id = ++_request;
    _loading = true;
    try {
      final r = await widget.loader!(LoadQuery(count: _cfg.pageSize));
      _log.debug('loaded ${r.toJson()}');
      if (!mounted || id != _request) return;
      setState(() {
        _source = List.of(r.items);
        _loading = false;
        _cache = null;
      });
    } catch (e, st) {
      _log.error('load failed', ex: e, trace: st);
      if (!mounted || id != _request) return;
      setState(() {
        _error = e;
        _loading = false;
      });
    }
  }

  /// ローダーに現在のソート/フィルタ/ページで問い合わせる。
  Future<void> _fetch({bool append = false}) async {
    final id = ++_request;
    final size = _cfg.pageSize;
    final start = append
        ? _source.length
        : (_cfg.loadMode == LoadMode.pagination ? _page * size : 0);
    final query = LoadQuery(
      start: start,
      count: size,
      filters: _filters.isEmpty ? null : List.of(_filters),
      sort: _sort,
    );
    if (mounted) {
      setState(() {
        _loading = true;
        _error = null;
      });
    } else {
      _loading = true;
    }
    try {
      final r = await widget.loader!(query);
      _log.debug('loaded ${r.toJson()} query=${query.toJson()}');
      if (!mounted || id != _request) return;
      setState(() {
        _source = append ? [..._source, ...r.items] : List.of(r.items);
        _filteredCount = r.filteredCount;
        _totalCount = r.totalCount;
        _loading = false;
        _cache = null;
      });
    } catch (e, st) {
      _log.error('load failed query=${query.toJson()}', ex: e, trace: st);
      if (!mounted || id != _request) return;
      setState(() {
        _error = e;
        _loading = false;
      });
    }
  }

  void _maybeLoadMore() {
    if (!mounted || _cfg.loadMode != LoadMode.infiniteScroll || _loading) {
      return;
    }
    if (!_vScroll.hasClients) return;
    final p = _vScroll.position;
    if (p.maxScrollExtent - p.pixels > 50) return;
    if (_remote) {
      if (_source.length < _filteredCount) _fetch(append: true);
    } else if (_visibleCount < (_cache?.total ?? 0)) {
      setState(() {
        _visibleCount += _cfg.pageSize;
        _cache = null;
      });
    }
  }

  // ---------------------------------------------------------------- 表示データ

  List<ColumnDefinition<T>> get _visibleColumns =>
      widget.columns.where((c) => c.visible).toList();

  /// グループ化する列(選択順)。最大でも列数未満。
  List<ColumnDefinition<T>> get _groupColumns {
    final byKey = {for (final c in widget.columns) c.key: c};
    final cols = [
      for (final k in _cfg.groupColumnKeys)
        if (byKey[k] != null) byKey[k]!,
    ];
    final max = widget.columns.length - 1;
    return cols.length > max ? cols.take(math.max(0, max)).toList() : cols;
  }

  _View<T> _view() => _cache ??= _computeView();

  _View<T> _computeView() {
    var list = _source;
    int total;
    if (_remote) {
      total = _filteredCount;
    } else {
      list = ConditionMatcher.filter(list, widget.columns, _filters);
      list = ConditionMatcher.sort(list, widget.columns, _sort);
      total = list.length;
      if (_cfg.loadMode == LoadMode.pagination) {
        list = list.skip(_page * _cfg.pageSize).take(_cfg.pageSize).toList();
      } else if (_cfg.loadMode == LoadMode.infiniteScroll) {
        list = list.take(_visibleCount).toList();
      }
    }
    final pinned = _flagged.values.toList();
    var rest = [
      for (final i in list)
        if (!_flagged.containsKey(_key(i))) i,
    ];
    final groups = _groupColumns;
    if (groups.isNotEmpty) {
      rest = ConditionMatcher.stableSort(rest, (a, b) {
        for (final g in groups) {
          final r = ConditionMatcher.compare(g.read(a), g.read(b), g.type);
          if (r != 0) return r;
        }
        return 0;
      });
    }
    return _View(
      [...pinned, ...rest],
      pinned.length,
      total,
      all: _remote ? _totalCount : _source.length,
      loaded: _remote ? _source.length : list.length,
    );
  }

  int _pageCount(_View<T> v) => math.max(1, (v.total / _cfg.pageSize).ceil());

  /// グループ階層ごとの先頭判定と折りたたみを反映した行リスト。
  List<_Entry<T>> _entries(_View<T> v) {
    final groups = _groupColumns;
    final entries = <_Entry<T>>[];
    List<String>? prev;
    for (var i = 0; i < v.rows.length; i++) {
      final item = v.rows[i];
      final pinned = i < v.pinnedCount;
      if (pinned || groups.isEmpty) {
        entries.add(_Entry(item, i, pinned, const []));
        continue;
      }
      final prefixes = <String>[];
      for (var g = 0; g < groups.length; g++) {
        prefixes.add(
          [for (var k = 0; k <= g; k++) groups[k].read(item)].join('\u0000'),
        );
      }
      final first = [
        for (var g = 0; g < groups.length; g++)
          prev == null || prev[g] != prefixes[g],
      ];
      prev = prefixes;
      final hidden = [
        for (var g = 0; g < groups.length; g++)
          _collapsed.contains('$g|${prefixes[g]}') && !first[g],
      ].any((h) => h);
      if (!hidden) entries.add(_Entry(item, i, false, first));
    }
    return entries;
  }

  String _groupKey(_Entry<T> e, int level) {
    final groups = _groupColumns;
    return '$level|${[for (var k = 0; k <= level; k++) groups[k].read(e.item)].join('\u0000')}';
  }

  void _invalidate() => _cache = null;

  // ---------------------------------------------------------------- コントローラ

  @override
  String exportCsv() => CsvExporter.export(widget.columns, _view().rows);

  @override
  Future<void> reload() async {
    if (widget.loader == null) {
      setState(() {
        _syncStatic();
        _invalidate();
      });
    } else if (_remote) {
      await _fetch();
    } else {
      await _loadOnce();
    }
  }

  @override
  List<T> get visibleItems => List.unmodifiable(_view().rows);

  @override
  SortCondition? get sort => _sort;

  @override
  List<FilterCondition> get filters => List.unmodifiable(_filters);

  @override
  void setFilters(List<FilterCondition> filters) => _applyFilters(filters);

  @override
  void setSort(SortCondition? sort) => _applySort(sort);

  // ---------------------------------------------------------------- ソート/フィルタ

  void _onHeaderTap(ColumnDefinition<T> col) {
    if (!_cfg.sortEnabled || !col.sortable) return;
    final next = _sort?.columnKey == col.key
        ? _sort!.reversed
        : SortCondition(col.key);
    final ev = BeforeSortEvent(next);
    _events.onBeforeSort?.call(ev);
    if (ev.cancel) {
      _log.debug('sort canceled $next');
      return;
    }
    _applySort(next);
    _events.onAfterSort?.call(AfterSortEvent(next));
  }

  void _applySort(SortCondition? sort) {
    _log.debug('sort $sort');
    setState(() {
      _sort = sort;
      _page = 0;
      _visibleCount = _cfg.pageSize;
      _invalidate();
    });
    if (_remote) _fetch();
  }

  void _applyFilters(List<FilterCondition> filters) {
    _log.debug('filters $filters');
    setState(() {
      _filters = List.of(filters);
      _page = 0;
      _visibleCount = _cfg.pageSize;
      _invalidate();
    });
    if (_remote) _fetch();
  }

  Future<void> _openFilter(ColumnDefinition<T> col) async {
    if (!_cfg.filterEnabled || !col.filterable) return;
    final current = _filters.where((f) => f.columnKey == col.key).toList();
    final result = await showFilterDialog(
      context,
      columnKey: col.key,
      columnLabel: col.label,
      type: col.type,
      labels: _labels,
      current: current,
    );
    if (result == null || !mounted) return;
    final others = _filters.where((f) => f.columnKey != col.key).toList();
    _applyFilters([...others, ...result.conditions]);
  }

  void _goToPage(int page) {
    setState(() {
      _page = page;
      _invalidate();
    });
    if (_remote) _fetch();
  }

  // ---------------------------------------------------------------- 行操作

  void _delete(T item) {
    final ev = BeforeDeleteEvent<T>(item);
    _events.onBeforeDelete?.call(ev);
    if (ev.cancel) {
      _log.debug('delete canceled');
      setState(() => _actionKey = null);
      return;
    }
    final key = _key(item);
    setState(() {
      _source.removeWhere((e) => _key(e) == key);
      _flagged.remove(key);
      _selected.remove(key);
      if (_remote && _filteredCount > 0) _filteredCount--;
      if (_remote && _totalCount > 0) _totalCount--;
      _actionKey = null;
      _invalidate();
    });
    _events.onAfterDelete?.call(item);
  }

  void _toggleFlag(T item) {
    final key = _key(item);
    if (_flagged.containsKey(key)) {
      setState(() {
        _flagged.remove(key);
        _actionKey = null;
        _invalidate();
      });
    } else {
      final limit = _cfg.flagLimit ?? _cfg.pageSize;
      if (_flagged.length >= limit) {
        _log.error('flag limit exceeded limit=$limit');
        _events.onFlagLimitExceeded?.call(
          FlagLimitExceededEvent(item: item, limit: limit),
        );
        setState(() => _actionKey = null);
        return;
      }
      setState(() {
        _flagged[key] = item;
        _actionKey = null;
        _invalidate();
      });
    }
    _events.onFlagChanged?.call(item);
  }

  /// [item]を[target]の前(または後)へ移動する。
  void _reorder(T item, T target, {required bool after}) {
    if (identical(item, target)) return;
    final k = _key(item);
    final t = _key(target);
    if (k == t) return;
    final itemPinned = _flagged.containsKey(k);
    final targetPinned = _flagged.containsKey(t);
    if (itemPinned != targetPinned) return;
    setState(() {
      if (itemPinned) {
        final order = _flagged.keys.toList()..remove(k);
        order.insert(order.indexOf(t) + (after ? 1 : 0), k);
        final copy = Map.of(_flagged);
        _flagged
          ..clear()
          ..addEntries([
            for (final key in order) MapEntry(key, copy[key] as T),
          ]);
      } else {
        _insertRelative(item, target, after: after);
      }
      _actionKey = null;
      _invalidate();
    });
  }

  void _insertRelative(T item, T target, {required bool after}) {
    final k = _key(item);
    _source.removeWhere((e) => _key(e) == k);
    final at = _source.indexWhere((e) => _key(e) == _key(target));
    _source.insert(at < 0 ? _source.length : at + (after ? 1 : 0), item);
    _writeBack();
  }

  /// 並び順が元のリストと一致する(ソート/フィルタ/グループなし)ときだけ元のリストへ反映する。
  void _writeBack() {
    final items = widget.items;
    if (items == null ||
        _sort != null ||
        _filters.isNotEmpty ||
        _groupColumns.isNotEmpty ||
        _source.length != items.length) {
      return;
    }
    try {
      items.setAll(0, _source);
    } catch (e) {
      _log.debug('source list is not modifiable: $e');
    }
  }

  void _move(_Entry<T> e, int delta, _View<T> v) {
    final at = e.index + delta;
    if (at < 0 || at >= v.rows.length) return;
    _reorder(e.item, v.rows[at], after: delta > 0);
  }

  bool _canMove(_Entry<T> e, int delta, _View<T> v) {
    final at = e.index + delta;
    if (at < 0 || at >= v.rows.length) return false;
    return (at < v.pinnedCount) == e.pinned;
  }

  Future<void> _showMenu(_Entry<T> e, Offset global) async {
    if (!_cfg.rowActionsEnabled) return;
    final v = _view();
    final overlay =
        Overlay.of(context).context.findRenderObject()! as RenderBox;
    final flagged = _flagged.containsKey(_key(e.item));
    final choice = await showMenu<String>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(global.dx, global.dy, 0, 0),
        Offset.zero & overlay.size,
      ),
      items: [
        PopupMenuItem(value: 'delete', child: Text(_labels.delete)),
        PopupMenuItem(
          value: 'flag',
          child: Text(flagged ? _labels.unflag : _labels.flag),
        ),
        PopupMenuItem(
          value: 'up',
          enabled: _canMove(e, -1, v),
          child: Text(_labels.moveUp),
        ),
        PopupMenuItem(
          value: 'down',
          enabled: _canMove(e, 1, v),
          child: Text(_labels.moveDown),
        ),
      ],
    );
    if (!mounted) return;
    switch (choice) {
      case 'delete':
        _delete(e.item);
      case 'flag':
        _toggleFlag(e.item);
      case 'up':
        _move(e, -1, _view());
      case 'down':
        _move(e, 1, _view());
    }
  }

  // ---------------------------------------------------------------- ドラッグドロップ

  @override
  Type get itemType => T;

  @override
  void removeDragged(Object? item) {
    final k = _key(item as T);
    setState(() {
      _source.removeWhere((e) => _key(e) == k);
      _flagged.remove(k);
      _selected.remove(k);
      _invalidate();
    });
  }

  /// 型`T`が同じ(`T`がMapのときはキーも一致)ならドロップできる。
  bool _canAccept(_DragPayload p) {
    if (p.source.itemType != T) return false;
    final dragged = p.item;
    final sample = _source.firstOrNull;
    if (dragged is Map && sample is Map) {
      final a = dragged.keys.toSet();
      final b = sample.keys.toSet();
      return a.length == b.length && a.containsAll(b);
    }
    return true;
  }

  void _onDragMove(
    BuildContext rowContext,
    _Entry<T> e,
    DragTargetDetails<_DragPayload> d,
  ) {
    final box = rowContext.findRenderObject() as RenderBox?;
    if (box == null) return;
    final local = box.globalToLocal(d.offset);
    final lower = local.dy > box.size.height / 2;
    final canDrop = _canAccept(d.data);
    final prev = _dropOver;
    if (prev?.index == e.index && prev?.lower == lower) return;
    setState(
      () => _dropOver = (index: e.index, lower: lower, canDrop: canDrop),
    );
    _events.onDragOver?.call(
      DragOverEvent<T>(
        index: e.index + (lower ? 1 : 0),
        item: e.item,
        canDrop: canDrop,
      ),
    );
  }

  void _onDrop(_Entry<T> e, DragTargetDetails<_DragPayload> d) {
    final lower = _dropOver?.index == e.index ? _dropOver!.lower : false;
    setState(() => _dropOver = null);
    final payload = d.data;
    final item = payload.item as T;
    final fromOther = !identical(payload.source, this);
    final index = e.index + (lower ? 1 : 0);
    final before = BeforeDropEvent<T>(
      index: index,
      item: item,
      fromOtherTable: fromOther,
    );
    _events.onBeforeDrop?.call(before);
    if (before.cancel) {
      _log.debug('drop canceled');
      return;
    }
    if (fromOther) {
      payload.source.removeDragged(item);
      setState(() {
        _insertRelative(item, e.item, after: lower);
        _invalidate();
      });
    } else {
      _reorder(item, e.item, after: lower);
    }
    _log.debug('dropped index=$index fromOther=$fromOther');
    _events.onAfterDrop?.call(
      AfterDropEvent<T>(index: index, item: item, fromOtherTable: fromOther),
    );
  }

  // ---------------------------------------------------------------- 選択/編集

  void _selectRow(Object key) {
    switch (_cfg.rowSelection) {
      case RowSelectionMode.none:
        break;
      case RowSelectionMode.single:
        _selected
          ..clear()
          ..add(key);
      case RowSelectionMode.multiple:
        if (!_selected.remove(key)) _selected.add(key);
    }
  }

  void _startEdit(T item, ColumnDefinition<T> col) {
    _editController.text = col.read(item);
    _editing = (_key(item), col.key);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _editFocus.requestFocus();
    });
  }

  void _commitEdit() {
    final editing = _editing;
    if (editing == null) return;
    final col = widget.columns.where((c) => c.key == editing.$2).firstOrNull;
    final item =
        _source.where((i) => _key(i) == editing.$1).firstOrNull ??
        _flagged[editing.$1];
    final text = _editController.text;
    setState(() => _editing = null);
    if (col == null || item == null || col.setter == null) return;
    if (text == col.read(item)) return;
    bool ok;
    try {
      ok = col.setter!(item, text);
    } catch (e, st) {
      _log.error('setter failed column=${col.key}', ex: e, trace: st);
      ok = false;
    }
    if (!ok) return;
    setState(_invalidate);
    _events.onCellChanged?.call(
      CellChangedEvent<T>(item: item, columnKey: col.key, value: text),
    );
  }

  void _cancelEdit() => setState(() => _editing = null);

  KeyEventResult _onKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    if (event.logicalKey == LogicalKeyboardKey.enter && _editing == null) {
      final sel = _selectedCell;
      if (sel == null) return KeyEventResult.ignored;
      final col = widget.columns.where((c) => c.key == sel.$2).firstOrNull;
      final item = _view().rows.where((i) => _key(i) == sel.$1).firstOrNull;
      if (col?.setter == null || item == null) return KeyEventResult.ignored;
      setState(() => _startEdit(item, col!));
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  // ---------------------------------------------------------------- レイアウト

  /// theme_lib の余白。テーマに登録がなければ標準値(4)を使う。
  double _spacing(BuildContext context) =>
      Theme.of(context).extension<SpaceField>()?.spacing ?? 4;

  double _rowHeight(BuildContext context) {
    if (_cfg.rowHeight != null) return _cfg.rowHeight!;
    final fontSize = DefaultTextStyle.of(context).style.fontSize ?? 14;
    return fontSize * 1.5 + _spacing(context) * 4;
  }

  double _columnWidth(BuildContext context, ColumnDefinition<T> c) {
    if (c.width != null) return c.width!;
    final style = DefaultTextStyle.of(context).style;
    final painter = TextPainter(
      text: TextSpan(text: '0' * _cfg.defaultColumnChars, style: style),
      textDirection: TextDirection.ltr,
    )..layout();
    return painter.width + _spacing(context) * 4;
  }

  bool _isMobile(BuildContext context) {
    final point =
        ResponsiveScope.of(context) ??
        MediaBreakPoint.of(MediaQuery.sizeOf(context).width);
    return point == MediaBreakPoint.mobile;
  }

  /// アイコン1つ分の幅。アイコンは行高の60%。
  double _iconBox(double rowHeight) => rowHeight * 0.6 + 4;

  int get _leadingSlots =>
      _groupColumns.length + (widget.childTable != null ? 1 : 0);

  _Layout<T> _layout(
    BuildContext context,
    double available,
    double rowHeight,
    bool mobile,
  ) {
    final cols = _visibleColumns;
    final base = [for (final c in cols) _columnWidth(context, c)];
    final leadingW = _leadingSlots * _iconBox(rowHeight);
    final sum = base.fold<double>(0, (a, b) => a + b);
    final overflow = leadingW + sum > available;

    var widths = base;
    if (!overflow && sum > 0) {
      final scale = (available - leadingW) / sum;
      widths = [for (final w in base) w * scale];
    }

    var frozen = <int>[];
    final key = _cfg.frozenColumnKey;
    if (key != null && overflow && !mobile) {
      final all = widget.columns;
      final at = all.indexWhere((c) => c.key == key);
      if (at >= 0) {
        for (var i = 0; i < cols.length; i++) {
          if (all.indexOf(cols[i]) <= at) frozen.add(i);
        }
      }
    }
    var frozenW = frozen.fold<double>(0, (a, i) => a + widths[i]);
    // 固定列だけで幅を使い切るときは固定しない。
    if (frozen.isNotEmpty && leadingW + frozenW > available - 100) {
      frozen = [];
      frozenW = 0;
    }
    final scrolling = [
      for (var i = 0; i < cols.length; i++)
        if (!frozen.contains(i)) i,
    ];
    final scrollW = scrolling.fold<double>(0, (a, i) => a + widths[i]);
    return _Layout<T>(
      cols: cols,
      widths: widths,
      leadingW: leadingW,
      frozen: frozen,
      scrolling: scrolling,
      frozenW: frozenW,
      scrollW: scrollW,
      viewportW: math.max(0, available - leadingW - frozenW),
      overflow: overflow && scrollW > available - leadingW - frozenW,
    );
  }

  // ---------------------------------------------------------------- 描画

  @override
  Widget build(BuildContext context) {
    final v = _view();
    if (_cfg.loadMode == LoadMode.pagination && _page >= _pageCount(v)) {
      _page = _pageCount(v) - 1;
    }
    final mobile = _isMobile(context);
    if (mobile && widget.mobileBuilder != null) {
      return _buildMobile(context, v);
    }
    if (_cfg.loadMode == LoadMode.infiniteScroll) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _maybeLoadMore());
    }
    final rowHeight = _rowHeight(context);
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final bounded = constraints.hasBoundedHeight;
        final l = _layout(context, constraints.maxWidth, rowHeight, mobile);
        if (!l.overflow && _hOffset.value != 0) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) _hOffset.value = 0;
          });
        }
        final entries = _entries(v);

        Widget body;
        if (_error != null) {
          body = Padding(
            padding: const EdgeInsets.all(8),
            child: Center(child: Text('$_error')),
          );
        } else if (entries.isEmpty) {
          body = Padding(
            padding: const EdgeInsets.all(8),
            child: Center(child: _loading ? null : Text(_labels.noData)),
          );
        } else {
          Widget list = ListView.builder(
            controller: _vScroll,
            shrinkWrap: !bounded,
            physics: bounded ? null : const NeverScrollableScrollPhysics(),
            itemCount: entries.length,
            itemBuilder: (context, i) =>
                _buildEntry(context, l, entries[i], v, rowHeight),
          );
          if (bounded) {
            list = Scrollbar(
              controller: _vScroll,
              thumbVisibility: true,
              child: list,
            );
          }
          body = list;
        }
        if (l.overflow && _isTouch) {
          body = GestureDetector(
            onHorizontalDragUpdate: (d) =>
                _scrollHorizontallyBy(-d.delta.dx, l),
            child: body,
          );
        }
        body = Listener(
          onPointerSignal: (e) {
            if (e is! PointerScrollEvent || !l.overflow) return;
            var dx = e.scrollDelta.dx;
            if (dx == 0 && HardwareKeyboard.instance.isShiftPressed) {
              dx = e.scrollDelta.dy;
            }
            if (dx != 0) _scrollHorizontallyBy(dx, l);
          },
          child: body,
        );

        final paging = _cfg.loadMode == LoadMode.pagination;
        final table = Focus(
          focusNode: _focus,
          onKeyEvent: _onKey,
          child: Column(
            mainAxisSize: bounded ? MainAxisSize.max : MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ?_countPanel(v, CountPosition.header),
              if (_loading && _cfg.loadingKind == LoadingKind.header)
                _loadingBar(rowHeight),
              _buildHeader(context, l, rowHeight),
              const Divider(height: 1),
              if (bounded) Expanded(child: body) else body,
              if (l.overflow) _buildHorizontalBar(l),
              if (_loading && _cfg.loadingKind == LoadingKind.footer)
                _loadingBar(rowHeight),
              if (paging)
                Padding(
                  padding: EdgeInsets.all(_spacing(context)),
                  child: PaginationPanel(
                    page: _page,
                    pageCount: _pageCount(v),
                    digits: _cfg.paginationDigits,
                    labels: _labels,
                    builders: widget.pagination,
                    onSelect: _goToPage,
                  ),
                ),
              ?_countPanel(v, CountPosition.footer),
            ],
          ),
        );
        return Stack(
          children: [
            table,
            if (_loading && _cfg.loadingKind == LoadingKind.overlay)
              Positioned.fill(
                child: AbsorbPointer(
                  child: ColoredBox(
                    color: theme.colorScheme.surface.withValues(alpha: 0.5),
                    child: Center(child: _indicator(small: false)),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  void _scrollHorizontallyBy(double dx, _Layout<T> l) {
    if (!_hScroll.hasClients) return;
    final target = (_hScroll.offset + dx).clamp(0.0, l.maxOffset);
    _hScroll.jumpTo(target);
  }

  Widget _indicator({required bool small}) =>
      widget.loadingIndicator ??
      (small
          ? const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const CircularProgressIndicator());

  Widget _loadingBar(double rowHeight) => SizedBox(
    key: const Key('loadingBar'),
    height: rowHeight,
    child: Row(
      mainAxisAlignment: switch (_cfg.loadingAlignment) {
        HorizontalPlacement.left => MainAxisAlignment.start,
        HorizontalPlacement.center => MainAxisAlignment.center,
        HorizontalPlacement.right => MainAxisAlignment.end,
      },
      children: [
        const SizedBox(width: 8),
        _indicator(small: true),
        const SizedBox(width: 8),
        Text(_labels.loading),
        const SizedBox(width: 8),
      ],
    ),
  );

  Alignment _cellAlignment(ColumnDefinition<T> col) => switch (col.textAlign) {
    TextAlign.center => Alignment.center,
    TextAlign.right || TextAlign.end => Alignment.centerRight,
    _ => Alignment.centerLeft,
  };

  /// 件数表示。項目が未指定(null/空)、または場所が none のときは null。
  Widget? _countPanel(_View<T> v, CountPosition where) {
    final items = _cfg.countItems;
    if (items == null || items.isEmpty || _cfg.countPosition != where) {
      return null;
    }
    final vertical = _cfg.countDirection == CountDirection.vertical;
    final order = vertical
        ? _cfg.countVerticalOrder
        : _cfg.countHorizontalOrder;
    final texts = [
      for (final item in order)
        if (items.contains(item))
          switch (item) {
            CountItem.total => TableLabels.format(_labels.countTotal, v.all),
            CountItem.filtered => TableLabels.format(
              _labels.countFiltered,
              v.total,
            ),
            CountItem.loaded => TableLabels.format(
              _labels.countLoaded,
              v.loaded,
            ),
          },
    ];
    if (texts.isEmpty) return null;
    final (alignment, cross) = switch (_cfg.countAlignment) {
      HorizontalPlacement.left => (
        Alignment.centerLeft,
        CrossAxisAlignment.start,
      ),
      HorizontalPlacement.center => (
        Alignment.center,
        CrossAxisAlignment.center,
      ),
      HorizontalPlacement.right => (
        Alignment.centerRight,
        CrossAxisAlignment.end,
      ),
    };
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _spacing(context) * 2,
        vertical: _spacing(context) / 2,
      ),
      child: Align(
        key: const Key('countPanel'),
        alignment: alignment,
        child: vertical
            ? Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: cross,
                children: [for (final t in texts) Text(t)],
              )
            : Text(texts.join(' ')),
      ),
    );
  }

  Widget _buildHorizontalBar(_Layout<T> l) => Row(
    children: [
      SizedBox(width: l.leadingW + l.frozenW),
      Expanded(
        child: Scrollbar(
          controller: _hScroll,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: _hScroll,
            scrollDirection: Axis.horizontal,
            child: SizedBox(width: l.scrollW, height: 14),
          ),
        ),
      ),
    ],
  );

  /// 先頭(アイコン領域)・固定列・横スクロール列を1行にまとめる。
  Widget _line(
    _Layout<T> l,
    double height,
    List<Widget> leading,
    List<Widget> frozen,
    List<Widget> scrolling,
  ) {
    return SizedBox(
      height: height,
      child: Row(
        children: [
          if (l.leadingW > 0)
            SizedBox(
              width: l.leadingW,
              child: Row(children: leading),
            ),
          if (l.frozenW > 0)
            SizedBox(
              width: l.frozenW,
              child: Row(children: frozen),
            ),
          Expanded(
            child: ClipRect(
              child: ValueListenableBuilder<double>(
                valueListenable: _hOffset,
                builder: (context, offset, child) => OverflowBox(
                  alignment: Alignment.centerLeft,
                  minWidth: 0,
                  maxWidth: l.scrollW,
                  minHeight: 0,
                  maxHeight: height,
                  child: Transform.translate(
                    offset: Offset(-offset, 0),
                    child: child,
                  ),
                ),
                child: SizedBox(
                  width: l.scrollW,
                  child: Row(children: scrolling),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, _Layout<T> l, double rowHeight) {
    Widget cell(int i) {
      final col = l.cols[i];
      final sorted = _sort?.columnKey == col.key;
      final filterCount = _filters.where((f) => f.columnKey == col.key).length;
      final canSort = _cfg.sortEnabled && col.sortable;
      final canFilter = _cfg.filterEnabled && col.filterable;
      return SizedBox(
        width: l.widths[i],
        height: rowHeight,
        child: GestureDetector(
          key: Key('header.${col.key}'),
          behavior: HitTestBehavior.opaque,
          onTap: canSort ? () => _onHeaderTap(col) : null,
          onSecondaryTap: canFilter ? () => _openFilter(col) : null,
          onLongPress: canFilter ? () => _openFilter(col) : null,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _spacing(context) * 2),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    col.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textStyleMode(size: (t) => t.titleSmall),
                  ),
                ),
                if (sorted)
                  Icon(
                    _sort!.ascending
                        ? Icons.arrow_upward
                        : Icons.arrow_downward,
                    size: 14,
                  ),
                if (filterCount > 0) ...[
                  const Icon(Icons.filter_alt, size: 14),
                  Text(
                    '$filterCount',
                    key: Key('filterCount.${col.key}'),
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ],
            ),
          ),
        ),
      );
    }

    return _line(
      l,
      rowHeight,
      const [],
      [for (final i in l.frozen) cell(i)],
      [for (final i in l.scrolling) cell(i)],
    );
  }

  Widget _buildEntry(
    BuildContext context,
    _Layout<T> l,
    _Entry<T> e,
    _View<T> v,
    double rowHeight,
  ) {
    final key = _key(e.item);
    final row = _buildRow(context, l, e, v, rowHeight);
    final expanded = widget.childTable != null && _expanded.contains(key);
    if (!expanded) return row;
    return Column(
      key: ValueKey(('entry', key)),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        row,
        Padding(
          padding: EdgeInsets.only(left: l.leadingW, bottom: 4, right: 4),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).dividerColor),
            ),
            child: widget.childTable!.build(
              e.item,
              rowHeight: _cfg.rowHeight,
              labels: _labels,
            ),
          ),
        ),
      ],
    );
  }

  Widget _leadingIcon(_Layout<T> l, _Entry<T> e, int slot, double rowHeight) {
    final box = _iconBox(rowHeight);
    final groups = _groupColumns;
    Widget? icon;
    if (slot < groups.length) {
      if (!e.pinned && e.first[slot]) {
        final collapsed = _collapsed.contains(_groupKey(e, slot));
        icon = Icon(
          collapsed
              ? Icons.add_box_outlined
              : Icons.indeterminate_check_box_outlined,
          size: rowHeight * 0.6,
          key: Key('group.${e.index}.$slot'),
        );
      }
    } else if (widget.childTable != null) {
      final open = _expanded.contains(_key(e.item));
      icon = Icon(
        open ? Icons.remove_circle_outline : Icons.add_circle_outline,
        size: rowHeight * 0.6,
        key: Key('child.${e.index}'),
      );
    }
    return SizedBox(
      width: box,
      child: icon == null ? null : Center(child: icon),
    );
  }

  Widget _cell(
    BuildContext context,
    _Layout<T> l,
    int ci,
    _Entry<T> e,
    double rowHeight,
  ) {
    final col = l.cols[ci];
    final key = _key(e.item);
    final groups = _groupColumns;
    final gi = groups.indexWhere((g) => g.key == col.key);
    final hide = gi >= 0 && !e.pinned && !e.first[gi];
    final editing =
        _editing != null && _editing!.$1 == key && _editing!.$2 == col.key;
    final selected = _cfg.cellSelection && _selectedCell == (key, col.key);
    final theme = Theme.of(context);

    Widget child;
    if (editing) {
      child = Focus(
        onKeyEvent: (n, ev) {
          if (ev is KeyDownEvent &&
              ev.logicalKey == LogicalKeyboardKey.escape) {
            _cancelEdit();
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: TextField(
          key: Key('edit.${col.key}'),
          controller: _editController,
          focusNode: _editFocus,
          autofocus: true,
          style: DefaultTextStyle.of(context).style,
          decoration: const InputDecoration(
            isDense: true,
            border: InputBorder.none,
          ),
          onSubmitted: (_) {
            _commitEdit();
            _focus.requestFocus();
          },
        ),
      );
    } else if (hide) {
      child = const SizedBox.shrink();
    } else {
      child = col.renderer.build(
        context,
        CellContext<T>(
          columnKey: col.key,
          rowIndex: e.index,
          item: e.item,
          text: col.read(e.item),
        ),
      );
    }
    return SizedBox(
      width: l.widths[ci],
      height: rowHeight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: selected || editing
              ? Border.all(color: theme.colorScheme.primary)
              : null,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: _spacing(context) * 2),
          child: Align(alignment: _cellAlignment(col), child: child),
        ),
      ),
    );
  }

  Widget _buildRow(
    BuildContext context,
    _Layout<T> l,
    _Entry<T> e,
    _View<T> v,
    double rowHeight,
  ) {
    final theme = Theme.of(context);
    final key = _key(e.item);
    final selected = _selected.contains(key);
    final flagged = _flagged.containsKey(key);

    Widget line;
    if (_actionKey == key && _cfg.rowActionsEnabled) {
      line = _actionBar(e, v, rowHeight);
    } else {
      line = _line(
        l,
        rowHeight,
        [
          for (var s = 0; s < _leadingSlots; s++)
            _leadingIcon(l, e, s, rowHeight),
        ],
        [for (final i in l.frozen) _cell(context, l, i, e, rowHeight)],
        [for (final i in l.scrolling) _cell(context, l, i, e, rowHeight)],
      );
    }

    Widget row = DecoratedBox(
      decoration: BoxDecoration(
        color: selected
            ? theme.colorScheme.primaryContainer.withValues(alpha: 0.6)
            : flagged
            ? theme.colorScheme.tertiaryContainer.withValues(alpha: 0.4)
            : null,
        border: Border(bottom: BorderSide(color: theme.dividerColor)),
      ),
      child: Stack(
        children: [
          line,
          if (flagged)
            const Positioned(
              left: 0,
              top: 0,
              child: Icon(Icons.flag, size: 10),
            ),
        ],
      ),
    );

    row = Listener(
      onPointerDown: (ev) {
        _pointerDown = ev.position;
        _pointerSlideArmed =
            ev.kind == PointerDeviceKind.touch && _hOffset.value <= 0;
      },
      onPointerUp: (ev) {
        final down = _pointerDown;
        _pointerDown = null;
        if (down == null || !_pointerSlideArmed || !_cfg.rowActionsEnabled) {
          return;
        }
        final d = ev.position - down;
        if (d.dx > 60 && d.dy.abs() < 20) {
          setState(() => _actionKey = key);
        }
      },
      child: GestureDetector(
        key: Key('row.${e.index}'),
        behavior: HitTestBehavior.opaque,
        onTapUp: (d) => _onRowTap(l, e, d.localPosition.dx, rowHeight),
        onSecondaryTapUp: (d) => _showMenu(e, d.globalPosition),
        onLongPress: (_cfg.dragEnabled && _isTouch)
            ? null
            : () {
                if (!_isTouch) return;
                _events.onRowActivated?.call(e.item);
                final box = context.findRenderObject() as RenderBox?;
                _showMenu(e, box?.localToGlobal(Offset.zero) ?? Offset.zero);
              },
        child: row,
      ),
    );

    // 子テーブルは行を並べ替えの対象にしない(親の行のみ対象)ため、親と同じ扱い。
    if (_cfg.dragEnabled) {
      row = _draggable(context, e, row, l, rowHeight);
    }

    return Builder(
      key: ValueKey(('row', key)),
      builder: (rowContext) => DragTarget<_DragPayload>(
        onWillAcceptWithDetails: (d) =>
            _cfg.dragEnabled && _canAccept(d.data) && d.data.moved,
        onMove: (d) => _onDragMove(rowContext, e, d),
        onLeave: (_) {
          if (_dropOver?.index == e.index) setState(() => _dropOver = null);
        },
        onAcceptWithDetails: (d) => _onDrop(e, d),
        builder: (context, candidates, rejected) {
          final over = _dropOver;
          final show =
              over != null && over.index == e.index && candidates.isNotEmpty;
          return Stack(
            children: [
              row,
              if (show)
                Positioned(
                  left: 0,
                  right: 0,
                  top: over.lower ? null : 0,
                  bottom: over.lower ? 0 : null,
                  height: 2,
                  child: ColoredBox(color: theme.colorScheme.primary),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _draggable(
    BuildContext context,
    _Entry<T> e,
    Widget child,
    _Layout<T> l,
    double rowHeight,
  ) {
    final payload = _DragPayload(this, e.item);
    final feedback = Material(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          l.cols.isEmpty ? '' : l.cols.first.read(e.item),
          style: DefaultTextStyle.of(context).style,
        ),
      ),
    );
    if (_isTouch) {
      return LongPressDraggable<_DragPayload>(
        data: payload,
        dragAnchorStrategy: pointerDragAnchorStrategy,
        feedback: feedback,
        childWhenDragging: Opacity(opacity: 0.4, child: child),
        onDragStarted: () => payload.moved = false,
        onDragUpdate: (d) {
          if (d.delta.distance > 0) payload.moved = true;
        },
        onDragEnd: (d) {
          if (!payload.moved) {
            _events.onRowActivated?.call(e.item);
            _showMenu(e, d.offset);
          }
        },
        child: child,
      );
    }
    return Draggable<_DragPayload>(
      data: payload..moved = true,
      dragAnchorStrategy: pointerDragAnchorStrategy,
      feedback: feedback,
      childWhenDragging: Opacity(opacity: 0.4, child: child),
      child: child,
    );
  }

  Widget _actionBar(_Entry<T> e, _View<T> v, double rowHeight) {
    final flagged = _flagged.containsKey(_key(e.item));
    Widget button(String id, IconData icon, String tip, VoidCallback? onTap) =>
        IconButton(
          key: Key('rowAction.$id'),
          tooltip: tip,
          iconSize: rowHeight * 0.6,
          padding: EdgeInsets.zero,
          constraints: BoxConstraints.tightFor(
            width: rowHeight,
            height: rowHeight,
          ),
          icon: Icon(icon),
          onPressed: onTap,
        );
    return SizedBox(
      height: rowHeight,
      child: Row(
        children: [
          button(
            'delete',
            Icons.delete_outline,
            _labels.delete,
            () => _delete(e.item),
          ),
          button(
            'flag',
            flagged ? Icons.flag : Icons.flag_outlined,
            flagged ? _labels.unflag : _labels.flag,
            () => _toggleFlag(e.item),
          ),
          button(
            'up',
            Icons.arrow_upward,
            _labels.moveUp,
            _canMove(e, -1, v) ? () => _move(e, -1, _view()) : null,
          ),
          button(
            'down',
            Icons.arrow_downward,
            _labels.moveDown,
            _canMove(e, 1, v) ? () => _move(e, 1, _view()) : null,
          ),
          button(
            'close',
            Icons.close,
            _labels.cancel,
            () => setState(() => _actionKey = null),
          ),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------- タップ

  void _onRowTap(_Layout<T> l, _Entry<T> e, double dx, double rowHeight) {
    _focus.requestFocus();
    final key = _key(e.item);

    if (dx < l.leadingW) {
      final slot = dx ~/ _iconBox(rowHeight);
      setState(() {
        if (slot < _groupColumns.length) {
          if (!e.pinned && e.first[slot]) {
            final k = _groupKey(e, slot);
            if (!_collapsed.remove(k)) _collapsed.add(k);
          }
        } else if (widget.childTable != null) {
          if (!_expanded.remove(key)) _expanded.add(key);
        }
      });
      return;
    }

    // 300ms以内に同じ行をもう一度タップしたらダブルクリック。
    final doubleTap = _lastTapKey == key;
    _doubleTapTimer?.cancel();
    if (doubleTap) {
      _lastTapKey = null;
      _events.onRowActivated?.call(e.item);
      return;
    }
    _lastTapKey = key;
    _doubleTapTimer = Timer(const Duration(milliseconds: 300), () {
      _lastTapKey = null;
    });

    final col = _columnAt(l, dx);
    setState(() {
      if (_editing != null) _commitEdit();
      _selectRow(key);
      if (_cfg.cellSelection && col != null) {
        final cell = (key, col.key);
        if (_selectedCell == cell && col.setter != null) {
          _startEdit(e.item, col);
        } else {
          _selectedCell = cell;
        }
      }
    });
  }

  ColumnDefinition<T>? _columnAt(_Layout<T> l, double dx) {
    var x = dx - l.leadingW;
    if (x < 0) return null;
    if (x < l.frozenW) {
      for (final i in l.frozen) {
        if (x < l.widths[i]) return l.cols[i];
        x -= l.widths[i];
      }
      return null;
    }
    x = x - l.frozenW + _hOffset.value;
    for (final i in l.scrolling) {
      if (x < l.widths[i]) return l.cols[i];
      x -= l.widths[i];
    }
    return null;
  }

  // ---------------------------------------------------------------- モバイル

  Widget _buildMobile(BuildContext context, _View<T> v) {
    final bounded = MediaQuery.sizeOf(context).height.isFinite;
    final filterable = [
      for (final c in widget.columns)
        if (_cfg.filterEnabled && c.filterable && c.visible) (c.key, c.label),
    ];
    final sortable = [
      for (final c in widget.columns)
        if (_cfg.sortEnabled && c.sortable && c.visible) (c.key, c.label),
    ];
    final rows = v.rows;
    final list = ListView.builder(
      controller: _vScroll,
      shrinkWrap: true,
      itemCount: rows.length,
      itemBuilder: (context, i) {
        final item = rows[i];
        final key = _key(item);
        final entry = _Entry<T>(item, i, i < v.pinnedCount, const []);
        return InkWell(
          key: Key('tile.$i'),
          onTap: () => setState(() => _selectRow(key)),
          onLongPress: () {
            _events.onRowActivated?.call(item);
            final box = context.findRenderObject() as RenderBox?;
            _showMenu(entry, box?.localToGlobal(Offset.zero) ?? Offset.zero);
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: _selected.contains(key)
                  ? Theme.of(context).colorScheme.primaryContainer
                  : null,
            ),
            child: widget.mobileBuilder!(context, item),
          ),
        );
      },
    );
    if (_cfg.loadMode == LoadMode.infiniteScroll) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _maybeLoadMore());
    }
    return Column(
      mainAxisSize: bounded ? MainAxisSize.max : MainAxisSize.min,
      children: [
        ?_countPanel(v, CountPosition.header),
        if (_loading && _cfg.loadingKind != LoadingKind.footer)
          _loadingBar(_rowHeight(context)),
        MobileToolbar(
          labels: _labels,
          filterColumns: filterable,
          sortColumns: sortable,
          sort: _sort,
          onSearch: (key, text) {
            final others = _filters.where((f) => f.columnKey != key).toList();
            _applyFilters([
              ...others,
              if (text.isNotEmpty)
                FilterCondition(key, FilterOperator.like, ['%$text%']),
            ]);
          },
          onSort: _applySort,
        ),
        Expanded(child: _error != null ? Center(child: Text('$_error')) : list),
        if (_loading && _cfg.loadingKind == LoadingKind.footer)
          _loadingBar(_rowHeight(context)),
        if (_cfg.loadMode == LoadMode.pagination)
          PaginationPanel(
            page: _page,
            pageCount: _pageCount(v),
            digits: _cfg.paginationDigits,
            labels: _labels,
            builders: widget.pagination,
            onSelect: _goToPage,
          ),
        ?_countPanel(v, CountPosition.footer),
      ],
    );
  }

  /// 行の表示情報(JSON化用)。
  List<RowModel<T>> get rowModels => [
    for (final i in _view().rows)
      RowModel<T>(
        i,
        flagged: _flagged.containsKey(_key(i)),
        draggable: _cfg.dragEnabled,
      ),
  ];
}
