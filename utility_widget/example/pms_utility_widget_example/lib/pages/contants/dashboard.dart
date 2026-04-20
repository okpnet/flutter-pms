import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/buttons/buttons_view.dart';
import 'package:utility_widget_example/fields/fields.dart';
import 'package:utility_widget_example/loading_indicators/mini_indicator.dart';
import 'package:utility_widget_example/pages/container/app_bar_mixin.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class Dashboard extends StatelessWidget with AppBarMixin {
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.subTitle('ダッシュボード'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UtButton.primaryWithIcon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ButtonsView()),
                  );
                },
                label: 'ボタン',
                icon: Icon(Icons.abc_rounded),
              ),
              UtButton.primaryWithIcon(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Fields()));
                },
                label: 'テキストインプット',
                icon: Icon(Icons.abc_rounded),
              ),
              UtButton.primaryWithIcon(
                label: 'ミニインジケータ表示',
                icon: Icon(Icons.abc_rounded),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MiniIndicator()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
