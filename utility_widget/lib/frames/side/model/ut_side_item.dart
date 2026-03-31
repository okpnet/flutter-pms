part of '../ut_sidemenu.dart';

class UtSideItem {
  final Icon? icon;
  final String label;
  final GestureTapCallback? onTap;
  UtSideItem({this.icon, required this.label, this.onTap});
  NavigationRailDestination createNavigationRailItem() {
    if (icon == null) {
      throw Exception(
        'That needed "NavigationRailDestination $label" and set icon.But icon was null.',
      );
    }
    return NavigationRailDestination(icon: icon!, label: Text(label));
  }

  ListTile createDrawerItem() {
    if (onTap == null) {
      throw Exception(
        'That needed "ListTile $label" and set function.But fuction was null.',
      );
    }
    return ListTile(leading: icon, title: Text(label), onTap: onTap);
  }
}
