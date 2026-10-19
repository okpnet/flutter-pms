import 'dart:async';

import 'package:mock_up/contents/_shared/grids/grid_scope_service/grid_drag_drop_controller.dart';
import 'package:mock_up/contents/_shared/grids/grid_scope_service/grid_drag_drop_event.dart';
import 'package:trina_grid/trina_grid.dart';

import '../../../../constants/configuration/grid/grid_configuration.dart';
import '../../../../imports.dart';
import '../../../../services/services.dart';
import '../../../contents.dart';
import '../grid_scope_service/service.dart';

class GridTree<R> extends ConsumerStatefulWidget {
  ///グリッドの列
  final List<TrinaColumn> columns;

  ///閲覧、選択、編集の選択
  final GridMode mode;

  ///編集へ移行するときの編集UIパス
  final String? editPath;

  ///その行が子を持っているか
  final bool Function(TrinaRow<dynamic>) hasChildTheRow;

  ///Treeの条件式生成するUIとレポジトリのアダプタ
  final TreeExpressionAdapter treeExpressionAdapter; //レポジトリの戻り値の型を指定

  const GridTree({
    super.key,
    required this.columns,
    required this.mode,
    this.editPath,
    required this.hasChildTheRow,
    required this.treeExpressionAdapter,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GridTree<R>();
}

class _GridTree<R> extends ConsumerState<GridTree> with GridTreeMixin<R> {
  ///ドラッグドロップが有効
  bool get isEnableDragDrop => treeChangeStream.hasListener;

  ///UI個別の検索条件
  ///初期データ取得条件、
  @override
  TreeExpressionAdapter get treeExpressionAdapter =>
      widget.treeExpressionAdapter;

  ///ドラッグドロップイベントストリーム
  @override
  StreamController<TreeEvent> get treeChangeStream =>
      ref.watch(gridDragDropControllerProvider);

  ///レポジトリからの結果を、Mapへ変換する
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

  ///TrinaGridのフィルターを変換する
  ///親でWatchする
  @override
  IFilterExpressionAdapter<R> get filterAdapter =>
      ref.read(gridFilterExpressionProvider<R>());

  ///レポジトリへのアクセスを提供
  ///親でWatchする
  @override
  QueryState<R> get queryState =>
      ref.read(repositoryFetchControllerProvider<R>());

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
    ///コミットするデータ、UndoRedoの管理
    ///親でwatchする
    final sessionController = ref.read(
      editableSessionControllerProvider.notifier,
    );

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
      onRowsMoved: isEnableDragDrop ? onRowsMoved : null,
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
