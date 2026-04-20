part of '../ut_button.dart';

class UtButton extends StatelessWidget with UtButtonMixin {
  final String label;
  final Icon? icon;
  final UtPriorityStyle type;
  final VoidCallback onPressed;
  final String? hint;
  final UtButtonSizeStyle sizeStyle;

  UtButton._({
    super.key,
    this.icon,
    required this.label,
    required this.type,
    required this.onPressed,
    this.hint,
    this.sizeStyle = UtButtonSizeStyle.midWxMidH,
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

  void buildDecoration() {}
  ButtonStyle primary(BuildContext context) {
    final background = bg(context);
    final foreground = fg(context);
    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      fixedSize: sizeStyle.size,
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
      fixedSize: sizeStyle.size,
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
      fixedSize: sizeStyle.size,
      shape: RoundedRectangleBorder(
        borderRadius: UtMixinWidgetHelper.defaultRadius(),
      ),
    );
  }

  Widget _primary(BuildContext context) {
    return icon == null
        ? ElevatedButton(
            key: key,
            onPressed: onPressed,
            style: primary(context),
            child: Text(label),
          )
        : ElevatedButton.icon(
            key: key,
            onPressed: onPressed,
            style: primary(context),
            label: Text(label),
            icon: icon,
          );
  }

  Widget _secondary(BuildContext context) {
    return icon == null
        ? OutlinedButton(
            key: key,
            onPressed: onPressed,
            style: secondary(context),
            child: Text(label),
          )
        : OutlinedButton.icon(
            key: key,
            onPressed: onPressed,
            style: secondary(context),
            label: Text(label),
            icon: icon,
          );
  }

  Widget _tertiary(BuildContext context) {
    return icon == null
        ? TextButton(
            key: key,
            onPressed: onPressed,
            style: tertiary(context),
            child: Text(label),
          )
        : TextButton.icon(
            key: key,
            onPressed: onPressed,
            style: tertiary(context),
            icon: icon,
            label: Text(label),
          );
  }

  factory UtButton.primary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.midWxMidH,
  }) => UtButton._(
    key: key,
    label: label,
    type: UtPriorityStyle.primary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
  );

  factory UtButton.secondary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.midWxMidH,
  }) => UtButton._(
    key: key,
    label: label,
    type: UtPriorityStyle.secondary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
  );

  factory UtButton.tertiary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.midWxMidH,
  }) => UtButton._(
    key: key,
    label: label,
    type: UtPriorityStyle.tertiary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
  );
  factory UtButton.primaryWithIcon({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    required Icon icon,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.midWxMidH,
  }) => UtButton._(
    key: key,
    label: label,
    icon: icon,
    type: UtPriorityStyle.primary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
  );

  factory UtButton.secondaryWithIcon({
    Key? key,
    required String label,
    required Icon icon,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.midWxMidH,
  }) => UtButton._(
    key: key,
    label: label,
    icon: icon,
    type: UtPriorityStyle.secondary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
  );
  factory UtButton.tertiaryWithIcon({
    Key? key,
    required String label,
    required Icon icon,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.midWxMidH,
  }) => UtButton._(
    key: key,
    label: label,
    icon: icon,
    type: UtPriorityStyle.tertiary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
  );
}
