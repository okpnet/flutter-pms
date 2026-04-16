part of '../ut_button.dart';

class UtButton extends StatelessWidget with UtButtonMixin {
  final String label;
  final Icon? icon;
  final UtColorStyle type;
  final VoidCallback onPressed;
  final String? hint;
  final UtButtonHight hight;

  UtButton._({
    super.key,
    this.icon,
    required this.label,
    required this.type,
    required this.onPressed,
    this.hint,
    this.hight = UtButtonHight.mid,
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

  ButtonStyle primary(BuildContext context) {
    final background = bg(context);
    final foreground = fg(context);
    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      fixedSize: Size(double.infinity, hight.hight),
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
      fixedSize: Size(double.infinity, hight.hight),
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
      fixedSize: Size(double.infinity, hight.hight),
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
    UtButtonHight hight = UtButtonHight.mid,
  }) => UtButton._(
    key: key,
    label: label,
    type: UtColorStyle.primary,
    onPressed: onPressed,
    hight: hight,
    hint: hint,
  );

  factory UtButton.secondary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    String? hint,
    UtButtonHight hight = UtButtonHight.mid,
  }) => UtButton._(
    key: key,
    label: label,
    type: UtColorStyle.secondary,
    onPressed: onPressed,
    hight: hight,
    hint: hint,
  );

  factory UtButton.tertiary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    String? hint,
    UtButtonHight hight = UtButtonHight.mid,
  }) => UtButton._(
    key: key,
    label: label,
    type: UtColorStyle.tertiary,
    onPressed: onPressed,
    hight: hight,
    hint: hint,
  );
  factory UtButton.primaryWithIcon({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    required Icon icon,
    String? hint,
    UtButtonHight hight = UtButtonHight.mid,
  }) => UtButton._(
    key: key,
    label: label,
    icon: icon,
    type: UtColorStyle.primary,
    onPressed: onPressed,
    hight: hight,
    hint: hint,
  );

  factory UtButton.secondaryWithIcon({
    Key? key,
    required String label,
    required Icon icon,
    required VoidCallback onPressed,
    String? hint,
    UtButtonHight hight = UtButtonHight.mid,
  }) => UtButton._(
    key: key,
    label: label,
    icon: icon,
    type: UtColorStyle.secondary,
    onPressed: onPressed,
    hight: hight,
    hint: hint,
  );
  factory UtButton.tertiaryWithIcon({
    Key? key,
    required String label,
    required Icon icon,
    required VoidCallback onPressed,
    String? hint,
    UtButtonHight hight = UtButtonHight.mid,
  }) => UtButton._(
    key: key,
    label: label,
    icon: icon,
    type: UtColorStyle.tertiary,
    onPressed: onPressed,
    hight: hight,
    hint: hint,
  );
}
