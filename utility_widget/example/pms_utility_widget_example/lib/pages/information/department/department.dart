import 'dart:async';

import 'package:flutter/services.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/constant/results/summary_data.dart';
import 'package:utility_widget_example/helper/trina_grid/pg_header_mixin.dart';
import 'package:utility_widget_example/helper/trina_grid/pg_tree_data_loader.dart';
import 'package:utility_widget_example/helper/trina_grid/pg_tree_mixin.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:utility_widget_example/pages/information/department/constants/department_column.dart';

import '../../../constant/my_trina_grid_configs/grid_config_helper.dart';

class Department extends StatefulWidget {
  const Department({super.key});
  @override
  State<StatefulWidget> createState() => _Department();
}

class _Department extends State<Department> with PgHeaderMixin, PgTreeMixin {
  late final TrinaGridStateManager stateManagerProviders;
  final List<TrinaColumn> columnList = DepartmentColumn.columns;

  @override
  TrinaGridStateManager get stateManager => stateManagerProviders;

  @override
  TrinaColumn get idField => columnList.firstWhere((t) => t.field == 'id');

  @override
  TrinaColumn get childNumberOfRecordsColumn =>
      columnList.firstWhere((t) => t.field == 'child_number_of_records');

  @override
  List<TrinaColumn> get columns => columnList;

  @override
  void initState() {
    super.initState();
    loader = DepartmentTreeDataLoader(); // デモ用

    //loadRoot();
  }

  void _onRowSelected(TrinaGridOnSelectedEvent event) {
    final isSelect = stateManagerProviders.isSelectedRow(event.row!.key);
    event.row!.setChecked(true);
    debugPrint(
      'selectedRowIdx=${event.rowIdx} isSelected=${isSelect} checked=${event.row?.checked}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: false,
        title: UtText.scetionTitle('組織'),
        body: TrinaGrid(
          mode: .select,
          onSelected: _onRowSelected,
          isTreeDragMode: true, //ツリーモード指定。ドラッグ中に行左端へホバーすると右に寄る。
          onChanged: (TrinaGridOnChangedEvent event) {
            print(event);
          },
          rowColorCallback: (ctx) {
            if (stateManagerProviders.isSelectedRow(ctx.row.key)) {
              return Colors.deepOrange.withOpacity(0.2);
            }
            return Colors.transparent;
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
          createHeader: (stateManager) => buildHeader(),
          columns: columnList,
          rows: [],
          onRowsMoved: onRowsMoved,
          onRowSecondaryTap: (event) {},
          configuration: GridConfigHelper.treeTo(selectionMode: .row),
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

    bool isChild(Map<String, dynamic> row) => parentId == null
        ? row['parent_id'] ==
              row['id'] //トップフィールド条件
        : num.parse(row['parent_id']) == num.parse(parentId) &&
              row['parent_id'] != row['id']; //通常条件

    final result = SummaryLoadData(
      numberOfRecords: csvResult.length,
      filteredNumberOfRecords: csvResult.where(isChild).length,
      loadData: csvResult.where(isChild).skip(skip).take(take).toList(),
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
