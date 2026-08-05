// Project imports:
import 'package:grid_lib/grid_lib.dart';
import 'package:trina_grid/trina_grid.dart';

import '../../../constants/configuration/configration.dart';
import '../../../imports.dart';

import 'grid_mode.dart';

class GridTree extends ConsumerStatefulWidget {
  final List<TrinaColumn> columns;
  final GridMode mode;
  const GridTree({super.key, required this.columns, required this.mode});

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
    return TrinaGrid(
      mode: .select,
      isTreeDragMode: true, //ツリーモード指定。ドラッグ中に行左端へホバーすると右に寄る。
      onSelected: (event) => _navigatorDetail(event.row), //行選択
      onRowDoubleTap: (event) => _navigatorDetail(event.row), //行選択
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
}
