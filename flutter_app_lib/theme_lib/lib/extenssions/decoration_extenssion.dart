import 'package:theme_lib/constants/constant.dart';

extension InputDecorationExt on InputDecoration {
  InputDecoration primary({
    Widget? suffixIcn,
    Widget? prefixIcon,
    String? label,
  }) => copyWith(
    border: primary(),
    suffixIcon: suffixIcon,
    prefixIcon: prefixIcon,
    label: label != null ? Text(label) : null,
    // contentPadding: buildPaddingInsets(sizeStyle),
    isDense: true,
  );
}
