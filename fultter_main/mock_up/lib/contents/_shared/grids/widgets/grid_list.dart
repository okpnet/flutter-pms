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

  @override
  List<TrinaColumn> get columns => widget.columns;

  ///グリッドの設定
  final GridConfiguration tringaGridConfig = GridConfiguration();

  ///TrinaGridの状態管理
  late final TrinaGridStateManager _stateManager;

  ///TrinaGridの状態管理
  @override
  TrinaGridStateManager get stateManager => _stateManager;

  @override
  Widget build(BuildContext context) {
    ///データベースへ更新を反映させるためのマネージャ
    final manager = ref.read(gridScreenManagerProvider.notifier);

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
        initColumns();
        if (!widget.isDragDrop) {
          ///ドラッグアンドドロップの禁止
          for (var t in _stateManager.columns) {
            t.enableRowDrag = false;
            t.enableEditingMode = false;
            t.enableFilterMenuItem = false;
            t.enableSorting = false;
          }
        }
      },
      createHeader: (_) => GridSummaryHeader(),
      columns: columns,
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
    ///UndoRedoと、確定した行のコピーデータを扱う
    final undoRedoState = ref.watch(gridScreenManagerProvider);

    ///ドロップ前のインデクスを保存
    final beforeRowDiffValues = rows
        .map(
          (t) => RowDiffValue(
            rowUniqId: t.cells[KeyConstant.uniqKey]!.value.toString(),
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
        rowUniqId: tRow!.cells[KeyConstant.uniqKey]!.value.toString(),
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

      undoRedoState.push(
        map,
        BehaviorCommand<Map<String, dynamic>>(
          undoValueProvider: () => map,
          redoValueProvider: () => newMap,
          undoExecute: (t) {
            if (t != null) {
              for (final col in widget.columns) {
                map[col.field] = t[col.field];
                tRow.cells[col.field] = map[col.field];
              }
            }
          },
          redoExecute: (t) {
            if (t != null) {
              for (final col in widget.columns) {
                map[col.field] = t[col.field];
                tRow.cells[col.field] = map[col.field];
              }
            }
          },
        ),
      );
    }

    // // --- 3. 実際のドロップ処理（初回実行） ---
    // // 最初にまとめて newIdx へ移動させます
    // stateManager.moveRowsByIndex(rows, newIdx);
    // stateManager.notifyListeners();
  }
}
