import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

import '../cell/cell_context.dart';
import '../column/column_definition.dart';
import '../data/load_models.dart';
import '../logging/table_log.dart';
import '../row/row_model.dart';
import 'table_config.dart';

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
  }) : assert(items != null || loader != null, 'items か loader が必要');

  final List<ColumnDefinition<T>> columns;
  final List<T>? items;
  final TableDataLoader<T>? loader;
  final TableConfig config;

  @override
  ConsumerState<FlgTable<T>> createState() => _FlgTableState<T>();
}

class _FlgTableState<T> extends ConsumerState<FlgTable<T>> {
  List<RowModel<T>> _rows = [];
  bool _loading = false;
  Object? _error;

  TableLog get _log => TableLog(ref.read(loggerProvider));

  @override
  void initState() {
    super.initState();
    final loader = widget.loader;
    if (loader == null) {
      _rows = [for (final i in widget.items!) RowModel<T>(i)];
    } else {
      _loading = true;
      _load(loader);
    }
  }

  Future<void> _load(TableDataLoader<T> loader) async {
    try {
      final result = await loader(LoadQuery(count: widget.config.pageSize));
      _log.debug('loaded ${result.toJson()}');
      if (!mounted) return;
      setState(() {
        _rows = [for (final i in result.items) RowModel<T>(i)];
        _loading = false;
      });
    } catch (e, st) {
      _log.error('load failed', ex: e, trace: st);
      if (!mounted) return;
      setState(() {
        _error = e;
        _loading = false;
      });
    }
  }

  double _columnWidth(BuildContext context, ColumnDefinition<T> c) {
    if (c.width != null) return c.width!;
    final style = DefaultTextStyle.of(context).style;
    final painter = TextPainter(
      text: TextSpan(
        text: '0' * widget.config.defaultColumnChars,
        style: style,
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    return painter.width + _spacing(context) * 4;
  }

  /// theme_lib の余白。テーマに登録がなければ標準値(4)を使う。
  double _spacing(BuildContext context) =>
      Theme.of(context).extension<SpaceField>()?.spacing ?? 4;

  double _rowHeight(BuildContext context) {
    if (widget.config.rowHeight != null) return widget.config.rowHeight!;
    final fontSize = DefaultTextStyle.of(context).style.fontSize ?? 14;
    return fontSize * 1.5 + _spacing(context) * 4;
  }

  @override
  Widget build(BuildContext context) {
    final columns = widget.columns.where((c) => c.visible).toList();
    final rowHeight = _rowHeight(context);
    final theme = Theme.of(context);

    return LayoutBuilder(builder: (context, constraints) {
      final base = [for (final c in columns) _columnWidth(context, c)];
      final total = base.fold<double>(0, (a, b) => a + b);
      final available = constraints.maxWidth;
      // 列の合計が親より広ければ横スクロール、狭ければ親幅いっぱいに按分する。
      final tableWidth = total > available ? total : available;
      final scale = total == 0 ? 1.0 : tableWidth / total;
      final widths = [for (final w in base) w * scale];

      Widget cellBox(int i, Widget child) => SizedBox(
            width: widths[i],
            height: rowHeight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: _spacing(context) * 2),
              child: Align(alignment: Alignment.centerLeft, child: child),
            ),
          );

      final header = Row(children: [
        for (var i = 0; i < columns.length; i++)
          cellBox(
            i,
            Text(
              columns[i].label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textStyleMode(size: (t) => t.titleSmall),
            ),
          ),
      ]);

      final body = _error != null
          ? Center(child: Text('$_error'))
          : ListView.builder(
              itemCount: _rows.length,
              itemExtent: rowHeight,
              itemBuilder: (context, r) {
                final item = _rows[r].item;
                return DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: theme.dividerColor),
                    ),
                  ),
                  child: Row(children: [
                    for (var i = 0; i < columns.length; i++)
                      cellBox(
                        i,
                        columns[i].renderer.build(
                              context,
                              CellContext<T>(
                                columnKey: columns[i].key,
                                rowIndex: r,
                                item: item,
                                text: columns[i].read(item),
                              ),
                            ),
                      ),
                  ]),
                );
              },
            );

      final bounded = constraints.hasBoundedHeight;
      return Stack(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: tableWidth,
            height: bounded ? constraints.maxHeight : null,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                header,
                const Divider(height: 1),
                bounded
                    ? Expanded(child: body)
                    : SizedBox(height: rowHeight * _rows.length, child: body),
              ],
            ),
          ),
        ),
        if (_loading)
          const Positioned.fill(
            child: Center(child: CircularProgressIndicator()),
          ),
      ]);
    });
  }
}
