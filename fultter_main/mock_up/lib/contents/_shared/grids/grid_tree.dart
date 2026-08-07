// Project imports:
import 'package:grid_lib/grid_lib.dart';
import 'package:trina_grid/trina_grid.dart';

import '../../../constants/configuration/configration.dart';
import '../../../imports.dart';

import '../../../services/router/router.dart';
import '../../../services/services.dart';
import '../../contents.dart';
import 'grid_mode.dart';

class GridTree extends ConsumerStatefulWidget {
  final List<TrinaColumn> columns;
  final GridMode mode;
  final GridToEditFunction? toEdit;
  const GridTree({
    super.key,
    required this.columns,
    required this.mode,
    this.toEdit,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GridTree();
}

class _GridTree extends ConsumerState<GridTree> {
  //with GridPagenationMixin<JsonMap>{
  List<TrinaColumn> get _columns => widget.columns;

  ///グリッドの設定
  final GridConfiguration tringaGridConfig = GridConfiguration();

  ///TrinaGridの状態管理
  late final TrinaGridStateManager _stateManager;

  ///検索結果状態管理
  @override
  final SearchResultInfoState searchResultInfoState = SearchResultInfoState();

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
        if (widget.toEdit == null) {
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

      createHeader: (manager) =>
          TrinaGridSummaryHader(searchResultInfoState: searchResultInfoState),
      columns: _columns,
      rows: [],
      onRowsMoved: onRowsMoved,
      configuration: tringaGridConfig.treeConfig,
    );
  }

  ///編集へ遷移
  void _toEdit(JsonMap rowMapData) {
    ///編集画面遷移するとき
    final router = ref.read(rootRouterProvider);

    ///Uriに変換
    final uri = widget.toEdit!(rowMapData);

    ///編集サイトへ移動
    router.go(uri.toString());
  }
}
