// Package imports:
import 'package:mock_up/contents/corporation/office/route/route.dart';
import 'package:trina_grid/trina_grid.dart';

// Project imports:
import '../../../imports.dart';
import '../../../services/behavior/behavior.dart';
import '../../_shared/shared.dart';

class ListOffice extends ConsumerStatefulWidget {
  const ListOffice({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListOffice();
}

class _ListOffice extends ConsumerState<ListOffice> {
  //with GridPagenationMixin<JsonMap>{
  List<TrinaColumn> _columns = [];
  @override
  void initState() {
    super.initState();
    final queryState = ref.watch(gridDataStrategyProvider.notifier);
    //データレポジトリへのアクセスを提供
    // queryState.create(state);

    final expressionAdapter = ref.watch(gridFilterExpressionProvider.notifier);

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
    // 1. Notifierではなく「状態(state)」を直接watchする
    final isDirty = ref.watch(gridIsDirtyProvider);

    ///ユーザーの権限でモードを変更
    return PopScope(
      canPop: !isDirty,
      child: GridList(
        columns: _columns,
        mode: .primaryUse,
        editPath: EditOfficeConstant.path,
      ),
    );
  }
}
