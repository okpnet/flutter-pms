// Project imports:
import 'package:utility_widget/styles/constans/ut_media_breakpoint.dart';

import '../../core/ut_widget_design.dart';

class UtLayoutHelper {
  static const UtMediaBreakpoint breakpoint = .smallTablet;

  ///幅が狭いときTrue[breakpoint]
  static bool isNarrow(BuildContext context) {
    final bp = getScreenBreakpointFrom(context);
    return bp.isVisibleAt(breakpoint);
  }

  ///幅が広いときTrue[breakpoint]
  static bool isFullwidthFromWidth(double width) {
    final bp = UtMediaBreakpoint.of(width);
    return !bp.isVisibleAt(breakpoint);
  }

  static UtMediaBreakpoint getScreenBreakpointFrom(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return UtMediaBreakpoint.of(width);
  }
}
