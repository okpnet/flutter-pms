// Project imports:
import '../constans/ut_style_default_constant.dart';
import '../export/ut_widget_design.dart';
import '../ut_style.dart';

class UtLayoutHelper {
  // static const double get desktopStyleWidthBoundary => 600;
  // static const double bodyBothsidePaddingPercentage = 0.05;
  // static const double minBodyBottomPadding = 16;

  // static double bothSidePadding(BuildContext context) {
  //   final bothsidePadding =
  //       MediaQuery.of(context).size.width * bodyBothsidePaddingPercentage;
  //   return bothsidePadding > minBodyBottomPadding
  //       ? minBodyBottomPadding
  //       : bothsidePadding;
  // }
  ///スマホ幅のときTrue
  static bool isMobile(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return UtStyleDefaultConstant.displayWidthBoundary >= width;
  }

  ///幅が広いときTrue[contentsWidthBoundary]
  static bool isFullwidthFromWidth(double width) {
    return width >= UtStyleDefaultConstant.contentsWidthBoundary;
  }

  ///contextの幅、高さ、スマホ幅か幅が広いかをまとめたモデル[UtResponsiveSize]を返す
  static UtResponsiveSize getResponsiveSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return UtResponsiveSize.fromSize(
      size: size,
      fullWidth: UtStyleDefaultConstant.contentsWidthBoundary,
      mobileWidth: UtStyleDefaultConstant.displayWidthBoundary,
    );
  }
}
