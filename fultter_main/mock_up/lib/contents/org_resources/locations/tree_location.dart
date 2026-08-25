import 'package:mock_up/contents/org_resources/locations/route/edit_location_router.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:undo_redo/lib.dart';

import '../../../imports.dart';
import '../../../services/behavior/behavior.dart';
import '../../_shared/grids/grid_scope_service/grid_drag_drop_event.dart';
import '../../_shared/grids/grid_scope_service/service.dart';
import '../../contents.dart';

class TreeLocation extends ConsumerStatefulWidget {
  const TreeLocation({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TreeLocation();
}

class _TreeLocation extends ConsumerState<TreeLocation> {
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
        title: 'mstr_location_id',
        field: 'mstr_location_id',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        hide: true,
        title: 'mstr_location_tree.mstr_location_id',
        field: 'mstr_location_tree.mstr_location_id',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        hide: true,
        title: 'mstr_location_tree.parent_mstr_location_id',
        field: 'mstr_location_tree.parent_mstr_location_id',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: '子',
        field: 'child_number_of_records',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(title: '場所コード', field: 'code', type: TrinaColumnType.text()),
      TrinaColumn(title: '場所名', field: 'name', type: TrinaColumnType.text()),
      TrinaColumn(title: 'カナ', field: 'kana', type: TrinaColumnType.text()),
      TrinaColumn(title: '略称', field: 'nickname', type: TrinaColumnType.text()),
      TrinaColumn(
        title: '使用可能',
        field: 'available',
        type: TrinaColumnType.boolean(),
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
    ///editableSessionControllerProviderのインスタンス化も同時
    final isDirty = ref.watch(isSessionDirtyProvider);

    ///ドロップイベントのリッスン
    final dropListenable = ref.read(gridDragDropListenableProvider);
    dropListenable.listen((e) => onDrop(e));

    ///ユーザーの権限でモードを変更
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('場所'),
        ),
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: GridTree(
            columns: _columns,
            mode: .primaryUse,
            hasChildTheRow: (row) =>
                row.cells['child_number_of_records']?.value ?? 0 > 0,
            editPath: EditLocationConstant.path,
            treeExpressionAdapter: LocationPridicateAdapter(),
          ),
        ),
      ],
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
          currentmap['mstr_location_tree.parent_mstr_location_id'] =
              parentMap['mstr_location_tree.mstr_location_id'];
        }
      }

      ///監視オブジェクト
      final value = after.rowData;

      ///UndRedoスタックを
      final undoredo = ref.read(editableSessionControllerProvider);

      ///戻す、進むコマンドを追加
      final cmd = BehaviorCommand(
        undoValueProvider: () => after
            .beforeEvent
            .attributes['mstr_location_tree.parent_mstr_location_id'],
        redoValueProvider: () =>
            after.attributes['mstr_location_tree.parent_mstr_location_id'],
        undoExecute: (t) => after.beforeEvent.behavior(),
        redoExecute: (t) => after.behavior(),
      );
      undoredo.push(value, cmd, isImmediately: false);
    }
  }
}

class LocationPridicateAdapter extends TreeExpressionAdapter {
  LocationPridicateAdapter();
  @override
  Expressions buildPredicate(TrinaRow? parentRow) {
    final expression = AndExpression([
      parentRow == null
          ? EqualExpression(
              NameFieldExpression('mstr_location_tree.parent_mstr_location_id'),
              NameFieldExpression('mstr_location_tree.mstr_location_id'),
            )
          : EqualExpression(
              FieldExpression<Map<String, dynamic>>(
                (t) => t['mstr_location_tree.parent_mstr_location_id'],
              ),
              ValueExpression(
                parentRow.cells['mstr_location_tree.mstr_location_id']!.value
                    .toString(),
              ),
            ),
      EqualExpression(
        FieldExpression<Map<String, dynamic>>(
          (t) => t['mstr_location_tree.parent_mstr_location_id'],
        ),
        FieldExpression<Map<String, dynamic>>(
          (t) => t['mstr_location_tree.mstr_location_id'],
        ),
        isNot: true,
      ),
    ]);

    return Expressions(expression: expression);
  }

  @override
  Expressions get initiBuildPredicate {
    final expression = EqualExpression(
      NameFieldExpression('mstr_location_tree.parent_mstr_location_id'),
      NameFieldExpression('mstr_location_tree.mstr_location_id'),
    );
    return Expressions(expression: expression);
  }
}
