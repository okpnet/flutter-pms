import 'package:mock_up/contents/_shared/grids/grids.dart';
import 'package:trina_grid/trina_grid.dart';

import '../../../../imports.dart';

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
    ///ユーザーの権限でモードを変更
    return GridTree(columns: _columns, mode: .primaryUse);
  }
}
