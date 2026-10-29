import 'package:app_shell/app_shell.dart';
import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';

import '../definition.dart';
import '../i18n/strings.g.dart';
import '../record.dart';
import 'entity_scope.dart';

/// 子の台帳を、親の表の各行に子の表を入れた「表の中の表」で出す画面([EntityDefinition.nest])。
///
/// 親は絞り込み([NestedList.where])した行だけ。行ごとに開閉でき、初期状態はすべて開く。
/// 子の表は `flgtable_lib` を使う。編集モードでは、親ごとの「追加」と、子の行から編集への遷移ができる。
/// 画面遷移は呼び出し側([onAdd]・[onEdit])が行い、戻ってきたら再読み込みする。
class EntityNestedPage extends StatefulWidget {
  const EntityNestedPage({
    super.key,
    required this.entityKey,
    required this.scope,
    required this.onAdd,
    required this.onEdit,
  });

  /// 子の実体のキー。
  final String entityKey;
  final EntityScope scope;

  /// 親 [parentId] の子を新規登録する。
  final Future<void> Function(String parentId) onAdd;

  /// 子 [child] を編集する。
  final Future<void> Function(EntityRecord child) onEdit;

  @override
  State<EntityNestedPage> createState() => _EntityNestedPageState();
}

class _Loaded {
  const _Loaded({
    required this.parentDefinition,
    required this.childDefinition,
    required this.parents,
    required this.children,
    required this.parentNames,
    required this.childNames,
  });

  final EntityDefinition parentDefinition;
  final EntityDefinition childDefinition;
  final List<EntityRecord> parents;
  final Map<String, List<EntityRecord>> children;
  final ReferenceNames parentNames;
  final ReferenceNames childNames;
}

class _EntityNestedPageState extends State<EntityNestedPage> {
  late Future<_Loaded> _future = _load();
  bool _editing = false;
  final Set<String> _closed = {};
  String _search = '';
  String? _sortKey;
  int _generation = 0;

  Future<_Loaded> _load() async {
    final catalog = widget.scope.catalog;
    final childRepo = catalog.repository(widget.entityKey);
    final nest = childRepo?.definition.nest;
    if (childRepo == null || nest == null) {
      throw StateError('表の中の表の指定が無い実体: ${widget.entityKey}');
    }
    final parentRepo = catalog.repository(nest.parent);
    if (parentRepo == null) throw StateError('未登録の実体: ${nest.parent}');
    final parents = [
      for (final r in await parentRepo.find(take: 100000))
        if (nest.where.entries.every((e) => r.valueOf(e.key) == e.value)) r,
    ];
    final children = <String, List<EntityRecord>>{};
    for (final c in await childRepo.find(take: 100000)) {
      final p = c.parentId;
      if (p != null) (children[p] ??= []).add(c);
    }
    return _Loaded(
      parentDefinition: parentRepo.definition,
      childDefinition: childRepo.definition,
      parents: parents,
      children: children,
      parentNames: namesOf(
        await loadReferenceOptions(catalog, parentRepo.definition),
      ),
      childNames: namesOf(
        await loadReferenceOptions(catalog, childRepo.definition),
      ),
    );
  }

  void _reload() => setState(() {
    _generation++;
    _future = _load();
  });

  Future<void> _add(String parentId) async {
    await widget.onAdd(parentId);
    if (mounted) _reload();
  }

  Future<void> _edit(EntityRecord child) async {
    await widget.onEdit(child);
    if (mounted) _reload();
  }

  /// 親の表に出す項目(文字・数値・参照・真偽の先頭から 4つまで)。
  List<FieldDefinition> _parentFields(EntityDefinition d) => [
    for (final f in d.fields)
      if (f.kind == FieldKind.text ||
          f.kind == FieldKind.number ||
          f.kind == FieldKind.reference ||
          f.kind == FieldKind.flag)
        f,
  ].take(4).toList();

  String _valueOf(
    FieldDefinition f,
    EntityRecord r,
    ReferenceNames names,
    EntityScreenStrings s,
  ) {
    final v = r.valueOf(f.key);
    return switch (f.kind) {
      FieldKind.reference => names[f.key]?[v] ?? v,
      FieldKind.flag => v == flagOn ? s.yes : s.no,
      _ => v,
    };
  }

  @override
  Widget build(BuildContext context) {
    final scope = widget.scope;
    final s = scope.strings;
    return ScreenScaffold(
      title: scope.labels.entity(widget.entityKey),
      actions: [
        TextButton.icon(
          key: const ValueKey('nestedEdit'),
          icon: Icon(_editing ? Icons.check : Icons.edit_outlined),
          label: Text(_editing ? s.nested.done : s.nested.edit),
          onPressed: () => setState(() => _editing = !_editing),
        ),
      ],
      body: FutureBuilder<_Loaded>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.hasError) return Center(child: Text(s.loadFailed));
          final loaded = snapshot.data;
          if (loaded == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return _body(loaded);
        },
      ),
    );
  }

  Widget _body(_Loaded loaded) {
    final scope = widget.scope;
    final s = scope.strings;
    final fields = _parentFields(loaded.parentDefinition);
    final parentKey = loaded.parentDefinition.key;
    final countLabel =
        '${scope.labels.reverse(parentKey, widget.entityKey)}'
        '${s.nested.countSuffix}';

    String text(EntityRecord r, FieldDefinition f) =>
        _valueOf(f, r, loaded.parentNames, s);

    // 検索(表示している文字のどれかに含む)と、並べ替え
    final keyword = _search.trim().toLowerCase();
    var parents = [
      for (final p in loaded.parents)
        if (keyword.isEmpty ||
            fields.any((f) => text(p, f).toLowerCase().contains(keyword)))
          p,
    ];
    final sortField = fields.where((f) => f.key == _sortKey).firstOrNull;
    if (sortField != null) {
      parents.sort((a, b) => text(a, sortField).compareTo(text(b, sortField)));
    }

    final childColumns = columnsOf(
      loaded.childDefinition,
      scope.labels,
      loaded.childNames,
      yes: s.yes,
      no: s.no,
    );

    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        Row(
          spacing: 12,
          children: [
            Expanded(
              child: TextField(
                key: const ValueKey('nestedSearch'),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: s.nested.search,
                  isDense: true,
                ),
                onChanged: (v) => setState(() => _search = v),
              ),
            ),
            DropdownButton<String?>(
              key: const ValueKey('nestedSort'),
              value: _sortKey,
              hint: Text(s.nested.sort),
              items: [
                DropdownMenuItem<String?>(
                  value: null,
                  child: Text(s.nested.noSort),
                ),
                for (final f in fields)
                  DropdownMenuItem<String?>(
                    value: f.key,
                    child: Text(scope.labels.field(parentKey, f.key)),
                  ),
              ],
              onChanged: (v) => setState(() => _sortKey = v),
            ),
          ],
        ),
        const SizedBox(height: 12),
        if (parents.isEmpty) Center(child: Text(s.noData)),
        for (final p in parents)
          _ParentCard(
            key: ValueKey('parent:${p.id}'),
            open: !_closed.contains(p.id),
            onToggle: () => setState(() {
              if (!_closed.remove(p.id)) _closed.add(p.id);
            }),
            title: [for (final f in fields) text(p, f)],
            headers: [
              for (final f in fields) scope.labels.field(parentKey, f.key),
            ],
            countLabel: countLabel,
            count: loaded.children[p.id]?.length ?? 0,
            editing: _editing,
            addLabel: s.nested.add,
            onAdd: () => _add(p.id),
            table: FlgTable<EntityRecord>(
              key: ValueKey('table:${p.id}:$_generation'),
              columns: childColumns,
              items: loaded.children[p.id] ?? const [],
              rowKey: (r) => r.id,
              config: const TableConfig(sortEnabled: true),
              events: TableEvents<EntityRecord>(
                onRowActivated: _editing ? _edit : null,
              ),
            ),
            rows: loaded.children[p.id]?.length ?? 0,
          ),
      ],
    );
  }
}

class _ParentCard extends StatelessWidget {
  const _ParentCard({
    super.key,
    required this.open,
    required this.onToggle,
    required this.title,
    required this.headers,
    required this.countLabel,
    required this.count,
    required this.editing,
    required this.addLabel,
    required this.onAdd,
    required this.table,
    required this.rows,
  });

  final bool open;
  final VoidCallback onToggle;
  final List<String> title;
  final List<String> headers;
  final String countLabel;
  final int count;
  final bool editing;
  final String addLabel;
  final VoidCallback onAdd;
  final Widget table;
  final int rows;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              key: ValueKey('toggle:${title.first}'),
              onTap: onToggle,
              child: Row(
                children: [
                  Icon(open ? Icons.expand_more : Icons.chevron_right),
                  for (var i = 0; i < title.length; i++)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(headers[i], style: theme.textTheme.labelSmall),
                            Text(title[i], overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(countLabel, style: theme.textTheme.labelSmall),
                      Text('$count'),
                    ],
                  ),
                ],
              ),
            ),
            if (open) ...[
              const SizedBox(height: 8),
              // 子の表の高さは、行の数に合わせる(見出し + 行)
              SizedBox(
                height: ((rows < 1 ? 1 : rows) + 1) * 44 + 16,
                child: table,
              ),
              if (editing)
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton.icon(
                    key: ValueKey('add:${title.first}'),
                    icon: const Icon(Icons.add),
                    label: Text(addLabel),
                    onPressed: onAdd,
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}
