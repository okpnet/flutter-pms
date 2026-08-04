import '../constants/constant.dart';

enum TextSizeStyleMode {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
  none,
}

/// テキストの色・状態パターンを管理するEnum
enum TextColorStyleMode {
  /// テーマの標準色（指定なしのデフォルト）
  defaultMode,

  /// システムのエラーカラー（赤系）
  error,

  /// 補足や説明文用の一歩引いたカラー（グレー系）
  secondary,
}

extension BuildContextTextThemeX on BuildContext {
  TextTheme get textThemee => Theme.of(this).textTheme;

  TextStyle textStyleMode({
    TextSizeStyleMode sizeMode = TextSizeStyleMode.bodyMedium,
    TextColorStyleMode colorMode = TextColorStyleMode.defaultMode,
  }) {
    final theme = Theme.of(this);
    final textTheme = theme.textTheme;
    final colors = theme.colorScheme;

    // 1. まず、指定されたモードの「サイズルール（器）」をテーマから100%無加工で取得
    final baseStyle =
        switch (sizeMode) {
          TextSizeStyleMode.displayLarge => textTheme.displayLarge,
          TextSizeStyleMode.displayMedium => textTheme.displayMedium,
          TextSizeStyleMode.displaySmall => textTheme.displaySmall,
          TextSizeStyleMode.headlineLarge => textTheme.headlineLarge,
          TextSizeStyleMode.headlineMedium => textTheme.headlineMedium,
          TextSizeStyleMode.headlineSmall => textTheme.headlineSmall,
          TextSizeStyleMode.titleLarge => textTheme.titleLarge,
          TextSizeStyleMode.titleMedium => textTheme.titleMedium,
          TextSizeStyleMode.titleSmall => textTheme.titleSmall,
          TextSizeStyleMode.bodyLarge => textTheme.bodyLarge,
          TextSizeStyleMode.bodyMedium => textTheme.bodyMedium,
          TextSizeStyleMode.bodySmall => textTheme.bodySmall,
          TextSizeStyleMode.labelLarge => textTheme.labelLarge,
          TextSizeStyleMode.labelMedium => textTheme.labelMedium,
          TextSizeStyleMode.labelSmall => textTheme.labelSmall,
          _ => null,
        } ??
        const TextStyle();

    // 2. 取得したサイズベースに対して、指定された色パターン（状態）を安全にマージする
    return switch (colorMode) {
      // デフォルト：テーマの色（黒や白など）をそのまま活かすため、追加の上書きはしない
      TextColorStyleMode.defaultMode => baseStyle,

      // エラー：サイズや行間はそのままに、色をシステムのエラーカラー（赤）に染める
      TextColorStyleMode.error => baseStyle.copyWith(
        color: colors.error,
        fontWeight: FontWeight.w500, // 警告としての視認性を確保
      ),

      // 補足：サイズや行間はそのままに、一歩引いたグレー（onSurfaceVariant）を適用
      TextColorStyleMode.secondary => baseStyle.copyWith(
        color: colors.onSurfaceVariant,
      ),
    };
  }
}
