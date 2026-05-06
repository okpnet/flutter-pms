import 'package:pluto_grid/pluto_grid.dart';

final class OfficeColumn {
  static List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      hide: true,
      title: 'ID',
      field: 'id',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(title: '事業所コード', field: 'code', type: PlutoColumnType.text()),
    PlutoColumn(title: '事業所名', field: 'name', type: PlutoColumnType.text()),
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
