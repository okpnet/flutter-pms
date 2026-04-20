part of '../ut_button.dart';

class UtIconButton extends StatelessWidget with UtButtonMixin {
  final Icon icon;
  final UtPriorityStyle type;
  final VoidCallback onPressed;
  final UtIconButtonSizeStyle sizeStyle;
  final String? hint;

  UtIconButton({
    super.key,
    required this.icon,
    required this.type,
    required this.onPressed,
    required this.sizeStyle,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    final body = switch (type) {
      UtPriorityStyle.primary => _primary(context),
      UtPriorityStyle.secondary => _secondary(context),
      UtPriorityStyle.tertiary => _tertiary(context),
    };
    return UtLayoutCrevice.margin(
      child: hint != null ? UtTooltip(title: hint!, child: body) : body,
    );
  }

  //プライマリアイコンボタンスタイルヘルパー
  ButtonStyle primaryIcon(
    BuildContext context, {
    UtIconButtonSizeStyle sizeStyle = UtIconButtonSizeStyle.small,
  }) {
    final background = bg(context);
    final foreground = fg(context);

    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: elevation,
      fixedSize: sizeStyle.size,
      shape: RoundedRectangleBorder(
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
      ),
    );
  }

  //セカンダリアイコンボタンスタイルヘルパー
  ButtonStyle secondaryIcon(
    BuildContext context, {
    UtIconButtonSizeStyle sizeStyle = UtIconButtonSizeStyle.small,
  }) {
    final background = bg(context);
    // final foreground = fg(context);

    return OutlinedButton.styleFrom(
      foregroundColor: background,
      side: BorderSide(color: background),
      elevation: elevation,
      fixedSize: sizeStyle.size,
      shape: RoundedRectangleBorder(
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
      ),
    );
  }

  //ターシャリアイコンボタンスタイルヘルパー
  ButtonStyle tertiaryIcon(
    BuildContext context, {
    UtIconButtonSizeStyle sizeStyle = UtIconButtonSizeStyle.small,
  }) {
    final background = bg(context);
    // final foreground = fg(context);

    return TextButton.styleFrom(
      foregroundColor: background,
      fixedSize: sizeStyle.size,
      shape: RoundedRectangleBorder(
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
      ),
    );
  }

  Widget _primary(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: sizeStyle.iconSize,
      onPressed: onPressed,
      style: primaryIcon(context, sizeStyle: sizeStyle),
    );
  }

  Widget _secondary(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: sizeStyle.iconSize,
      onPressed: onPressed,
      style: secondaryIcon(context, sizeStyle: sizeStyle),
    );
  }

  Widget _tertiary(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: sizeStyle.iconSize,
      onPressed: onPressed,
      style: tertiaryIcon(context, sizeStyle: sizeStyle),
    );
  }

  factory UtIconButton.parimary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtIconButtonSizeStyle sizeStyle,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    type: UtPriorityStyle.primary,
  );

  factory UtIconButton.secondary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtIconButtonSizeStyle sizeStyle,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    type: UtPriorityStyle.secondary,
  );

  factory UtIconButton.tertiary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtIconButtonSizeStyle sizeStyle,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    type: UtPriorityStyle.tertiary,
  );
}
