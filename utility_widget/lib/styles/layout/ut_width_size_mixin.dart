import 'package:utility_widget/styles/export/ut_widget_design.dart';

enum UtWidthSizeType {
  s(200),
  sm(320),
  m(400),
  ml(560),
  l(0);

  final double width;

  const UtWidthSizeType(this.width);
}

mixin UtWidthSizeMixin on StatelessWidget {
  BoxConstraints boxConstraintsFromWidthSizeType(UtWidthSizeType widthType) {
    return widthType == UtWidthSizeType.l
        ? const BoxConstraints()
        : BoxConstraints(maxWidth: widthType.width);
  }
}
