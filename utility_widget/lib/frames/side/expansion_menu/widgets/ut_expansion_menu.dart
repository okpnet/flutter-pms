part of '../ut_expansion_menu.dart';

class UtExpansionMenu extends StatelessWidget with UtSideMixin {
  final Widget? header;
  final List<UtSideItem> items;
  UtExpansionMenu({super.key, this.items = const [], this.header});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // children: [],
      children: [
        if (header != null)
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: menuWidth(context)),
            child: header != null ? UtLayoutPadding(child: header!) : null,
          ),
        ...[for (var item in items) item.createExpansion()],
      ],
    );
  }
}
