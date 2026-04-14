// Project imports:

// Project imports:
import '../../frames/body/ut_body.dart';
import '../export/ut_widget_design.dart';

class UtTextHelper {
  static double fontScaleOf({
    required BuildContext context,
    required double scale,
  }) {
    final base = Theme.of(context).textTheme.bodyMedium!.fontSize!;
    return base * scale;
  }

  static TextStyle buildSubtitleStyle(BuildContext context) {
    return TextStyle(
      fontSize: fontScaleOf(
        context: context,
        scale: UtBodyConstant.titleFontSizeScale,
      ),
    );
  }
}
