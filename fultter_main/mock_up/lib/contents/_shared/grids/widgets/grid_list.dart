import 'dart:convert';

import 'package:trina_grid/trina_grid.dart';
import 'package:undo_redo/lib.dart';
import '../../../../constants/configuration/configration.dart';
import '../../../../imports.dart';
import '../../../../services/services.dart';
import '../grid_scope_service/service.dart';
import '../models/models.dart';
import 'grid_summary_header.dart';

class GridList extends ConsumerStatefulWidget {
  final List<TrinaColumn> columns;
  final GridMode mode;
  final String? editPath;

  ///ドラッグアンドドロップが有効のとき、ページネーションを許可しない
  bool get isDragDrop => dropAction != null;

  final Map<String, dynamic> Function(int, Map<String, dynamic>)? dropAction;

  const GridList({
    super.key,
    required this.columns,
    required this.mode,
    this.editPath,
    this.dropAction,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GridList<Map<String, dynamic>>();
}

class _GridList<R> extends ConsumerState<GridList> with GridPagenationMixin<R> {
  @override
  IResultAdapterConverter<R> get converter {
    final converter = ref.watch(resultConvertProvider);
    if (converter case IResultAdapterConverter<R> provider) {
      return provider;
    }
    throw AssertionError(
      'The converter cast to IResultAdapterConverter<R> fail .So parameter is ${R.runtimeType.toString()}',
    );
  }

  @override
  IFilterExpressionAdapter<R> get filterAdapter {
    final expressionAdapter = ref.read(gridFilterExpressionProvider);
    if (expressionAdapter case IFilterExpressionAdapter<R> adapter) {
      return adapter;
    }
    throw AssertionError(
      'the parent widget init called,but IFilterExpressionAdapter<R> cast fail to ${R.runtimeType.toString()}',
    );
  }

  @override
  QueryState<R> get queryState {
    final queryState = ref.read(gridDataStrategyProvider);
    if (queryState == null) {
      throw AssertionError(
        'the parent widget not call "init<R>(QueryState<R> state)" method.',
      );
    }
    if (queryState case QueryState<R> state) {
      return state;
    }
    throw AssertionError(
      'the parent widget init called,but QueryState<R> cast fail to ${R.runtimeType.toString()}',
    );
  }

  //with GridPagenationMixin<JsonMap>{
  List<TrinaColumn> get _columns => widget.columns;

  ///グリッドの設定
  final GridConfiguration tringaGridConfig = GridConfiguration();

  ///TrinaGridの状態管理
  late final TrinaGridStateManager _stateManager;

  ///TrinaGridの状態管理
  @override
  TrinaGridStateManager get stateManager => _stateManager;

  @override
  Widget build(BuildContext context) {
    ///UndoRedoと、確定した行のコピーデータを扱う
    final undoRedoState = ref.watch(gridScreenManagerProvider);

    ///データベースへ更新を反映させるためのマネージャ
    final manager = ref.read(gridScreenManagerProvider.notifier);

    ///権限を取得する
    final authorication = ref.read(mockAutorizeServiceProvider);

    ///合計状態変更
    final summaryProvider = ref.watch(gridSummaryProvider.notifier);

    return TrinaGrid(
      onChanged: (TrinaGridOnChangedEvent event) {
        print(event);
      },
      onLoaded: (event) async {
        //初回に一度だけ呼ばれる
        summaryProvider.init();
        _stateManager = event.stateManager;
        if (!widget.isDragDrop) {
          ///ドラッグアンドドロップの禁止
          for (var t in _stateManager.columns) {
            t.enableRowDrag = false;
          }
        }
      },
      createHeader: (_) => GrridSummaryHeader(),
      columns: _columns,
      rows: [],
      onRowDoubleTap: (event) {
        if (widget.editPath == null) {
          ///権限がないとき
          return;
        }

        ///選択行を
        final row = event.row.toJson();
        _toEdit(row);
      },
      onRowSecondaryTap: (event) {},
      onRowsMoved: (event) {
        _drop(event.idx, event.rows);
      },
      configuration: tringaGridConfig.listConfig,

      ///ドラッグアンドドロップが有効のとき、ページネーションを許可しない
      createFooter: widget.isDragDrop
          ? null
          : (stateManager) {
              return TrinaLazyPagination(
                initialPage: 1,
                fetchWithSorting: true,
                fetchWithFiltering: true,
                pageSizeToMove: null,
                stateManager: stateManager,
                fetch: (e) => loadPage(e),
              );
            },
    );
  }

  ///編集へ遷移
  void _toEdit(Map<String, dynamic> rowMapData) {
    ///編集画面遷移するとき
    final router = ref.read(rootRouterProvider);

    ///Uriに変換
    final uri = Uri(path: widget.editPath, queryParameters: rowMapData);

    ///編集サイトへ移動
    router.go(uri.toString());
  }

  ///ドロップしたときの処理
  Future<void> _drop(int newIdx, List<TrinaRow> rows) async {
    ///ドロップ前のインデクスを保存
    final beforeRowDiffValues = rows
        .map(
          (t) => RowDiffValue(
            rowKey: t.key,
            index: stateManager.rows.indexOf(t),
            expanded: t.isExpanded,
          ),
        )
        .toList();

    ///ドロップ後のインデクスを保存
    final rowDiffs = <RowDiffValue>[];
    beforeRowDiffValues.asMap().forEach((idx, item) {
      final tRow = _stateManager.getRowByIdx(item.index);
      final afterRowDiffValue = RowDiffValue(
        rowKey: tRow!.key,
        index: newIdx + idx + 1,
        expanded: tRow.isExpanded,
      );
      rowDiffs.add(afterRowDiffValue);
    });



    ///ドロップ後の処理
    for (var item in rowDiffs) {
      final tRow = _stateManager.getRowByIdx(item.index);
      final map = tRow!.toJson();
      final newMap = widget.dropAction!(item.index, map);
      for (final col in widget.columns) {
        tRow.cells[col.field] = newMap[col.field];
      }
    }

        ///UndoRedoと、確定した行のコピーデータを扱う
    final undoRedoState = ref.watch(gridScreenManagerProvider);
    undoRedoState.push({beforeRowDiffValues,rowDiffs}, BehaviorCommand(undoValueProvider: ()=>beforeRowDiffValues, redoValueProvider:()=> rowDiffs, undoExecute: undoExecute, redoExecute: redoExecute))
    // // --- 3. 実際のドロップ処理（初回実行） ---
    // // 最初にまとめて newIdx へ移動させます
    // stateManager.moveRowsByIndex(rows, newIdx);
    // stateManager.notifyListeners();
  }

  void applyUndo(List<RowDiffValue> diffs) {
    for (var diff in diffs) {
      final row = stateManager.rows.firstWhere((t)=>t.key==diff.rowKey);
      final parentIdx= stateManager.rows.indexWhere((t)=>t.parent?.key==diff.parentKey);
      if(parentIdx>=0){
        ///親がある
      }
      if (row == null) continue;
      row.parent=
      row. = diff.before.parentKey;
      row.isExpanded = diff.before.expanded;
      row.expanded = diff.beforeExpanded;
    }

    stateManager.rebuildRows();
  }
}
