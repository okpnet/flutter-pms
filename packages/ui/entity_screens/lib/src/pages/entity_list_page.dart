import 'package:loadux_lib/loadux_lib.dart';
import 'package:app_shell/app_shell.dart';
import 'package:flgtable_lib/tree_table_lib.dart';
import 'package:flutter/material.dart';

import '../catalog.dart';
import '../definition.dart';
import '../record.dart';
import 'entity_scope.dart';

/// 実体の台帳(テーブル構造。ツリーの実体はツリー構造)。
///
/// 画面遷移は呼び出し側([onOpen]・[onCreate])が行う。戻ってきたら再読み込みする。
class EntityListPage extends StatefulWidget {
  const EntityListPage({
    super.key,
    required this.entityKey,
    required this.scope,
    required this.onOpen,
    required this.onCreate,
    this.filter = const {},
    this.title,
    this.onReparent,
    this.showCreate = true,
    this.onAction,
    this.twoModes = false,
    this.headerActions,
    this.canEdit = true,
  });

  final String entityKey;
  final EntityScope scope;

  /// 行を開く(編集へ)。完了を待ってから再読み込みする。
  final Future<void> Function(EntityRecord record) onOpen;

  /// 新規登録へ。
  final Future<void> Function() onCreate;

  /// 絞り込み(項目のキー → 値)。すべてに一致する行だけを表示する(例: 顧客=`is_customer: はい`)。
  final Map<String, String> filter;

  /// 見出し。null のときは実体の名称。
  final String? title;

  /// 新規登録のボタンを出すか。選択画面では出さない。
  final bool showCreate;

  /// 閲覧と編集の 2 つのモードにするか(画面案)。true のとき、はじめは閲覧(新規・行を開く操作は無い)で、
  /// 「編集」を押すと編集モード(新規・行を開く)になる。誤って編集の画面へ進まないため。選択画面は false(行を選ぶ)。
  final bool twoModes;

  /// 見出しの右(「編集」「新規」の左)に出す、専用の操作(例: 為替レートの「自動取得」)。完了したら呼び出し側が [reload] を呼ぶと、台帳を読み込み直す。
  final List<Widget> Function(BuildContext context, VoidCallback reload)?
  headerActions;

  /// 編集できるか(編集の切り替えボタンを出すか)。false のときは、閲覧だけ(新規・行を開く操作は出ない。例: 管理者だけが登録できる為替レート)。
  final bool canEdit;

  /// 行のボタン([EntityDefinition.rowActions])を押したときの処理。null のときはボタンを出さない。
  final Future<void> Function(RowAction action, EntityRecord record)? onAction;

  /// ツリーの台帳の親の付け替え(ドラッグ&ドロップ)を受けるハンドラ。[newParent] が null ならトップへ。
  /// 更新と検証(循環・権限)は呼び出し側が行う。null のときは付け替えを有効にしない。
  /// 完了(失敗を含む)したら、台帳を再読み込みして実際のデータに合わせる。
  final Future<void> Function(EntityRecord item, EntityRecord? newParent)?
  onReparent;

  /// 検索窓の幅(20〜30 文字ぶん)。
  static const double searchWidth = 320;

  @override
  State<EntityListPage> createState() => _EntityListPageState();
}

class _EntityListPageState extends State<EntityListPage> {
  late Future<_Loaded> _future = _load();
  int _generation = 0;

  /// 検索の文字と、種別のチップ(選んだ選択肢。null = すべて)。
  String _query = '';
  String? _chip;

  /// 編集モード([EntityListPage.twoModes] のとき)。
  bool _editing = false;

  bool get _canEdit => !widget.twoModes || _editing;

  /// 選択中の行(行のボタン([RowAction])は、行ごとに置かず、選んだ行への操作として上部のメニューに出す)。
  EntityRecord? _selected;

  Future<_Loaded> _load() async {
    final catalog = widget.scope.catalog;
    final repository = catalog.repository(widget.entityKey);
    if (repository == null) throw StateError('未登録の実体: ${widget.entityKey}');
    final options = await loadReferenceOptions(catalog, repository.definition);
    final records = [
      for (final r in await repository.find(take: 100000))
        if (widget.filter.entries.every((e) => r.valueOf(e.key) == e.value)) r,
    ];
    return _Loaded(
      repository.definition,
      records,
      namesOf(options),
      await _loadTags(catalog, repository.definition),
    );
  }

  /// 木の行のタグ(親の id → タグの文字)。子の台帳([EntityDefinition.treeTags])の最初の参照の項目の表示名。
  Future<Map<String, List<String>>> _loadTags(
    EntityCatalog catalog,
    EntityDefinition definition,
  ) async {
    final childKey = definition.treeTags;
    if (childKey == null) return const {};
    final repository = catalog.repository(childKey);
    if (repository == null) return const {};
    final reference = repository.definition.fields
        .where((f) => f.kind == FieldKind.reference)
        .firstOrNull;
    if (reference == null) return const {};
    final names = namesOf(
      await loadReferenceOptions(catalog, repository.definition),
    );
    final tags = <String, List<String>>{};
    for (final r in await repository.find(take: 100000)) {
      final parent = r.parentId;
      if (parent == null) continue;
      final value = r.valueOf(reference.key);
      (tags[parent] ??= []).add(names[reference.key]?[value] ?? value);
    }
    return tags;
  }

  void _reload() => setState(() {
    _generation++;
    _selected = null;
    _future = _load();
  });

  Future<void> _reparent(AfterParentChangeEvent<EntityRecord> e) async {
    final handler = widget.onReparent;
    if (handler == null) return;
    try {
      await handler(e.item, e.newParent);
    } finally {
      // 受け入れられなかった(失敗した)ときも、画面を実際のデータに戻す
      if (mounted) _reload();
    }
  }

  Future<void> _create() async {
    await widget.onCreate();
    if (mounted) _reload();
  }

  Future<void> _open(EntityRecord record) async {
    await widget.onOpen(record);
    if (mounted) _reload();
  }

  @override
  Widget build(BuildContext context) {
    final scope = widget.scope;
    return ScreenScaffold(
      title: widget.title ?? scope.labels.entity(widget.entityKey),
      // いまの画面は見出しに出るので、パンくずは上の階層(グループ)だけ
      breadcrumbs: [
        if (scope.groupLabel.isNotEmpty) BreadcrumbItem(scope.groupLabel),
      ],
      asOf: scope.asOfText,
      backLabel: scope.strings.back,
      body: FutureBuilder<_Loaded>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(scope.strings.loadFailed));
          }
          final loaded = snapshot.data;
          if (loaded == null) {
            return const LoadingIndicator.centered();
          }
          return _page(loaded);
        },
      ),
    );
  }

  /// 検索の文字と、種別のチップで絞った行。
  List<EntityRecord> _filtered(_Loaded loaded) {
    final keyword = _query.trim().toLowerCase();
    final chip = _chipField(loaded.definition);
    return [
      for (final r in loaded.records)
        if ((_chip == null || chip == null || r.valueOf(chip.key) == _chip) &&
            (keyword.isEmpty || _text(loaded, r).contains(keyword)))
          r,
    ];
  }

  /// 検索の対象の文字(行の値と、参照の表示名)。
  String _text(_Loaded loaded, EntityRecord r) {
    final b = StringBuffer();
    for (final f in loaded.definition.fields) {
      if (f.hidden) continue;
      final v = r.valueOf(f.key);
      b.write(' $v');
      final name = loaded.names[f.key]?[v];
      if (name != null) b.write(' $name');
    }
    return b.toString().toLowerCase();
  }

  /// 種別のチップにする項目(選択肢の項目のうち最初のもの)。
  FieldDefinition? _chipField(EntityDefinition definition) => definition.fields
      .where(
        (f) => f.kind == FieldKind.choice && !f.hidden && f.options.isNotEmpty,
      )
      .firstOrNull;

  /// 台帳の画面(画面案: 検索の枠 + 一覧の枠)。
  Widget _page(_Loaded loaded) {
    final scope = widget.scope;
    final strings = scope.strings;
    final theme = Theme.of(context);
    final name = widget.title ?? scope.labels.entity(widget.entityKey);
    final records = _filtered(loaded);
    final chip = loaded.definition.isTree
        ? null
        : _chipField(loaded.definition);
    return LayoutBuilder(
      builder: (context, constraints) => Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          // 内容の幅(スマートフォン 95%・それ以外 90%・上限 1600)は、見出しの枠(ScreenScaffold)が決める
          width: constraints.maxWidth,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: _cardHeight(
                    constraints.maxHeight,
                    records.length,
                    extra: _hasTotal(loaded.definition) ? 44 : 0,
                  ),
                  child: Card(
                    margin: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 16, 20, 4),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  strings.listTitle(name: name),
                                  key: const ValueKey('listTitle'),
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              // 検索は表の見出しの中央に置く(表との結びつきを強くする)。木は、絞り込むと親が消えるため出さない
                              if (!loaded.definition.isTree) ...[
                                SizedBox(
                                  width: EntityListPage.searchWidth,
                                  child: _searchField(),
                                ),
                                const SizedBox(width: 12),
                              ],
                              if (widget.headerActions != null)
                                for (final w in widget.headerActions!(
                                  context,
                                  _reload,
                                )) ...[w, const SizedBox(width: 8)],
                              if (widget.twoModes &&
                                  !loaded.definition.viewOnly &&
                                  widget.canEdit)
                                OutlinedButton.icon(
                                  key: const ValueKey('listEditMode'),
                                  icon: Icon(
                                    _editing
                                        ? Icons.check
                                        : Icons.edit_outlined,
                                    size: 18,
                                  ),
                                  label: Text(
                                    _editing
                                        ? strings.editDone
                                        : strings.editMode,
                                  ),
                                  onPressed: () =>
                                      setState(() => _editing = !_editing),
                                ),
                              if (widget.showCreate && _canEdit) ...[
                                const SizedBox(width: 8),
                                FilledButton.icon(
                                  key: const ValueKey('listCreate'),
                                  icon: const Icon(Icons.add, size: 18),
                                  label: Text(strings.create),
                                  onPressed: _create,
                                ),
                              ],
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                          child: Text(
                            '${strings.listCount(total: loaded.records.length, shown: records.length)}'
                            '${widget.twoModes && _editing ? ' ${strings.editHint}' : ''}',
                            key: const ValueKey('listCount'),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                        if (chip != null) _chipBand(chip),
                        const Divider(height: 1),
                        Expanded(child: _table(loaded, records)),
                        ?_totalBand(loaded.definition, records),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 一覧のカードの高さ。行数に合わせる(行が少ないとき、表の下に空白を作らない)。上限は画面の残り。
  double _cardHeight(double available, int rows, {double extra = 0}) {
    const head = 150.0; // 見出し・件数・区切り・チップ
    const rowHeight = 44.0;
    final want = head + extra + (rows + 1) * rowHeight; // extra: 合計の帯
    final max = available - 32; // 上下の余白
    return want < max ? want : max;
  }

  /// 検索窓(表の見出しの中央)。
  Widget _searchField() => TextField(
    key: const ValueKey('listSearch'),
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.search),
      hintText: widget.scope.strings.searchHint,
      isDense: true,
    ),
    onChanged: (v) => setState(() => _query = v),
  );

  bool _hasTotal(EntityDefinition definition) =>
      definition.fields.any((f) => f.total && f.kind == FieldKind.number);

  /// 合計を出す項目(`FieldDefinition.total`)の、表示している行の合計。無いときは null。
  Widget? _totalBand(EntityDefinition definition, List<EntityRecord> records) {
    final fields = [
      for (final f in definition.fields)
        if (f.total && f.kind == FieldKind.number) f,
    ];
    if (fields.isEmpty) return null;
    final scope = widget.scope;
    final theme = Theme.of(context);
    String sum(FieldDefinition f) {
      final key = f.key;
      var total = 0.0;
      for (final r in records) {
        total += double.tryParse(r.valueOf(key)) ?? 0;
      }
      final text = total == total.roundToDouble()
          ? '${total.round()}'
          : total.toStringAsFixed(2);
      if (!f.money) return text;
      // 行の通貨がすべて同じときだけ、その記号を付ける(通貨が混ざるときは設定の記号。換算しない)
      String? symbol;
      if (f.currencyKey != null) {
        final set = {for (final r in records) r.valueOf(f.currencyKey!)}
          ..remove('');
        if (set.length == 1) symbol = set.first;
      }
      // 表示している行に仮のレートの行があれば、「(一部仮)」を付ける
      final some =
          f.provisionalKey != null &&
          records.any((r) => r.valueOf(f.provisionalKey!) == flagOn);
      return '${scope.money.format(text, languageCode: scope.languageCode, symbol: symbol)}${some ? scope.strings.provisionalSome : ''}';
    }

    return Container(
      key: const ValueKey('listTotal'),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: theme.dividerColor)),
      ),
      // 合計は右端にまとめる(表の数値の列は右揃えのため、値の位置をそろえる)
      child: Wrap(
        alignment: WrapAlignment.end,
        spacing: 24,
        children: [
          for (final f in fields)
            Text(
              scope.strings.listTotal(
                label: scope.labels.field(widget.entityKey, f.key),
                value: sum(f),
              ),
              style: theme.textTheme.titleSmall,
            ),
        ],
      ),
    );
  }

  /// 種別のチップ(表の直上の細い帯)。
  Widget _chipBand(FieldDefinition chip) {
    final strings = widget.scope.strings;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            ChoiceChip(
              key: const ValueKey('chip:all'),
              label: Text(strings.chipAll),
              selected: _chip == null,
              onSelected: (_) => setState(() => _chip = null),
            ),
            for (final o in chip.options)
              ChoiceChip(
                key: ValueKey('chip:$o'),
                label: Text(o),
                selected: _chip == o,
                onSelected: (_) => setState(() => _chip = o),
              ),
          ],
        ),
      ),
    );
  }

  Widget _table(_Loaded loaded, List<EntityRecord> records) {
    final scope = widget.scope;
    final columns = [
      ...columnsOf(
        loaded.definition,
        scope.labels,
        loaded.names,
        yes: loaded.definition.compactFlags ? '✓' : scope.strings.yes,
        no: loaded.definition.compactFlags ? '' : scope.strings.no,
        onDownload: (file) => scope.downloadFile(context, file),
        money: scope.money,
        languageCode: scope.languageCode,
        provisionalMark: scope.strings.provisionalMark,
      ),
    ];
    final hasActions =
        widget.onAction != null && loaded.definition.rowActions.isNotEmpty;
    final config = TableConfig(
      sortEnabled: true,
      filterEnabled: true,
      // 行のボタンが有るときは、行を選んで、上部のメニューから操作する
      rowSelection: hasActions
          ? RowSelectionMode.single
          : RowSelectionMode.none,
      dragEnabled: loaded.definition.isTree && widget.onReparent != null,
    );
    final events = TableEvents<EntityRecord>(
      onRowActivated: _canEdit ? _open : null,
      onSelectionChanged: hasActions
          ? (rows) => setState(() => _selected = rows.firstOrNull)
          : null,
      onAfterParentChange: loaded.definition.isTree ? _reparent : null,
    );
    // 再読み込みと、言語が変わった(名称が変わった)ときに表を作り直す
    final key = ValueKey(
      '${widget.entityKey}:$_generation:${scope.labels.entity(widget.entityKey)}:$_query:$_chip',
    );

    Widget withActions(Widget table) => !hasActions
        ? table
        : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _actionBar(loaded, columns),
              Expanded(child: table),
            ],
          );

    if (!loaded.definition.isTree) {
      return withActions(
        FlgTable<EntityRecord>(
          key: key,
          columns: columns,
          items: records,
          rowKey: (r) => r.id,
          config: config,
          events: events,
        ),
      );
    }

    // ツリー: 子の数を隠し列で渡す(子の無い行に展開の印を出さない)。
    final childCounts = <String?, int>{};
    for (final r in records) {
      childCounts[r.parentId] = (childCounts[r.parentId] ?? 0) + 1;
    }
    final treeColumns = [
      ...(loaded.definition.treeTitle.isEmpty
          ? columns
          : _treeRowColumns(loaded, childCounts)),
      // 配下の件数(子のある行だけ)
      ColumnDefinition<EntityRecord>(
        key: _belowKey,
        label: scope.strings.belowLabel,
        readOnly: true,
        sortable: false,
        filterable: false,
        exportable: false,
        // 1 列の木のときは、配下の件数をチップで出す
        renderer: loaded.definition.treeTitle.isEmpty
            ? null
            : BuilderCellRenderer<EntityRecord>((context, cell) {
                final n = childCounts[cell.item.id] ?? 0;
                return n == 0
                    ? const SizedBox.shrink()
                    : _smallChip(context, scope.strings.belowCount(count: n));
              }),
        getter: (r) {
          final n = childCounts[r.id] ?? 0;
          return n == 0 ? '' : scope.strings.belowCount(count: n);
        },
      ),
      ColumnDefinition<EntityRecord>(
        key: _childCountKey,
        label: _childCountKey,
        visible: false,
        exportable: false,
        type: ColumnType.number,
        getter: (r) => '${childCounts[r.id] ?? 0}',
      ),
    ];
    final source = StaticTreeSource<EntityRecord>(
      items: records,
      columns: treeColumns,
      key: (r) => r.id,
      parentKey: (r) => r.parentId,
    );
    return withActions(
      TreeTable<EntityRecord>(
        key: key,
        columns: treeColumns,
        treeLoader: source.loader,
        rowKey: (r) => r.id,
        config: config,
        events: events,
        treeConfig: const TreeConfig(
          childCountColumnKey: _childCountKey,
          initiallyExpanded: true,
        ),
      ),
    );
  }

  /// 1 列の木の列(画面案: 「組織コード 組織名称」を太字、右端にタグ)。
  List<ColumnDefinition<EntityRecord>> _treeRowColumns(
    _Loaded loaded,
    Map<String?, int> childCounts,
  ) {
    final scope = widget.scope;
    final definition = loaded.definition;
    String title(EntityRecord r) => [
      for (final k in definition.treeTitle)
        if (r.valueOf(k).isNotEmpty) r.valueOf(k),
    ].join(' ');
    return [
      ColumnDefinition<EntityRecord>(
        key: 'treeTitle',
        label: scope.labels.entity(widget.entityKey),
        readOnly: true,
        sortable: false,
        filterable: false,
        getter: title,
        renderer: BuilderCellRenderer<EntityRecord>(
          (context, cell) => Text(
            title(cell.item),
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      if (definition.treeTags != null)
        ColumnDefinition<EntityRecord>(
          key: 'treeTags',
          label: scope.labels.entity(definition.treeTags!),
          readOnly: true,
          sortable: false,
          filterable: false,
          exportable: false,
          getter: (r) => (loaded.tags[r.id] ?? const []).join(' '),
          renderer: BuilderCellRenderer<EntityRecord>(
            (context, cell) => Wrap(
              spacing: 6,
              runSpacing: 2,
              children: [
                for (final t in loaded.tags[cell.item.id] ?? const <String>[])
                  _smallChip(context, t),
              ],
            ),
          ),
        ),
    ];
  }

  /// 小さな丸いチップ(タグ・配下の件数)。
  Widget _smallChip(BuildContext context, String text) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
      decoration: BoxDecoration(
        color: scheme.secondaryContainer,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: scheme.onSecondaryContainer,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  /// 上部の操作バー: 選んだ行と、その行に使える操作のメニュー。
  ///
  /// 行ごとにボタンを置くと、上下の行と間違えて押すため、行を選んでから、メニューで操作を選ぶ。
  /// 選んだ行は、バーに名前を出す(どの行への操作かを確認できる)。
  Widget _actionBar(
    _Loaded loaded,
    List<ColumnDefinition<EntityRecord>> columns,
  ) {
    final strings = widget.scope.strings;
    final record = _selected;
    final actions = record == null
        ? const <RowAction>[]
        : [
            for (final a in loaded.definition.rowActions)
              if (a.visibleFor(record)) a,
          ];
    final String text;
    if (record == null) {
      text = strings.actionHint;
    } else {
      final first = columns.firstOrNull;
      final name = first == null ? record.id : first.read(record);
      text = '${strings.actionSelected}: ${name.isEmpty ? record.id : name}';
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        spacing: 12,
        children: [
          Expanded(
            child: Text(
              text,
              key: const ValueKey('actionSelection'),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          MenuAnchor(
            menuChildren: [
              for (final a in actions)
                MenuItemButton(
                  key: ValueKey('action:${a.key}'),
                  onPressed: () async {
                    await widget.onAction!(a, record!);
                    if (mounted) _reload();
                  },
                  child: Text(
                    widget.scope.labels.field(widget.entityKey, a.key),
                  ),
                ),
            ],
            builder: (context, controller, _) => OutlinedButton.icon(
              key: const ValueKey('actionMenu'),
              icon: const Icon(Icons.arrow_drop_down),
              label: Text(strings.actionMenu),
              // 行を選んでいて、その行に使える操作があるときだけ
              onPressed: actions.isEmpty
                  ? null
                  : () => controller.isOpen
                        ? controller.close()
                        : controller.open(),
            ),
          ),
        ],
      ),
    );
  }

  static const _childCountKey = '_childCount';
  static const _belowKey = '_below';
}

class _Loaded {
  const _Loaded(this.definition, this.records, this.names, this.tags);

  final EntityDefinition definition;
  final List<EntityRecord> records;
  final ReferenceNames names;

  /// 木の行のタグ(親の id → タグの文字)。
  final Map<String, List<String>> tags;
}
