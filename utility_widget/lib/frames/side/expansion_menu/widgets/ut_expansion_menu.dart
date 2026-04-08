part of '../ut_expansion_menu.dart';

class UtExpansionMenu extends StatelessWidget
    with UtSideMixin, UtThemeColorMixin {
  final Widget? header;
  final List<UtSideItem> items;
  UtExpansionMenu({super.key, this.items = const [], this.header});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: themeColors(context).secondaryContainer,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: menuWidth(context)),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // children: [],
          children: [
            if (header != null) UtLayoutPadding(child: header!),
            ...[for (var item in items) item.createExpansion()],
          ],
        ),
      ),
    );
  }
}
