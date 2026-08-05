// Package imports:
import 'package:grid_lib/grid_lib.dart';
import 'package:mock_up/contents/_shared/shared.dart';
import 'package:mock_up/services/router/router.dart';
import 'package:trina_grid/trina_grid.dart';

// Project imports:
import '../../../constants/configuration/configration.dart';
import '../../../imports.dart';
import '../../../services/behavior/behavior.dart';

class GridList extends ConsumerStatefulWidget {
  final List<TrinaColumn> columns;
  final GridMode mode;
  final GridToEditFunction? toEdit;

  const GridList({super.key, required this.columns, required this.mode,this.toEdit});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GridList();
}

class _GridList extends ConsumerState<GridList> {
  //with GridPagenationMixin<JsonMap>{
  List<TrinaColumn> get _columns => widget.columns;

  ///グリッドの設定
  final GridConfiguration tringaGridConfig = GridConfiguration();

  ///TrinaGridの状態管理
  late final TrinaGridStateManager _stateManager;

  ///検索結果状態管理
  @override
  final SearchResultInfoState searchResultInfoState = SearchResultInfoState();

  ///TrinaGridの状態管理
  @override
  TrinaGridStateManager get stateManager => _stateManager;

  @override
  Widget build(BuildContext context) {
    // Grid内部でもUndo/Redoの状態（最新のデータ状態など）をwatchして反映させたい場合
    final undoRedoState = ref.watch(gridScreenManagerProvider);
    final manager = ref.read(gridScreenManagerProvider.notifier);
    final router=ref.read(rootRouterProvider);
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
      onRowDoubleTap: (event) {
        if(widget.mode==.primaryUse)
      },
      onRowSecondaryTap: (event) {},
      configuration: tringaGridConfig.listConfig,
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
