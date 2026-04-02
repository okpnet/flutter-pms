part of '../ut_drawer.dart';

class UtDrawer {
  static Widget of({Widget? header, List<UtSideItem> children = const []}) {
    return Drawer(
      child: ListView(
        children: [
          if (header != null) DrawerHeader(child: header),
          ...[for (var item in children) item.createDrawerItem()],
        ],
      ),
    );
  }
}
