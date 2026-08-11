import 'package:mock_up/contents/_shared/grids/grid_scope_service/grid_drag_drop_event.dart';
import 'package:mock_up/contents/contents.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:undo_redo/lib.dart';

import '../../../../imports.dart';
import '../../../services/behavior/behavior.dart';
import '../../_shared/grids/grid_scope_service/service.dart';

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
    final queryStateProvider = ref.watch(
      repositoryFetchControllerProvider<MockResult>(),
    );

    ///フィルタ条件へのアクセスを提供
    ///このWidgetのスコープでプロバイダを初期化
    final expressionAdapter = ref.watch(
      gridFilterExpressionProvider<MockResult>(),
    );

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
    // Notifierではなく「状態(state)」を直接watchする
    ///editableSessionControllerProviderのインスタンス化も同時
    final isDirty = ref.watch(isSessionDirtyProvider);

    ///ドロップイベントのリッスン
    final dropListenable = ref.read(gridDragDropListenableProvider);
    dropListenable.listen((e) => onDrop(e));

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

  ///ドロップイベントストリームをリッスンした結果
  void onDrop(TreeEvent e) {
    // if (TreeEvent case BeforeParentChangeEvent before) {
    // } else
    if (TreeEvent case AfterParentChangeEvent after) {
      ///親を入れ替える
      if (after.rowData case Map<String, dynamic> currentmap) {
        if (after.parentRowData case Map<String, dynamic> parentMap) {
          currentmap['parent_id'] = parentMap['id'];
        }
      }

      ///監視オブジェクト
      final value = after.rowData;

      ///UndRedoスタックを
      final undoredo = ref.read(editableSessionControllerProvider);

      ///戻す、進むコマンドを追加
      final cmd = BehaviorCommand(
        undoValueProvider: () => after.beforeEvent.attributes['parent_id'],
        redoValueProvider: () => after.attributes['parent_id'],
        undoExecute: (t) => after.beforeEvent.behavior(),
        redoExecute: (t) => after.behavior(),
      );
      undoredo.push(value, cmd, isImmediately: false);
    }
  }
}

class DepertmentPridicateAdapter extends TreeExpressionAdapter {
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
