part of '../ut_drawer.dart';

class UtDrawer {
  static Widget drawer({required List<Widget> children}) {
    return Drawer(child: ListView(children: children));
  }
}
