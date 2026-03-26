part of 'button.dart';

class TertiaryIconButton extends StandardizedIconButtonBase
    with AppButtonColorMixin {
  const TertiaryIconButton({
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
    super.size = ButtonSize.small,
  });
  @override
  ButtonStyle createButtonStyle(BuildContext context) =>
      ButtonStyleHelper.tertiaryIcon(context, size: size);
}
