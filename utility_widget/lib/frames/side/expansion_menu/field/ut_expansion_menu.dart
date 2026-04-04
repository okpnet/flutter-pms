part of '../ut_expansion_menu.dart';

class UtExpansionMenu {
  static Widget of({
    required BuildContext context,
    Widget? leading,
    List<UtSideItem> items = const [],
  }) {
    final width =
        MediaQuery.of(context).size.width *
        UtSideConstant.headerWidthPercentage; //メニュー幅
    final menuWidth = width > UtSideConstant.headerMaxWidth
        ? width
        : UtSideConstant.headerMaxWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        leading != null
            ? ConstrainedBox(
                constraints: BoxConstraints(maxWidth: menuWidth),
                child: UtLayoutWidgetHelper.containerAllPading(child: leading),
              )
            : SizedBox.shrink(),
        for (var item in items) item.createNavigationRailItem(),
      ],
    );
  }
}
