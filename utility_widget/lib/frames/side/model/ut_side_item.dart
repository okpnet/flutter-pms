part of '../ut_sidemenu.dart';

class UtSideItem {
  final Icon? icon;
  final String label;
  final VoidCallback onPress;
  final bool isSelected;
  final List<UtSidemenu>? options;
  UtSideItem({
    this.icon,
    required this.label,
    required this.onPress,
    this.isSelected = false,
    this.options
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

  Widget createExpansion(){
    if(item!=null)
    return ExpansionTile(title: Text(label),leading: icon,children: [],)
  }
  //再帰
  Widget? _createExpansion(List<UtSideItem> arrayResult,UtSideItem? item){
    if(item == null){
      return null;
    }
    final 
    if(item.options!=null){
      for(var _item in item.options){
        _createExpansion(_item);
      }
    }
  }
}
