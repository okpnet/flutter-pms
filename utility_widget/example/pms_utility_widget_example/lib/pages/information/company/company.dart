import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/layout_model/ut_direction.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:utility_widget/decorations/ut_decoration.dart';

class Company extends StatelessWidget {
  const Company({super.key});

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.scetionTitle('会社情報'),
        body: Column(
          crossAxisAlignment: .stretch,
          children: [
            Table(
              columnWidths: const <int, TableColumnWidth>{
                0: IntrinsicColumnWidth(),
                1: IntrinsicColumnWidth(),
              },
              children: [
                TableRow(
                  children: [UtText.label('会社名'), UtText.subTitle('XX`会社')],
                ),
              ],
            ),
            //UtInfoTile.percent(label: 'テスト', value: 5.01, degit: 2),
          ],
        ),
      ),
    );
  }
}
