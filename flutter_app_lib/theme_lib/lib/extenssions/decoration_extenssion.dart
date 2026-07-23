import 'package:theme_lib/constants/constant.dart';

extension InputDecorationExt on InputDecoration {
  ///デコレーションにアイコン、ラベルを追加する
  InputDecoration append({
    Widget? suffixIcn,
    Widget? prefixIcon,
    String? label,
  }) => copyWith(
    suffixIcon: suffixIcon,
    prefixIcon: prefixIcon,
    label: label != null ? Text(label) : null,
    isDense: true,
  );
}
