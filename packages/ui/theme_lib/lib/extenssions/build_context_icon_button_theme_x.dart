import '../constants/constant.dart';

extension BuildContextIconButtonThemeX on BuildContext {
  ThemeData get _theme => Theme.of(this);
  ColorScheme get _colors => _theme.colorScheme;

  // 共通の土台（サイズなど）をテーマから取得
  ButtonStyle get _baseIconStyle =>
      _theme.iconButtonTheme.style ?? const ButtonStyle();

  // ボタンとお揃いの「角のRが小さい四角よりの形状」
  static const _customShape = RoundedRectangleBorder(
    borderRadius: AppRadius.edgeBorderRadius, // ここで四角よりのRを固定
  );

  /// ① Primary: ソリッド（背景塗りつぶし）
  ButtonStyle get iconBtnPrimary => IconButton.styleFrom(
    backgroundColor: _colors.primary,
    foregroundColor: _colors.onPrimary,
    shape: _customShape, // ★ここで真ん丸をキャンセルして四角くする
  ).merge(_baseIconStyle);

  /// ② Secondary: アウトライン（枠線）
  ButtonStyle get iconBtnSecondary => IconButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: _colors.primary,
    shape: _customShape, // ★ここでも四角くする
    side: BorderSide(width: AppButton.borderWidth, color: _colors.primary),
  ).merge(_baseIconStyle);

  /// ③ Tertiary: テキスト（アイコン）のみ
  ButtonStyle get iconBtnTertiary => IconButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: _colors.primary,
    shape: _customShape, // ★念のためこちらも形状を揃えておく
  ).merge(_baseIconStyle);
}

extension IconButtonPatternX on IconButton {
  Widget toPrimary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(
      iconButtonTheme: IconButtonThemeData(style: context.iconBtnPrimary),
    ),
    child: this,
  );
  Widget toSecondary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(
      iconButtonTheme: IconButtonThemeData(style: context.iconBtnSecondary),
    ),
    child: this,
  );
  Widget toTertiary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(
      iconButtonTheme: IconButtonThemeData(style: context.iconBtnTertiary),
    ),
    child: this,
  );
}
