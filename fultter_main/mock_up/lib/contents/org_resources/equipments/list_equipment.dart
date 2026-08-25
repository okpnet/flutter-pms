import 'package:trina_grid/trina_grid.dart';

import '../../../imports.dart';
import '../../../services/behavior/behavior.dart';
import '../../_shared/grids/grid_scope_service/service.dart';
import '../../contents.dart';

class ListEquipment extends ConsumerStatefulWidget {
  const ListEquipment({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListEquipment();
}

class _ListEquipment extends ConsumerState<ListEquipment> {
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
      TrinaColumn(title: '設備コード', field: 'code', type: TrinaColumnType.text()),
      TrinaColumn(
        title: '設備分類コード',
        field: 'mstr_equipment_category.code',
        type: TrinaColumnType.text(),
      ), //設備区分にリンク
      TrinaColumn(
        title: '分類名',
        field: 'mstr_equipment_category.name',
        type: TrinaColumnType.text(),
      ), //設備区分にリンク
      TrinaColumn(
        title: '設備名',
        field: 'mstr_item.name',
        type: TrinaColumnType.text(),
      ), //品目にリンク
      TrinaColumn(
        title: 'カナ',
        field: 'mstr_item.kana',
        type: TrinaColumnType.text(),
      ), //品目にリンク
      TrinaColumn(
        title: '略称',
        field: 'nickname',
        type: TrinaColumnType.text(),
      ), //品目にリンク
      TrinaColumn(
        title: '表示コード',
        field: 'label_code',
        type: TrinaColumnType.text(),
      ), //品目と共用
      TrinaColumn(
        title: '管理コード',
        field: 'control_code',
        type: TrinaColumnType.text(),
      ), //品目と共用
      TrinaColumn(
        title: 'エリア',
        field: 'mstr_location.name',
        type: TrinaColumnType.text(),
      ), //場所と共用
      TrinaColumn(
        title: 'エリアコード',
        field: 'mstr_location.code',
        type: TrinaColumnType.text(),
      ), //場所と共用
      TrinaColumn(
        title: '適用開始',
        field: 'start_at',
        type: TrinaColumnType.date(),
      ), //提供マスタ
      TrinaColumn(
        title: '適用終了',
        field: 'stop_at',
        type: TrinaColumnType.date(),
      ), //提供マスタ
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
          child: ContentsTitle('設備'),
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
