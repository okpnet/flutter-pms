import 'package:pluto_grid/pluto_grid.dart';

final class DepartmentColumn {
  static List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      hide: true,
      title: 'ID',
      field: 'id',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      hide: true,
      title: 'parent',
      field: 'parent_id',
      type: PlutoColumnType.text(),
    ),

    PlutoColumn(
      title: '組織コード',
      field: 'code',
      type: PlutoColumnType.text(),
      checkReadOnly: (row, cell) => true,
      // enableRowDrag: true,
    ),
    PlutoColumn(
      title: '組織名',
      field: 'name',
      type: PlutoColumnType.text(),
      enableRowDrag: true,
    ),
    PlutoColumn(
      title: '子',
      field: 'child_number_of_records',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(title: 'カナ', field: 'kana', type: PlutoColumnType.text()),
    PlutoColumn(title: '略称', field: 'nickname', type: PlutoColumnType.text()),
    PlutoColumn(title: '更新日', field: 'update_at', type: PlutoColumnType.date()),
    PlutoColumn(
      title: '更新者',
      field: 'update_user',
      type: PlutoColumnType.text(),
    ),
  ];
}
