import 'package:flgtable_lib/tree_table_lib.dart';
import 'package:flutter/material.dart';

import 'feature_cases.dart';
import 'main.dart';

/// 組織図のサンプルデータ。本社/支社 → 部 → チーム。
class Org {
  Org(this.id, this.name, this.parent, this.members);
  final int id;
  String name;
  int? parent;
  final int members;

  @override
  String toString() => 'Org($id $name)';
}

List<Org> orgData() {
  final list = <Org>[];
  var id = 1;
  const roots = ['本社', '支社A', '支社B'];
  for (final r in roots) {
    final rootId = id++;
    list.add(Org(rootId, r, null, 0));
    for (var d = 1; d <= 5; d++) {
      final deptId = id++;
      list.add(Org(deptId, '$r 第$d部', rootId, d * 3));
      for (var t = 1; t <= 2; t++) {
        list.add(Org(id++, '$r 第$d部 チーム$t', deptId, d + t));
      }
    }
  }
  return list;
}

List<ColumnDefinition<Org>> orgColumns() => [
  ColumnDefinition<Org>(
    key: 'name',
    label: '組織',
    getter: (o) => o.name,
    width: 320,
    setter: (o, v) {
      o.name = v;
      return true;
    },
  ),
  ColumnDefinition<Org>(
    key: 'members',
    label: '人数',
    getter: (o) => '${o.members}',
    type: ColumnType.number,
    width: 100,
  ),
  ColumnDefinition<Org>(
    key: 'id',
    label: 'ID',
    getter: (o) => '${o.id}',
    type: ColumnType.number,
    width: 80,
    exportable: false,
  ),
];

/// ツリー: 遅延読み込み・インデント・関係線・もっと読み込む・フィルタ・
/// ドラッグドロップによる親の変更・取り消し/やり直し。
class TreeCase extends StatefulWidget {
  const TreeCase({super.key});

  @override
  State<TreeCase> createState() => _TreeCaseState();
}

class _TreeCaseState extends State<TreeCase> {
  final _data = orgData();
  late final _source = StaticTreeSource<Org>(
    items: _data,
    columns: orgColumns(),
    key: (o) => o.id,
    parentKey: (o) => o.parent,
  );
  final _controller = FlgTableController<Org>();
  final _log = <String>[];

  int _indent = 2;
  bool _lines = true;
  TreeLineStyle _style = TreeLineStyle.solid;
  double _lineWidth = 1;
  int _pageSize = 50;
  bool _drag = true;
  bool _checker = true;

  void _add(String line) => setState(() {
    _log.insert(0, line);
    if (_log.length > 6) _log.removeLast();
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 300,
          child: ListView(
            children: [
              const Text('インデント(文字数)'),
              SegmentedButton<int>(
                key: const Key('tree.indent'),
                segments: [
                  for (final n in [1, 2, 3, 4])
                    ButtonSegment(value: n, label: Text('$n')),
                ],
                selected: {_indent},
                onSelectionChanged: (s) => setState(() => _indent = s.first),
              ),
              SwitchListTile(
                key: const Key('tree.lines'),
                title: const Text('関係線'),
                value: _lines,
                onChanged: (v) => setState(() => _lines = v),
              ),
              SegmentedButton<TreeLineStyle>(
                key: const Key('tree.style'),
                segments: const [
                  ButtonSegment(value: TreeLineStyle.solid, label: Text('実線')),
                  ButtonSegment(
                    value: TreeLineStyle.dashed,
                    label: Text('ダッシュ'),
                  ),
                  ButtonSegment(value: TreeLineStyle.dotted, label: Text('ドット')),
                ],
                selected: {_style},
                onSelectionChanged: (s) => setState(() => _style = s.first),
              ),
              Slider(
                key: const Key('tree.width'),
                min: 1,
                max: 4,
                divisions: 3,
                label: '線の太さ $_lineWidth',
                value: _lineWidth,
                onChanged: (v) => setState(() => _lineWidth = v),
              ),
              const Text('1レベルの最大行数'),
              SegmentedButton<int>(
                key: const Key('tree.pageSize'),
                segments: const [
                  ButtonSegment(value: 3, label: Text('3')),
                  ButtonSegment(value: 5, label: Text('5')),
                  ButtonSegment(value: 50, label: Text('50')),
                ],
                selected: {_pageSize},
                onSelectionChanged: (s) {
                  setState(() => _pageSize = s.first);
                  _controller.reload();
                },
              ),
              SwitchListTile(
                key: const Key('tree.drag'),
                title: const Text('ドラッグドロップ(親の変更)'),
                value: _drag,
                onChanged: (v) => setState(() => _drag = v),
              ),
              SwitchListTile(
                key: const Key('tree.checker'),
                title: const Text('循環の判定(フィルタ中も移動可)'),
                value: _checker,
                onChanged: (v) => setState(() => _checker = v),
              ),
              TextField(
                key: const Key('tree.filter'),
                decoration: const InputDecoration(labelText: '名前に含む(フィルタ)'),
                onSubmitted: (text) => _controller.setFilters([
                  if (text.isNotEmpty)
                    FilterCondition('name', FilterOperator.like, ['%$text%']),
                ]),
              ),
              Row(
                children: [
                  TextButton(
                    key: const Key('tree.undo'),
                    onPressed: () => _add('取り消し: ${_controller.undo()}'),
                    child: const Text('取り消し'),
                  ),
                  TextButton(
                    key: const Key('tree.redo'),
                    onPressed: () => _add('やり直し: ${_controller.redo()}'),
                    child: const Text('やり直し'),
                  ),
                  TextButton(
                    key: const Key('tree.reload'),
                    onPressed: _controller.reload,
                    child: const Text('再読込'),
                  ),
                ],
              ),
              const Divider(),
              for (final line in _log) Text(line, key: Key('tree.log.$line')),
            ],
          ),
        ),
        const VerticalDivider(width: 1),
        Expanded(
          child: TreeTable<Org>(
            columns: orgColumns(),
            treeLoader: _source.loader,
            rowKey: (o) => o.id,
            controller: _controller,
            labels: LabelScope.of(context),
            cycleChecker: _checker ? _source.cycleChecker : null,
            treeConfig: TreeConfig(
              indentChars: _indent,
              showLines: _lines,
              lineStyle: _style,
              lineWidth: _lineWidth,
            ),
            config: TableConfig(
              pageSize: _pageSize,
              sortEnabled: true,
              filterEnabled: true,
              dragEnabled: _drag,
              rowActionsEnabled: true,
              cellSelection: true,
              countItems: const [CountItem.loaded],
            ),
            events: TableEvents<Org>(
              onBeforeParentChange: (e) =>
                  _add('親変更前: ${e.item.name} → ${e.newParent?.name ?? 'トップ'}'),
              onAfterParentChange: (e) {
                e.item.parent = e.newParent?.id; // データの更新はアプリ側
                _add('親変更後: ${e.item.name} → ${e.newParent?.name ?? 'トップ'}');
              },
              onUndone: (e) => _add('取り消し通知: ${e.operation.name}'),
              onRedone: (e) => _add('やり直し通知: ${e.operation.name}'),
              onAfterDelete: (o) => _add('削除: ${o.name}'),
            ),
          ),
        ),
      ],
    );
  }
}

/// 取り消し/やり直し: セル編集・削除・フラグ・上下移動。Ctrl+Z / Ctrl+Y でも操作できる。
class UndoCase extends StatefulWidget {
  const UndoCase({super.key});

  @override
  State<UndoCase> createState() => _UndoCaseState();
}

class _UndoCaseState extends State<UndoCase> {
  final _items = [
    for (var i = 1; i <= 8; i++) Person(i, '社員$i', 20 + i, '東京'),
  ];
  final _controller = FlgTableController<Person>();
  final _log = <String>[];

  void _add(String line) => setState(() {
    _log.insert(0, line);
    if (_log.length > 6) _log.removeLast();
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('右クリック/右スライド:削除・フラグ・上下移動、セル選択後に再クリック:編集。Ctrl+Z / Ctrl+Y'),
        Row(
          children: [
            TextButton(
              key: const Key('undo.undo'),
              onPressed: () => _add('取り消し: ${_controller.undo()}'),
              child: const Text('取り消し'),
            ),
            TextButton(
              key: const Key('undo.redo'),
              onPressed: () => _add('やり直し: ${_controller.redo()}'),
              child: const Text('やり直し'),
            ),
            Expanded(
              child: Text(
                _log.join(' / '),
                key: const Key('undo.log'),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        Expanded(
          child: FlgTable<Person>(
            labels: LabelScope.of(context),
            columns: baseColumns(),
            items: _items,
            rowKey: (p) => p.id,
            controller: _controller,
            config: const TableConfig(
              rowActionsEnabled: true,
              cellSelection: true,
            ),
            events: TableEvents<Person>(
              onUndone: (e) =>
                  _add('取り消し通知: ${e.operation.name} ${e.item.name}'),
              onRedone: (e) =>
                  _add('やり直し通知: ${e.operation.name} ${e.item.name}'),
              onAfterDelete: (p) => _add('削除: ${p.name}'),
            ),
          ),
        ),
      ],
    );
  }
}
