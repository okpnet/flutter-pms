part of '../ut_navigationrail.dart';

class UtNavigationrail {
  static Widget primary({required int selectedIndex,required ValueChanged<int> onDestinationSelected,Widget? leading,List<UtSideItem> items=const [],}){
    return NavigationRail(
      leading: leading,
      extended: true,
      onDestinationSelected: onDestinationSelected,
      destinations: [for(var item in items)item.createNavigationRailItem()], selectedIndex: selectedIndex);
  }
}