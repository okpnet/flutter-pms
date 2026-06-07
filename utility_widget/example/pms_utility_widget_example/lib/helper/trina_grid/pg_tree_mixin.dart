// import 'dart:async';

// import 'package:trina_grid/trina_grid.dart';
// import 'package:utility_widget/utiritiy_widget.dart';
// import 'package:utility_widget_example/constant/results/result.dart';
// import 'package:utility_widget_example/src/manager/model/summary_data.dart';
// import 'package:utility_widget_example/helper/trina_grid/pg_header_mixin.dart';
// import 'package:utility_widget_example/helper/trina_grid/pg_tree_data_loader.dart';
// import 'package:utility_widget_example/extensions/pluto_grid/trina_column_extension.dart';
// import 'package:utility_widget_example/extensions/pluto_grid/trina_row_extension.dart';

// mixin PgTreeMixin<T extends StatefulWidget> on State<T>, PgHeaderMixin {
//   // ignore: non_constant_identifier_names
//   static String BEFORE_EXPANDED = 'loadMore_';
//   // ignore: non_constant_identifier_names
//   static String DUMMY_ROW = 'dummy_';

//   // ignore: non_constant_identifier_names, constant_identifier_names
//   static const double DEPTH_INDENT = 16;

//   // ignore: non_constant_identifier_names
//   static String NULL_KEY = 'root';

//   TrinaGridStateManager get stateManager;

//   /// ページ側で定義する getter
//   TrinaColumn get idField;
//   TrinaColumn get childNumberOfRecordsColumn;

//   /// データローダー（DB/REST/ローカル）
//   late PgTreeDataLoader loader;

//   /// TrinaGrid の columns をページ側で渡す
//   List<TrinaColumn> get columns;

//   ///展開の状況保持
//   final Map<String?, LoadStattus> status = {};

//   ///ルート
//   final List<TrinaRow> roots = [];

//   ///ツリー用の初期化
//   void initColumns() {
//     final column = stateManager.refColumns.firstWhere((t) => !t.hide);
//     final index = stateManager.refColumns.indexOf(column);
//     stateManager.insertColumns(index, [column.copyWith(renderer: _renderer)]);

//     stateManager.removeColumns([column]);
//   }

//   ///ツリー列の描画
//   Widget _renderer(TrinaColumnRendererContext context) {
//     final row = context.row;
//     final hasChildren = row.type.group.expanded
//         ? row.type.group.children.isNotEmpty
//         : row.type.group.children.isNotEmpty
//         ? true
//         : (int.tryParse(
//                     row.cells[childNumberOfRecordsColumn.field]?.value ?? '0',
//                   ) ??
//                   0) >
//               0;
//     final depth = row.parent == null ? 0 : row.parent!.depth + 1;
//     Widget rowGroup(TrinaRowTypeGroup group) {
//       //Rowが標準タイプのときのWidget
//       final parentId = row.parent == null
//           ? NULL_KEY
//           : row.parent!.cells[idField.field]?.value.toString() ?? NULL_KEY;

//       if (row.key == ValueKey('$BEFORE_EXPANDED$parentId')) {
//         return Row(
//           children: [
//             SizedBox(width: depth * DEPTH_INDENT), // インデント
//             Flexible(
//               child: TextButton(
//                 onPressed: () async => onLoadMore(row),
//                 child: Text('もっと読み込む', overflow: .ellipsis),
//               ),
//             ),
//           ],
//         );
//       }

//       // if (!hasChildren) {
//       //   return Text(
//       //     context.cell.value ?? '',
//       //     overflow: .ellipsis,
//       //     textAlign: context.column.textAlign.value,
//       //   );
//       // }

//       //行がグループだったときのWidget
//       return Row(
//         children: [
//           SizedBox(width: depth * DEPTH_INDENT), // インデント
//           if (hasChildren)
//             group.expanded
//                 ? IconButton(
//                     onPressed: () {
//                       collapseRow(row);
//                     },
//                     icon: Icon(Icons.expand_more),
//                   )
//                 : IconButton(
//                     onPressed: () {
//                       expandRow(row);
//                     },
//                     icon: Icon(Icons.chevron_right),
//                   )
//           else
//             const SizedBox(width: 40),
//           const SizedBox(width: 4),
//           Flexible(
//             child: Text(
//               context.cell.value ?? '',
//               overflow: .ellipsis,
//               textAlign: context.column.textAlign.value,
//             ),
//           ),
//         ],
//       );
//     }

//     Widget gesture(Widget child) {
//       return GestureDetector(
//         onHorizontalDragEnd: (details) async {
//           if (details.primaryVelocity != null && details.primaryVelocity! < 0) {
//             await parentToUp(row);
//           }
//         },
//         child: child,
//       );
//     }

//     return gesture(rowGroup(row.type.group));
//   }

//   //行の平坦化
//   List<TrinaRow> _toFlat(TrinaRow find, bool Function(TrinaRow) varidation) {
//     final result = <TrinaRow>[];
//     if (varidation(find)) {
//       result.add(find);
//     }

//     if (find.type is TrinaRowTypeNormal) return result;
//     for (var child in find.type.group.children) {
//       result.addAll(_toFlat(child, varidation));
//     }
//     return result;
//   }

//   ///データから行生成
//   TrinaRow buildPultoRow(Map<String, dynamic> json, TrinaRow? parentRow) {
//     // final value = json[childNumberOfRecordsColumn.field] as String?;
//     // final id = json[idField.field] as String?;
//     // final childCount = int.parse(value ?? "0");
//     //グループ時に展開マークを表示させるためのダミー行
//     // final dummyRow = TrinaRow(
//     //   key: ValueKey('$DUMMY_ROW$id'),
//     //   cells: {
//     //     for (final col in columns)
//     //       col.field: TrinaCell(
//     //         value: col.field == idField.field ? BEFORE_EXPANDED : '',
//     //       ),
//     //   },
//     // );
//     // dummyRow.setParent(parentRow);

//     final result = TrinaRow(
//       type: .group(children: FilteredList<TrinaRow>(initialList: [])),
//       cells: {
//         for (final col in columns) col.field: TrinaCell(value: json[col.field]),
//       },
//     );
//     result.setParent(parentRow);
//     return result;
//   }

//   ///さらに読み込む行を追加する
//   TrinaRow buildLoadMoreTrinaRow(TrinaRow? parentRow) {
//     final firstCol = columns.firstWhere((t) => !t.hide);
//     final parentId = parentRow?.cells[idField.field]?.value ?? NULL_KEY;
//     final result = TrinaRow(
//       key: ValueKey('$BEFORE_EXPANDED$parentId'),
//       type: TrinaRowType.group(children: FilteredList(), expanded: false),
//       enableDrag: false,
//       enableDrop: false,
//       cells: {
//         for (var col in columns)
//           col.field: TrinaCell(value: col == firstCol ? 'さらに読み込む' : ''),
//       },
//     );
//     result.setParent(parentRow);

//     return result;
//   }

//   ///読み込みと行の追加
//   Future<void> loadAddRow(TrinaRow? parentRow) async {
//     stateManager.setShowLoading(true);
//     final take = 4;
//     final parentId = parentRow?.cells[idField.field]?.value as String?;
//     final state =
//         status[parentId] ?? LoadStattus(current: 0, numberOfRecords: 0);
//     final nodes = switch (await loader.loadChildrenOf(
//       parentId: parentId,
//       take: take,
//       skip: state.current,
//     )) {
//       Ok<SummaryLoadData> okvalue => okvalue,
//       _ => throw Exception(),
//     };

//     summaryNotifier.value = SummaryData(
//       numberOfRecords: nodes.value.numberOfRecords,
//       filteredNumberOfRecords: nodes.value.filteredNumberOfRecords,
//     );

//     final newState = LoadStattus(
//       current: state.current + take,
//       numberOfRecords: nodes.value.filteredNumberOfRecords ?? 0,
//     );

//     status[parentId] = newState;
//     final addRowList = nodes.value.loadData
//         .map((row) => buildPultoRow(row, parentRow))
//         .toList();

//     if (parentRow == null) {
//       //トップノード
//       if (!newState.isLatest) {
//         final loadMoreRow = buildLoadMoreTrinaRow(parentRow);
//         addRowList.add(loadMoreRow);
//       }
//       roots.addAll(addRowList);
//       stateManager.appendRows(addRowList);
//     } else {
//       final loadMore = parentRow.children.indexWhere((t) => isLoadMoreRow(t));

//       if (loadMore >= 0) {
//         //すでにもっと読み込むがある場合
//         parentRow.children.insertAll(loadMore, addRowList);
//       } else {
//         parentRow.children.addAll(addRowList);
//         if (!newState.isLatest) {
//           final loadMoreRow = buildLoadMoreTrinaRow(parentRow);
//           parentRow.children.add(loadMoreRow);
//           addRowList.add(loadMoreRow);
//         }
//       }

//       final lastIndex = stateManager.refRows.lastIndexWhere(
//         (t) => t.parent == parentRow,
//       );

//       final insertIndex = 0 > lastIndex
//           ? stateManager.refRows.indexOf(parentRow) + 1
//           : lastIndex;

//       stateManager.insertRows(insertIndex, addRowList);
//     }

//     stateManager.setShowLoading(false);
//   }

//   ///親の付け替え
//   Future<void> changeParent(TrinaRow currentRow, TrinaRow? parentRow) async {
//     if (isLoadMoreRow(currentRow) || isLoadMoreRow(currentRow)) return;

//     final collspaceList = _toFlat(
//       currentRow,
//       (t) => t.type is TrinaRowTypeGroup && t.type.group.expanded,
//     ).toList();
//     stateManager.removeRows(collspaceList); //自分と展開中の子を削除
//     final oldParent = currentRow.parent;

//     if (oldParent != null) {
//       //元親の子群から離脱
//       oldParent.type.group.children.remove(currentRow);
//     }

//     currentRow.setParent(parentRow);
//     stateManager.removeRows([currentRow]);

//     if (parentRow != null) {
//       collapseRow(parentRow);

//       //いずれかの親の子群に入る
//       final childLoadMore = parentRow.children.indexWhere(
//         (t) => isLoadMoreRow(t),
//       );
//       if (childLoadMore >= 0) {
//         parentRow.children.insert(childLoadMore, currentRow);
//       } else {
//         parentRow.children.add(currentRow);
//       }
//       expandRow(parentRow);
//       // expandRow(currentRow);
//     } else {
//       //ルート
//       final loadMoreIndex = stateManager.refRows.indexWhere(
//         //もっと読み込むの位置。無いときは-1
//         (t) => isLoadMoreRow(t),
//       );
//       if (0 > loadMoreIndex) {
//         stateManager.appendRows([currentRow]);
//       } else {
//         stateManager.insertRows(loadMoreIndex, [currentRow]);
//       }
//     }
//   }

//   //位置レベルアップ
//   FutureOr<void> parentToUp(TrinaRow currentRow) async {
//     final newParent = currentRow.parent?.parent;
//     await changeParent(currentRow, newParent);
//   }

//   /// ドラッグ＆ドロップで親子関係変更
//   void onRowsMoved(TrinaGridOnRowsMovedEvent event) async {
//     // 移動された行（複数だが、ここでは先頭だけ扱う）
//     final moved = event.rows.first;
//     if (isLoadMoreRow(moved)) {}
//     // // 直前の行を新しい親とみなす（デモ用ルール）
//     final index = event.idx;
//     if (index > 0) {
//       final newParent =
//           stateManager.refRows[index + 1]; //ドロップされた行が+1、ドラッグした行が-1になる
//       await changeParent(moved, newParent);
//     }
//   }

//   //もっと読み込む行の判定
//   bool isLoadMoreRow(TrinaRow? row) =>
//       row != null &&
//       row.key ==
//           ValueKey(
//             '$BEFORE_EXPANDED${row.parent?.cells[idField.field]?.value ?? NULL_KEY}',
//           );
//   //もっと読み込む
//   Future<bool> onLoadMore(TrinaRow row) async {
//     final parentRow = row.parent;

//     await loadAddRow(parentRow);
//     stateManager.removeRows([row]); //もっと読み込む行を削除
//     if (parentRow == null) {
//       //ルート
//       roots.remove(row);
//     } else {
//       //子
//       parentRow.children.remove(row);
//     }
//     return true;
//   }

//   ///縮小
//   FutureOr<void> collapseRow(TrinaRow parentRow) async {
//     if (parentRow.type is TrinaRowTypeNormal || !parentRow.isExpanded) return;
//     final removeList = <TrinaRow>[];

//     for (var child in parentRow.children) {
//       stateManager.removeRows([child]);
//       if (child.isExpanded) {
//         collapseRow(child);
//       }
//     }
//     parentRow.isExpanded = false;
//     stateManager.removeRows(removeList);
//   }

//   // 展開
//   Future<void> expandRow(TrinaRow row) async {
//     if (row.type is TrinaRowTypeNormal || row.isExpanded) return;
//     final statusKey = row.cells[idField.field]?.value.toString();
//     //すでに子が読み込まれているかどうか
//     if (!status.containsKey(statusKey)) {
//       await loadAddRow(row);
//     } else {
//       final insertIndex = stateManager.refRows.indexOf(row) + 1;
//       stateManager.insertRows(insertIndex, row.type.group.children);
//     }
//     row.isExpanded = true;
//     for (var childRow in row.children.where((t) => t.isExpanded)) {
//       expandRow(childRow);
//     }
//   }
// }

// final class LoadStattus {
//   final int numberOfRecords;
//   final int current;

//   bool get isLatest => current >= numberOfRecords;

//   LoadStattus({required this.current, required this.numberOfRecords});

//   LoadStattus copyWith({int? current, int? numberOfRecords}) {
//     return LoadStattus(
//       current: current ?? this.current,
//       numberOfRecords: numberOfRecords ?? this.numberOfRecords,
//     );
//   }
// }
