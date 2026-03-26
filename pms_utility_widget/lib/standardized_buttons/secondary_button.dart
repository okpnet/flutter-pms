part of 'button.dart';

class SecondaryButton extends StandardizedButtonBase with AppButtonColorMixin {
  const SecondaryButton({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior,
    super.statesController,
    required super.child,
  });

  const SecondaryButton.icon({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior,
    super.statesController,
    required super.icon,
    required super.label,
  });

  ButtonStyle createButtonStyle(BuildContext context) {
    final background = bg(context);
    // final foreground = fg(context);

    return OutlinedButton.styleFrom(
      foregroundColor: background,
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

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyleHelper.secondary(context);
    return icon == null
        ? OutlinedButton(onPressed: onPressed, style: style, child: child)
        : OutlinedButton.icon(
            onPressed: onPressed,
            style: style,
            icon: icon!,
            label: label!,
          );
  }
}
