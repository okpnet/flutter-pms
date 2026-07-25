import '../constants/imports.dart';

abstract class AppButtonTheme {
  static FilledButtonThemeData get filledButtonThemeData =>
      FilledButtonThemeData(
        style: FilledButton.styleFrom(
          // ★すべてのボタンに共通する「サイズ、丸み、影」をここで一括定義
          elevation: AppButton.elevation,
          minimumSize: AppButton.minimumSize,
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.edgeBorderRadius,
          ),
          // 色のベースはデフォルト（ColorScheme）に任せるため、ここでは指定しない
        ),
      );

  ///Primary、Secondary、TertiaryはBuildContextのExtenssionで解決する
  static IconButtonThemeData get iconButtonThemeData => IconButtonThemeData(
    style: IconButton.styleFrom(
      minimumSize: AppIcon.mxm,
      shape: const RoundedRectangleBorder(
        borderRadius: AppRadius.edgeBorderRadius,
      ),
    ),
  );
}
