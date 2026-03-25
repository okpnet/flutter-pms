part of 'button.dart';

class TertiaryButton extends StandardizedButtonBase with AppButtonColorMixin {
  const TertiaryButton({
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

  const TertiaryButton.icon({
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

    return TextButton.styleFrom(
      foregroundColor: background,
      padding: EdgeInsets.symmetric(
        vertical: ButtonStyleConstant.PADING_V,
        horizontal: ButtonStyleConstant.PADING_H,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final style = createButtonStyle(context);
    return icon == null
        ? TextButton(onPressed: onPressed, style: style, child: child!)
        : TextButton.icon(
            onPressed: onPressed,
            style: style,
            icon: icon!,
            label: label!,
          );
  }
}
