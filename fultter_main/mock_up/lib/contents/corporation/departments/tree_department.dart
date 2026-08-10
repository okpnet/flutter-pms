import 'package:mock_up/contents/contents.dart';
import 'package:trina_grid/trina_grid.dart';

import '../../../../imports.dart';
import '../../../services/behavior/behavior.dart';

class TreeDepartment extends ConsumerStatefulWidget {
  const TreeDepartment({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TreeDepartment();
}

class _TreeDepartment extends ConsumerState<TreeDepartment> {
  //with GridPagenationMixin<JsonMap>{
  List<TrinaColumn> _columns = [];
  @override
  void initState() {
    super.initState();

    ///データレポジトリへのアクセスを提供
    ///このWidgetのスコープでプロバイダを初期化
    final queryStateProvider = ref.watch(gridDataStrategyProvider);

    ///フィルタ条件へのアクセスを提供
    ///このWidgetのスコープでプロバイダを初期化
    final expressionAdapter = ref.watch(gridFilterExpressionProvider.notifier);

    _columns = <TrinaColumn>[
      TrinaColumn(
        hide: true,
        title: 'ID',
        field: 'id',
        type: TrinaColumnType.number(),
      ),
      TrinaColumn(
        hide: true,
        title: 'parent',
        field: 'parent_id',
        type: TrinaColumnType.number(),
      ),

      TrinaColumn(
        title: '組織コード',
        field: 'code',
        type: TrinaColumnType.text(),
        checkReadOnly: (row, cell) => true,
        enableRowDrag: true,
      ),
      TrinaColumn(title: '組織名', field: 'name', type: TrinaColumnType.text()),
      TrinaColumn(
        title: '子',
        field: 'child_number_of_records',
        type: TrinaColumnType.text(),
      ),
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
    return GridTree(
      columns: _columns,
      mode: .primaryUse,
      hasChildTheRow: (row) =>
          row.cells['child_number_of_records']?.value ?? 0 > 0,
      editPath: EditDepartmentConstant.path,
      treeExpressionAdapter: DepertmentPridicateAdapter(),
    );
  }
}

class DepertmentPridicateAdapter
    extends TreeExpressionAdapter<Map<String, dynamic>> {
  DepertmentPridicateAdapter();
  @override
  Expressions buildPredicate(TrinaRow? parentRow) {
    final expression = AndExpression([
      parentRow == null
          ? EqualExpression(
              NameFieldExpression('parent_id'),
              NameFieldExpression('id'),
            )
          : EqualExpression(
              FieldExpression<Map<String, dynamic>>((t) => t['parent_id']),
              ValueExpression(parentRow.cells['id']!.value.toString()),
            ),
      EqualExpression(
        FieldExpression<Map<String, dynamic>>((t) => t['parent_id']),
        FieldExpression<Map<String, dynamic>>((t) => t['id']),
        isNot: true,
      ),
    ]);

    return Expressions(expression: expression);
  }

  @override
  Expressions get initiBuildPredicate {
    final expression = EqualExpression(
      NameFieldExpression('parent_id'),
      NameFieldExpression('id'),
    );
    return Expressions(expression: expression);
  }
}
