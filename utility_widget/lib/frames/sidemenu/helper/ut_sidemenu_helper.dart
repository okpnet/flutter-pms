part of '../ut_sidemenu.dart';

class UtSidemenuHelper {
  //Drawerが有効のとき、body直下にExpandが存在すると例外が発生する。body直下にExpandを置かなければ問題は発生しない。
  static Widget? ofDrawer({
    Key? key,
    required UtSideItem? selected,
    required ValueChanged<UtSideItem>? onSelect,
    UtAccontItem? accountItem,
    List<UtSideItem> sidemenuItems = const [],
  }) {
    //final isNarrow = UtLayoutHelper.isMobile(context);
    return UtDrawer(
      key: key,
      onSelect: onSelect,
      selected: selected,
      items: sidemenuItems,
      header: accountItem != null
          ? UtAccountHeader(accountItem: accountItem)
          : null,
    );
  }

  static Widget? ofExpansion({
    Key? key,
    required UtSideItem? selected,
    required ValueChanged<UtSideItem>? onSelect,
    UtAccontItem? accountItem,
    Widget? body,
    List<UtSideItem> sidemenuItems = const [],
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UtExpansionMenu(
          key: key,
          selected: selected,
          onSelect: onSelect,
          header: accountItem != null
              ? UtAccountHeader(accountItem: accountItem)
              : null,
          items: sidemenuItems,
        ),
        if (body != null) Expanded(child: body),
      ],
    );
  }
}
