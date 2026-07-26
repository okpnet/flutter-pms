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
  Widget toPrimary(BuildContext context) => _primary(context, this);

  /// 検索窓（Search）に仕立ててラップする
  Widget toSearch(BuildContext context) => _toSerch(context, this);
}

extension TextFieldPatternX on TextField {
  /// 通常の入力フォーム（Primary）に仕立ててラップする
  Widget toPrimary(BuildContext context) => _primary(context, this);

  /// 検索窓（Search）に仕立ててラップする
  Widget toSearch(BuildContext context) => _toSerch(context, this);
}

Widget _primary(BuildContext context, Widget child) {
  final theme = Theme.of(context);
  return Theme(
    data: theme.copyWith(
      // 共通の器（四角よりのBorder）だけをインプットテーマに流し込む
      inputDecorationTheme: context.inputDecorationTheme,
    ),
    child: child, // ★生の自分（this = TextFormField）を無加工でそのまま流す！
  );
}

Widget _toSerch(BuildContext context, Widget child) {
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
        fillColor: theme.colorScheme.surface, //
      ),
    ),
    child: child, // ★生の自分をそのまま流す
  );
}

extension DropdownButtonFormPatternX on DropdownButtonFormField {
  /// ドロップダウン専用の Primary スタイル
  Widget toPrimary(BuildContext context) => _buildDropDownTheme(context, this);
}

extension DropdownButtonPatternX on DropdownButton {
  /// ドロップダウン専用の Primary スタイル
  Widget toPrimary(BuildContext context) => _buildDropDownTheme(context, this);
}

extension DropdownMenuFormPatternX on DropdownMenuFormField {
  /// ドロップダウン専用の Primary スタイル
  Widget toPrimary(BuildContext context) => _buildDropDownTheme(context, this);
}

extension DropdownMenuPatternX on DropdownMenu {
  /// ドロップダウン専用の Primary スタイル
  Widget toPrimary(BuildContext context) => _buildDropDownTheme(context, this);
}

/// ★ 共通ヘルパー：DropDown共通の枠線ルール（Theme）を組み立てる内部関数
Widget _buildDropDownTheme(BuildContext context, Widget child) {
  final theme = Theme.of(context);

  final adjustedInputTheme = context.inputDecorationTheme.copyWith(
    // 【最重要】DropdownMenu専用の高さ補正パディング
    // これを入れることで、TextFormField の isDense: true と完全に同じ高さ（48px近辺）に揃います
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 12.0,
      vertical: 10.0,
    ),
  );

  final menuTheme = theme.dropdownMenuTheme.copyWith();
  return Theme(
    data: theme.copyWith(
      inputDecorationTheme: adjustedInputTheme,
      dropdownMenuTheme: menuTheme,
    ),
    child: child, // ★生の自分（Dropdown）を無加工でそのまま流す
  );
}
