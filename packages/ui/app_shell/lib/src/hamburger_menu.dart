import 'package:flutter/material.dart';

import 'menu_model.dart';
import 'side_bar.dart';

/// ハンバーガーメニュー(モバイルの Drawer)。サイドバーと同じメニューを共有する。
/// 項目を選ぶと閉じる。
class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({super.key, required this.menu, this.header});

  final AppMenu menu;
  final Widget? header;

  @override
  Widget build(BuildContext context) {
    AppMenuItem close(AppMenuItem i) => AppMenuItem(
      id: i.id,
      label: i.label,
      icon: i.icon,
      selected: i.selected,
      onSelected: () {
        Navigator.of(context).pop();
        i.onSelected();
      },
    );
    final shared = AppMenu(
      topItems: [for (final i in menu.topItems) close(i)],
      groups: [
        for (final g in menu.groups)
          AppMenuGroup(
            id: g.id,
            label: g.label,
            icon: g.icon,
            items: [for (final i in g.items) close(i)],
          ),
      ],
    );
    return Drawer(
      child: SafeArea(
        child: SideBar(menu: shared, header: header),
      ),
    );
  }
}
