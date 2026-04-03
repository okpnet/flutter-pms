part of '../ut_rail.dart';

class UtRail {
  static Widget of({
    required BuildContext context,
    Widget? leading,
    List<UtSideItem> items = const [],
  }) {
    final selectedIndex = items.indexWhere((item) => item.isSelected);
    final width =
        MediaQuery.of(context).size.width *
        UtSideConstant.headerWidthPercentage; //メニュー幅
    final menuWidth = width > UtSideConstant.headerMaxWidth
        ? width
        : UtSideConstant.headerMaxWidth;
    return NavigationRail(
      backgroundColor: Colors.yellow,
      scrollable: true,
      // leading: leading != null
      //     ? IntrinsicWidth(
      //         child: UtLayoutWidgetHelper.containerAllPading(child: leading),
      //       )
      //     : null,
      leading: leading != null
          ? ConstrainedBox(
              constraints: BoxConstraints(maxWidth: menuWidth),
              child: UtLayoutWidgetHelper.containerAllPading(child: leading),
            )
          : null,
      extended: true,
      onDestinationSelected: (index) {
        if (0 > index || index >= items.length) {
          debugPrint(
            'Index "$index" is outside of range 0 to ${items.length - 1}',
          );
          return;
        }
        if (items[index].onPress case Function() func) func();
      },
      destinations: [for (var item in items) item.createNavigationRailItem()],
      selectedIndex: selectedIndex == -1 ? null : selectedIndex,
    );
  }
}
