import 'dart:convert';
import 'dart:typed_data';

import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget/frames/sidemenu/ut_sidemenu.dart';
import 'package:utility_widget_example/pages/account/announce.dart';
import 'package:utility_widget_example/pages/account/logout.dart';
import 'package:utility_widget_example/pages/account/settings.dart';
import 'package:utility_widget_example/pages/information/company/company.dart';
import '../../constant/asset.dart';

part 'sidmenu_values.dart';

class SidemenuScafold extends StatefulWidget {
  final Widget child;
  final bool isReturned;
  const SidemenuScafold({
    super.key,
    required this.isReturned,
    required this.child,
  });
  @override
  State<StatefulWidget> createState() => _SidemenuScafold();
}

class _SidemenuScafold extends State<SidemenuScafold> {
  final String title = 'アプリケーションタイトル';
  @override
  Widget build(BuildContext context) {
    return UtFrameWork(
      appBarTitle: Text(title),
      accountItem: buildAccountItem(context),
      onSelect: (value) => setState(() {
        selectItem = value;
      }),
      sideMenuItems: widget.isReturned
          ? buildReturnSiedemenuItems(context)
          : buildSiedemenuItems(context),
      body: widget.child,
    );
  }
}
