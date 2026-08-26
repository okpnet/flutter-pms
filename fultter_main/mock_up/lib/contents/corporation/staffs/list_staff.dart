// Project imports:
import 'package:trina_grid/trina_grid.dart';

import '../../../imports.dart';
import '../../../services/behavior/behavior.dart';
import '../../_shared/grids/grid_scope_service/service.dart';
import '../../contents.dart';

class ListStaff extends ConsumerStatefulWidget {
  const ListStaff({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListStaff();
}

class _ListStaff extends ConsumerState<ListStaff> {
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
        field: 'info_staff.info_staff_id',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '削除フラグ',
        field: 'info_staff.remove',
        hide: true,
        type: TrinaColumnType.boolean(trueText: 't', falseText: 'f'),
      ),
      TrinaColumn(
        title: '担当者コード',
        field: 'info_staff.code',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: 'shared_appellations',
        field: 'info_staff.shared_appellations_id',
        hide: true,
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '名前',
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
        title: '性別',
        field: 'info_staff.sex',
        type: TrinaColumnType.select<MapEntry<String, String>>(
          [
            MapEntry('male', '男性'),
            MapEntry('female', '女性'),
            MapEntry('other', 'その他'),
          ],
          itemToString: (item) => item.value,
          itemToValue: (item) => item.key,
        ),
      ),
      TrinaColumn(
        title: '部署',
        field: 'section',
        type: TrinaColumnType.selectWithSearch<MapEntry<String, dynamic>>(
          [], //DBから読み込むので空
          itemToString: (item) => item.value,
          itemToValue: (item) => item.key,
        ),
      ),
      TrinaColumn(
        title: '電話',
        field: 'info_staff.phone',
        type: TrinaColumnType.text(),
      ), //内線のケースもあるので、正規表現をしない
      TrinaColumn(
        title: '備考',
        field: 'info_staff.remarks',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '更新日',
        field: 'info_staff.update_at',
        type: TrinaColumnType.date(),
      ),
      TrinaColumn(
        title: '更新者',
        field: 'info_staff.update_user',
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
            child: ContentsTitle('スタッフ'),
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
