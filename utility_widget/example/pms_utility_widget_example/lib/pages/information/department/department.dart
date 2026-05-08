import 'dart:async';

import 'package:flutter/services.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/my_pluto_grid_configs/grid_config_helper.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_tree_data_loader.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_tree_mixin.dart';
import 'package:utility_widget_example/pages/container/pluto_grid_summary_hader.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:utility_widget_example/pages/information/department/constants/department_column.dart';

class Department extends StatefulWidget {
  const Department({super.key});
  @override
  State<StatefulWidget> createState() => _Department();
}

class _Department extends State<Department> with PgTreeMixin {
  late final PlutoGridStateManager stateManagerProviders;
  final numberOfRecordsNotifier = ValueNotifier<SummaryData>(SummaryData());

  @override
  String get idField => 'id';

  @override
  String get parentField => 'parentId';

  @override
  List<PlutoColumn> get columns => DepartmentColumn.columns;

  @override
  void initState() {
    super.initState();
    loader = DepartmentTreeDataLoader(); // デモ用
    loadRoot();
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
          },
          createHeader: (stateManager) {
            //初回に一度だけ呼ばれる
            return ValueListenableBuilder<SummaryData>(
              valueListenable: numberOfRecordsNotifier,
              builder: (context, value, widget) {
                return PlutoGridSummaryHader(summaryData: value);
              },
            );
          },
          columns: DepartmentColumn.columns,
          rows: [],
          onRowsMoved: onRowsMoved,
          onRowSecondaryTap: (event) {},
          configuration: GridConfigHelper.buil(),
        ),
      ),
    );
  }
}

final class DepartmentTreeDataLoader extends PgTreeDataLoader {
  @override
  Future<List<Map<String, dynamic>>> loadChildrenOf(String? parentId) async {
    final dataProvider = DepaertmentAsset();
    return switch (await dataProvider.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList =>
        jsonList.value
            .where((t) => (t['parent_id'] as String?) == parentId)
            .toList(),
      _ => <Map<String, dynamic>>[],
    };
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
