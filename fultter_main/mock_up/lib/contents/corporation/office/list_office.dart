// Package imports:
import 'package:trina_grid/trina_grid.dart';

// Project imports:
import '../../../imports.dart';
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
    ///ユーザーの権限でモードを変更
    return GridList(columns: _columns, mode: .primaryUse);
  }
}
