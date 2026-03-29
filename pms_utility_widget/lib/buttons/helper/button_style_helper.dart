part of '../button.dart';

class ButtonStyleHelper with MixinWidgetHelper {
  //プライマリボタンスタイルヘルパー
  static ButtonStyle primary(BuildContext context) {
    final background = MixinWidgetHelper.bg(context);
    final foreground = MixinWidgetHelper.fg(context);
    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: ButtonStyleConstant.ELEVATION,
      padding: EdgeInsets.symmetric(
        vertical: ButtonStyleConstant.PADING_V,
        horizontal: ButtonStyleConstant.PADING_H,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ButtonStyleConstant.RADIUS),
      ),
    );
  }

  //セカンダリボタンスタイルヘルパー
  static ButtonStyle secondary(BuildContext context) {
    final background = MixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return OutlinedButton.styleFrom(
      // foregroundColor: background,
      side: BorderSide(color: background),
      padding: EdgeInsets.symmetric(
        vertical: ButtonStyleConstant.PADING_V,
        horizontal: ButtonStyleConstant.PADING_H,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ButtonStyleConstant.RADIUS),
      ),
    );
  }

  //ターシャリ-ボタンスタイルヘルパー
  static ButtonStyle tertiary(BuildContext context) {
    //final background = MixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return TextButton.styleFrom(
      // foregroundColor: background,
      padding: EdgeInsets.symmetric(
        vertical: ButtonStyleConstant.PADING_V,
        horizontal: ButtonStyleConstant.PADING_H,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ButtonStyleConstant.RADIUS),
      ),
    );
  }

  //プライマリアイコンボタンスタイルヘルパー
  static ButtonStyle primaryIcon(
    BuildContext context, {
    ButtonSize size = ButtonSize.small,
  }) {
    final background = MixinWidgetHelper.bg(context);
    final foreground = MixinWidgetHelper.fg(context);

    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: ButtonStyleConstant.ELEVATION,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ButtonStyleConstant.RADIUS),
      ),
    );
  }

  //セカンダリアイコンボタンスタイルヘルパー
  static ButtonStyle secondaryIcon(
    BuildContext context, {
    ButtonSize size = ButtonSize.small,
  }) {
    final background = MixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return OutlinedButton.styleFrom(
      foregroundColor: background,
      side: BorderSide(color: background),
      elevation: ButtonStyleConstant.ELEVATION,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ButtonStyleConstant.RADIUS),
      ),
    );
  }

  //ターシャリアイコンボタンスタイルヘルパー
  static ButtonStyle tertiaryIcon(
    BuildContext context, {
    ButtonSize size = ButtonSize.small,
  }) {
    final background = MixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return TextButton.styleFrom(
      foregroundColor: background,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ButtonStyleConstant.RADIUS),
      ),
    );
  }
}
