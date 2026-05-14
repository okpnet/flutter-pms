import 'dart:async';

import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/constant/results/summary_data.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_header_mixin.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_tree_data_loader.dart';

mixin PgTreeMixin<T extends StatefulWidget> on State<T>, PgHeaderMixin {
  // ignore: non_constant_identifier_names
  static String BEFORE_EXPANDED = 'loadMore_';
  // ignore: non_constant_identifier_names
  static String DUMMY_ROW = 'dummy_';

  // ignore: non_constant_identifier_names, constant_identifier_names
  static const double DEPTH_INDENT = 16;

  // ignore: non_constant_identifier_names
  static String NULL_KEY = 'root';

  PlutoGridStateManager get stateManager;

  /// ページ側で定義する getter
  PlutoColumn get idField;
  PlutoColumn get childNumberOfRecordsColumn;

  /// データローダー（DB/REST/ローカル）
  late PgTreeDataLoader loader;

  /// PlutoGrid の columns をページ側で渡す
  List<PlutoColumn> get columns;

  ///展開の状況保持
  final Map<String?, LoadStattus> status = {};

  ///ツリー用の初期化
  void initColumns() {
    final column = stateManager.refColumns.firstWhere((t) => !t.hide);
    final index = stateManager.refColumns.indexOf(column);
    stateManager.insertColumns(index, [
      PlutoColumn(
        title: column.title,
        field: column.field,
        type: column.type,
        renderer: renderer,
      ),
    ]);

    stateManager.removeColumns([column]);
  }

  ///ツリー列の描画
  Widget renderer(PlutoColumnRendererContext context) {
    final row = context.row;
    final hasChildren =
        (int.tryParse(
              row.cells[childNumberOfRecordsColumn.field]?.value ?? '0',
            ) ??
            0) >
        0;
    final depth = row.parent == null ? 0 : row.parent!.depth + 1;
    Widget rowNormal() {
      //Rowが標準タイプのときのWidget
      final parentId = row.parent == null
          ? NULL_KEY
          : row.parent!.cells[idField.field]?.value.toString() ?? NULL_KEY;
      if (row.key != ValueKey('$BEFORE_EXPANDED$parentId')) {
        return Text(context.cell.value ?? '');
      }
      return Row(
        children: [
          SizedBox(width: depth * DEPTH_INDENT), // インデント
          TextButton(
            onPressed: () async => onLoadMore(row),
            child: Text('もっと読み込む'),
          ),
        ],
      );
    }

    Widget rowGroup(PlutoRowTypeGroup group) {
      //行がグループだったときのWidget
      return Row(
        children: [
          SizedBox(width: depth * DEPTH_INDENT), // インデント
          if (hasChildren)
            group.expanded
                ? IconButton(
                    onPressed: () {
                      onExpanded(row);
                      group.setExpanded(!group.expanded);
                    },
                    icon: Icon(Icons.expand_more),
                  )
                : IconButton(
                    onPressed: () {
                      final collspaceList = _toFlat(
                        row,
                        (t) =>
                            t.type is PlutoRowTypeGroup &&
                            t.type.group.expanded,
                      ).toList();

                      onCollapse(row);
                      group.setExpanded(!group.expanded);
                      collspaceList.forEach((t) => onCollapse(t));
                    },
                    icon: Icon(Icons.chevron_right),
                  ),
          const SizedBox(width: 4),
          Text(context.cell.value ?? ''),
        ],
      );
    }

    return switch (row.type) {
      PlutoRowTypeNormal normal => rowNormal(),
      PlutoRowTypeGroup group => rowGroup(group),
      _ => throw Exception('not implement row type'),
    };
  }

  //行の平坦化
  List<PlutoRow> _toFlat(PlutoRow find, bool Function(PlutoRow) varidation) {
    final result = <PlutoRow>[];
    if (varidation(find)) {
      result.add(find);
    }

    if (find.type case PlutoRowTypeNormal value) return result;
    for (var child in find.type.group.children) {
      result.addAll(_toFlat(child, varidation));
    }
    return result;
  }

  ///データから行生成
  PlutoRow buildPultoRow(Map<String, dynamic> json, PlutoRow? parentRow) {
    final value = json[childNumberOfRecordsColumn.field] as String?;
    final id = json[idField.field] as String?;
    final childCount = int.parse(value ?? "0");
    //グループ時に展開マークを表示させるためのダミー行
    // final dummyRow = PlutoRow(
    //   key: ValueKey('$DUMMY_ROW$id'),
    //   cells: {
    //     for (final col in columns)
    //       col.field: PlutoCell(
    //         value: col.field == idField.field ? BEFORE_EXPANDED : '',
    //       ),
    //   },
    // );
    // dummyRow.setParent(parentRow);

    final result = PlutoRow(
      type: childCount > 0
          ? .group(children: FilteredList<PlutoRow>(initialList: []))
          : .normal(),
      cells: {
        for (final col in columns) col.field: PlutoCell(value: json[col.field]),
      },
    );
    result.setParent(parentRow);
    return result;
  }

  ///さらに読み込む行を追加する
  PlutoRow loadMorePlutoRow(PlutoRow? parentRow) {
    final firstCol = columns.firstWhere((t) => !t.hide);
    final parentId = parentRow?.cells[idField.field]?.value ?? NULL_KEY;
    final result = PlutoRow(
      key: ValueKey('$BEFORE_EXPANDED$parentId'),
      type: PlutoRowTypeNormal(),
      cells: {
        for (var col in columns)
          col.field: PlutoCell(value: col == firstCol ? 'さらに読み込む' : ''),
      },
    );
    result.setParent(parentRow);
    if (parentRow?.type case PlutoRowTypeGroup value) {
      value.children.add(result);
    }

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

      final insertIndex = 0 > lastIndex
          ? stateManager.refRows.indexOf(parentRow) + 1
          : lastIndex;

      parentRow.type.group.children.addAll(addRowList);
      stateManager.insertRows(insertIndex, addRowList);

      if (!newState.isLatest) {
        stateManager.insertRows(insertIndex + addRowList.length, [
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
    final index = event.idx;
    if (index > 0) {
      final newParent = stateManager.refRows[index - 1];
      final newParentId = newParent.cells[idField.field]!.value;
      moved.parent?.type.group.children.remove(moved);
      moved.setParent(newParent);
      moved.type.group.setExpanded(false);
      stateManager.removeRows(_toFlat(moved, (t) => true));
      loader.updateParent(movedId, newParentId);
    }
  }

  //もっと読み込む行の判定
  bool isLoadMoreRow(PlutoRow? row) =>
      row != null &&
      row.key ==
          ValueKey(
            '$BEFORE_EXPANDED${row.parent?.cells[idField.field]?.value ?? 'root'}',
          );
  //もっと読み込む
  Future<bool> onLoadMore(PlutoRow row) async {
    final parentRow = row.parent;

    await loadAddRow(parentRow);
    stateManager.removeRows([row]); //もっと読み込む行を削除
    if (parentRow != null) {
      parentRow.type.group.children.remove(row);
    }
    return true;
  }

  ///縮小
  FutureOr<void> onExpanded(PlutoRow parentRow) async {
    if (parentRow.type is PlutoRowTypeNormal) return;
    final removeList = <PlutoRow>[];

    for (var child in parentRow.type.group.children) {
      final addlist = _toFlat(child, (t) => true);
      if (addlist.isNotEmpty) removeList.addAll(addlist);
    }

    stateManager.removeRows(removeList);
  }

  // 展開
  Future<void> onCollapse(PlutoRow row) async {
    final statusKey = row.cells[idField.field]?.value.toString();
    //すでに子が読み込まれているかどうか
    if (!status.containsKey(statusKey)) {
      await loadAddRow(row);
    } else {
      final insertIndex = stateManager.refRows.indexOf(row) + 1;
      stateManager.insertRows(insertIndex, row.type.group.children);
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
