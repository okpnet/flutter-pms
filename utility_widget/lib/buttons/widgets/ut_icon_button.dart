part of '../ut_button.dart';

class UtIconButton extends StatelessWidget {
  final Icon icon;
  final UtColorStyle type;
  final VoidCallback onPressed;
  final UtButtonSize size;
  final String? hint;

  const UtIconButton({
    super.key,
    required this.icon,
    required this.type,
    required this.onPressed,
    required this.size,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    final body = switch (type) {
      UtColorStyle.primary => _primary(context),
      UtColorStyle.secondary => _secondary(context),
      UtColorStyle.tertiary => _tertiary(context),
    };
    return UtLayoutMargin(
      child: hint != null ? UtTooltip(title: hint!, child: body) : body,
    );
  }

  Widget _primary(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: size.iconSize,
      onPressed: onPressed,
      style: UtButtonStyleHelper.primaryIcon(context, size: size),
    );
  }

  Widget _secondary(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: size.iconSize,
      onPressed: onPressed,
      style: UtButtonStyleHelper.secondaryIcon(context, size: size),
    );
  }

  Widget _tertiary(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: size.iconSize,
      onPressed: onPressed,
      style: UtButtonStyleHelper.tertiaryIcon(context, size: size),
    );
  }

  factory UtIconButton.parimary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtButtonSize size,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    size: size,
    type: UtColorStyle.primary,
  );

  factory UtIconButton.secondary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtButtonSize size,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    size: size,
    type: UtColorStyle.secondary,
  );

  factory UtIconButton.tertiary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtButtonSize size,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    size: size,
    type: UtColorStyle.tertiary,
  );
}
