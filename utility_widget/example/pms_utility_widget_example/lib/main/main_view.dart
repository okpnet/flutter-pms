import 'package:flutter/material.dart';
import 'package:utility_widget/buttons/ut_button.dart';
import 'package:pms_utility_widget_example/buttons/buttons_view.dart';
import 'package:pms_utility_widget_example/fields/fields.dart';
import 'package:pms_utility_widget_example/loading_indicators/mini_indicator.dart';

class MainView extends StatelessWidget {
  final String title;
  const MainView({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UtButton.primaryWithIcon(
              context,
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => ButtonsView()));
              },
              label: Text('ボタン'),
              icon: Icon(Icons.abc_rounded),
            ),
            UtButton.primaryWithIcon(
              context,
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Fields()));
              },
              label: Text('テキストインプット'),
              icon: Icon(Icons.abc_rounded),
            ),
            OutlinedButton.icon(
              label: Text('ミニインジケータ表示'),
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
    );
  }
}
