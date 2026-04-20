import 'package:flutter/material.dart';
import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/styles/constans/ut_priority_style.dart';
import 'package:utility_widget/styles/helper/ut_text_helper.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/buttons/buttons_view.dart';
import 'package:utility_widget_example/fields/fields.dart';
import 'package:utility_widget_example/loading_indicators/mini_indicator.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class MainView extends StatelessWidget {
  final String title;

  const MainView({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.subTitle('body'),
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
