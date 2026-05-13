import 'dart:async';

import 'package:flutter/services.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/my_pluto_grid_configs/grid_config_helper.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/constant/results/summary_data.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_header_mixin.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_tree_data_loader.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_tree_mixin.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:utility_widget_example/pages/information/department/constants/department_column.dart';

class Department extends StatefulWidget {
  const Department({super.key});
  @override
  State<StatefulWidget> createState() => _Department();
}

class _Department extends State<Department> with PgHeaderMixin, PgTreeMixin {
  late final PlutoGridStateManager stateManagerProviders;
  final List<PlutoColumn> columnList = DepartmentColumn.columns;

  @override
  PlutoGridStateManager get stateManager => stateManagerProviders;

  @override
  PlutoColumn get idField => columnList.firstWhere((t) => t.field == 'id');

  @override
  PlutoColumn get childNumberOfRecordsColumn =>
      columnList.firstWhere((t) => t.field == 'child_number_of_records');

  @override
  List<PlutoColumn> get columns => columnList;

  @override
  void initState() {
    super.initState();
    loader = DepartmentTreeDataLoader(); // デモ用

    //loadRoot();
  }

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: false,
        title: UtText.scetionTitle('組織'),
        body: PlutoGrid(
          onChanged: (PlutoGridOnChangedEvent event) {
            print(event);
          },
          onLoaded: (event) async {
            //初回に一度だけ呼ばれる
            stateManagerProviders = event.stateManager;
            stateManagerProviders.setRowGroup(
              PlutoRowGroupTreeDelegate(
                resolveColumnDepth: (column) =>
                    stateManagerProviders.columnIndex(column),
                showText: (cell) => true,
                // enableCompactCount: false,
                showCount: false, //子の数表示
                showFirstExpandableIcon: true,

                onToggled: ({required expanded, required row}) {
                  if (expanded) {
                    onCollapse(row);
                  }
                },
              ),
              notify: true,
            );
            await loadAddRow(null);
          },
          createHeader: (stateManager) => buildHeader(),
          columns: columnList,
          rows: gridRows,
          // onRowsMoved: onRowsMoved,
          onRowSecondaryTap: (event) {},
          configuration: GridConfigHelper.buil(),
        ),
      ),
    );
  }
}

final class DepartmentTreeDataLoader extends PgTreeDataLoader {
  @override
  Future<Result<SummaryLoadData>> loadChildrenOf({
    String? parentId,
    required int take,
    required int skip,
  }) async {
    final dataProvider = DepaertmentAsset();
    final csvResult = switch (await dataProvider.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => jsonList.value,
      _ => throw Exception(),
    };

    final result = SummaryLoadData(
      numberOfRecords: csvResult.length,
      filteredNumberOfRecords: csvResult
          .where((t) => (t['parent_id'] as String?) == (parentId ?? '1'))
          .length,
      loadData: csvResult
          .where((t) => (t['parent_id'] as String?) == (parentId ?? '1'))
          .skip(skip)
          .take(take)
          .toList(),
    );
    return Ok(result);
  }

  @override
  void updateParent(String id, String newParentId) {
    // TODO: implement updateParent
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
