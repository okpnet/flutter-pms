part of '../ut_button.dart';

class UtIconButton extends StatelessWidget with UtButtonMixin {
  final Icon icon;
  final UtColorStyle type;
  final VoidCallback onPressed;
  final UtButtonIconSize size;
  final String? hint;

  UtIconButton({
    super.key,
    required this.icon,
    required this.type,
    required this.onPressed,
    required this.size,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    final body = switch (type) {
      UtColorStyle.primary => _primary(context),
      UtColorStyle.secondary => _secondary(context),
      UtColorStyle.tertiary => _tertiary(context),
    };
    return UtLayoutCrevice.margin(
      child: hint != null ? UtTooltip(title: hint!, child: body) : body,
    );
  }

  //プライマリアイコンボタンスタイルヘルパー
  ButtonStyle primaryIcon(
    BuildContext context, {
    UtButtonIconSize size = UtButtonIconSize.small,
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
    UtButtonIconSize size = UtButtonIconSize.small,
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
    UtButtonIconSize size = UtButtonIconSize.small,
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

  Widget _primary(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: size.iconSize,
      onPressed: onPressed,
      style: primaryIcon(context, size: size),
    );
  }

  Widget _secondary(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: size.iconSize,
      onPressed: onPressed,
      style: secondaryIcon(context, size: size),
    );
  }

  Widget _tertiary(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: size.iconSize,
      onPressed: onPressed,
      style: tertiaryIcon(context, size: size),
    );
  }

  factory UtIconButton.parimary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtButtonIconSize size,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    size: size,
    type: UtColorStyle.primary,
  );

  factory UtIconButton.secondary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtButtonIconSize size,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    size: size,
    type: UtColorStyle.secondary,
  );

  factory UtIconButton.tertiary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtButtonIconSize size,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    size: size,
    type: UtColorStyle.tertiary,
  );
}
