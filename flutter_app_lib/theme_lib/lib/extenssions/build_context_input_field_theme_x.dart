import '../constants/constant.dart';

extension BuildContextInputFieldThemeX on BuildContext {
  /// ★ 共通ヘルパー：四角よりの美しい共通の枠線ルール（Theme）を組み立てる内部関数
  InputDecorationTheme get inputDecorationTheme {
    final theme = Theme.of(this);
    final commonBorder = OutlineInputBorder(
      borderRadius: AppRadius.edgeBorderRadius, // ご好みの四角よりのR
      borderSide: BorderSide(
        width: AppBorder.borderWidth,
        color: theme.colorScheme.outline, // デフォルトの枠線色
      ),
    );

    return InputDecorationTheme(
      isDense: true,
      border: commonBorder,
      enabledBorder: commonBorder,
      focusedBorder: commonBorder.copyWith(
        borderSide: BorderSide(
          width: AppBorder.activeBorderWidth,
          color: theme.colorScheme.primary,
        ),
      ),
      errorBorder: commonBorder.copyWith(
        borderSide: BorderSide(
          width: AppBorder.borderWidth,
          color: theme.colorScheme.error,
        ),
      ),
      focusedErrorBorder: commonBorder.copyWith(
        borderSide: BorderSide(
          width: AppBorder.activeBorderWidth,
          color: theme.colorScheme.error,
        ),
      ),
    );
  }
}

// ① TextFormField（通常の入力、日付入力、検索窓）に対する Extension
extension TextFormFieldPatternX on TextFormField {
  /// 通常の入力フォーム（Primary）に仕立ててラップする
  Widget toPrimary(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        // 共通の器（四角よりのBorder）だけをインプットテーマに流し込む
        inputDecorationTheme: context.inputDecorationTheme,
      ),
      child: this, // ★生の自分（this = TextFormField）を無加工でそのまま流す！
    );
  }

  /// 検索窓（Search）に仕立ててラップする
  Widget toSearch(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          // 検索窓特有の丸み（例: 検索用の大きなR）や枠線なしの設定
          border: const OutlineInputBorder(
            borderRadius: AppRadius.fullBorderRadius,
            borderSide: BorderSide.none,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: AppRadius.fullBorderRadius,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppRadius.fullBorderRadius,
            borderSide: BorderSide(
              color: theme.colorScheme.primary,
              width: AppBorder.activeBorderWidth,
            ),
          ),
          filled: true,
          fillColor: theme.colorScheme.onSecondaryFixed, //
        ),
      ),
      child: this, // ★生の自分をそのまま流す
    );
  }
}

extension DropdownPatternX on DropdownButtonFormField {
  /// ドロップダウン専用の Primary スタイル
  Widget toPrimary(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(inputDecorationTheme: _buildBaseInputTheme(theme)),
      child: this, // ★生の自分（Dropdown）を無加工でそのまま流す
    );
  }
}

extension DropdownmenuPatternX on DropdownMenuFormField {
  /// ドロップダウン専用の Primary スタイル
  Widget toPrimary(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(inputDecorationTheme: _buildBaseInputTheme(theme)),
      child: this, // ★生の自分（Dropdown）を無加工でそのまま流す
    );
  }
}

/// ★ 共通ヘルパー：四角よりの美しい共通の枠線ルール（Theme）を組み立てる内部関数
InputDecorationTheme _buildBaseInputTheme(ThemeData theme) {
  final commonBorder = OutlineInputBorder(
    borderRadius: AppRadius.edgeBorderRadius, // ご好みの四角よりのR
    borderSide: BorderSide(
      width: AppButton.borderWidth,
      color: theme.colorScheme.outline, // デフォルトの枠線色
    ),
  );

  return InputDecorationTheme(
    isDense: true,
    border: commonBorder,
    enabledBorder: commonBorder,
    focusedBorder: commonBorder.copyWith(
      borderSide: BorderSide(
        width: AppButton.borderWidth + 0.5,
        color: theme.colorScheme.primary,
      ),
    ),
    errorBorder: commonBorder.copyWith(
      borderSide: BorderSide(
        width: AppButton.borderWidth,
        color: theme.colorScheme.error,
      ),
    ),
    focusedErrorBorder: commonBorder.copyWith(
      borderSide: BorderSide(
        width: AppButton.borderWidth + 0.5,
        color: theme.colorScheme.error,
      ),
    ),
  );
}
