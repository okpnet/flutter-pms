import 'package:flutter/widgets.dart';

import '../data/load_models.dart';
import '../event/table_events.dart';
import '../label/table_labels.dart';
import '../table/table_core.dart';
import '../table/table_config.dart';
import 'column_definition.dart';

/// 子テーブルの定義。親の行が持つ配列を子テーブルとして展開する。
///
/// 親テーブルに事前に登録する。孫テーブルは非対応(1階層のみ)。
/// パターン: Factory Method(子テーブルの生成を定義側に委ねる)
class ChildTableDefinition<T, C> {
  const ChildTableDefinition({
    required this.arrayGetter,
    required this.columns,
    this.rowKey,
    this.events,
    this.config = const TableConfig(),
  });

  final List<C> Function(T parent) arrayGetter;
  final List<ColumnDefinition<C>> columns;
  final Object Function(C item)? rowKey;
  final TableEvents<C>? events;

  /// 子テーブルの設定。読み込み方式は常に`none`(ページネーション/無限スクロールは不可)。
  final TableConfig config;

  /// 子テーブルを生成する。
  Widget build(
    T parent, {
    required double? rowHeight,
    required TableLabels labels,
  }) {
    final c = config;
    return FlgTable<C>(
      columns: columns,
      items: arrayGetter(parent),
      rowKey: rowKey,
      events: events,
      labels: labels,
      config: TableConfig(
        rowHeight: c.rowHeight ?? rowHeight,
        loadMode: LoadMode.none,
        defaultColumnChars: c.defaultColumnChars,
        sortEnabled: c.sortEnabled,
        filterEnabled: c.filterEnabled,
        initialSort: c.initialSort,
        initialFilters: c.initialFilters,
        rowSelection: c.rowSelection,
        cellSelection: c.cellSelection,
        dragEnabled: c.dragEnabled,
        rowActionsEnabled: c.rowActionsEnabled,
        flagLimit: c.flagLimit,
        groupColumnKeys: c.groupColumnKeys,
        frozenColumnKey: c.frozenColumnKey,
        loadingKind: c.loadingKind,
        loadingAlignment: c.loadingAlignment,
        countItems: c.countItems,
        countPosition: c.countPosition,
        countAlignment: c.countAlignment,
        countDirection: c.countDirection,
        countHorizontalOrder: c.countHorizontalOrder,
        countVerticalOrder: c.countVerticalOrder,
        undoEnabled: c.undoEnabled,
        undoLimit: c.undoLimit,
      ),
    );
  }
}
