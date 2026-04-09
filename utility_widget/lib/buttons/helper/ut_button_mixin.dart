import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/styles/helper/ut_mixin_widget_helper.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';

mixin UtButtonMixin on Widget {
  final double elevation = 2;
  final double paddingV = 16;
  final double paddingH = 32;

  EdgeInsets buttonPadding() {
    return EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH);
  }

  Color bg(BuildContext context) => Theme.of(context).colorScheme.primary;

  Color fg(BuildContext context) => Theme.of(context).colorScheme.onPrimary;

  ButtonStyle primary(BuildContext context) {
    final background = bg(context);
    final foreground = fg(context);
    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: elevation,
      padding: buttonPadding(),
      shape: RoundedRectangleBorder(
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
      ),
    );
  }

  //セカンダリボタンスタイルヘルパー
  ButtonStyle secondary(BuildContext context) {
    final background = bg(context);
    // final foreground = fg(context);

    return OutlinedButton.styleFrom(
      // foregroundColor: background,
      side: BorderSide(color: background),
      padding: EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
      shape: RoundedRectangleBorder(
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
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
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
      ),
    );
  }

  //プライマリアイコンボタンスタイルヘルパー
  ButtonStyle primaryIcon(
    BuildContext context, {
    UtButtonSize size = UtButtonSize.small,
  }) {
    final background = bg(context);
    final foreground = fg(context);

    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: elevation,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
      ),
    );
  }

  //セカンダリアイコンボタンスタイルヘルパー
  ButtonStyle secondaryIcon(
    BuildContext context, {
    UtButtonSize size = UtButtonSize.small,
  }) {
    final background = bg(context);
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
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
      ),
    );
  }

  //ターシャリアイコンボタンスタイルヘルパー
  ButtonStyle tertiaryIcon(
    BuildContext context, {
    UtButtonSize size = UtButtonSize.small,
  }) {
    final background = bg(context);
    // final foreground = fg(context);

    return TextButton.styleFrom(
      foregroundColor: background,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
      ),
    );
  }
}
