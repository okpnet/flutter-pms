import 'package:data_strategist/lib.dart';
import 'package:query_builder/query_builder.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/configuration.dart';
import 'package:utility_widget_example/pages/information/department/department_provider.dart';
import 'package:utility_widget_example/pages/container/trina_grid_summary_hader.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:utility_widget_example/pages/information/department/constants/department_column.dart';
import 'package:utility_widget_example/pages/information/department/department_edit.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';
import 'package:utility_widget_example/src/manager/manager.dart';
import '../../../constant/my_trina_grid_configs/grid_config_helper.dart';

class Department extends StatefulWidget {
  const Department({super.key});
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
        cmd: (column) =>
            (t) => t[column.field],
      );

  @override
  QueryState<JsonMap, SummaryLoadData<List<JsonMap>>> get queryState =>
      _queryState;
  @override
  TrinaGridStateManager get stateManager => _stateManager;

  @override
  TrinaColumn get idColumn => columnList.firstWhere((t) => t.field == 'id');

  @override
  TrinaColumn get childNumberOfRecordsColumn =>
      columnList.firstWhere((t) => t.field == 'child_number_of_records');

  @override
  List<TrinaColumn> get columns => columnList;

  ///読み込み最初の条件式。以降は[PridicateCallback]が呼ばれる
  @override
  IPridicateModel get toInitCondition {
    final pridicate = PridicateModel(
      take: Configuration.NUM_OF_RECORDS,
      skip: 0,
      pridicate: AndExpression([
        EqualExpression(
          FieldExpression<JsonMap>((t) => t['parent_id']),
          FieldExpression<JsonMap>((t) => t['id']),
        ),
      ]),
    );
    return pridicate;
  }

  ///読み込みの条件式
  @override
  IPridicateModel toCondition(TrinaRow parentRow, TreeLoadStatus treeState) {
    final otherPridicate = stateManager.hasFilter
        ? queryState.adapter.build(
            Configuration.NUM_OF_RECORDS,
            filterRows: stateManager.filterRows,
          )
        : null;

    final pridicate = PridicateModel(
      take: Configuration.NUM_OF_RECORDS,
      skip: treeState.current + Configuration.NUM_OF_RECORDS,
      pridicate: AndExpression([
        EqualExpression(
          FieldExpression<JsonMap>((t) => t['parent_id']),
          ValueExpression(parentRow.cells['id']!.value),
        ),
        ?otherPridicate?.pridicate,
      ]),
    );
    return pridicate;
  }

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
              final root = {'id': 1};
              await initialAddRow(TrinaRow.fromJson(root));
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
