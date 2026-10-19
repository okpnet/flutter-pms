part of '../ut_expansion_menu.dart';

class UtExpansionMenu extends StatelessWidget with UtSideMixin {
  final UtSideItem? selected;
  final Widget? header;
  final List<UtSideItem> items;
  final ValueChanged<UtSideItem>? onSelect;

  UtExpansionMenu({
    super.key,
    required this.selected,
    required this.onSelect,
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

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // children: [],
            children: [
              if (header != null)
                UtLayoutCrevice.margin(
                  direction: UtDirection.vertical,
                  child: header!,
                ),
              // ?header,
              ...[
                for (var item in items)
                  buildBranchMenuItem(item: item, context: context),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
