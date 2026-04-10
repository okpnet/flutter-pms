import 'package:utility_widget/styles/constans/ut_width_size_type.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';

mixin UtWidthSizeMixin on StatelessWidget {
  BoxConstraints boxConstraintsFromWidthSizeType(UtWidthSizeType widthType) {
    return widthType == UtWidthSizeType.l
        ? const BoxConstraints()
        : BoxConstraints(maxWidth: widthType.width);
  }
}
