// Project imports:

import '../../core/ut_widget_design.dart';
import '../../styles/helper/ut_mixin_widget_helper.dart';

mixin UtInputTextStyleMixin on Widget {
  // static const paddingHeight = 10.0;
  static const defaultInputFieldHight = 48;

  InputBorder primary() {
    return OutlineInputBorder(
      borderRadius: UtMixinWidgetHelper.defaultRadius(),
    );
  }

  // EdgeInsets createPadddingInsets() {
  //   return EdgeInsets.symmetric(horizontal: 10);
  // }
}
