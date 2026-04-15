import 'dart:convert';
import 'dart:typed_data';

import 'package:utility_widget/frames/side/ut_sidemenu.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget_example/app_design/logout.dart';

import '../../constant/asset.dart';
import 'app_bar_mixin.dart';

UtAccontItem? accontItem;
List<UtSideItem>? sidemenuItems;
UtSideItem? selectItem;

Uint8List image = base64Decode(Asset.image);
UtAccontItem buildAccountItem(BuildContext context, String title) {
  accontItem =
      accontItem ??
      UtAccontItem(
        // account: 'test test test account',
        account: 'James and Williams',
        iconImageBytes: image,
        options: [
          UtSideItem(
            label: '設定',
            icon: Icon(Icons.settings_outlined),
            onPress: () {
              selectItem = null;
            },
          ),
          UtSideItem(
            label: 'ログアウト',
            icon: Icon(Icons.logout),
            onPress: () {
              selectItem = null;
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Logout(title: title)),
                (_) => false,
              );
            },
          ),
        ],
      );
  return accontItem!;
}

List<UtSideItem> buildSiedemenuItems() {
  sidemenuItems =
      sidemenuItems ??
      [
        UtSideItem(
          label: 'Item 1',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 2',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 3',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 4',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 5',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 6',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 7',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 8',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 9',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 10',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 11',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 12',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 13',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'has child',
          icon: Icon(Icons.bookmark),
          onPress: () {
            // Do something
          },
          options: [
            UtSideItem(label: 'child1', onPress: () {}),
            UtSideItem(label: 'child1', onPress: () {}),
          ],
        ),
        UtSideItem(label: 'item2', onPress: () {}),
      ];
  return sidemenuItems!;
}

class SidemenuScafold extends StatefulWidget {
  final Widget child;
  final String title;
  const SidemenuScafold({super.key, required this.title, required this.child});
  @override
  State<StatefulWidget> createState() => _SidemenuScafold();
}

class _SidemenuScafold extends State<SidemenuScafold> with AppBarMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      drawer: UtSidemenuHelper.ofDrawer(
        context: context,
        selected: selectItem,
        onSelect: (value) => setState(() {
          selectItem = value;
        }),
        accountItem: buildAccountItem(context, widget.title),
        sidemenuItems: buildSiedemenuItems(),
      ),
      // body: SizedBox.shrink(),
      body: UtSidemenuHelper.ofExpansion(
        context: context,
        selected: selectItem,
        onSelect: (value) => setState(() {
          selectItem = value;
        }),
        accountItem: buildAccountItem(context, widget.title),
        sidemenuItems: buildSiedemenuItems(),
        body: widget.child,
      ),
    );
  }
}
