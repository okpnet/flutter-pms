import '../../styles/constans/ut_space_style.dart';
import '../../styles/layout_model/ut_direction.dart';
import '../constants/ut_button_size_style.dart';

class UtButtonDecoration {
  final UtDirection? paddingDirection;
  final UtSpaceStyle? paddingStyle;
  final bool widthExpand;

  final UtButtonSizeStyle heightStyle;

  const UtButtonDecoration({
    this.paddingDirection,
    this.paddingStyle,
    this.widthExpand = false,
    this.heightStyle = .md,
  });
}
