import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:pluto_grid/pluto_grid.dart';

class Office extends StatefulWidget {
  const Office({super.key});
  @override
  State<StatefulWidget> createState() => OfficeState();
}

class OfficeState extends State<Office> {
  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(title: '事業所コード', field: 'code', type: PlutoColumnType.text()),
    PlutoColumn(title: '事業所名', field: 'name', type: PlutoColumnType.text()),
    PlutoColumn(title: 'カナ', field: 'kana', type: PlutoColumnType.text()),
    PlutoColumn(title: '略称', field: 'nickname', type: PlutoColumnType.text()),
  ];

  OfficeState();
  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: true,
        title: UtText.scetionTitle('事業所'),
        body: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.heightConstraints().minHeight;
            return PlutoGrid(
              columns: columns,
              rows: [],
              configuration: const PlutoGridConfiguration(),
            );
          },
        ),
      ),
    );
  }
}
