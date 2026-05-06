import 'dart:async';
import 'package:flutter/services.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget_example/pages/contants/my_pluto_grid_configs/grid_config_helper.dart';
import 'package:utility_widget_example/pages/information/company/constants/office_column.dart';

class Office extends StatefulWidget {
  const Office({super.key});
  @override
  State<StatefulWidget> createState() => OfficeState();
}

class OfficeState extends State<Office> {
  // late final PlutoGridStateManager stateManagerProviders;
  // ページネーション設定
  final int pageSize = 20;
  int currentPage = 1;

  OfficeState();
  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: false,
        title: UtText.scetionTitle('事業所'),
        body: PlutoGrid(
          onChanged: (PlutoGridOnChangedEvent event) {
            print(event);
          },
          // onLoaded: (event) async {
          //   //初回のみ
          //   stateManagerProviders = event.stateManager;
          // },
          createHeader: ,
          columns: OfficeColumn.columns,
          rows: [],
          onRowSecondaryTap: (event) {},
          configuration: GridConfigHelper.buil(),
          createFooter: (stateManager) {
            return PlutoLazyPagination(
              initialPage: 1,
              fetchWithSorting: true,
              fetchWithFiltering: true,
              pageSizeToMove: null,
              stateManager: stateManager,
              fetch: loadPage,
            );
          },
        ),
      ),
    );
  }

  Future<PlutoLazyPaginationResponse> loadPage(
    PlutoLazyPaginationRequest request,
  ) async {
    // stateManagerProviders.setShowLoading(true);
    final dataProvider = OfficeAsset();
    final rowJson = switch (await dataProvider.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => [
        for (var row in jsonList.value) PlutoRow.fromJson(row),
      ],
      _ => <PlutoRow>[],
    };
    // ページング処理
    //stateManagerProviders.setShowLoading(false);
    return PlutoLazyPaginationResponse(rows: rowJson, totalPage: 100);
  }
}

final class OfficeAsset extends AssetReader {
  @override
  List<String> get keys => [
    'id',
    'code',
    'name',
    'kana',
    'nickname',
    'update_user',
    'update_at',
  ];
  @override
  FutureOr<String> fromCsv() async {
    await Future.delayed(Duration(seconds: 2));
    return await rootBundle.loadString('demo_data/office.csv');
  }
}
