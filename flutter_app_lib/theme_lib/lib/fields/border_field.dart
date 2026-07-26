import '../constants/constant.dart';

class BorderField extends ThemeExtension<BorderField> {
  final double radius;

  BorderField({this.radius = 3});

  @override
  ThemeExtension<BorderField> copyWith() => BorderField(radius: radius);

  @override
  ThemeExtension<BorderField> lerp(
    covariant ThemeExtension<BorderField>? other,
    double t,
  ) => this;
}
