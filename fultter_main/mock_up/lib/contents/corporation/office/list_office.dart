import 'package:mock_up/imports.dart';
import 'package:trina_grid/trina_grid.dart';

class ListOffice extends StatefulWidget {
  const ListOffice({super.key});
  @override
  State<StatefulWidget> createState() => _ListOffice();
}

class _ListOffice extends State<ListOffice> {
  List<TrinaColumn> _columns = [];

  ///TrinaGridの状態管理
  late final TrinaGridStateManager _stateManager;

  ///TrinaGridの状態管理
  @override
  TrinaGridStateManager get stateManager => _stateManager;

  @override
  void initState() {
    super.initState();
    _columns = <TrinaColumn>[
      TrinaColumn(
        hide: true,
        title: 'ID',
        field: 'id',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(title: '事業所コード', field: 'code', type: TrinaColumnType.text()),
      TrinaColumn(title: '事業所名', field: 'name', type: TrinaColumnType.text()),
      TrinaColumn(title: 'カナ', field: 'kana', type: TrinaColumnType.text()),
      TrinaColumn(title: '略称', field: 'nickname', type: TrinaColumnType.text()),
      TrinaColumn(
        title: '更新日',
        field: 'update_at',
        type: TrinaColumnType.date(),
      ),
      TrinaColumn(
        title: '更新者',
        field: 'update_user',
        type: TrinaColumnType.text(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return TrinaGrid(
      onChanged: (TrinaGridOnChangedEvent event) {
        print(event);
      },
      onLoaded: (event) async {
        //初回に一度だけ呼ばれる
        _stateManager = event.stateManager;
      },
      createHeader: (_) =>
          TrinaGridSummaryHader(searchResultInfoState: searchResultInfoState),
      columns: _columns,
      rows: [],
      onRowSecondaryTap: (event) {},
      configuration: GridConfigHelper.build(),
      // createFooter: (stateManager) {
      //   return TrinaLazyPagination(
      //     initialPage: 1,
      //     fetchWithSorting: true,
      //     fetchWithFiltering: true,
      //     pageSizeToMove: null,
      //     stateManager: stateManager,
      //     fetch: (e) => ,
      //   );
      // },
    );
  }
}
