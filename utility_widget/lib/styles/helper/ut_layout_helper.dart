import 'package:utility_widget/styles/export/ut_widget_design.dart';

class UtLayoutHelper {
  //NavigationRailに切り替える画面幅
  static const double desktopStyleWidthBoundary = 600;
  // static const double get desktopStyleWidthBoundary => 600;
  static const double bodyBothsidePaddingPercentage = 0.05;
  static const double minBodyBottomPadding = 16;

  static double bothSidePadding(BuildContext context) {
    final bothsidePadding =
        MediaQuery.of(context).size.width * bodyBothsidePaddingPercentage;
    return bothsidePadding > minBodyBottomPadding
        ? minBodyBottomPadding
        : bothsidePadding;
  }

  static bool isNarrow(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return UtLayoutHelper.desktopStyleWidthBoundary >= width;
  }
}
