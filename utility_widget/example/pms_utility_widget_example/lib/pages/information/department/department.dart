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
import 'package:utility_widget_example/src/manager/provider/grid_provider.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';
import 'package:utility_widget_example/src/manager/state/summary_state.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';

import '../../../constant/my_trina_grid_configs/grid_config_helper.dart';

class Department extends StatefulWidget {
  const Department({super.key});
  @override
  State<StatefulWidget> createState() => _Department();
}

class _Department extends PmsWidgetState<Department> with TreeOfTrinaGrid {
  final SummaryState _state = SummaryState();
  final List<TrinaColumn> columnList = DepartmentColumn.columns;
  final DemoTrreeRederService _trreeRederService = DemoTrreeRederService(
    assetReader: DepaertmentAsset(),
    parentKey: 'parent_id',
    idKey: 'id',
  );
  @override
  ReaderService<({String? parentId, int skip})> get readerService =>
      _trreeRederService;

  @override
  TrinaColumn get idField => columnList.firstWhere((t) => t.field == 'id');

  @override
  TrinaColumn get childNumberOfRecordsColumn =>
      columnList.firstWhere((t) => t.field == 'child_number_of_records');

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
        body: PmsStateScope(
          notifier: _state,
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
              stateManagerProviders = event.stateManager;
              for (var column in stateManager.columns) {
                column.enableRowDrag = false;
              }
              initColumns();
              await loadAddRow(null);
            },
            createHeader: (_) =>
                TrinaGridSummaryHader(summaryData: _state.summaryData!),
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
