part of '../ut_sidemenu.dart';

class UtSidemenu {
  //Drawerが必要な狭い幅のときTure
  static bool isDrawer(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return UtLayoutConstant.desktopStyleWidthBoundary >= width;
  }

  //NavigationRailが必要な広い幅のときTrue
  static bool isRail(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= UtLayoutConstant.desktopStyleWidthBoundary;
  }

  //Drawerが有効のとき、body直下にExpandが存在すると例外が発生する。body直下にExpandを置かなければ問題は発生しない。
  static Widget? drawer({
    required BuildContext context,
    UtAccontItem? accountItem,
    List<UtSideItem> sidemenuItems = const [],
  }) {
    final isDrawer = UtSidemenu.isDrawer(context);
    return isDrawer
        ? UtDrawer.of(
            children: sidemenuItems,
            header: accountItem != null
                ? UtAccountHeader.ofDrawer(
                    context: context,
                    accountItem: accountItem,
                  )
                : null,
          )
        : null;
  }

  static Widget? rail({
    required BuildContext context,
    UtAccontItem? accountItem,
    Widget? body,
    List<UtSideItem> sidemenuItems = const [],
  }) {
    final isRail = UtSidemenu.isRail(context);
    final bothsidePadding =
        MediaQuery.of(context).size.width *
        UtSideConstant.bodyBothsidePaddingPercentage;
    final sizeBoxWidht = bothsidePadding > UtSideConstant.minBodyBottomPadding
        ? UtSideConstant.minBodyBottomPadding
        : bothsidePadding;
    return isRail
        ? Row(
            children: [
              UtRail.of(
                context: context,
                items: sidemenuItems,
                leading: accountItem != null
                    ? UtAccountHeader.ofRail(
                        context: context,
                        accountItem: accountItem,
                      )
                    : null,
              ),
              if (body != null) SizedBox(width: sizeBoxWidht),
              if (body != null) Expanded(child: body),
              if (body != null) SizedBox(width: sizeBoxWidht),
            ],
          )
        : body;
  }
}
