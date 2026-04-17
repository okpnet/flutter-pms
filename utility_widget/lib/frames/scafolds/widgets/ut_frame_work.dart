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
    return Stack(
      alignment: AlignmentGeometry.topCenter,
      children: [
        Scaffold(
          appBar: appBar,
          drawer: sideMenuItems != null
              ? UtSidemenuHelper.ofDrawer(
                  context: context,
                  selected: selectItem,
                  onSelect: onSelect,
                  accountItem: accountItem,
                  sidemenuItems: sideMenuItems!,
                )
              : null,
          body: sideMenuItems == null
              ? body
              : UtSidemenuHelper.ofExpansion(
                  context: context,
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
