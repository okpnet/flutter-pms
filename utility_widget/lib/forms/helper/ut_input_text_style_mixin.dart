import 'package:utility_widget/styles/export/ut_widget_design.dart';

import '../../styles/helper/ut_mixin_widget_helper.dart';

mixin UtInputTextStyleMixin on Widget {
  static const paddingHeight = 10.0;

  InputBorder primary() {
    return OutlineInputBorder(
      borderRadius: UtMixinWidgetHelper.defaultRadius(),
    );
  }

  EdgeInsets createPadddingInsets() {
    return EdgeInsets.symmetric(horizontal: paddingHeight);
  }
}
