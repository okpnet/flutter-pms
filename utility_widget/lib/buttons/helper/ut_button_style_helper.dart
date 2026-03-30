part of '../ut_button.dart';

class UtButtonStyleHelper with UtMixinWidgetHelper {
  //プライマリボタンスタイルヘルパー
  static ButtonStyle primary(BuildContext context) {
    final background = UtMixinWidgetHelper.bg(context);
    final foreground = UtMixinWidgetHelper.fg(context);
    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: UtButtonStyleConstant.ELEVATION,
      padding: EdgeInsets.symmetric(
        vertical: UtButtonStyleConstant.PADING_V,
        horizontal: UtButtonStyleConstant.PADING_H,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UtButtonStyleConstant.RADIUS),
      ),
    );
  }

  //セカンダリボタンスタイルヘルパー
  static ButtonStyle secondary(BuildContext context) {
    final background = UtMixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return OutlinedButton.styleFrom(
      // foregroundColor: background,
      side: BorderSide(color: background),
      padding: EdgeInsets.symmetric(
        vertical: UtButtonStyleConstant.PADING_V,
        horizontal: UtButtonStyleConstant.PADING_H,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UtButtonStyleConstant.RADIUS),
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
        vertical: UtButtonStyleConstant.PADING_V,
        horizontal: UtButtonStyleConstant.PADING_H,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UtButtonStyleConstant.RADIUS),
      ),
    );
  }

  //プライマリアイコンボタンスタイルヘルパー
  static ButtonStyle primaryIcon(
    BuildContext context, {
    UtButtonSize size = UtButtonSize.small,
  }) {
    final background = UtMixinWidgetHelper.bg(context);
    final foreground = UtMixinWidgetHelper.fg(context);

    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: UtButtonStyleConstant.ELEVATION,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UtButtonStyleConstant.RADIUS),
      ),
    );
  }

  //セカンダリアイコンボタンスタイルヘルパー
  static ButtonStyle secondaryIcon(
    BuildContext context, {
    UtButtonSize size = UtButtonSize.small,
  }) {
    final background = UtMixinWidgetHelper.bg(context);
    // final foreground = fg(context);

    return OutlinedButton.styleFrom(
      foregroundColor: background,
      side: BorderSide(color: background),
      elevation: UtButtonStyleConstant.ELEVATION,
      padding: EdgeInsets.symmetric(
        vertical: size.iconPadingSize,
        horizontal: size.iconPadingSize,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UtButtonStyleConstant.RADIUS),
      ),
    );
  }

  //ターシャリアイコンボタンスタイルヘルパー
  static ButtonStyle tertiaryIcon(
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
        borderRadius: BorderRadius.circular(UtButtonStyleConstant.RADIUS),
      ),
    );
  }
}
