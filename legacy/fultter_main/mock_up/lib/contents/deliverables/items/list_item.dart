import 'package:trina_grid/trina_grid.dart';

import '../../../imports.dart';
import '../../../services/behavior/behavior.dart';
import '../../_shared/grids/grid_scope_service/service.dart';

///ツリーモデルを必要としない品目
///設備、副資材など
///カテゴリの引数をとって、分類表示
class ListItem extends ConsumerStatefulWidget {
  const ListItem({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListItem();
}

class _ListItem extends ConsumerState<ListItem> {
  //with GridPagenationMixin<JsonMap>{
  List<TrinaColumn> _columns = [];
  @override
  void initState() {
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
        field: 'info_office.info_office_id',
        type: TrinaColumnType.text(),
      ),

      TrinaColumn(
        title: '削除フラグ',
        field: 'info_office.remove',
        hide: true,
        type: TrinaColumnType.boolean(trueText: 't', falseText: 'f'),
      ),
      TrinaColumn(
        title: '事業所コード',
        field: 'info_office.code',
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
        title: '備考',
        field: 'info_office.remarks',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '更新日',
        field: 'info_office.update_at',
        type: TrinaColumnType.date(),
      ),
      TrinaColumn(
        title: '更新者',
        field: 'info_office.update_user',
        type: TrinaColumnType.text(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
