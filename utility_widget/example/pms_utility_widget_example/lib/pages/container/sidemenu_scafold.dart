import 'dart:convert';
import 'dart:typed_data';

import 'package:utility_widget/frames/sidemenu/ut_sidemenu.dart';
import 'package:utility_widget/frames/scafolds/ut_scafold.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget_example/pages/account/announce.dart';
import 'package:utility_widget_example/pages/account/logout.dart';
import 'package:utility_widget_example/pages/account/settings.dart';

import '../../constant/asset.dart';
import 'app_bar_mixin.dart';

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

class _SidemenuScafold extends State<SidemenuScafold> with AppBarMixin {
  @override
  Widget build(BuildContext context) {
    return UtFrameWork(
      appBar: buildAppbar(context),
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
