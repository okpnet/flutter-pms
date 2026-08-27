import 'package:trina_grid/trina_grid.dart';

import '../../imports.dart';
import '../../services/behavior/behavior.dart';
import '../_shared/grids/grid_scope_service/service.dart';
import '../contents.dart';

class ListOrder extends ConsumerStatefulWidget {
  const ListOrder({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListOrder();
}

class _ListOrder extends ConsumerState<ListOrder> {
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
        title: 'id',
        field: 'mstr_stakeholder.mstr_stakeholder_id',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '削除フラグ',
        field: 'mstr_stakeholder.remove',
        hide: true,
        type: TrinaColumnType.boolean(trueText: 't', falseText: 'f'),
      ),
      TrinaColumn(
        title: '顧客コード',
        field: 'mstr_stakeholder.code',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: 'shared_appellations',
        field: 'info_office.shared_appellations.id',
        hide: true,
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '顧客名',
        field: 'shared_appellations.name',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '管理コード1',
        field: 'trans_purchase.purchase_ctrl_1',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '管理コード1',
        field: 'trans_purchase.purchase_ctrl_2',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '管理コード1',
        field: 'trans_purchase.purchase_ctrl_3',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '期限',
        field: 'trans_purchase.deadline',
        type: TrinaColumnType.date(),
      ),
      TrinaColumn(title: '受注日', field: 'status', type: TrinaColumnType.date()),
      TrinaColumn(title: '納期', field: 'status', type: TrinaColumnType.date()),
      TrinaColumn(title: '完了予定', field: 'status', type: TrinaColumnType.date()),
      TrinaColumn(title: '出荷予定', field: 'status', type: TrinaColumnType.date()),
      TrinaColumn(
        title: '品目番号',
        field: 'mstr_item.code',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '品目名',
        field: 'mstr_item.shared_appellations.name',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(title: '数量', field: 'status', type: TrinaColumnType.number()),
      TrinaColumn(title: '個別納期', field: 'status', type: TrinaColumnType.date()),
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
    // Notifierではなく「状態(state)」を直接watchする
    final isDirty = ref.watch(isSessionDirtyProvider);

    ///ユーザーの権限でモードを変更
    return PopScope(
      canPop: !isDirty,
      child: ResponsiveGrid(
        config: ResponsiveGridConfig.standard(),
        children: [
          ResponsiveCell(
            layout: CommonResponsive.flexLx,
            child: ContentsTitle('受注台帳'),
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
      ),
    );
  }
}
