import 'package:trina_grid/trina_grid.dart';

final class DepartmentColumn {
  static List<TrinaColumn> columns = <TrinaColumn>[
    TrinaColumn(
      hide: true,
      title: 'ID',
      field: 'id',
      type: TrinaColumnType.text(),
    ),
    TrinaColumn(
      hide: true,
      title: 'parent',
      field: 'parent_id',
      type: TrinaColumnType.text(),
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
    TrinaColumn(title: '更新日', field: 'update_at', type: TrinaColumnType.date()),
    TrinaColumn(
      title: '更新者',
      field: 'update_user',
      type: TrinaColumnType.text(),
    ),
  ];
}
