import 'dart:async';

import 'package:trina_grid/trina_grid.dart';

import '../../../../constants/configuration/grid/grid_configuration.dart';
import '../../../../imports.dart';
import '../../../../services/services.dart';
import '../../../contents.dart';
import '../grid_scope_service/service.dart';

class GridTree extends ConsumerStatefulWidget {
  final StreamController<TreeEvent> treeChangeStream = StreamController();
  final List<TrinaColumn> columns;
  final GridMode mode;
  final String? editPath;
  final bool Function(TrinaRow<dynamic>) hasChildTheRow;
  final TreePricateAdapter treePricateAdapter;

  GridTree({
    super.key,
    required this.columns,
    required this.mode,
    this.editPath,
    required this.hasChildTheRow,
    required this.treePricateAdapter,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GridTree<Map<String, dynamic>>();
}

class _GridTree<R> extends ConsumerState<GridTree> with GridTreeMixin<R> {
  ///UI個別の検索条件
  ///初期データ取得条件、
  @override
  TreePricateAdapter get treePricateAdapter => widget.treePricateAdapter;

  ///ドラッグドロップイベントストリーム
  @override
  StreamController<TreeEvent> get treeChangeStream => widget.treeChangeStream;

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

  @override
  bool Function(TrinaRow<dynamic>) get hasChildTheRow => widget.hasChildTheRow;

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

    return TrinaGrid(
      mode: .select,
      isTreeDragMode: true, //ツリーモード指定。ドラッグ中に行左端へホバーすると右に寄る。
      onRowDoubleTap: (event) {
        if (widget.editPath == null) {
          ///権限がないとき
          return;
        }

        ///選択行を
        final row = event.row.toJson();
        _toEdit(row);
      },
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

      createHeader: (_) => GridSummaryHeader(),
      columns: columns,
      rows: [],
      onRowsMoved: onRowsMoved,
      configuration: tringaGridConfig.treeConfig,
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
}
