part of '../ut_sidemenu.dart';

class UtSideItem {
  final Icon? icon;
  final String label;
  UtSideItem({this.icon,required this.label});
  NavigationRailDestination createNavigationRailItem(){
    if(icon ==null){
      throw Exception('That needed "NavigationRailDestination" and set icon.But icon was null.');
    }
    return NavigationRailDestination(icon: icon!,label: Text(label));
  }

  ListTile createDrawerItem(GestureTapCallback onTap){
    return ListTile(leading: icon,title: Text(label),onTap: onTap,);
  }
}
