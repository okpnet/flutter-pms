import '../constants/constant.dart';

class SpaceField extends ThemeExtension<SpaceField> {
  ///フォームのパディング
  final double formFieldPd;

  ///メニューのパディング
  final double menuFieldPd;

  ///Wrap,Row,Columnのギャップ
  final double spacing;

  EdgeInsets get all => EdgeInsets.all(spacing);
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: spacing);
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: spacing);
  EdgeInsets get left => EdgeInsets.only(left: spacing);
  EdgeInsets get top => EdgeInsets.only(top: spacing);
  EdgeInsets get right => EdgeInsets.only(right: spacing);
  EdgeInsets get bottom => EdgeInsets.only(bottom: spacing);

  SpaceField({
    this.formFieldPd = 4.0,
    this.menuFieldPd = 8.0,
    this.spacing = 4,
  });

  @override
  ThemeExtension<SpaceField> copyWith() {
    return SpaceField(
      formFieldPd: formFieldPd,
      menuFieldPd: menuFieldPd,
      spacing: spacing,
    );
  }

  @override
  ThemeExtension<SpaceField> lerp(
    covariant ThemeExtension<SpaceField>? other,
    double t,
  ) => this;
}
