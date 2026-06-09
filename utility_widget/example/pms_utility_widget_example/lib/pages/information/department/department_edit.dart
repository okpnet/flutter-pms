import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/my_trina_grid_configs/grid_config_helper.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:utility_widget_example/pages/container/trina_grid_summary_hader.dart';
import 'package:utility_widget_example/pages/information/department/constants/department_column.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/search_condition.dart';
import 'package:utility_widget_example/src/manager/provider/grid_provider.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';
import 'package:utility_widget_example/src/manager/state/grid_map_value_state.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';

class DepartmentEdit extends StatefulWidget {
  final Map<String, dynamic> row;
  const DepartmentEdit({super.key, required this.row});

  @override
  State<StatefulWidget> createState() => _DepartmentEdit();
}

class _DepartmentEdit extends PmsWidgetState<DepartmentEdit> {
  final GridMapValueState _state = GridMapValueState();
  @override
  PmsState get state => _state;

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.scetionTitle('組織の変更'),
        body: PmsStateScope(
          notifier: state,
          child: Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              Flexible(flex: 1, child: UtText('ここにツリー')),
              Flexible(flex: 2, child: _DepartmentForm(state: _state)), //
            ],
          ),
        ),
      ),
    );
  }
}

class _DepartmentTree extends StatefulWidget {
  final GridMapValueState state;
  const _DepartmentTree({super.key, required this.state});
  @override
  State<StatefulWidget> createState() => _DepartmentTreeState();
}

class _DepartmentTreeState extends PmsWidgetState<_DepartmentTree>
    with TreeOfTrinaGrid {
  final List<TrinaColumn> columnList = DepartmentColumn.columns;

  @override
  TrinaColumn get childNumberOfRecordsColumn =>
      columnList.firstWhere((t) => t.field == 'child_number_of_records');

  @override
  TrinaColumn get idField => columnList.firstWhere((t) => t.field == 'id');

  @override
  ReaderService<RootCondition> get readerService => throw UnimplementedError();
  @override
  Widget build(BuildContext context) {
    return UtLayoutPadding(
      child: TrinaGrid(
        mode: .select,
        isTreeDragMode: true, //ツリーモード指定。ドラッグ中に行左端へホバーすると右に寄る。
        onChanged: (TrinaGridOnChangedEvent event) {
          print(event);
        },
        onLoaded: (event) async {
          //初回に一度だけ呼ばれる
          stateManagerProviders = event.stateManager;
          for (var column in stateManager.columns) {
            column.enableRowDrag = false;
          }
          initColumns();
          await loadAddRow(null);
        },
        createHeader: (_) => TrinaGridSummaryHader(summaryState: widget.state!),
        columns: columnList,
        rows: [],
        onRowsMoved: onRowsMoved,
        configuration: GridConfigHelper.treeTo(selectionMode: .row),
      ),
    );
  }
}

class _DepartmentForm extends StatelessWidget {
  final GridMapValueState state;

  const _DepartmentForm({super.key, required this.state});
  @override
  Widget build(BuildContext context) {
    return UtResponsiveGrid(
      children: [
        UtResponsiveFlex.of(
          flex: 12,
          hidePoint: .mobile,
          child: UtLayoutPadding(
            direction: .top,
            child: Align(
              alignment: .topRight,
              child: UtButton.primaryWithIcon(
                label: '保存する',
                onPressed: () => {},
                icon: Icon(Icons.save_alt_outlined),
              ),
            ),
          ),
        ),
        UtResponsiveFlex.of(
          flex: 4,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: '組織コード', requiered: true),
          ),
        ),
        UtResponsiveFlex.of(
          flex: 4,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: '組織名', requiered: true),
          ),
        ),
        UtResponsiveFlex.cr(),
        UtResponsiveFlex.of(
          flex: 4,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: 'カナ'),
          ),
        ),
        UtResponsiveFlex.of(
          flex: 4,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: '略称', requiered: true),
          ),
        ),
        UtResponsiveFlex.cr(),
        UtResponsiveFlex.of(
          flex: 3,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: '国'),
          ),
        ),
        UtResponsiveFlex.cr(),
        UtResponsiveFlex.of(
          flex: 3,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: '郵便番号'),
          ),
        ),
        UtResponsiveFlex.of(
          flex: 3,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: '県・市町村'),
          ),
        ),
        UtResponsiveFlex.of(
          flex: 8,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: '県・市町村'),
          ),
        ),
        UtResponsiveFlex.of(
          flex: 8,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: 'ビル、屋号など'),
          ),
        ),
        UtResponsiveFlex.of(
          flex: 4,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: '電話番号'),
          ),
        ),
        UtResponsiveFlex.of(
          flex: 4,
          child: UtLayoutPadding(
            direction: .top,
            child: UtTextInput.primary(label: 'FAX'),
          ),
        ),
      ],
    );
  }
}
