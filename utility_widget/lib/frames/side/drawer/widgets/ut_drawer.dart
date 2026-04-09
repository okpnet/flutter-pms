part of '../ut_drawer.dart';

class UtDrawer extends StatelessWidget with UtSideMixin {
  final Widget? header;
  final List<UtSideItem> children;
  UtDrawer({super.key, this.header, this.children = const []});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backGroundColor(context),
      child: ListView(
        children: [
          if (header != null) DrawerHeader(child: header),
          ...[
            for (var item in children)
              createBranchMenuItem(item: item, context: context),
          ],
        ],
      ),
    );
  }
}
