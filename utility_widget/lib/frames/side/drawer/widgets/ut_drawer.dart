part of '../ut_drawer.dart';

class UtDrawer extends StatelessWidget {
  final Widget? header;
  final List<UtSideItem> children;
  const UtDrawer({super.key, this.header, this.children = const []});

  @override
  Widget build(BuildContext context) {
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
