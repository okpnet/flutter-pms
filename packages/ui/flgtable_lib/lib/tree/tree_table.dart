part of '../table/table_core.dart';

/// ツリーのノード。画面上の木の状態を持ち、データの実体(元のオブジェクト)は[item]が指す。
class _Node<T> {
  _Node(this.item, this.parent, this.level, this.childCount);

  final T item;
  _Node<T>? parent;
  int level;
  final List<_Node<T>> children = [];

  bool expanded = false;

  /// 展開中に子を読み込んでいる。
  bool loading = false;

  /// 「もっと読み込む」を実行している。
  bool loadingMore = false;

  /// 子を読み込み済みか。
  bool loaded = false;

  /// 子の数。読み込み前は列の値/初期値、読み込み後はその親の子の総数。
  int childCount;

  /// 子としてローダーから取得した数(循環で捨てた行も含む)。
  int fetched = 0;

  /// 循環のため追加せずに捨てた子の数。子の数からは除く。
  int skipped = 0;

  bool get hasMore => loaded && fetched < childCount + skipped;

  Map<String, dynamic> toJson() => {
    'item': item.toString(),
    'level': level,
    'expanded': expanded,
    'loaded': loaded,
    'childCount': childCount,
    'children': children.length,
  };
}

/// ツリー構造のテーブル。子は展開したときに[treeLoader]で読み込む。
///
/// 通常のテーブル([FlgTable])と同じ共通部分([TableWidgetBase])を継承する。
/// ページネーション・無限スクロール・グルーピング・子テーブル・行の上下移動・
/// フラグの先頭固定は使わない(フラグは旗の印のみ)。[rowKey]は必須。
///
/// 祖先に `ProviderScope` が必要。
class TreeTable<T> extends TableWidgetBase<T> {
  const TreeTable({
    super.key,
    required super.columns,
    required this.treeLoader,
    required Object Function(T item) rowKey,
    super.config,
    super.events,
    super.labels,
    super.controller,
    super.loadingIndicator,
    super.undoStack,
    this.treeConfig = const TreeConfig(),
    this.cycleChecker,
  }) : super(rowKey: rowKey);

  /// 子の読み込み。
  final TreeChildrenLoader<T> treeLoader;
  final TreeConfig treeConfig;

  /// フィルタ有効時(階層が画面からわからないとき)のドロップで、循環を判定するデリゲート。
  /// 渡さないと、フィルタ有効中はドラッグドロップを使えない。
  final TreeCycleChecker<T>? cycleChecker;

  @override
  ConsumerState<TreeTable<T>> createState() => _TreeTableState<T>();
}

class _TreeTableState<T> extends _TableBaseState<T, TreeTable<T>> {
  List<_Node<T>> _roots = [];
  int _rootsFetched = 0;
  int _rootsTotal = 0;

  /// ローダーが返した全件数(フィルタ前)。件数表示の「全N件」に使う。
  int _rootsAll = 0;
  bool _rootsLoadingMore = false;

  /// フィルタ有効で読み込んだ状態(階層に関係なく全ての行がトップノード)。
  bool _flat = false;

  /// 読み込み世代。読み込みをやり直したとき、古い読み込みの結果を捨てるために使う。
  int _generation = 0;

  final Map<Object, _Node<T>> _nodes = {};

  TreeConfig get _tree => widget.treeConfig;

  // ---------------------------------------------------------------- 差し替え

  @override
  LoadMode get _loadMode => LoadMode.none;

  @override
  List<ColumnDefinition<T>> get _groupColumns => const [];

  @override
  bool get _dragEnabled =>
      _cfg.dragEnabled && (!_flat || widget.cycleChecker != null);

  @override
  bool get _canReorder => false;

  @override
  T? _findItem(Object key) => _nodes[key]?.item;

  @override
  void _initialLoad() => _loadRoots();

  @override
  Future<void> reload() => _loadRoots();

  @override
  void _applySort(SortCondition? sort) {
    _log.debug('sort $sort');
    _sort = sort;
    _loadRoots();
  }

  @override
  void _applyFilters(List<FilterCondition> filters) {
    _log.debug('filters $filters');
    _filters = List.of(filters);
    _loadRoots();
  }

  // ---------------------------------------------------------------- 読み込み

  bool get _hasRootsMore => _rootsFetched < _rootsTotal;

  int _initialChildCount(T item) {
    final key = _tree.childCountColumnKey;
    if (key == null) return 1;
    final col = widget.columns.where((c) => c.key == key).firstOrNull;
    if (col == null) return 1;
    final n = int.tryParse(col.read(item).trim());
    return n == null || n < 0 ? 1 : n;
  }

  _Node<T> _makeNode(T item, _Node<T>? parent, int level) {
    final node = _Node<T>(item, parent, level, _initialChildCount(item));
    _nodes[_key(item)] = node;
    return node;
  }

  /// トップノードを読み込み直す。展開状態は全て縮小する。
  Future<void> _loadRoots() async {
    final id = ++_request;
    final generation = ++_generation;
    final flat = _filters.isNotEmpty;
    final query = TreeLoadQuery(
      count: _cfg.pageSize,
      filters: flat ? List.of(_filters) : null,
      sort: _sort,
      flatten: flat,
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
      final r = await widget.treeLoader(query);
      _log.debug('tree loaded ${r.toJson()} query=${query.toJson()}');
      if (!mounted || id != _request || generation != _generation) return;
      setState(() {
        _clearUndo();
        _nodes.clear();
        _flat = flat;
        _roots = [for (final i in r.items) _makeNode(i, null, 0)];
        _rootsFetched = r.items.length;
        _rootsTotal = r.filteredCount;
        _rootsAll = r.totalCount;
        _loading = false;
        _actionKey = null;
        _invalidate();
      });
    } catch (e, st) {
      _log.error('tree load failed query=${query.toJson()}', ex: e, trace: st);
      if (!mounted || id != _request || generation != _generation) return;
      setState(() {
        _error = e;
        _loading = false;
      });
    }
  }

  Future<void> _toggle(_Node<T> node) async {
    if (node.loading) return;
    if (node.expanded) {
      setState(() {
        node.expanded = false;
        _invalidate();
      });
      return;
    }
    if (node.childCount == 0) return;
    if (node.loaded) {
      setState(() {
        node.expanded = true;
        _invalidate();
      });
      return;
    }
    await _loadChildren(node, more: false);
  }

  /// 子を読み込む。[more]が真なら、読み込み済みの続きを読み込む。
  Future<void> _loadChildren(_Node<T> node, {required bool more}) async {
    final generation = _generation;
    final query = TreeLoadQuery(
      parent: node.item,
      start: more ? node.fetched : 0,
      count: _cfg.pageSize,
      sort: _sort,
    );
    setState(() {
      if (more) {
        node.loadingMore = true;
      } else {
        node.loading = true;
        node.expanded = true;
      }
      _invalidate();
    });
    try {
      final r = await widget.treeLoader(query);
      _log.debug('tree loaded children ${r.toJson()} query=${query.toJson()}');
      if (!mounted || generation != _generation) return;
      setState(() {
        // 祖先に同じキーの行があれば循環。追加せずログに残す。
        final path = {
          for (_Node<T>? p = node; p != null; p = p.parent) _key(p.item),
        };
        final known = {for (final c in node.children) _key(c.item)};
        for (final item in r.items) {
          final k = _key(item);
          if (path.contains(k)) {
            _log.error('tree cycle detected key=$k parent=${_key(node.item)}');
            node.skipped++;
            continue;
          }
          if (!known.add(k)) continue;
          node.children.add(_makeNode(item, node, node.level + 1));
        }
        node.fetched = query.start + r.items.length;
        node.childCount = r.filteredCount - node.skipped;
        node.loaded = true;
        node.loading = false;
        node.loadingMore = false;
        _invalidate();
      });
    } catch (e, st) {
      _log.error('tree load failed query=${query.toJson()}', ex: e, trace: st);
      if (!mounted || generation != _generation) return;
      setState(() {
        node.loading = false;
        node.loadingMore = false;
        if (!more) node.expanded = false;
        _invalidate();
      });
    }
  }

  Future<void> _loadMoreRoots() async {
    if (_rootsLoadingMore) return;
    final generation = _generation;
    final query = TreeLoadQuery(
      start: _rootsFetched,
      count: _cfg.pageSize,
      filters: _flat ? List.of(_filters) : null,
      sort: _sort,
      flatten: _flat,
    );
    setState(() => _rootsLoadingMore = true);
    try {
      final r = await widget.treeLoader(query);
      if (!mounted || generation != _generation) return;
      setState(() {
        final known = {for (final n in _roots) _key(n.item)};
        for (final item in r.items) {
          if (known.add(_key(item))) _roots.add(_makeNode(item, null, 0));
        }
        _rootsFetched = query.start + r.items.length;
        _rootsTotal = r.filteredCount;
        _rootsAll = r.totalCount;
        _rootsLoadingMore = false;
        _invalidate();
      });
    } catch (e, st) {
      _log.error('tree load failed query=${query.toJson()}', ex: e, trace: st);
      if (!mounted || generation != _generation) return;
      setState(() => _rootsLoadingMore = false);
    }
  }

  // ---------------------------------------------------------------- 表示データ

  /// 画面に出ている通常の行(ノード)を上から順に。
  List<_Node<T>> _visibleNodes() {
    final out = <_Node<T>>[];
    void walk(List<_Node<T>> nodes) {
      for (final n in nodes) {
        out.add(n);
        if (n.expanded && !n.loading) walk(n.children);
      }
    }

    walk(_roots);
    return out;
  }

  @override
  _View<T> _computeView() {
    final rows = [for (final n in _visibleNodes()) n.item];
    // 件数表示: 全=ローダーの全件数、フィルタ適用=フィルタ有効時はその件数(無効時は全件)、
    // 読込=読み込み済みの行数(トップ+展開で読み込んだ子。縮小中の行も含む)。
    return _View(
      rows,
      0,
      _flat ? _rootsTotal : _rootsAll,
      all: _rootsAll,
      loaded: _countLoaded(),
    );
  }

  /// 木に入っている読み込み済みの行数(縮小中の子も含む)。
  int _countLoaded() {
    int count(List<_Node<T>> nodes) =>
        nodes.fold(0, (sum, n) => sum + 1 + count(n.children));
    return count(_roots);
  }

  @override
  List<_Entry<T>> _entries(_View<T> v) {
    final out = <_Entry<T>>[];
    var index = 0;

    void walk(
      List<_Node<T>> nodes, {
      required bool more,
      required _Node<T>? parent,
      required int level,
      required List<bool> flags,
    }) {
      for (var i = 0; i < nodes.length; i++) {
        final n = nodes[i];
        final last = i == nodes.length - 1 && !more;
        final own = level == 0 ? const <bool>[] : [...flags, last];
        out.add(
          _Entry<T>(
            n.item,
            index++,
            false,
            const [],
            level: level,
            node: n,
            lastFlags: own,
          ),
        );
        if (!n.expanded) continue;
        if (n.loading) {
          out.add(
            _Entry<T>(
              n.item,
              -1,
              false,
              const [],
              level: level + 1,
              node: n,
              kind: _EntryKind.loading,
              lastFlags: [...own, true],
            ),
          );
        } else {
          walk(
            n.children,
            more: n.hasMore,
            parent: n,
            level: level + 1,
            flags: own,
          );
        }
      }
      if (more && nodes.isNotEmpty) {
        out.add(
          _Entry<T>(
            nodes.last.item,
            -1,
            false,
            const [],
            level: level,
            node: parent,
            kind: _EntryKind.more,
            lastFlags: level == 0 ? const [] : [...flags, true],
          ),
        );
      }
    }

    walk(_roots, more: _hasRootsMore, parent: null, level: 0, flags: const []);
    return out;
  }

  // ---------------------------------------------------------------- 描画

  /// 1文字の幅。インデントの単位になる(テーマの文字サイズに従う)。
  double _charWidth(BuildContext context) {
    final painter = TextPainter(
      text: TextSpan(text: '0', style: DefaultTextStyle.of(context).style),
      textDirection: TextDirection.ltr,
    )..layout();
    return painter.width;
  }

  double _unit(BuildContext context) => _charWidth(context) * _tree.indentChars;

  Widget _lines(BuildContext context, List<bool> lastFlags, double rowHeight) {
    final theme = Theme.of(context);
    final width =
        _tree.lineWidth ?? theme.extension<BorderField>()?.borderWidth ?? 1;
    return CustomPaint(
      painter: TreeLinePainter(
        lastFlags: lastFlags,
        unit: _unit(context),
        iconBox: _iconBox(rowHeight),
        color: theme.dividerColor,
        width: width,
        style: _tree.lineStyle,
      ),
    );
  }

  @override
  Widget? _cellPrefix(BuildContext context, _Entry<T> e, double rowHeight) {
    final node = e.node as _Node<T>?;
    if (node == null) return null;
    final unit = _unit(context);
    final box = _iconBox(rowHeight);
    final key = _key(e.item);

    Widget glyph;
    if (node.loading) {
      glyph = SizedBox(
        key: Key('tree.loading.$key'),
        width: rowHeight * 0.6,
        height: rowHeight * 0.6,
        child:
            widget.loadingIndicator ??
            const CircularProgressIndicator(strokeWidth: 2),
      );
    } else {
      final text = node.childCount == 0
          ? '▷'
          : node.expanded
          ? '▼'
          : '▶';
      glyph = Text(
        text,
        key: Key('tree.icon.$key'),
        style: TextStyle(fontSize: rowHeight * 0.6, height: 1),
      );
    }
    return SizedBox(
      width: e.level * unit + box,
      height: rowHeight,
      child: Stack(
        children: [
          if (_tree.showLines && e.level > 0)
            Positioned.fill(child: _lines(context, e.lastFlags, rowHeight)),
          Positioned(
            left: e.level * unit,
            top: 0,
            bottom: 0,
            width: box,
            child: GestureDetector(
              key: Key('tree.toggle.$key'),
              behavior: HitTestBehavior.opaque,
              onTap: () => _toggle(node),
              child: Center(child: glyph),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget _buildEntry(
    BuildContext context,
    _Layout<T> l,
    _Entry<T> e,
    _View<T> v,
    double rowHeight,
  ) {
    if (e.kind == _EntryKind.row) {
      return super._buildEntry(context, l, e, v, rowHeight);
    }
    final unit = _unit(context);
    final box = _iconBox(rowHeight);
    final pad = _spacing(context) * 2;
    final node = e.node as _Node<T>?;
    final id = node == null ? 'root' : '${_key(node.item)}';
    final isMore = e.kind == _EntryKind.more;
    final busy = isMore
        ? (node == null ? _rootsLoadingMore : node.loadingMore)
        : true;
    final label = isMore ? _labels.loadMore : _labels.loading;

    Widget content = Row(
      children: [
        SizedBox(width: pad + e.level * unit + box),
        if (busy) ...[_indicator(small: true), const SizedBox(width: 8)],
        Flexible(child: Text(label, overflow: TextOverflow.ellipsis)),
      ],
    );
    if (isMore && !busy) {
      content = InkWell(
        key: Key('tree.more.$id'),
        onTap: () =>
            node == null ? _loadMoreRoots() : _loadChildren(node, more: true),
        child: content,
      );
    }
    return SizedBox(
      key: Key(isMore ? 'tree.moreRow.$id' : 'tree.loadingRow.$id'),
      height: rowHeight,
      child: Stack(
        children: [
          if (_tree.showLines && e.level > 0)
            Positioned(
              left: pad,
              top: 0,
              bottom: 0,
              right: 0,
              child: _lines(context, e.lastFlags, rowHeight),
            ),
          Positioned.fill(child: content),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------- 削除

  @override
  Object? _captureRow(T item) {
    final node = _nodes[_key(item)];
    if (node == null) return null;
    final siblings = node.parent?.children ?? _roots;
    return (
      node: node,
      parent: node.parent,
      index: siblings.indexOf(node),
      flagged: _flagged.containsKey(_key(item)),
    );
  }

  @override
  void _removeRow(T item) {
    final key = _key(item);
    final node = _nodes[key];
    setState(() {
      if (node != null) {
        _detach(node);
        if (_rootsAll > 0) _rootsAll--;
      }
      _flagged.remove(key);
      _selected.remove(key);
      _actionKey = null;
      _invalidate();
    });
  }

  @override
  void _restoreRow(T item, Object? token) {
    if (token == null) return;
    final t =
        token as ({_Node<T> node, _Node<T>? parent, int index, bool flagged});
    setState(() {
      _attach(t.node, t.parent, t.index);
      _rootsAll++;
      if (t.flagged) _flagged[_key(item)] = item;
      _invalidate();
    });
  }

  /// ノードを今の親から外す。親の子の数と読み込み数を減らす。
  void _detach(_Node<T> node) {
    final parent = node.parent;
    final siblings = parent?.children ?? _roots;
    if (!siblings.remove(node)) {
      // 子を読み込んでいない親は、子の数だけを持つ(行は入っていない)。
      if (parent != null && !parent.loaded && parent.childCount > 0) {
        parent.childCount--;
      }
      return;
    }
    if (parent == null) {
      if (_rootsFetched > 0) _rootsFetched--;
      if (_rootsTotal > 0) _rootsTotal--;
    } else {
      if (parent.fetched > 0) parent.fetched--;
      if (parent.childCount > 0) parent.childCount--;
    }
  }

  /// ノードを[parent](nullならトップ)の子にする。[index]がnullなら最後。
  ///
  /// 親の子を読み込んでいないときは、子の数だけ更新する(展開はしない)。
  void _attach(_Node<T> node, _Node<T>? parent, int? index) {
    node.parent = parent;
    _setLevel(node, parent == null ? 0 : parent.level + 1);
    if (parent == null) {
      _roots.insert(_clamp(index, _roots.length), node);
      _rootsFetched++;
      _rootsTotal++;
      return;
    }
    parent.childCount++;
    if (parent.loaded) {
      parent.children.insert(_clamp(index, parent.children.length), node);
      parent.fetched++;
      parent.expanded = true; // 移動した結果が見えるように開く
    }
  }

  int _clamp(int? index, int length) =>
      index == null || index < 0 || index > length ? length : index;

  void _setLevel(_Node<T> node, int level) {
    node.level = level;
    for (final c in node.children) {
      _setLevel(c, level + 1);
    }
  }

  // ---------------------------------------------------------------- ドラッグドロップ

  @override
  bool _canAccept(_DragPayload p) => identical(p.source, this) && _dragEnabled;

  /// ドロップ先の行の左端付近か。左端付近なら、ドロップ先と同じレベルにする。
  /// 階層が画面からわからないフィルタ有効時は、常に「ドロップ先の子」にする。
  bool _leftZone(double dx, _Entry<T> e, double unit) =>
      !_flat && dx < (e.level + 1) * unit;

  /// 移動後の親。トップノードにするときはnull。
  _Node<T>? _newParent(_Entry<T> e, bool left) {
    final target = e.node as _Node<T>;
    return left ? target.parent : target;
  }

  /// 画面の親の連鎖から、移動して循環しないか。フィルタ有効時は判定できないので真。
  bool _acyclic(_Node<T> node, _Node<T>? newParent) {
    if (_flat) {
      return newParent == null || _key(node.item) != _key(newParent.item);
    }
    for (var p = newParent; p != null; p = p.parent) {
      if (identical(p, node)) return false;
    }
    return true;
  }

  @override
  void _onDragMove(
    BuildContext rowContext,
    _Entry<T> e,
    DragTargetDetails<_DragPayload> d,
  ) {
    final box = rowContext.findRenderObject() as RenderBox?;
    final dragged = _nodes[_key(d.data.item as T)];
    if (box == null || dragged == null || e.node == null) return;
    final left = _leftZone(
      box.globalToLocal(d.offset).dx,
      e,
      _unit(rowContext),
    );
    final newParent = _newParent(e, left);
    final canDrop =
        _canAccept(d.data) &&
        !(identical(dragged.parent, newParent) && !_flat) &&
        _acyclic(dragged, newParent);
    final prev = _dropOver;
    if (prev?.index == e.index &&
        prev?.lower == left &&
        prev?.canDrop == canDrop) {
      return;
    }
    setState(() => _dropOver = (index: e.index, lower: left, canDrop: canDrop));
    _events.onDragOver?.call(
      DragOverEvent<T>(index: e.index, item: e.item, canDrop: canDrop),
    );
  }

  @override
  Widget _dropVisual(
    ThemeData theme,
    Widget row,
    _Entry<T> e,
    ({int index, bool lower, bool canDrop})? over,
    bool hovering,
  ) {
    if (over == null || over.index != e.index || !hovering || !over.canDrop) {
      return row;
    }
    final color = theme.colorScheme.primary;
    return Stack(
      children: [
        row,
        Positioned.fill(
          child: IgnorePointer(
            child: DecoratedBox(
              key: Key('tree.drop.${over.lower ? 'sibling' : 'child'}'),
              decoration: BoxDecoration(
                color: color.withValues(alpha: over.lower ? 0.08 : 0.2),
                border: over.lower
                    ? Border(left: BorderSide(color: color, width: 4))
                    : null,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void _onDrop(_Entry<T> e, DragTargetDetails<_DragPayload> d) {
    final over = _dropOver;
    setState(() => _dropOver = null);
    final node = _nodes[_key(d.data.item as T)];
    final target = e.node as _Node<T>?;
    if (node == null || target == null) return;
    final left = over?.index == e.index && over!.lower;
    _reparent(node, _newParent(e, left));
  }

  void _rejectCycle() {
    _log.error('tree move rejected: would create a cycle');
    if (!mounted) return;
    ScaffoldMessenger.maybeOf(
      context,
    )?.showSnackBar(SnackBar(content: Text(_labels.cycleRejected)));
  }

  /// [node]の親を[newParent](nullならトップ)に変える。
  Future<void> _reparent(_Node<T> node, _Node<T>? newParent) async {
    if (!_flat && identical(node.parent, newParent)) return; // 変化なし
    if (newParent != null && !_acyclic(node, newParent)) {
      _rejectCycle();
      return;
    }
    if (_flat && newParent != null) {
      // 階層が画面からわからないので、アプリの判定に任せる。なければ移動しない。
      final checker = widget.cycleChecker;
      if (checker == null) return;
      bool cyclic;
      try {
        cyclic = await checker(node.item, newParent.item);
      } catch (e, st) {
        _log.error('tree cycle check failed', ex: e, trace: st);
        cyclic = true; // 判定できないときは安全側で拒否する
      }
      if (!mounted) return;
      if (cyclic) {
        _rejectCycle();
        return;
      }
    }
    final before = BeforeParentChangeEvent<T>(
      item: node.item,
      newParent: newParent?.item,
    );
    _events.onBeforeParentChange?.call(before);
    if (before.cancel) {
      _log.debug('parent change canceled');
      return;
    }

    final oldParent = node.parent;
    final siblings = oldParent?.children ?? _roots;
    final oldIndex = siblings.indexOf(node);
    // 移動先を後から展開(読み込み)すると、同じ行の別のノードが作られて
    // `_nodes`に登録し直される。取り消し/やり直しでは、その時点のノードを使う。
    final key = _key(node.item);
    _Node<T> live() => _nodes[key] ?? node;
    void apply() => _relocate(live(), newParent, null, oldParent, oldIndex);
    void revert() => _relocate(live(), oldParent, oldIndex, newParent, null);
    apply();
    _record(
      TableOperation.parentChange,
      node.item,
      undoParent: oldParent?.item,
      redoParent: newParent?.item,
      undo: revert,
      redo: apply,
    );
    _events.onAfterParentChange?.call(
      AfterParentChangeEvent<T>(item: node.item, newParent: newParent?.item),
    );
  }

  /// [node]を[to]へ移す。フィルタ有効時は行を動かさず、[to]の子の数だけ更新する。
  void _relocate(
    _Node<T> node,
    _Node<T>? to,
    int? index,
    _Node<T>? from,
    int? fromIndex,
  ) {
    setState(() {
      if (_flat) {
        // 平坦表示の行は動かさない。移動先が子を読み込み済みなら、子としても表示する。
        if (to != null) {
          to.childCount++;
          if (to.loaded) {
            to.children.add(
              _Node<T>(
                node.item,
                to,
                to.level + 1,
                _initialChildCount(node.item),
              ),
            );
            to.fetched++;
          }
        }
        if (from != null) {
          from.childCount = from.childCount > 0 ? from.childCount - 1 : 0;
          from.children.removeWhere((c) => _key(c.item) == _key(node.item));
        }
      } else {
        _detach(node);
        _attach(node, to, index);
      }
      _invalidate();
    });
  }
}
