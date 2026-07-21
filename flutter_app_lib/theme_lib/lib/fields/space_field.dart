import '../constants/constant.dart';

class SpaceField extends ThemeExtension<SpaceField> {
  ///フォームのパディング
  final double formFieldPd;

  ///メニューのパディング
  final double menuFieldPd;

  final double wrapGap;

  SpaceField({
    this.formFieldPd = 4.0,
    this.menuFieldPd = 8.0,
    this.wrapGap = 4,
  });

  @override
  ThemeExtension<SpaceField> copyWith() {
    return SpaceField(
      formFieldPd: this.formFieldPd,
      menuFieldPd: menuFieldPd,
      wrapGap: wrapGap,
    );
  }

  @override
  ThemeExtension<SpaceField> lerp(
    covariant ThemeExtension<SpaceField>? other,
    double t,
  ) => this;
}
