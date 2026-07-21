import '../constants/constant.dart';

class InputField extends ThemeExtension<InputField> {
  final InputDecoration primary;

  InputField({
    this.primary = InputDecoration(
      border: primary(),
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      label: label != null ? Text(label!) : null,
      // contentPadding: buildPaddingInsets(sizeStyle),
      isDense: true,
    ),
  });
  @override
  ThemeExtension<InputField> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<InputField> lerp(
    covariant ThemeExtension<InputField>? other,
    double t,
  ) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}
