part of '../ut_drawer.dart';

class UtDrawer extends StatelessWidget with UtSideMixin {
  final UtSideItem? selected;
  final Widget? header;
  final List<UtSideItem> items;
  final ValueChanged<UtSideItem>? onSelect;

  UtDrawer({
    super.key,
    required this.selected,
    required this.onSelect,
    this.items = const [],
    this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backGroundColor(context),
      child: ListView(
        children: [
          if (header != null) DrawerHeader(child: header),
          ...[
            for (var item in items)
              createBranchMenuItem(item: item, context: context),
          ],
        ],
      ),
    );
  }
}
