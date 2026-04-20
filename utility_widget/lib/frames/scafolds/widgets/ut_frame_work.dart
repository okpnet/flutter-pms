part of '../ut_scafold.dart';

class UtFrameWork extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final List<UtSideItem>? sideMenuItems;
  final ValueChanged<UtSideItem>? onSelect;
  final UtAccontItem? accountItem;
  final bool isOverlayIndicator;

  const UtFrameWork({
    super.key,
    this.appBar,
    this.body,
    this.sideMenuItems,
    this.accountItem,
    this.onSelect,
    this.isOverlayIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    UtSideItem? selectItem;
    final isNarrow = UtLayoutHelper.isMobile(context);
    return Stack(
      alignment: AlignmentGeometry.topCenter,
      children: [
        Scaffold(
          appBar: appBar,
          drawer: isNarrow && sideMenuItems != null
              ? UtSidemenuHelper.ofDrawer(
                  selected: selectItem,
                  onSelect: onSelect,
                  accountItem: accountItem,
                  sidemenuItems: sideMenuItems!,
                )
              : null,
          body: isNarrow || sideMenuItems == null
              ? body
              : UtSidemenuHelper.ofExpansion(
                  selected: selectItem,
                  onSelect: onSelect,
                  accountItem: accountItem,
                  sidemenuItems: sideMenuItems!,
                  body: body,
                ),
        ),
        UtOverlayIndicator(show: isOverlayIndicator),
      ],
    );
  }
}
