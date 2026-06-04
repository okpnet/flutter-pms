import 'dart:async';
import 'package:flutter/services.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/demo/demo_summary_state.dart';
import 'package:utility_widget_example/helper/trina_grid/pg_header_mixin.dart';
import 'package:utility_widget_example/helper/trina_grid/pg_pagenation_mixin.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/constant/my_trina_grid_configs/grid_config_helper.dart';
import 'package:utility_widget_example/pages/container/trina_grid_summary_hader.dart';
import 'package:utility_widget_example/pages/information/company/constants/office_column.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';

class Office extends StatefulWidget {
  const Office({super.key});

  @override
  State<StatefulWidget> createState() => OfficeState();
}

class OfficeState extends PmsWidgetState<Office> implements IHeaderOfTrinaGrid
    with  PgPagenationMixin {
  late final TrinaGridStateManager stateManagerProviders;
  final DemoSummaryState _state = DemoSummaryState();

  @override
  PmsState get state => _state;

  @override
  DemoSummaryState get summaryState => _state;

  @override
  TrinaGridStateManager get pgStateManager => stateManagerProviders;

  @override
  AssetReader get assetReader => OfficeAsset();

  // ページネーション設定
  final int pageSize = 20;
  int currentPage = 1;
  int? numberOfRecords;
  int? filteredNumeberOfRecord;

  OfficeState();
  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: false,
        title: UtText.scetionTitle('事業所'),
        body: PmsStateScope(
          notifier: _state,
          child: TrinaGrid(
            onChanged: (TrinaGridOnChangedEvent event) {
              print(event);
            },
            onLoaded: (event) async {
              //初回に一度だけ呼ばれる
              stateManagerProviders = event.stateManager;
            },
            createHeader: (_) => TrinaGridSummaryHader(summaryData: _state.summaryData!),
            columns: OfficeColumn.columns,
            rows: [],
            onRowSecondaryTap: (event) {},
            configuration: GridConfigHelper.build(),
            createFooter: (stateManager) {
              return TrinaLazyPagination(
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
      ),
    );
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
