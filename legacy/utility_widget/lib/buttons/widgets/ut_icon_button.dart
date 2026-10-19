part of '../ut_button.dart';

class UtIconButton extends StatelessWidget
    with
        UtEdgeinsetMixin,
        UtPrimaryButtonMixin,
        UtSecoundaryButtonMixin,
        UtTertiaryButtonMixin {
  final Icon icon;
  final UtPriorityStyle type;
  final VoidCallback onPressed;
  final UtButtonSizeStyle sizeStyle;
  final String? hint;
  UtButtonSizeStyle get sizeStyles => sizeStyle;
  UtIconButton({
    super.key,
    required this.icon,
    required this.type,
    required this.onPressed,
    required this.sizeStyle,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    final body = switch (type) {
      UtPriorityStyle.primary => _primary(context),
      UtPriorityStyle.secondary => _secondary(context),
      UtPriorityStyle.tertiary => _tertiary(context),
    };

    return hint != null ? UtTooltip(title: hint!, child: body) : body;
  }

  Widget _primary(BuildContext context) {
    return IconButton.filled(
      icon: icon,
      iconSize: sizeStyle.size / 2,
      constraints: const BoxConstraints(),
      padding: edgeInsetsBuilder(value: .sm),
      onPressed: onPressed,
      style: getPrimaryIconStyle(context),
    );
  }

  Widget _secondary(BuildContext context) {
    return IconButton.outlined(
      icon: icon,
      iconSize: sizeStyle.size,
      constraints: const BoxConstraints(),
      padding: edgeInsetsBuilder(value: .sm),
      onPressed: onPressed,
      style: getSecondaryIconStyle(context),
    );
  }

  Widget _tertiary(BuildContext context) {
    return IconButton.filledTonal(
      icon: icon,
      iconSize: sizeStyle.size,
      constraints: const BoxConstraints(),
      padding: edgeInsetsBuilder(value: .sm),
      onPressed: onPressed,
      style: getTertiaryIconStyle(context),
    );
  }

  factory UtIconButton.parimary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtButtonSizeStyle sizeStyle,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    type: UtPriorityStyle.primary,
  );

  factory UtIconButton.secondary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtButtonSizeStyle sizeStyle,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    type: UtPriorityStyle.secondary,
  );

  factory UtIconButton.tertiary({
    Key? key,
    required Icon icon,
    required VoidCallback onPressed,
    required UtButtonSizeStyle sizeStyle,
    Tooltip? tooltip,
  }) => UtIconButton(
    key: key,
    icon: icon,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    type: UtPriorityStyle.tertiary,
  );
}
