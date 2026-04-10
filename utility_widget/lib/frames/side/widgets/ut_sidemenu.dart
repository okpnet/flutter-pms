part of '../ut_sidemenu.dart';

class UtSidemenu {
  //Drawerが有効のとき、body直下にExpandが存在すると例外が発生する。body直下にExpandを置かなければ問題は発生しない。
  static Widget? ofDrawer({
    Key? key,
    required BuildContext context,
    required UtSideItem? selected,
    required ValueChanged<UtSideItem>? onSelect,
    UtAccontItem? accountItem,
    List<UtSideItem> sidemenuItems = const [],
  }) {
    final isNarrow = UtLayoutHelper.isNarrow(context);
    return isNarrow
        ? UtDrawer(
            key: key,
            onSelect: onSelect,
            selected: selected,
            items: sidemenuItems,
            header: accountItem != null
                ? UtAccountHeader(accountItem: accountItem)
                : null,
          )
        : null;
  }

  static Widget? ofExpansion({
    Key? key,
    required BuildContext context,
    required UtSideItem? selected,
    required ValueChanged<UtSideItem>? onSelect,
    UtAccontItem? accountItem,
    Widget? body,
    List<UtSideItem> sidemenuItems = const [],
  }) {
    final isNarrow = UtLayoutHelper.isNarrow(context);
    final sizeBoxWidht = UtLayoutHelper.bothSidePadding(context);
    return !isNarrow
        ? Row(
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
              if (body != null) SizedBox(width: sizeBoxWidht),
              if (body != null) Expanded(child: body),
              if (body != null) SizedBox(width: sizeBoxWidht),
            ],
          )
        : body;
  }
}
