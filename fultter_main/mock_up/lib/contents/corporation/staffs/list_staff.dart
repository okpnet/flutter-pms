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
        title: 'ID',
        field: 'id',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(title: '担当者コード', field: 'code', type: TrinaColumnType.text()),
      TrinaColumn(title: '氏名', field: 'name', type: TrinaColumnType.text()),
      TrinaColumn(title: 'カナ', field: 'kana', type: TrinaColumnType.text()),
      TrinaColumn(
        title: '性別',
        field: 'sex',
        type: TrinaColumnType.select<Map<String, String>>([
          {'male': '男性'},
          {'female': '女性'},
          {'other': 'その他'},
        ]),
      ),
      TrinaColumn(title: '部署', field: 'section', type: TrinaColumnType.text()),
      TrinaColumn(title: '電話', field: 'phone', type: TrinaColumnType.text()),
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
      child: GridList(
        columns: _columns,
        mode: .primaryUse,
        editPath: EditOfficeConstant.path,
        dropAction: null,
      ),
    );
  }
}
