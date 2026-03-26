part of 'button.dart';

class SecondaryIconButton extends StandardizedIconButtonBase
    with AppButtonColorMixin {
  const SecondaryIconButton({
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
      ButtonStyleHelper.secondaryIcn(context, size: size);
}
