import 'package:trina_grid/trina_grid.dart';

final class OfficeColumn {
  static List<TrinaColumn> columns = <TrinaColumn>[
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
    TrinaColumn(title: '更新日', field: 'update_at', type: TrinaColumnType.date()),
    TrinaColumn(
      title: '更新者',
      field: 'update_user',
      type: TrinaColumnType.text(),
    ),
  ];
}
