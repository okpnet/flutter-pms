part of '../ut_sidemenu.dart';

class UtSidemenu {
  //Drawerが有効のとき、body直下にExpandが存在すると例外が発生する。body直下にExpandを置かなければ問題は発生しない。
  static Widget? ofDrawer({
    required BuildContext context,
    UtAccontItem? accountItem,
    List<UtSideItem> sidemenuItems = const [],
  }) {
    final isNarrow = UtLayoutHelper.isNarrow(context);
    return isNarrow
        ? UtDrawer(
            children: sidemenuItems,
            header: accountItem != null
                ? UtAccountHeader(accountItem: accountItem)
                : null,
          )
        : null;
  }

  static Widget? ofExpansion({
    required BuildContext context,
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
