part of '../ut_sidemenu.dart';

class UtSideItem {
  final Icon? icon;
  final String label;
  final VoidCallback onPress;
  final bool isSelected;
  final List<UtSideItem>? options;
  UtSideItem({
    this.icon,
    required this.label,
    required this.onPress,
    this.isSelected = false,
    this.options,
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

  MenuItemButton createMenubutton() {
    return MenuItemButton(
      onPressed: onPress,
      leadingIcon: icon,
      child: Text(label),
    );
  }

  Widget createExpansion() {
    return _createExpansion(this);
  }

  //再帰
  Widget _createExpansion(UtSideItem item) {
    if (item.options == null || item.options!.isEmpty) {
      return item.createDrawerItem();
    }
    return ExpansionTile(
      title: Text(item.label),
      leading: item.icon,

      children: [for (var value in item.options!) _createExpansion(value)],
    );
  }
}
