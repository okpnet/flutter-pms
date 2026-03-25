import 'package:flutter/material.dart';
import 'package:pms_utility_widget/standardized_buttons/button.dart';
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
          children: [
            PrimaryButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MiniIndicator()),
                );
              },
              label: Text('プライマリボタン'),
              icon: Icon(Icons.abc_rounded),
            ),
            SecondaryButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MiniIndicator()),
                );
              },
              label: Text('セカンダリボタン'),
              icon: Icon(Icons.abc_rounded),
            ),
            TertiaryButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MiniIndicator()),
                );
              },
              label: Text('ターシャリボタン'),
              icon: Icon(Icons.abc_rounded),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MiniIndicator()),
                );
              },
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
