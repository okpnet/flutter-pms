import 'dart:async';

import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/constant/results/summary_data.dart';
import 'package:utility_widget_example/fields/fields.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_header_mixin.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_tree_data_loader.dart';

mixin PgTreeMixin<T extends StatefulWidget> on State<T>, PgHeaderMixin {
  // ignore: non_constant_identifier_names
  static String BEFORE_EXPANDED = 'loadMore_';

  PlutoGridStateManager get stateManager;

  /// ページ側で定義する getter
  PlutoColumn get idField;
  PlutoColumn get childNumberOfRecordsColumn;

  /// データローダー（DB/REST/ローカル）
  late PgTreeDataLoader loader;

  /// PlutoGrid の columns をページ側で渡す
  List<PlutoColumn> get columns;

  final Map<String?, LoadStattus> status = {};

  PlutoRow buildPultoRow(Map<String, dynamic> json, PlutoRow? parentRow) {
    final value = json[childNumberOfRecordsColumn.field] as String?;
    final childCount = int.parse(value ?? "0");
    // final childCount = json[childNumberOfRecordsColumn.field] as int;
    // final firstCol = columns.firstWhere((t) => !t.hide);

    final result = PlutoRow(
      type: childCount > 0
          ? .group(
              children: FilteredList<PlutoRow>(
                initialList: [
                  PlutoRow(
                    cells: {
                      for (final col in columns)
                        col.field: PlutoCell(
                          value: col.field == idField.field
                              ? BEFORE_EXPANDED
                              : '',
                        ),
                    },
                  ),
                ],
              ),
            )
          : .normal(),
      cells: {
        for (final col in columns) col.field: PlutoCell(value: json[col.field]),
      },
    );
    result.setParent(parentRow);
    return result;
  }

  PlutoRow loadMorePlutoRow(PlutoRow? parentRow) {
    final firstCol = columns.firstWhere((t) => !t.hide);
    final parentId = parentRow?.cells[idField.field]?.value ?? 'root';
    final result = PlutoRow(
      key: ValueKey('$BEFORE_EXPANDED$parentId'),
      type: PlutoRowTypeNormal(),
      cells: {
        for (var col in columns)
          col.field: PlutoCell(value: col == firstCol ? 'さらに読み込む' : ''),
      },
    );
    result.setParent(parentRow);
    return result;
  }

  ///読み込みと行の追加
  Future<void> loadAddRow(PlutoRow? parentRow) async {
    stateManager.setShowLoading(true);
    final take = 4;
    final parentId = parentRow?.cells[idField.field]?.value as String?;
    final state =
        status[parentId] ?? LoadStattus(current: 0, numberOfRecords: 0);
    final roots = switch (await loader.loadChildrenOf(
      parentId: parentId,
      take: take,
      skip: state.current,
    )) {
      Ok<SummaryLoadData> okvalue => okvalue,
      _ => throw Exception(),
    };

    summaryNotifier.value = SummaryData(
      numberOfRecords: roots.value.numberOfRecords,
      filteredNumberOfRecords: roots.value.filteredNumberOfRecords,
    );

    final newState = LoadStattus(
      current: state.current + take,
      numberOfRecords: roots.value.filteredNumberOfRecords ?? 0,
    );

    status[parentId] = newState;
    final addRowList = roots.value.loadData
        .map((row) => buildPultoRow(row, parentRow))
        .toList();

    if (parentRow == null) {
      //トップノード
      stateManager.appendRows(addRowList);
      if (!newState.isLatest) {
        stateManager.appendRows([loadMorePlutoRow(parentRow)]);
      }
    } else {
      final lastIndex = stateManager.refRows.lastIndexWhere(
        (t) => t.parent == parentRow,
      );

      stateManager.insertRows(lastIndex, addRowList);

      if (!newState.isLatest) {
        stateManager.insertRows(lastIndex + addRowList.length, [
          loadMorePlutoRow(parentRow),
        ]);
      }
    }

    stateManager.setShowLoading(false);
  }

  /// ドラッグ＆ドロップで親子関係変更
  void onRowsMoved(PlutoGridOnRowsMovedEvent event) {
    // 移動された行（複数だが、ここでは先頭だけ扱う）
    final moved = event.rows.first;
    final movedId = moved.cells[idField.field]!.value;

    // 直前の行を新しい親とみなす（デモ用ルール）
    final index = stateManager.refRows.indexOf(moved);
    if (index > 0) {
      final newParent = stateManager.refRows[index - 1];
      final newParentId = newParent.cells[idField.field]!.value;

      loader.updateParent(movedId, newParentId);
    }
  }

  bool isLoadMoreRow(PlutoRow? row) =>
      row != null &&
      row.key ==
          ValueKey(
            '$BEFORE_EXPANDED${row.parent?.cells[idField.field]?.value ?? 'root'}',
          );

  Future<bool> onLoadMore(PlutoRow row) async {
    final parentRow = row.parent;

    await loadAddRow(parentRow);
    stateManager.removeRows([row]);
    return true;
  }

  Future<void> onExpanded(PlutoRow parentRow) async {}
  // 展開
  Future<void> onCollapse(PlutoRow parentRow) async {
    final childExpandedRow = parentRow.type.isGroup
        ? parentRow.type.group.children.first
        : null;
    final cellValue = childExpandedRow?.cells[idField.field]?.value.toString();
    if (cellValue == BEFORE_EXPANDED) {
      // parentRow.type.group.children.removeAt(0);

      await loadAddRow(parentRow);
      stateManager.removeRows([childExpandedRow!]);
    }
  }
}

final class LoadStattus {
  final int numberOfRecords;
  final int current;

  bool get isLatest => current >= numberOfRecords;

  LoadStattus({required this.current, required this.numberOfRecords});

  LoadStattus copyWith({int? current, int? numberOfRecords}) {
    return LoadStattus(
      current: current ?? this.current,
      numberOfRecords: numberOfRecords ?? this.numberOfRecords,
    );
  }
}
