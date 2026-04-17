import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/helper/ut_text_helper.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class Announce extends StatelessWidget {
  const Announce({super.key});
  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        title: Text('お知らせ', style: UtTextHelper.buildSubtitleStyle(context)),
        body: UtResponsiveRowWrap.grid(children: []),
      ),
    );
  }
}
