import 'package:trina_grid/trina_grid.dart';

import '../../../imports.dart';
import '../../../services/behavior/behavior.dart';
import '../../_shared/grids/grid_scope_service/service.dart';
import '../../contents.dart';

class ListCategoryEquipment extends ConsumerStatefulWidget {
  const ListCategoryEquipment({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ListCategoryEquipment();
}

class _ListCategoryEquipment extends ConsumerState<ListCategoryEquipment> {
  List<TrinaColumn> _columns = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ///データレポジトリへのアクセスを提供
    ///このWidgetのスコープでプロバイダを初期化
    final queryStateProvider = ref.watch(
      repositoryFetchControllerProvider<MockResult>(),
    );

    ///フィルタ条件へのアクセスを提供
    ///このWidgetのスコープでプロバイダを初期化
    final expressionAdapter = ref.watch(
      gridFilterExpressionProvider<MockResult>(),
    );

    ///TrinaGridからフィルタ生成
    // expressionAdapter.init(expressionAdapter);

    ///ローカライズするので、一時的にInitで初期亜k
    _columns = <TrinaColumn>[
      TrinaColumn(
        hide: true,
        title: 'ID',
        field: 'id',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '設備分類コード',
        field: 'code',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(title: '分類名', field: 'name', type: TrinaColumnType.text()),
      TrinaColumn(
        title: '適用開始',
        field: 'start_at',
        type: TrinaColumnType.date(),
      ),
      TrinaColumn(
        title: '適用終了',
        field: 'stop_at',
        type: TrinaColumnType.date(),
      ),
      TrinaColumn(title: '備考', field: 'remarks', type: TrinaColumnType.text()),
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
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('資源分類'),
        ),
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: GridList(
            columns: _columns,
            mode: .primaryUse,
            editPath: EditOfficeConstant.path,
            dropAction: null,
          ),
        ),
      ],
    );
  }
}
