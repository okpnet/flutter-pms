import 'package:flutter/material.dart';
import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget_example/buttons/buttons_view.dart';
import 'package:utility_widget_example/fields/fields.dart';
import 'package:utility_widget_example/loading_indicators/mini_indicator.dart';

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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                children: [
                  SizedBox(width: 50, height: 50),
                  Text('test'),
                  UtIconButton.tertiary(
                    context: context,
                    icon: Icon(Icons.settings),
                    size: UtButtonSize.mediam,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Do something
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Do something
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            selectedIndex: 0,
            // onDestinationSelected: (value) => ,
            leading: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                // アクションを実行
              },
            ),
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.favorite),
                label: Text('Favorites'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark),
                label: Text('Bookmarks'),
              ),
              // 他のNavigationRailDestinationを追加...
            ],
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UtButton.primaryWithIcon(
                    context: context,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ButtonsView()),
                      );
                    },
                    label: Text('ボタン'),
                    icon: Icon(Icons.abc_rounded),
                  ),
                  UtButton.primaryWithIcon(
                    context: context,
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
                        MaterialPageRoute(
                          builder: (context) => MiniIndicator(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
