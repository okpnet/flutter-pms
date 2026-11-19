import 'package:flutter/widgets.dart';
import 'package:view_responsiveness/constants/media_break_point.dart';

/// 画面の内容の幅(両端の圧迫感を減らし、視野に収める)。[ScreenScaffold] が、見出しと本体に適用する。
///
/// スマートフォンの幅は 95%、それ以外は 90%(上限 [maxWidth])で、中央に置く。
abstract final class ContentWidth {
  /// 内容の幅の上限。
  static const double maxWidth = 1600;

  /// スマートフォンの幅のときの割合。
  static const double mobileFactor = 0.95;

  /// それ以外のときの割合。
  static const double factor = 0.9;

  /// 利用できる幅 [available] に対する内容の幅。[screenWidth] は画面の幅(スマートフォンかの判定)。
  static double of(double available, {required double screenWidth}) {
    final mobile = MediaBreakPoint.of(screenWidth) == MediaBreakPoint.mobile;
    final w = available * (mobile ? mobileFactor : factor);
    return w > maxWidth ? maxWidth : w;
  }

  /// [context] の画面の幅で、[available] に対する内容の幅。
  static double ofContext(BuildContext context, double available) =>
      of(available, screenWidth: MediaQuery.sizeOf(context).width);
}
