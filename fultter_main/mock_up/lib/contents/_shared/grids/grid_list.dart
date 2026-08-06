// Package imports:
import 'package:grid_lib/grid_lib.dart';
import 'package:mock_up/contents/_shared/shared.dart';
import 'package:mock_up/services/authorization/authorization.dart';
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

  const GridList({
    super.key,
    required this.columns,
    required this.mode,
    this.toEdit,
  });

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
    ///UndoRedoと、確定した行のコピーデータを扱う
    final undoRedoState = ref.watch(gridScreenManagerProvider);

    ///データベースへ更新を反映させるためのマネージャ
    final manager = ref.read(gridScreenManagerProvider.notifier);

    ///権限を取得する
    final authorication = ref.read(mockAutorizeServiceProvider);

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
        if (widget.toEdit == null) {
          ///権限がないとき
          return;
        }

        ///選択行を
        final row = event.row.toJson();
        _toEdit(row);
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

  ///編集へ遷移
  void _toEdit(JsonMap rowMapData) {
    ///編集画面遷移するとき
    final router = ref.read(rootRouterProvider);

    ///Uriに変換
    final uri = widget.toEdit!(rowMapData);

    ///編集サイトへ移動
    router.go(uri.toString());
  }
}
