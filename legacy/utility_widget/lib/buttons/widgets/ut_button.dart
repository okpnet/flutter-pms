part of '../ut_button.dart';

class UtButton extends StatelessWidget
    with UtPrimaryButtonMixin, UtSecoundaryButtonMixin, UtTertiaryButtonMixin {
  final String label;
  final Icon? icon;
  final UtPriorityStyle type;
  final VoidCallback onPressed;
  final String? hint;
  final UtButtonSizeStyle sizeStyle;
  final bool expanded;

  UtButtonSizeStyle get sizeStyles => sizeStyle;

  UtButton._({
    super.key,
    this.icon,
    required this.label,
    required this.type,
    required this.onPressed,
    this.hint,
    this.sizeStyle = UtButtonSizeStyle.md,
    this.expanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final body = switch (type) {
      UtPriorityStyle.primary => _primary(context),
      UtPriorityStyle.secondary => _secondary(context),
      UtPriorityStyle.tertiary => _tertiary(context),
    };
    return UtLayoutCrevice.margin(
      child: hint != null ? UtTooltip(title: hint!, child: body) : body,
    );
  }

  Widget _primary(BuildContext context) {
    return icon == null
        ? ElevatedButton(
            key: key,
            onPressed: onPressed,
            style: getPrimaryStyle(context, expanded),
            child: Text(label),
          )
        : ElevatedButton.icon(
            key: key,
            onPressed: onPressed,
            style: getPrimaryWithIconStyle(context),
            label: Text(label),
            icon: icon,
          );
  }

  Widget _secondary(BuildContext context) {
    return icon == null
        ? OutlinedButton(
            key: key,
            onPressed: onPressed,
            style: getSecondaryStyle(context, expanded),
            child: Text(label),
          )
        : OutlinedButton.icon(
            key: key,
            onPressed: onPressed,
            style: getSecondaryStyle(context, expanded),
            label: Text(label),
            icon: icon,
          );
  }

  Widget _tertiary(BuildContext context) {
    return icon == null
        ? TextButton(
            key: key,
            onPressed: onPressed,
            style: getTertiarStyle(context, expanded),
            child: Text(label),
          )
        : TextButton.icon(
            key: key,
            onPressed: onPressed,
            style: getTertiarStyle(context, expanded),
            icon: icon,
            label: Text(label),
          );
  }

  factory UtButton.primary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.md,
    bool expanded = false,
  }) => UtButton._(
    key: key,
    label: label,
    type: UtPriorityStyle.primary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
    expanded: expanded,
  );

  factory UtButton.secondary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.md,
    bool expanded = false,
  }) => UtButton._(
    key: key,
    label: label,
    type: UtPriorityStyle.secondary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
    expanded: expanded,
  );

  factory UtButton.tertiary({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.md,
    bool expanded = false,
  }) => UtButton._(
    key: key,
    label: label,
    type: UtPriorityStyle.tertiary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
    expanded: expanded,
  );
  factory UtButton.primaryWithIcon({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    required Icon icon,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.md,
    bool expanded = false,
  }) => UtButton._(
    key: key,
    label: label,
    icon: icon,
    type: UtPriorityStyle.primary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
    expanded: expanded,
  );

  factory UtButton.secondaryWithIcon({
    Key? key,
    required String label,
    required Icon icon,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.md,
    bool expanded = false,
  }) => UtButton._(
    key: key,
    label: label,
    icon: icon,
    type: UtPriorityStyle.secondary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
    expanded: expanded,
  );
  factory UtButton.tertiaryWithIcon({
    Key? key,
    required String label,
    required Icon icon,
    required VoidCallback onPressed,
    String? hint,
    UtButtonSizeStyle sizeStyle = UtButtonSizeStyle.md,
    bool expanded = false,
  }) => UtButton._(
    key: key,
    label: label,
    icon: icon,
    type: UtPriorityStyle.tertiary,
    onPressed: onPressed,
    sizeStyle: sizeStyle,
    hint: hint,
    expanded: expanded,
  );
}
