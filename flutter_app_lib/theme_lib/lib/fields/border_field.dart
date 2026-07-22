import '../constants/constant.dart';

class BorderField extends ThemeExtension<BorderField> {
  final double radius;

  BorderField({this.radius = 3});

  @override
  ThemeExtension<BorderField> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<BorderField> lerp(
    covariant ThemeExtension<BorderField>? other,
    double t,
  ) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}
