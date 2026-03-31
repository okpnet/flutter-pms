part of '../ut_drawer.dart';

class UtDrawer {
  static Widget drawer({
    DrawerHeader? header,
    List<UtSideItem> children = const [],
  }) {
    return Drawer(
      child: ListView(
        children: [
          ...[for (var item in children) item.createDrawerItem()],
          ?header,
        ],
      ),
    );
  }
}
