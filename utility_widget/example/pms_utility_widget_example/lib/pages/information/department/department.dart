import 'dart:async';

import 'package:flutter/services.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/demo/demo_trree_reder_service.dart';
import 'package:utility_widget_example/pages/container/trina_grid_summary_hader.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:utility_widget_example/pages/information/department/constants/department_column.dart';
import 'package:utility_widget_example/pages/information/department/department_edit.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/fields/condition_value.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/fields/field_operator.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/fields/value_field_condition.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/nodes/root_condition.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/search_condition.dart';
import 'package:utility_widget_example/src/condition_pipeline/converter/field_condition_converter.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/manager/provider/grid_provider.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';

import '../../../constant/my_trina_grid_configs/grid_config_helper.dart';

class Department extends StatefulWidget {
  const Department({super.key});
  @override
  State<StatefulWidget> createState() => _Department();
}

class _Department extends PmsWidgetState<Department> with TreeOfTrinaGrid {
  final List<TrinaColumn> columnList = DepartmentColumn.columns;
  late final TrinaGridStateManager _stateManager;
  final DemoTreeRederService _trreeRederService = DemoTreeRederService(
    assetReader: DepaertmentAsset(),
  );

  @override
  ReaderService<SummaryLoadData> get readerService => _trreeRederService;

  @override
  TrinaGridStateManager get stateManager => _stateManager;

  @override
  TrinaColumn get parentColumn =>
      columnList.firstWhere((t) => t.field == 'parent_id');

  @override
  TrinaColumn get idColumn => columnList.firstWhere((t) => t.field == 'id');

  @override
  TrinaColumn get childNumberOfRecordsColumn =>
      columnList.firstWhere((t) => t.field == 'child_number_of_records');

  @override
  List<TrinaColumn> get columns => columnList;

  ///最初以降の展開時の条件式
  @override
  IConditionCallback toCondition = (TrinaRow row) {
    final rootCondition = RootCondition();
    rootCondition.addBranch().addValueField(
      field: 'parent_id',
      operator: EqualOperator(),
      value: ConditionValueFactory.getFromValueType(row.cells['parent_id']),
    );
    return rootCondition;
  };

  ///読み込み最初の条件式。以降は[IConditionCallback]が呼ばれる
  @override
  InitConditionCallback toInitCondition = (TrinaRow? row) {
    final rootCondition = RootCondition();
    rootCondition.addBranch().addFieldReference(
      field: 'parent_id',
      operator: EqualOperator(),
      toField: 'id',
    );
    return rootCondition;
  };

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

final class DepaertmentAsset extends AssetReader {
  @override
  List<String> get keys => [
    'id',
    'parent_id',
    'child_number_of_records',
    'code',
    'name',
    'kana',
    'nickname',
    'update_at',
    'update_user',
  ];
  @override
  FutureOr<String> fromCsv() async {
    await Future.delayed(Duration(seconds: 2));
    return await rootBundle.loadString('demo_data/department.csv');
  }
}
