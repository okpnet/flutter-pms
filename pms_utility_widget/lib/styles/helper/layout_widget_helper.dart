import 'package:pms_utility_widget/styles/export/widget_design.dart';

class LayoutWidgetHelper {
  static Widget paddingField({required Widget child}) {
    return Padding(
      padding: EdgeInsets.all(LayoutConstant.PADDING_ALL),
      child: child,
    );
  }
}
