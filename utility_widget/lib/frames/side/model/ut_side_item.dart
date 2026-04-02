part of '../ut_sidemenu.dart';

class UtSideItem {
  final Icon? icon;
  final String label;
  final VoidCallback onPress;
  final bool isSelected;
  UtSideItem({
    this.icon,
    required this.label,
    required this.onPress,
    this.isSelected = false,
  });
  NavigationRailDestination createNavigationRailItem() {
    if (icon == null) {
      throw Exception(
        'That needed "NavigationRailDestination $label" and set icon.But icon was null.',
      );
    }
    return NavigationRailDestination(icon: icon!, label: Text(label));
  }

  ListTile createDrawerItem() {
    return ListTile(leading: icon, title: Text(label), onTap: onPress);
  }
}
