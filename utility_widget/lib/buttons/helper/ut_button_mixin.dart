import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/extends/ut_mixin_widget_helper.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';

mixin UtButtonMixin on StatelessWidget {
  final double radius = 3;
  final double elevation = 2;
  final double paddingV = 16;
  final double paddingH = 32;
  final double margin = 2;

  EdgeInsets buttonPadding() {
    return EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH);
  }

  ButtonStyle primary(BuildContext context) {
    final background = UtMixinWidgetHelper.bg(context);
    final foreground = UtMixinWidgetHelper.fg(context);
    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: elevation,
      padding: buttonPadding(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  //セカンダリボタンスタイルヘルパー
  ButtonStyle secondary(BuildContext context) {
    final background = UtMixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return OutlinedButton.styleFrom(
      // foregroundColor: background,
      side: BorderSide(color: background),
      padding: EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  //ターシャリ-ボタンスタイルヘルパー
  ButtonStyle tertiary(BuildContext context) {
    //final background = MixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return TextButton.styleFrom(
      // foregroundColor: background,
      padding: EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  //プライマリアイコンボタンスタイルヘルパー
  ButtonStyle primaryIcon(
    BuildContext context, {
    UtButtonSize size = UtButtonSize.small,
  }) {
    final background = UtMixinWidgetHelper.bg(context);
    final foreground = UtMixinWidgetHelper.fg(context);

    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: elevation,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  //セカンダリアイコンボタンスタイルヘルパー
  ButtonStyle secondaryIcon(
    BuildContext context, {
    UtButtonSize size = UtButtonSize.small,
  }) {
    final background = UtMixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return OutlinedButton.styleFrom(
      foregroundColor: background,
      side: BorderSide(color: background),
      elevation: elevation,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  //ターシャリアイコンボタンスタイルヘルパー
  ButtonStyle tertiaryIcon(
    BuildContext context, {
    UtButtonSize size = UtButtonSize.small,
  }) {
    final background = UtMixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return TextButton.styleFrom(
      foregroundColor: background,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
