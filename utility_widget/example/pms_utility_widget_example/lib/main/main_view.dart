import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/frames/scaffold/ut_scaffold.dart';
import 'package:utility_widget/frames/side/ut_sidemenu.dart';
import 'package:utility_widget_example/buttons/buttons_view.dart';
import 'package:utility_widget_example/constant/asset.dart';
import 'package:utility_widget_example/fields/fields.dart';
import 'package:utility_widget_example/loading_indicators/mini_indicator.dart';

class MainView extends StatelessWidget {
  final String title;
  Uint8List image = base64Decode(Asset.image);
  MainView({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return UtScaffold.hasSidemenu(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      accountItem: UtAccontItem(
        account: 'test',
        iconImageBytes: image,
        settingOnPress: () {},
      ),
      sidemenuItems: [
        UtSideItem(
          label: 'Item 1',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 2',
          icon: Icon(Icons.bookmark),
          onPress: () {
            // Do something
          },
        ),
      ],
      body: SizedBox.shrink(),
      // body: Expanded(
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         UtButton.primaryWithIcon(
      //           context: context,
      //           onPressed: () {
      //             Navigator.of(context).push(
      //               MaterialPageRoute(builder: (context) => ButtonsView()),
      //             );
      //           },
      //           label: Text('ボタン'),
      //           icon: Icon(Icons.abc_rounded),
      //         ),
      //         UtButton.primaryWithIcon(
      //           context: context,
      //           onPressed: () {
      //             Navigator.of(
      //               context,
      //             ).push(MaterialPageRoute(builder: (context) => Fields()));
      //           },
      //           label: Text('テキストインプット'),
      //           icon: Icon(Icons.abc_rounded),
      //         ),
      //         OutlinedButton.icon(
      //           label: Text('ミニインジケータ表示'),
      //           icon: Icon(Icons.abc_rounded),
      //           onPressed: () {
      //             Navigator.of(context).push(
      //               MaterialPageRoute(builder: (context) => MiniIndicator()),
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
