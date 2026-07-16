import 'dart:async';
import 'package:data_strategist/lib.dart';
import 'package:flutter/services.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/constant/my_trina_grid_configs/grid_config_helper.dart';
import 'package:utility_widget_example/pages/container/trina_grid_summary_hader.dart';
import 'package:utility_widget_example/pages/information/company/constants/office_column.dart';
import 'package:utility_widget_example/src/lib/configs/configs.dart';
import 'package:utility_widget_example/src/lib/data_repositories/data_repositories.dart';
import 'package:utility_widget_example/src/lib/grids/grid/providers/gridable_mixin.dart';
import 'package:utility_widget_example/src/lib/grids/pagenation/grid_pagenation_mixin.dart';
import 'package:utility_widget_example/src/lib/grids/widgets/widgets.dart';
import 'package:utility_widget_example/src/lib/grids/grid/grids.dart';

class Office extends StatefulWidget {
  const Office({super.key});

  @override
  State<StatefulWidget> createState() => OfficeState();
}

class OfficeState extends State<Office> with GridPagenationMixin<JsonMap> {
  ///TrinaGridの状態管理
  late final TrinaGridStateManager _stateManager;

  ///TrinaGridの状態管理
  @override
  TrinaGridStateManager get stateManager => _stateManager;

  ///条件を絞り込むクエリマネージャ
  @override
  QueryState<JsonMap, SearchResultInfoDataModel<List<JsonMap>>>
  get queryState =>
      QueryState<JsonMap, SearchResultInfoDataModel<List<JsonMap>>>(
        expressionVisitorType: .list,
        repository: OfficeAsset(),
        cmd: (field) =>
            (t) => t[field],
      );

  ///設定状態管理
  @override
  final ConfigState configState = ConfigState(ConfigModel());

  ///検索結果状態管理
  @override
  final SearchResultInfoState searchResultInfoState = SearchResultInfoState();

  OfficeState();
  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: false,
        title: UtText.scetionTitle('事業所'),
        body: GridScope(
          notifier: searchResultInfoState,
          child: TrinaGrid(
            onChanged: (TrinaGridOnChangedEvent event) {
              print(event);
            },
            onLoaded: (event) async {
              //初回に一度だけ呼ばれる
              _stateManager = event.stateManager;
            },
            createHeader: (_) => TrinaGridSummaryHader(
              searchResultInfoState: searchResultInfoState,
            ),
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
                fetch: (e) => loadPage(e),
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
