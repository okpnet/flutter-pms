part of '../ut_input_field.dart';

class UtTextInput extends StatelessWidget with UtInputTextStyleMixin {
  final String? initialValue;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final bool? enabled;
  final Widget? label;
  final UtColorStyle type;
  final String? hint;
  final bool obscureText;
  final String obscuringCharacter;
  final UtInputWidthStyle widthStyle;

  const UtTextInput({
    super.key,
    this.initialValue,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.enabled,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.label,
    this.type = UtColorStyle.primary,
    this.hint,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.widthStyle = UtInputWidthStyle.infinity,
  });

  @override
  Widget build(BuildContext context) {
    final body = switch (type) {
      UtColorStyle.primary => _primary(),
      _ => throw Exception('Not impletement UtTextInput type $type'),
    };
    return UtLayoutCrevice.margin(
      child: hint != null
          ? UtTooltip(
              title: hint!,
              child: SizedBox(width: widthStyle.value, child: body),
            )
          : SizedBox(width: widthStyle.value, child: body),
    );
  }

  Widget _primary() {
    return TextFormField(
      key: key,
      decoration: InputDecoration(
        border: primary(),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        label: label,
        // contentPadding: buildPaddingInsets(sizeStyle),
        isDense: true,
      ),
      keyboardType: keyboardType,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
      onChanged: onChanged,
      enabled: enabled,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
    );
  }

  factory UtTextInput.primary({
    Key? key,
    String? initialValue,
    int? maxLines,
    int? minLines,
    bool expands = false,
    int? maxLength,
    Icon? suffixIcon,
    Icon? prefixIcon,
    TextInputType? keyboardType,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    bool? enabled,
    Widget? label,
    bool obscureText = false,
    String obscuringCharacter = '•',
    UtInputWidthStyle widthStyle = UtInputWidthStyle.infinity,
  }) => UtTextInput(
    key: key,
    enabled: enabled,
    initialValue: initialValue,
    keyboardType: keyboardType,
    label: label,
    maxLength: maxLength,
    maxLines: maxLines,
    minLines: minLines,
    onChanged: onChanged,
    onEditingComplete: onEditingComplete,
    onFieldSubmitted: onFieldSubmitted,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    type: UtColorStyle.primary,
    obscureText: obscureText,
    obscuringCharacter: obscuringCharacter,
    widthStyle: widthStyle,
  );

  factory UtTextInput.primaryPassword({
    Key? key,
    String? initialValue,
    bool expands = false,
    int? maxLength,
    Icon? suffixIcon,
    Icon? prefixIcon,
    TextInputType? keyboardType,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    bool? enabled,
    Widget? label,
    String obscuringCharacter = '•',
    UtInputWidthStyle widthStyle = UtInputWidthStyle.infinity,
  }) => UtTextInput(
    key: key,
    enabled: enabled,
    initialValue: initialValue,
    keyboardType: keyboardType,
    label: label,
    maxLength: maxLength,
    maxLines: 1,
    minLines: 1,
    onChanged: onChanged,
    onEditingComplete: onEditingComplete,
    onFieldSubmitted: onFieldSubmitted,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    type: UtColorStyle.primary,
    obscureText: true,
    obscuringCharacter: obscuringCharacter,
    widthStyle: widthStyle,
  );
}
