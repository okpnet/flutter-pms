import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/pages/container/pluto_grid_summary_hader.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class Department extends StatefulWidget {
  const Department({super.key});
  @override
  State<StatefulWidget> createState() => _Department();
}

class _Department extends State<Department> {
  late final PlutoGridStateManager stateManagerProviders;
  final numberOfRecordsNotifier = ValueNotifier<SummaryData>(SummaryData());

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
          columns: Dee.columns,
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
}
