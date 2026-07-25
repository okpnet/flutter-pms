import '../constants/constant.dart';

extension BuildContextButtonThemeX on BuildContext {
  ThemeData get _theme => Theme.of(this);
  ColorScheme get _colors => _theme.colorScheme;

  // 共通の土台（サイズなど）をテーマから取得
  ButtonStyle get _baseStyle =>
      _theme.filledButtonTheme.style ?? const ButtonStyle();

  // ★ご好みの「角のRが小さい四角よりの形状」を共通の定数として定義
  static const _customShape = RoundedRectangleBorder(
    borderRadius: AppRadius
        .edgeBorderRadius, // ここに小さいR（例: BorderRadius.circular(8.0)など）が適用されます
  );

  /// ① Primary: ソリッド（塗りつぶしスタイル）
  ButtonStyle get btnPrimary => FilledButton.styleFrom(
    backgroundColor: _colors.primary,
    foregroundColor: _colors.onPrimary,
    shape: _customShape, // ★ここで直接四角い形状を指定
  ).merge(_baseStyle);

  /// ② Secondary: アウトライン（枠線スタイル）
  ButtonStyle get btnSecondary => FilledButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: _colors.primary,
    elevation: 0,
    shape: _customShape, // ★ここでも直接四角い形状を指定
    side: BorderSide(width: AppButton.borderWidth, color: _colors.primary),
  ).merge(_baseStyle);

  /// ③ Tertiary: テキストのみ（スタイル）
  ButtonStyle get btnTertiary => FilledButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: _colors.primary,
    elevation: 0,
    shape: _customShape, // ★ここでも直接四角い形状を指定
  ).merge(_baseStyle);
}

extension FilledButtonPatternX on FilledButton {
  Widget toPrimary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(
      filledButtonTheme: FilledButtonThemeData(style: context.btnPrimary),
    ),
    child: this,
  );
  Widget toSecondary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(
      filledButtonTheme: FilledButtonThemeData(style: context.btnSecondary),
    ),
    child: this,
  );
  Widget toTertiary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(
      filledButtonTheme: FilledButtonThemeData(style: context.btnTertiary),
    ),
    child: this,
  );
}
