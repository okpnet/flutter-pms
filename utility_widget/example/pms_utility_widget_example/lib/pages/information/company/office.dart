import 'dart:async';
import 'package:flutter/services.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/demo/demo_pagenation_reader_service.dart';
import 'package:utility_widget_example/src/manager/provider/grid_provider.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';
import 'package:utility_widget_example/src/manager/state/grid_state.dart';
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

class OfficeState extends PmsWidgetState<Office> with PagenationOfTrinaGrid {
  final GridState _state = GridState();
  final DemoPagenaationReaderService _demoPagenaationReaderService =
      DemoPagenaationReaderService(assetReader: OfficeAsset());

  @override
  ReaderService<TrinaLazyPaginationRequest> get readerService =>
      _demoPagenaationReaderService;

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
              setGridStatemnager(event.stateManager);
            },
            createHeader: (_) => TrinaGridSummaryHader(summaryState: _state!),
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
