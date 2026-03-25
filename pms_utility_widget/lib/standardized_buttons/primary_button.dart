part of 'button.dart';

class PrimaryButton extends StandardizedButtonBase with AppButtonColorMixin {
  const PrimaryButton({
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

  const PrimaryButton.icon({
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
    final foreground = fg(context);

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

  @override
  Widget build(BuildContext context) {
    final style = createButtonStyle(context);
    return icon == null
        ? ElevatedButton(onPressed: onPressed, style: style, child: child)
        : ElevatedButton.icon(
            onPressed: onPressed,
            style: style,
            icon: icon!,
            label: label!,
          );
  }
}
