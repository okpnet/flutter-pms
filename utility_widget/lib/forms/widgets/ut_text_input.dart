part of '../ut_input_field.dart';

class UtTextInput extends StatelessWidget {
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
  });

  @override
  Widget build(BuildContext context) {
    final body = switch (type) {
      UtColorStyle.primary => _primary(),
      _ => throw Exception('Not impletement UtTextInput type $type'),
    };
    return UtLayoutCrevice.margin(
      child: hint != null ? UtTooltip(title: hint!, child: body) : body,
    );
  }

  Widget _primary() {
    return TextFormField(
      key: key,
      decoration: InputDecoration(
        border: InputTextStyleHelper.primary(),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        label: label,
        contentPadding: EdgeInsets.symmetric(
          horizontal: UtInputFieldConstant.PADDING_H,
        ),
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
  );
}
