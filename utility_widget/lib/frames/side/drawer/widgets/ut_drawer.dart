part of '../ut_drawer.dart';

class UtDrawer extends StatelessWidget with UtSideMixin, UtEdgeinsetMixin {
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
    final scrollController = ScrollController();
    return Drawer(
      backgroundColor: backGroundColor(context),
      child: Scrollbar(
        controller: scrollController,
        child: ListView(
          controller: scrollController,
          children: [
            ?header,
            ...[
              for (var item in items)
                buildBranchMenuItem(item: item, context: context),
            ],
          ],
        ),
      ),
    );
  }
}
