import 'package:utility_widget/styles/constans/ut_priority_style.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/helper/ut_text_helper.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.scetionTitle('設定'),
        body: UtResponsiveRowWrap.grid(maxCellCount: 3, children: [
            
          ],
        ),
      ),
    );
  }
}
