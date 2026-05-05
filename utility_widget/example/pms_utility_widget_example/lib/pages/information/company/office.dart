import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget_example/pages/contants/my_pluto_grid_configs/grid_config_helper.dart';

class Office extends StatefulWidget {
  const Office({super.key});
  @override
  State<StatefulWidget> createState() => OfficeState();
}

class OfficeState extends State<Office> {
  final List<PlutoColumn> columns = <PlutoColumn>[
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

  OfficeState();
  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: false,
        title: UtText.scetionTitle('事業所'),
        body: PlutoGrid(
          columns: columns,
          rows: [],
          onRowSecondaryTap: (event) {},
          configuration: GridConfigHelper.buil(),
        ),
      ),
    );
  }
}
