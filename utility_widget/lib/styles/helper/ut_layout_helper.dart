import 'package:utility_widget/styles/export/ut_widget_design.dart';

import '../ut_style.dart';

class UtLayoutHelper {
  //https://fastcoding.jp/blog/all/info/designwidth-202509/
  //NavigationRailに切り替える画面幅
  static const double displayWidthBoundary = 767;
  static const double contentsWidthBoundary = 1536;

  // static const double get desktopStyleWidthBoundary => 600;
  static const double bodyBothsidePaddingPercentage = 0.05;
  static const double minBodyBottomPadding = 16;

  // static double bothSidePadding(BuildContext context) {
  //   final bothsidePadding =
  //       MediaQuery.of(context).size.width * bodyBothsidePaddingPercentage;
  //   return bothsidePadding > minBodyBottomPadding
  //       ? minBodyBottomPadding
  //       : bothsidePadding;
  // }

  static bool isMobile(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return UtLayoutHelper.displayWidthBoundary >= width;
  }

  static bool isFullwidthFromWidth(double width) {
    return width >= UtLayoutHelper.contentsWidthBoundary;
  }

  static UtResponsiveSize getResponsiveSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return UtResponsiveSize.fromSize(
      size: size,
      fullWidth: contentsWidthBoundary,
      mobileWidth: displayWidthBoundary,
    );
  }
}
