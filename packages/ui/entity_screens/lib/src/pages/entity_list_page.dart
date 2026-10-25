import 'package:app_shell/app_shell.dart';
import 'package:flgtable_lib/tree_table_lib.dart';
import 'package:flutter/material.dart';

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

  /// ツリーの台帳の親の付け替え(ドラッグ&ドロップ)を受けるハンドラ。[newParent] が null ならトップへ。
  /// 更新と検証(循環・権限)は呼び出し側が行う。null のときは付け替えを有効にしない。
  /// 完了(失敗を含む)したら、台帳を再読み込みして実際のデータに合わせる。
  final Future<void> Function(EntityRecord item, EntityRecord? newParent)?
  onReparent;

  @override
  State<EntityListPage> createState() => _EntityListPageState();
}

class _EntityListPageState extends State<EntityListPage> {
  late Future<_Loaded> _future = _load();
  int _generation = 0;

  Future<_Loaded> _load() async {
    final catalog = widget.scope.catalog;
    final repository = catalog.repository(widget.entityKey);
    if (repository == null) throw StateError('未登録の実体: ${widget.entityKey}');
    final options = await loadReferenceOptions(catalog, repository.definition);
    final records = [
      for (final r in await repository.find(take: 100000))
        if (widget.filter.entries.every((e) => r.valueOf(e.key) == e.value)) r,
    ];
    return _Loaded(repository.definition, records, namesOf(options));
  }

  void _reload() => setState(() {
    _generation++;
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
      actions: [
        if (widget.showCreate)
          IconButton(
            tooltip: scope.strings.create,
            icon: const Icon(Icons.add),
            onPressed: _create,
          ),
      ],
      body: FutureBuilder<_Loaded>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(scope.strings.loadFailed));
          }
          final loaded = snapshot.data;
          if (loaded == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return _table(loaded);
        },
      ),
    );
  }

  Widget _table(_Loaded loaded) {
    final scope = widget.scope;
    final columns = columnsOf(loaded.definition, scope.labels, loaded.names);
    final config = TableConfig(
      sortEnabled: true,
      filterEnabled: true,
      dragEnabled: loaded.definition.isTree && widget.onReparent != null,
    );
    final events = TableEvents<EntityRecord>(
      onRowActivated: _open,
      onAfterParentChange: loaded.definition.isTree ? _reparent : null,
    );
    // 再読み込みと、言語が変わった(名称が変わった)ときに表を作り直す
    final key = ValueKey(
      '${widget.entityKey}:$_generation:${scope.labels.entity(widget.entityKey)}',
    );

    if (!loaded.definition.isTree) {
      return FlgTable<EntityRecord>(
        key: key,
        columns: columns,
        items: loaded.records,
        rowKey: (r) => r.id,
        config: config,
        events: events,
      );
    }

    // ツリー: 子の数を隠し列で渡す(子の無い行に展開の印を出さない)。
    final childCounts = <String?, int>{};
    for (final r in loaded.records) {
      childCounts[r.parentId] = (childCounts[r.parentId] ?? 0) + 1;
    }
    final treeColumns = [
      ...columns,
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
      items: loaded.records,
      columns: treeColumns,
      key: (r) => r.id,
      parentKey: (r) => r.parentId,
    );
    return TreeTable<EntityRecord>(
      key: key,
      columns: treeColumns,
      treeLoader: source.loader,
      rowKey: (r) => r.id,
      config: config,
      events: events,
      treeConfig: const TreeConfig(childCountColumnKey: _childCountKey),
    );
  }

  static const _childCountKey = '_childCount';
}

class _Loaded {
  const _Loaded(this.definition, this.records, this.names);

  final EntityDefinition definition;
  final List<EntityRecord> records;
  final ReferenceNames names;
}
