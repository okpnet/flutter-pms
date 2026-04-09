part of '../ut_expansion_menu.dart';

class UtExpansionMenu extends StatelessWidget with UtSideMixin {
  final UtSideItem? selected;
  final Widget? header;
  final List<UtSideItem> items;
  final void Function(UtSideItem)? onSelect;

  UtExpansionMenu({
    super.key,
    this.selected,
    this.onSelect,
    this.items = const [],
    this.header,
  });

  @override
  UtSideItem? get selectedItem => selected;

  @override
  void Function(UtSideItem)? get onSelectItem => onSelect;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backGroundColor(context),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: menuWidth(context)),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // children: [],
          children: [
            if (header != null) UtLayoutPadding(child: header!),
            ...[
              for (var item in items)
                createBranchMenuItem(item: item, context: context),
            ],
          ],
        ),
      ),
    );
  }
}
