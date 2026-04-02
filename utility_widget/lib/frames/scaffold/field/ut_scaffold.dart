part of '../ut_scaffold.dart';

class UtScaffold {
  static Widget hasSidemenu({
    PreferredSizeWidget? appBar,
    required Widget body,
    UtAccontItem? accountItem,
    List<UtSideItem> sidemenuItems = const [],
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // ignore: no_leading_underscores_for_local_identifiers
        final _width = constraints.maxWidth;
        // ignore: no_leading_underscores_for_local_identifiers
        final _isRail = _width >= UtScaffoldConstant.navigationRailChangeWidth;
        final header = accountItem != null
            ? UtAccountHeader.of(context: context, accountItem: accountItem)
            : null;
        return _isRail
            ? Scaffold(
                appBar: appBar,
                body: Row(
                  children: [
                    UtNavigationrail.of(items: sidemenuItems, leading: header),
                    Expanded(child: body),
                  ],
                ),
              )
            : Scaffold(
                appBar: appBar,
                drawer: UtDrawer.of(children: sidemenuItems, header: header),
                body: body,
              );
      },
    );
  }
}
