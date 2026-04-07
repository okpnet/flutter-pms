// Project imports:
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/helper/ut_direction.dart';

class UtLayoutWidgetHelper {
  static Widget paddingField({required Widget child}) {
    return Padding(
      padding: EdgeInsets.all(UtLayoutConstant.PADDING_ALL),
      child: child,
    );
  }

  static Widget containerAllPading({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(UtLayoutConstant.PADDING_ALL),
      child: child,
    );
  }

  static Widget containerAllMargin({required Widget child}) {
    return Container(
      margin: EdgeInsets.all(UtLayoutConstant.DEFAULT_MARGIN),
      child: child,
    );
  }

  static Widget container({
    required Widget child,
    UtDirection direction = UtDirection.all,
  }) {
    return Container(
      margin: EdgeInsets.only(
        bottom: direction.isBottom() ? UtLayoutConstant.DEFAULT_MARGIN : 0,
        left: direction.isLeft() ? UtLayoutConstant.DEFAULT_MARGIN : 0,
        right: direction.isRight() ? UtLayoutConstant.DEFAULT_MARGIN : 0,
        top: direction.isTop() ? UtLayoutConstant.DEFAULT_MARGIN : 0,
      ),
      child: child,
    );
  }
}
