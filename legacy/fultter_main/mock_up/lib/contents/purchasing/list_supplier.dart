import 'package:trina_grid/trina_grid.dart';

import '../../../imports.dart';
import '../../../services/behavior/behavior.dart';
import '../_shared/grids/grid_scope_service/service.dart';
import '../contents.dart';

class ListSupplier extends ConsumerStatefulWidget {
  const ListSupplier({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListSupplier();
}

class _ListSupplier extends ConsumerState<ListSupplier> {
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
        title: '供給者コード',
        field: 'mstr_stakeholder.code',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '管理コード',
        field: 'mstr_stakeholder.control_code',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: 'shared_appellations',
        field: 'info_office.shared_appellations.id',
        hide: true,
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '名称',
        field: 'shared_appellations.name',
        type: TrinaColumnType.text(),
      ),

      TrinaColumn(
        title: 'かな',
        field: 'shared_appellations.pronunciation',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '略称',
        field: 'shared_appellations.nickname',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '国',
        field: 'info_address.iso3166_3',
        type: TrinaColumnType.selectWithSearch<MapEntry<String, String>>(
          [],
          itemToString: (item) => item.value,
          itemToValue: (item) => item.key,
        ),
      ),
      TrinaColumn(
        title: '郵便番号',
        field: 'info_address.zip_code',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '住所1',
        field: 'info_address.address1',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '住所2',
        field: 'info_address.address2',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '建物',
        field: 'info_address.bill',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '電話番号',
        field: 'info_address.phone',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: 'FAX',
        field: 'info_address.fax_number',
        type: TrinaColumnType.text(),
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
            child: ContentsTitle('供給者'),
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
