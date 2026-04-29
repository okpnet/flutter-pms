import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class Announce extends StatelessWidget {
  const Announce({super.key});
  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        title: UtText.scetionTitle('お知らせ'),
        body: UtText.scetionTitle('お知らせ'),
      ),
    );
  }
}
