import 'dart:async';

import 'package:data_strategist/lib.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';

import '../../configs/configs.dart';
import '../../constants/constant.dart';
import '../extenssions/extensions.dart';
import '../extenssions/trina_column_extenssion.dart';
import '../grid/grids.dart';
import '../presenters/presenters.dart';
import '../widgets/widgets.dart';
import 'tree_load_status.dart';

///ツリー表示
class GridTreeWidget extends StatefulWidget {
  ///列のリスト
  final List<TrinaColumn> columnList;

  ///行が子を持っているか評価する式
  final bool Function(JsonMap) hasChildTheRow;

  ///ルート/トップアイテムを取得する式
  final IPredicateModel Function() initiRootPredicate;

  ///フィルタを適用/子を取得する式
  final IPredicateModel Function(JsonMap? parentRow, TreeLoadStatus treeState)
  buildPredicate;

  ///条件を絞り込むクエリマネージャ
  final IQueryState queryState;

  ///行を選択したときのイベントハンドラ
  final void Function(TrinaGridOnSelectedEvent)? onSelected;

  ///行をダブル・タップ/クリックしたときのイベントハンドラ
  final void Function(TrinaGridOnRowDoubleTapEvent)? onRowDoubleTap;

  ///TrinaGridの設定
  final TrinaGridConfiguration gridConfig;

  ///アクションのアンドゥリドゥを記録する
  final IGridBehavior? actionBehabior;

  const GridTreeWidget({
    super.key,
    required this.columnList,
    required this.hasChildTheRow,
    required this.initiRootPredicate,
    required this.buildPredicate,
    required this.queryState,
    this.onSelected,
    this.onRowDoubleTap,
    TrinaGridConfiguration? config,
    this.actionBehabior,
  }) : gridConfig =
           config ??
           const TrinaGridConfiguration(
             selectingMode: .row,
             columnSize: TrinaGridColumnSizeConfig(
               autoSizeMode: TrinaAutoSizeMode.scale,
             ),
           );
  @override
  State<StatefulWidget> createState() => _GridTreeWidget();
}

class _GridTreeWidget extends State<GridTreeWidget> {
  final String _nullKeyValue = 'root';
  final String _bdeforeExpanded = 'loadMore_';

  // ignore: non_constant_identifier_names, constant_identifier_names
  final double DEPTH_INDENT = 16;

  ///TrinaGridの状態管理
  late final TrinaGridStateManager _stateManager;

  ///TrinaGridの状態管理
  TrinaGridStateManager get stateManager => _stateManager;

  ///検索結果状態管理
  final SearchResultInfoState searchResultInfoState = SearchResultInfoState();

  ///設定状態管理
  final ConfigState configState = ConfigState(ConfigModel());

  ///展開の状況保持
  final Map<String?, TreeLoadStatus> status = {};

  ///ルート
  final List<TrinaRow> roots = [];

  ///列
  List<TrinaColumn> get _columns => stateManager.columns;

  @override
  Widget build(BuildContext context) {
    return GridScope(
      notifier: searchResultInfoState,
      child: TrinaGrid(
        mode: .select,
        isTreeDragMode: true, //ツリーモード指定。ドラッグ中に行左端へホバーすると右に寄る。
        onSelected: (event) => widget.onSelected, //行選択
        onRowDoubleTap: (event) => widget.onRowDoubleTap, //行選択
        onChanged: (TrinaGridOnChangedEvent event) {
          print(event);
        },

        onLoaded: (event) async {
          //初回に一度だけ呼ばれる
          _stateManager = event.stateManager;
          for (var column in stateManager.columns) {
            column.enableRowDrag = false;
          }
          initColumns();
          await initialAddRow(null); //TrinaRow.fromJson(root));
        },
        createHeader: (manager) =>
            TrinaGridSummaryHader(searchResultInfoState: searchResultInfoState),
        columns: widget.columnList,
        rows: [],
        onRowsMoved: onRowsMoved,

        configuration: widget.gridConfig,
      ),
    );
  }

  ///行状態管理のキーを取得
  String _getStateKey(TrinaRow? row) =>
      row?.hashCode.toString() ?? _nullKeyValue;

  ///ツリー用の初期化
  void initColumns() {
    final column = stateManager.refColumns.firstWhere((t) => !t.hide);
    final index = stateManager.refColumns.indexOf(column);
    // column.renderer = _renderer;
    stateManager.insertColumns(index, [column.copyWith(renderer: _renderer)]);

    stateManager.removeColumns([column]);
  }

  ///ツリー列の描画
  Widget _renderer(TrinaColumnRendererContext context) {
    final row = context.row;
    final hasChildren = row.type.group.expanded
        ? row.type.group.children.isNotEmpty
        : row.type.group.children.isNotEmpty
        ? true
        : widget.hasChildTheRow(
            row.cells.map((key, value) => MapEntry(key, value.value)),
          );
    final depth = row.parent == null ? 0 : row.parent!.depth + 1;
    Widget rowGroup(TrinaRowTypeGroup group) {
      //Rowが標準タイプのときのWidget
      final parentId = _getStateKey(row.parent);

      if (row.key == ValueKey('$_bdeforeExpanded$parentId')) {
        return Row(
          children: [
            SizedBox(width: depth * DEPTH_INDENT), // インデント
            Flexible(
              child: TextButton(
                onPressed: () async => onLoadMore(row),
                child: Text('もっと読み込む', overflow: .ellipsis),
              ),
            ),
          ],
        );
      }

      // if (!hasChildren) {
      //   return Text(
      //     context.cell.value ?? '',
      //     overflow: .ellipsis,
      //     textAlign: context.column.textAlign.value,
      //   );
      // }

      //行がグループだったときのWidget
      return Row(
        children: [
          SizedBox(width: depth * DEPTH_INDENT), // インデント
          if (hasChildren)
            group.expanded
                ? IconButton(
                    onPressed: () {
                      collapseRow(row);
                    },
                    icon: Icon(Icons.expand_more),
                  )
                : IconButton(
                    onPressed: () {
                      expandRow(row);
                    },
                    icon: Icon(Icons.chevron_right),
                  )
          else
            const SizedBox(width: 40),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              context.cell.value ?? '',
              overflow: .ellipsis,
              textAlign: context.column.textAlign.value,
            ),
          ),
        ],
      );
    }

    Widget gesture(Widget child) {
      return GestureDetector(
        onHorizontalDragEnd: (details) async {
          if (details.primaryVelocity != null && details.primaryVelocity! < 0) {
            await parentToUp(row);
          }
        },
        child: child,
      );
    }

    return gesture(rowGroup(row.type.group));
  }

  //行の平坦化
  List<TrinaRow> _toFlat(TrinaRow find, bool Function(TrinaRow) varidation) {
    final result = <TrinaRow>[];
    if (varidation(find)) {
      result.add(find);
    }

    if (find.type is TrinaRowTypeNormal) return result;
    for (var child in find.type.group.children) {
      result.addAll(_toFlat(child, varidation));
    }
    return result;
  }

  ///画面生成の最初にのみ呼ばれる
  Future<void> initialAddRow(TrinaRow? parentRow) async {
    stateManager.setShowLoading(false);
    final stateKey = _getStateKey(parentRow);
    final state =
        status[stateKey] ?? TreeLoadStatus(current: 0, numberOfRecords: 0);
    final loadState = await _loadData(widget.initiRootPredicate(), state);
    status[stateKey] = loadState;
    await _addRows(null, loadState);
    stateManager.setShowLoading(false);
  }

  ///読み込みと行の追加
  Future<void> loadAddRow(TrinaRow? parentRow) async {
    stateManager.setShowLoading(true);
    final stateKey = _getStateKey(parentRow);

    final state =
        status[stateKey] ?? TreeLoadStatus(current: 0, numberOfRecords: 0);

    ///このparentRowが初めて展開されたか（前に読み込みしていないか）
    final isFirst = status[stateKey] == null;
    final pridicate = widget.buildPredicate(
      parentRow?.cells.map((key, value) => MapEntry(key, value.value)),
      state,
    );

    ///初めてのときは0にカーソルをセットする
    final skip = isFirst ? 0 : state.current;
    final pridicateUpdate = pridicate.copyWith(skip: skip);

    final loadState = await _loadData(pridicateUpdate, state);
    status[stateKey] = loadState;
    await _addRows(parentRow, loadState);
    stateManager.setShowLoading(false);
  }

  ///queryStateからデータを読み込む
  Future<TreeLoadStatus> _loadData(
    IPredicateModel pridicate,
    TreeLoadStatus state,
  ) async {
    final summarydata =
        await widget.queryState.facade.execute(pridicate)
            as ISearchResultInfoModel;

    searchResultInfoState.set(summarydata);

    final newState = TreeLoadStatus(
      current: state.current + configState.config.fetchLimit,
      numberOfRecords: summarydata.filteredNumberOfRecords ?? 0,
    );
    return newState;
  }

  Future<void> _addRows(TrinaRow? parentRow, TreeLoadStatus newState) async {
    if (searchResultInfoState.model
        case SearchResultInfoDataModel<JsonMapList> summary) {
      debugPrint(
        'recordNum=${summary.numberOfRecords} filterNum=${summary.filteredNumberOfRecords} current=${newState.current} stateNum=${newState.numberOfRecords}',
      );
      final addRowList = summary.loadData
          .map((row) => buildPultoRow(row, parentRow))
          .toList();
      if (parentRow == null) {
        //トップノード
        if (!newState.isLatest) {
          final loadMoreRow = buildLoadMoreTrinaRow(parentRow);
          addRowList.add(loadMoreRow);
        }
        roots.addAll(addRowList);
        stateManager.appendRows(addRowList);
      } else {
        final loadMore = parentRow.children.indexWhere((t) => isLoadMoreRow(t));

        if (loadMore >= 0) {
          //すでにもっと読み込むがある場合
          parentRow.children.insertAll(loadMore, addRowList);
        } else {
          parentRow.children.addAll(addRowList);
          if (!newState.isLatest) {
            final loadMoreRow = buildLoadMoreTrinaRow(parentRow);
            parentRow.children.add(loadMoreRow);
            addRowList.add(loadMoreRow);
          }
        }

        final lastIndex = stateManager.refRows.lastIndexWhere(
          (t) => t.parent == parentRow,
        );

        final insertIndex = 0 > lastIndex
            ? stateManager.refRows.indexOf(parentRow) + 1
            : lastIndex;

        stateManager.insertRows(insertIndex, addRowList);
      }

      stateManager.setShowLoading(false);
    }
  }

  //もっと読み込む行の判定
  bool isLoadMoreRow(TrinaRow? row) =>
      row != null &&
      row.key == ValueKey('$_bdeforeExpanded${_getStateKey(row.parent)}');
  //もっと読み込む
  Future<bool> onLoadMore(TrinaRow row) async {
    final parentRow = row.parent;

    await loadAddRow(parentRow);
    stateManager.removeRows([row]); //もっと読み込む行を削除
    if (parentRow == null) {
      //ルート
      roots.remove(row);
    } else {
      //子
      parentRow.children.remove(row);
    }
    return true;
  }

  ///データから行生成
  TrinaRow buildPultoRow(JsonMap json, TrinaRow? parentRow) {
    final result = TrinaRow(
      type: .group(children: FilteredList<TrinaRow>(initialList: [])),
      cells: {
        for (final col in _columns)
          col.field: TrinaCell(value: json[col.field]),
      },
    );
    result.setParent(parentRow);
    return result;
  }

  ///さらに読み込む行を追加する
  TrinaRow buildLoadMoreTrinaRow(TrinaRow? parentRow) {
    final firstCol = _columns.firstWhere((t) => !t.hide);
    final stateKey = _getStateKey(parentRow);
    final result = TrinaRow(
      key: ValueKey('$_bdeforeExpanded$stateKey'),
      type: TrinaRowType.group(children: FilteredList(), expanded: false),
      enableDrag: false,
      enableDrop: false,
      cells: {
        for (var col in _columns)
          col.field: TrinaCell(value: col == firstCol ? 'さらに読み込む' : ''),
      },
    );
    result.setParent(parentRow);

    return result;
  }

  // 展開
  Future<void> expandRow(TrinaRow row) async {
    if (row.type is TrinaRowTypeNormal || row.isExpanded) return;
    final statusKey = _getStateKey(row);
    //すでに子が読み込まれているかどうか
    if (!status.containsKey(statusKey)) {
      await loadAddRow(row);
    } else {
      final insertIndex = stateManager.refRows.indexOf(row) + 1;
      stateManager.insertRows(insertIndex, row.type.group.children);
    }
    row.isExpanded = true;
    for (var childRow in row.children.where((t) => t.isExpanded)) {
      expandRow(childRow);
    }
  }

  ///縮小
  FutureOr<void> collapseRow(TrinaRow parentRow) async {
    if (parentRow.type is TrinaRowTypeNormal || !parentRow.isExpanded) return;
    final removeList = <TrinaRow>[];

    for (var child in parentRow.children) {
      stateManager.removeRows([child]);
      if (child.isExpanded) {
        collapseRow(child);
      }
    }
    parentRow.isExpanded = false;
    stateManager.removeRows(removeList);
  }

  ///位置レベルアップ
  FutureOr<void> parentToUp(TrinaRow currentRow) async {
    final newParent = currentRow.parent?.parent;
    await changeParent(currentRow, newParent);
  }

  ///親の付け替え
  Future<void> changeParent(TrinaRow currentRow, TrinaRow? parentRow) async {
    //もっと読み込むは除外
    if (isLoadMoreRow(currentRow) || isLoadMoreRow(currentRow)) return;

    final collspaceList = _toFlat(
      currentRow,
      (t) => t.type is TrinaRowTypeGroup && t.type.group.expanded,
    ).toList();
    stateManager.removeRows(collspaceList); //自分と展開中の子を削除
    final oldParent = currentRow.parent;

    if (oldParent != null) {
      //元親の子群から離脱
      oldParent.type.group.children.remove(currentRow);
    }

    currentRow.setParent(parentRow);
    stateManager.removeRows([currentRow]);

    if (parentRow != null) {
      collapseRow(parentRow);

      //いずれかの親の子群に入る
      final childLoadMore = parentRow.children.indexWhere(
        (t) => isLoadMoreRow(t),
      );
      if (childLoadMore >= 0) {
        parentRow.children.insert(childLoadMore, currentRow);
      } else {
        parentRow.children.add(currentRow);
      }
      expandRow(parentRow);
      // expandRow(currentRow);
    } else {
      //ルート
      final loadMoreIndex = stateManager.refRows.indexWhere(
        //もっと読み込むの位置。無いときは-1
        (t) => isLoadMoreRow(t),
      );
      if (0 > loadMoreIndex) {
        stateManager.appendRows([currentRow]);
      } else {
        stateManager.insertRows(loadMoreIndex, [currentRow]);
      }
    }
  }

  /// ドラッグ＆ドロップで親子関係変更
  FutureOr<void> onRowsMoved(TrinaGridOnRowsMovedEvent event) async {
    // 移動された行（複数だが、ここでは先頭だけ扱う）
    final moved = event.rows.first;
    if (isLoadMoreRow(moved)) {}
    // // 直前の行を新しい親とみなす（デモ用ルール）
    final index = event.idx;
    // if (index > 0) {
    //   final newParent =
    //       stateManager.refRows[index + 1]; //ドロップされた行が+1、ドラッグした行が-1になる
    //   await changeParent(moved, newParent);
    // }
    if (0 >= index) {
      return;
    }
    int insertIndex = index;
    for (final row in event.rows) {
      insertIndex += await _rowMoved(row, insertIndex);
    }
  }

  ///戻り値は子を含む移動先のインデックス
  Future<int> _rowMoved(TrinaRow row, int index) async {
    // // 直前の行を新しい親とみなす（デモ用ルール）
    final newParent =
        stateManager.refRows[index + 1]; //ドロップされた行が+1、ドラッグした行が-1になる
    final beofreRowModel = RowModel.to(row);
    await changeParent(row, newParent);
    final afterRowModel = RowModel.to(row);
    if (widget.actionBehabior != null) {
      widget.actionBehabior!.handleRowDroped(
        beofreRowModel,
        afterRowModel,
        _dropUndo,
      );
    }
    final lastRow = _toFlat(
      row,
      (t) => t.type is TrinaRowTypeGroup && t.type.group.expanded,
    ).last;
    return stateManager.rows.indexOf(lastRow);
  }

  /// アクションビヘイビア
  Future<void> _dropUndo(RowModel model) async {
    final parentIndex = stateManager.refRows.indexWhere(
      (x) => x.parent?.key == model.parentRowKey,
    );
    final currentIndex = stateManager.refRows.indexWhere(
      (x) => x.key == model.rowKey,
    );

    if (0 > parentIndex || 0 > currentIndex || currentIndex == parentIndex) {
      return;
    }
    final currentRow = stateManager.refRows.elementAt(currentIndex);
    await _rowMoved(currentRow, parentIndex);
  }
}
