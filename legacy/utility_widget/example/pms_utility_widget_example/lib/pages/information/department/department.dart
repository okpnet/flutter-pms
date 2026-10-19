import 'package:data_strategist/lib.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/pages/information/department/department_provider.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:utility_widget_example/pages/information/department/constants/department_column.dart';
import 'package:utility_widget_example/pages/information/department/department_edit.dart';
import 'package:utility_widget_example/src/lib/configs/configs.dart';
import 'package:utility_widget_example/src/lib/grids/grid/grids.dart';
import 'package:utility_widget_example/src/lib/grids/presenters/row_model.dart';
import 'package:utility_widget_example/src/lib/grids/tree/grid_tree_mixin.dart';
import 'package:utility_widget_example/src/lib/grids/widgets/widgets.dart';
import 'package:utility_widget_example/src/lib/undoredo/undo_redo_state.dart';
import '../../../constant/my_trina_grid_configs/grid_config_helper.dart';
import 'package:utility_widget_example/src/lib/constants/constant.dart';

class Department extends StatefulWidget {
  const Department({super.key});
  @override
  State<StatefulWidget> createState() => _Department();
}

class _Department extends State<Department>
    with GridTreeMixin<JsonMap>, DepartmentProvider<JsonMap> {
  ///TrinaGridの状態管理
  late final TrinaGridStateManager _stateManager;

  ///TrinaGridの状態管理
  @override
  TrinaGridStateManager get stateManager => _stateManager;

  ///条件を絞り込むクエリマネージャ
  @override
  final QueryState<JsonMap, SearchResultInfoDataModel<List<JsonMap>>>
  queryState = QueryState<JsonMap, SearchResultInfoDataModel<List<JsonMap>>>(
    expressionVisitorType: .list,
    repository: DepaertmentAsset(),
    cmd: (field) =>
        (t) => t[field],
  );

  ///設定状態管理
  @override
  final ConfigState configState = ConfigState(ConfigModel());

  ///検索結果状態管理
  @override
  final SearchResultInfoState searchResultInfoState = SearchResultInfoState();

  ///
  final List<TrinaColumn> columnList = DepartmentColumn.columns;

  ///
  @override
  final UndoRedoState<RowModel> undoredoState = UndoRedoState<RowModel>();

  ///行の状態を管理するキーを生成する
  @override
  TrinaColumn get idColumn => columnList.firstWhere((t) => t.field == 'id');

  ///行が子をもっているか判定する
  @override
  bool Function(TrinaRow) hasChildTheRow = (TrinaRow row) {
    final result =
        int.tryParse(row.cells['child_number_of_records']!.value.toString()) ==
        0;
    return result;
  };

  @override
  List<TrinaColumn> get columns => columnList;

  void _navigatorDetail(TrinaRow? row) {
    if (row == null) {
      return;
    }
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (builder) => DepartmentEdit(row: row.toJson()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: false,
        title: UtText.scetionTitle('組織'),
        body: GridScope(
          notifier: searchResultInfoState,
          child: TrinaGrid(
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
            createHeader: (manager) => TrinaGridSummaryHader(
              searchResultInfoState: searchResultInfoState,
            ),
            columns: columnList,
            rows: [],
            onRowsMoved: onRowsMoved,

            configuration: GridConfigHelper.treeTo(selectionMode: .row),
          ),
        ),
      ),
    );
  }
}
