import 'package:data_strategist/lib.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/pages/information/department/department_provider.dart';
import 'package:utility_widget_example/pages/container/trina_grid_summary_hader.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:utility_widget_example/pages/information/department/constants/department_column.dart';
import 'package:utility_widget_example/pages/information/department/department_edit.dart';
import 'package:utility_widget_example/src/manager/state/data_state.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';
import 'package:utility_widget_example/src/manager/manager.dart';
import '../../../constant/my_trina_grid_configs/grid_config_helper.dart';

class Department extends StatefulWidget {
  final DataState dataProvider = DataState();
  Department({super.key});
  @override
  State<StatefulWidget> createState() => _Department();
}

class _Department extends PmsWidgetState<Department>
    with TreeOfTrinaGrid<JsonMap>, DepartmentProvider<JsonMap> {
  final List<TrinaColumn> columnList = DepartmentColumn.columns;
  late final TrinaGridStateManager _stateManager;

  ///条件を絞り込むクエリマネージャ
  final QueryState<JsonMap, SummaryLoadData<List<JsonMap>>> _queryState =
      QueryState<JsonMap, SummaryLoadData<List<JsonMap>>>(
        expressionVisitorType: .list,
        repository: DepaertmentAsset(),
        cmd: (field) =>
            (t) => t[field],
      );

  ///検索条件状態管理
  @override
  QueryState<JsonMap, SummaryLoadData<List<JsonMap>>> get queryState =>
      _queryState;

  ///TrinaGridの状態管理
  @override
  TrinaGridStateManager get stateManager => _stateManager;

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
  void initState() {
    super.initState();
    widget.dataProvider.addListener(() {
      final event = widget.dataProvider.events.last;
      switch (event.type) {
        case .accept:
          break;
      }
      widget.dataProvider.events.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: false,
        title: UtText.scetionTitle('組織'),
        body: PmsStateScope(
          notifier: state,
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
            createHeader: (manager) =>
                TrinaGridSummaryHader(summaryState: summaryState),
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
