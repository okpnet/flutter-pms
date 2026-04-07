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
  });

  @override
  Widget build(BuildContext context) {
    return UtLayoutWidgetHelper.containerAllMargin(child: _primary());
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
}
