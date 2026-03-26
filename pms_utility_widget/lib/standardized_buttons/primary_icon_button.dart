part of 'button.dart';

class PrimaryIconButton extends StandardizedIconButtonBase
    with AppButtonColorMixin {
  const PrimaryIconButton({
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
      ButtonStyleHelper.primaryIcon(context, size: size);
}
