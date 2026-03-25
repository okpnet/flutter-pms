part of 'button.dart';

class PrimaryIconButton extends StandardizedButtonBase
    with AppButtonColorMixin {
  const PrimaryIconButton.icon({
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
        horizontal: ButtonStyleConstant.PADING_V,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ButtonStyleConstant.RADIUS),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final style = createButtonStyle(context);
    return IconButton(onPressed: onPressed, style: style, icon: icon!);
  }
}
