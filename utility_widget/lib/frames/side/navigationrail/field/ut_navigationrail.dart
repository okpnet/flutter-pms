part of '../ut_navigationrail.dart';

class UtNavigationrail {
  static Widget of({Widget? leading, List<UtSideItem> items = const []}) {
    final selectedIndex = items.indexWhere((item) => item.isSelected);
    return NavigationRail(
      leading: leading != null
          ? ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: UtSideConstant.headerMaxWidth,
              ),
              child: UtLayoutWidgetHelper.containerWidthExpand(child: leading),
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
