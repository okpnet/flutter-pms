import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:view_responsiveness/responsiveness.dart';

import 'main.dart';

/// 年齢などを数値として扱う列。ソート/フィルタは型に従う。
List<ColumnDefinition<Person>> typedColumns() => [
  ColumnDefinition<Person>(
    key: 'id',
    label: 'ID',
    getter: (p) => '${p.id}',
    type: ColumnType.number,
    width: 80,
  ),
  ColumnDefinition<Person>(
    key: 'name',
    label: '名前',
    getter: (p) => p.name,
    setter: (p, v) {
      p.name = v;
      return true;
    },
  ),
  ColumnDefinition<Person>(
    key: 'age',
    label: '年齢',
    getter: (p) => '${p.age}',
    type: ColumnType.number,
  ),
  ColumnDefinition<Person>(key: 'city', label: '都市', getter: (p) => p.city),
];

/// 先頭・件数・フィルタ・ソートを解釈する、メモリ上のダミーローダー。
TableDataLoader<Person> memoryLoader(
  List<Person> source, {
  Duration delay = const Duration(milliseconds: 300),
}) {
  final columns = typedColumns();
  return (q) async {
    await Future<void>.delayed(delay);
    var list = ConditionMatcher.filter(source, columns, q.filters ?? const []);
    list = ConditionMatcher.sort(list, columns, q.sort);
    final page = list.skip(q.start ?? 0).take(q.count ?? 50).toList();
    return LoadResult(
      items: page,
      totalCount: source.length,
      filteredCount: list.length,
      start: q.start ?? 0,
      count: page.length,
    );
  };
}

class SortFilterCase extends StatelessWidget {
  const SortFilterCase({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: [
      const Text('見出しタップでソート(昇順⇔降順)、見出しの右クリック/長押しでフィルタ'),
      Expanded(
        child: FlgTable<Person>(
          labels: LabelScope.of(context),
          columns: typedColumns(),
          items: people,
          config: const TableConfig(sortEnabled: true, filterEnabled: true),
        ),
      ),
    ],
  );
}

class PaginationCase extends StatelessWidget {
  const PaginationCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: typedColumns(),
    loader: memoryLoader(people),
    config: const TableConfig(
      loadMode: LoadMode.pagination,
      pageSize: 10,
      paginationDigits: 3,
      sortEnabled: true,
      filterEnabled: true,
    ),
  );
}

class InfiniteCase extends StatelessWidget {
  const InfiniteCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: typedColumns(),
    loader: memoryLoader(people),
    config: const TableConfig(
      loadMode: LoadMode.infiniteScroll,
      pageSize: 15,
      loadingKind: LoadingKind.footer,
    ),
  );
}

/// 行選択・セル編集・行操作(削除/フラグ/上下)・イベント通知。
class RowOperationCase extends StatefulWidget {
  const RowOperationCase({super.key});

  @override
  State<RowOperationCase> createState() => _RowOperationCaseState();
}

class _RowOperationCaseState extends State<RowOperationCase> {
  final _items = people.take(12).toList();
  final _log = <String>[];
  bool _multiple = true;

  void _add(String s) => setState(() => _log.insert(0, s));

  @override
  Widget build(BuildContext context) => Column(
    children: [
      const Text('左クリック:選択 / 選択済みセルの再クリック:編集 / 右クリック:行操作(PC)、右スライド:削除・フラグのタイル(モバイル/タブレット)、長押し:行操作'),
      Row(
        children: [
          Switch(
            key: const Key('multiSelect'),
            value: _multiple,
            onChanged: (v) => setState(() => _multiple = v),
          ),
          Text(_multiple ? 'マルチ選択(multiple)' : '単一選択(single)'),
        ],
      ),
      Expanded(
        child: FlgTable<Person>(
          labels: LabelScope.of(context),
          columns: typedColumns(),
          items: _items,
          rowKey: (p) => p.id,
          config: TableConfig(
            rowSelection: _multiple
                ? RowSelectionMode.multiple
                : RowSelectionMode.single,
            cellSelection: true,
            rowActionsEnabled: true,
            flagLimit: 3,
          ),
          events: TableEvents<Person>(
            onBeforeDelete: (e) {
              // 例: ID 1 は削除不可
              if (e.item.id == 1) {
                e.cancel = true;
                _add('削除キャンセル: ${e.item.name}');
              }
            },
            onAfterDelete: (p) {
              _items.remove(p);
              _add('削除: ${p.name}');
            },
            onRowActivated: (p) => _add('ダブルクリック: ${p.name}'),
            onCellChanged: (e) => _add('変更: ${e.columnKey}=${e.value}'),
            onFlagChanged: (p) => _add('フラグ変更: ${p.name}'),
            onFlagLimitExceeded: (e) =>
                _add('フラグ上限(${e.limit}): ${e.item.name}'),
          ),
        ),
      ),
      SizedBox(
        height: 80,
        child: ListView(
          key: const Key('eventLog'),
          children: [for (final l in _log) Text(l)],
        ),
      ),
    ],
  );
}

/// 同じ型のテーブル間で行を移動する。
class DragDropCase extends StatefulWidget {
  const DragDropCase({super.key});

  @override
  State<DragDropCase> createState() => _DragDropCaseState();
}

class _DragDropCaseState extends State<DragDropCase> {
  final _left = people.take(6).toList();
  final _right = people.skip(6).take(3).toList();

  @override
  Widget build(BuildContext context) {
    final cols = baseColumns();
    Widget table(String id, List<Person> items) => Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: FlgTable<Person>(
          labels: LabelScope.of(context),
          key: Key(id),
          columns: cols,
          items: items,
          rowKey: (p) => p.id,
          config: const TableConfig(dragEnabled: true),
          events: TableEvents<Person>(onAfterDrop: (e) => setState(() {})),
        ),
      ),
    );
    return Row(children: [table('left', _left), table('right', _right)]);
  }
}

class GroupingCase extends StatelessWidget {
  const GroupingCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: typedColumns(),
    items: people.take(15).toList(),
    config: const TableConfig(groupColumnKeys: ['city']),
  );
}

class Order {
  Order(this.no, this.customer, this.lines);
  final int no;
  final String customer;
  final List<OrderLine> lines;
}

class OrderLine {
  OrderLine(this.item, this.qty);
  final String item;
  final int qty;
}

class ChildTableCase extends StatelessWidget {
  const ChildTableCase({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      for (var i = 1; i <= 5; i++)
        Order(i, '得意先$i', [
          for (var j = 1; j <= i; j++) OrderLine('商品$i-$j', j * 10),
        ]),
    ];
    return FlgTable<Order>(
      labels: LabelScope.of(context),
      columns: [
        ColumnDefinition<Order>(
          key: 'no',
          label: '注文番号',
          getter: (o) => '${o.no}',
        ),
        ColumnDefinition<Order>(
          key: 'customer',
          label: '得意先',
          getter: (o) => o.customer,
        ),
      ],
      items: orders,
      childTable: ChildTableDefinition<Order, OrderLine>(
        arrayGetter: (o) => o.lines,
        columns: [
          ColumnDefinition<OrderLine>(
            key: 'item',
            label: '商品',
            getter: (l) => l.item,
          ),
          ColumnDefinition<OrderLine>(
            key: 'qty',
            label: '数量',
            getter: (l) => '${l.qty}',
          ),
        ],
      ),
    );
  }
}

class FrozenCase extends StatelessWidget {
  const FrozenCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: [
      ...baseColumns().take(2),
      for (var i = 0; i < 8; i++)
        ColumnDefinition<Person>(
          key: 'c$i',
          label: '列$i',
          getter: (p) => '${p.name}-$i',
          width: 160,
        ),
    ],
    items: people,
    config: const TableConfig(frozenColumnKey: 'name'),
  );
}

/// 狭い幅(モバイル)に固定して、タイル表示と検索/並び替えバーを確認する。
class MobileCase extends StatelessWidget {
  const MobileCase({super.key});

  @override
  Widget build(BuildContext context) => Center(
    child: SizedBox(
      width: 380,
      child: ResponsiveScope(
        notifier: ResponsiveDeviceNotifier(MediaBreakPoint.mobile),
        child: FlgTable<Person>(
          labels: LabelScope.of(context),
          columns: typedColumns(),
          items: people,
          config: const TableConfig(
            sortEnabled: true,
            filterEnabled: true,
            loadMode: LoadMode.pagination,
            pageSize: 10,
            paginationDigits: 3,
          ),
          mobileBuilder: (context, p) => ListTile(
            title: Text(p.name),
            subtitle: Text('${p.city} / ${p.age}歳'),
          ),
        ),
      ),
    ),
  );
}

class ExportCase extends StatefulWidget {
  const ExportCase({super.key});

  @override
  State<ExportCase> createState() => _ExportCaseState();
}

class _ExportCaseState extends State<ExportCase> {
  final _controller = FlgTableController<Person>();
  String _csv = '';

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Row(
        children: [
          FilledButton(
            key: const Key('exportCsv'),
            onPressed: () => setState(() => _csv = _controller.exportCsv()),
            child: const Text('CSV出力(表示中の行)'),
          ),
        ],
      ),
      Expanded(
        child: FlgTable<Person>(
          labels: LabelScope.of(context),
          columns: typedColumns(),
          items: people.take(10).toList(),
          controller: _controller,
          config: const TableConfig(sortEnabled: true, filterEnabled: true),
        ),
      ),
      SizedBox(
        height: 100,
        child: SingleChildScrollView(
          child: SelectableText(_csv, key: const Key('csvText')),
        ),
      ),
    ],
  );
}

class LoadingKindCase extends StatefulWidget {
  const LoadingKindCase({super.key});

  @override
  State<LoadingKindCase> createState() => _LoadingKindCaseState();
}

class _LoadingKindCaseState extends State<LoadingKindCase> {
  LoadingKind _kind = LoadingKind.header;
  final _controller = FlgTableController<Person>();

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Row(
        children: [
          SegmentedButton<LoadingKind>(
            key: const Key('loadingKind'),
            segments: [
              for (final k in LoadingKind.values)
                ButtonSegment(value: k, label: Text(k.name)),
            ],
            selected: {_kind},
            onSelectionChanged: (s) => setState(() => _kind = s.first),
          ),
          const SizedBox(width: 8),
          FilledButton(
            key: const Key('reload'),
            onPressed: _controller.reload,
            child: const Text('再読み込み'),
          ),
        ],
      ),
      Expanded(
        child: FlgTable<Person>(
          labels: LabelScope.of(context),
          key: ValueKey(_kind),
          columns: typedColumns(),
          controller: _controller,
          loader: memoryLoader(people, delay: const Duration(seconds: 2)),
          config: TableConfig(loadingKind: _kind),
        ),
      ),
    ],
  );
}

/// 日本語/英語の切替(ラベルは `TableLabels` で渡す)。
final exampleEnglish = ValueNotifier<bool>(false);

class LabelScope extends InheritedWidget {
  const LabelScope({super.key, required this.labels, required super.child});

  final TableLabels labels;

  static TableLabels of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<LabelScope>()?.labels ??
      const TableLabels();

  @override
  bool updateShouldNotify(LabelScope old) => labels != old.labels;
}

/// セル内の文字位置・overflow、件数表示、ローディングの左右位置を切り替えて確認する。
class DisplayOptionsCase extends StatefulWidget {
  const DisplayOptionsCase({super.key});

  @override
  State<DisplayOptionsCase> createState() => _DisplayOptionsCaseState();
}

class _DisplayOptionsCaseState extends State<DisplayOptionsCase> {
  CountPosition _position = CountPosition.header;
  HorizontalPlacement _countAlign = HorizontalPlacement.right;
  CountDirection _direction = CountDirection.horizontal;
  HorizontalPlacement _loadingAlign = HorizontalPlacement.left;
  bool _reverseOrder = false;
  final _controller = FlgTableController<Person>();

  Widget _choice<E extends Enum>(
    String id,
    List<E> values,
    E current,
    ValueChanged<E> onChanged,
  ) => Padding(
    padding: const EdgeInsets.only(right: 12),
    child: SegmentedButton<E>(
      key: Key(id),
      showSelectedIcon: false,
      segments: [
        for (final v in values) ButtonSegment(value: v, label: Text(v.name)),
      ],
      selected: {current},
      onSelectionChanged: (s) => setState(() => onChanged(s.first)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final columns = [
      ColumnDefinition<Person>(
        key: 'id',
        label: 'ID(数値=右寄せ)',
        getter: (p) => '${p.id}',
        type: ColumnType.number,
        width: 140,
      ),
      ColumnDefinition<Person>(
        key: 'name',
        label: '名前(文字列=左寄せ)',
        getter: (p) => p.name,
        width: 160,
      ),
      ColumnDefinition<Person>(
        key: 'joined',
        label: '入社日(日付=センター)',
        getter: (p) => DateTime(
          2026,
          1,
          1,
        ).add(Duration(days: p.id * 9)).toIso8601String().substring(0, 10),
        type: ColumnType.time,
        width: 160,
      ),
      ColumnDefinition<Person>(
        key: 'note',
        label: '備考(指定:右寄せ・fade)',
        getter: (p) => '${p.name} の備考。長い文字列は overflow の指定で処理される。',
        width: 200,
        textAlign: TextAlign.end,
        overflow: TextOverflow.fade,
      ),
      ColumnDefinition<Person>(
        key: 'memo',
        label: '備考2(clip)',
        getter: (p) => '${p.city}: 長い文字列は切り取られる(clip)長い文字列は切り取られる',
        width: 160,
        overflow: TextOverflow.clip,
      ),
    ];
    return Column(
      children: [
        Wrap(
          runSpacing: 4,
          children: [
            _choice(
              'countPosition',
              CountPosition.values,
              _position,
              (v) => _position = v,
            ),
            _choice(
              'countAlign',
              HorizontalPlacement.values,
              _countAlign,
              (v) => _countAlign = v,
            ),
            _choice(
              'countDirection',
              CountDirection.values,
              _direction,
              (v) => _direction = v,
            ),
            _choice(
              'loadingAlign',
              HorizontalPlacement.values,
              _loadingAlign,
              (v) => _loadingAlign = v,
            ),
            FilterChip(
              key: const Key('reverseOrder'),
              label: const Text('並び順を逆(読込→フィルタ→全)'),
              selected: _reverseOrder,
              onSelected: (v) => setState(() => _reverseOrder = v),
            ),
            FilledButton(
              key: const Key('reloadDisplay'),
              onPressed: _controller.reload,
              child: const Text('再読み込み'),
            ),
          ],
        ),
        Expanded(
          child: FlgTable<Person>(
            labels: LabelScope.of(context),
            key: ValueKey((
              _position,
              _countAlign,
              _direction,
              _loadingAlign,
              _reverseOrder,
            )),
            columns: columns,
            controller: _controller,
            loader: memoryLoader(people),
            config: TableConfig(
              loadMode: LoadMode.pagination,
              pageSize: 10,
              sortEnabled: true,
              filterEnabled: true,
              countItems: const [
                CountItem.total,
                CountItem.filtered,
                CountItem.loaded,
              ],
              countPosition: _position,
              countAlignment: _countAlign,
              countDirection: _direction,
              countHorizontalOrder: _reverseOrder
                  ? const [
                      CountItem.loaded,
                      CountItem.filtered,
                      CountItem.total,
                    ]
                  : TableConfig.defaultCountOrder,
              countVerticalOrder: _reverseOrder
                  ? const [
                      CountItem.loaded,
                      CountItem.filtered,
                      CountItem.total,
                    ]
                  : TableConfig.defaultCountOrder,
              loadingAlignment: _loadingAlign,
              loadingKind: LoadingKind.header,
            ),
          ),
        ),
      ],
    );
  }
}
