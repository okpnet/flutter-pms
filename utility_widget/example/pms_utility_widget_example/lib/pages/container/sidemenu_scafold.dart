import 'dart:convert';
import 'dart:typed_data';

import 'package:utility_widget/frames/side/ut_sidemenu.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget_example/app_design/logout.dart';

import '../../constant/asset.dart';

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
            onPress: () {},
          ),
          UtSideItem(
            label: 'ログアウト',
            icon: Icon(Icons.logout),
            onPress: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Logout(title: title)),
            ),
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
          icon: Icon(Icons.bookmark),
          onPress: () {
            // Do something
          },
        ),
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

class _SidemenuScafold extends State<SidemenuScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: UtSidemenu.ofDrawer(
        context: context,
        selected: selectItem,
        onSelect: (value) => selectItem = value,
        accountItem: buildAccountItem(context, widget.title),
        sidemenuItems: buildSiedemenuItems(),
      ),
      // body: SizedBox.shrink(),
      body: UtSidemenu.ofExpansion(
        context: context,
        selected: selectItem,
        onSelect: (value) => selectItem = value,
        accountItem: buildAccountItem(context, widget.title),
        sidemenuItems: buildSiedemenuItems(),
        body: widget.child,
      ),
    );
  }
}
