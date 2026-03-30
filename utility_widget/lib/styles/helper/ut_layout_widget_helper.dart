import 'package:utility_widget/styles/export/ut_widget_design.dart';

class UtLayoutWidgetHelper {
  static Widget paddingField({required Widget child}) {
    return Padding(
      padding: EdgeInsets.all(UtLayoutConstant.PADDING_ALL),
      child: child,
    );
  }
}
