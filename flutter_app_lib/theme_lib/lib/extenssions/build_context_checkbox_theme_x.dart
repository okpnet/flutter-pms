import 'package:theme_lib/constants/constant.dart';

extension BuildContextCheckboxThemeX on BuildContext {
  ThemeData get _theme => Theme.of(this);
  ColorScheme get _colors => _theme.colorScheme;

  /// ① Primary: ソリッドスタイル
  /// チェック時に背景がメインカラーで塗りつぶされ、チェックマークが白になる標準スタイル
  CheckboxThemeData get checkboxPrimary {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.selected)) {
          return _colors.primary; // チェック時はプライマリ色で塗りつぶし
        }
        return _colors.primaryFixed;
      }),
      checkColor: WidgetStateProperty.all(_colors.onPrimary), // チェックマークの色
    );
  }

  /// ② Secondary: アウトラインスタイル
  /// チェックされても背景は塗らず（白や透明のまま）、枠線とチェックマーク自体に色をつける
  CheckboxThemeData get checkboxSecondary {
    return CheckboxThemeData(
      // 背景色は常に透明、または反転色にする
      fillColor: WidgetStateProperty.resolveWith<Color?>((states) {
        return Colors.transparent; // 常に背景は塗らない
      }),
      // 枠線の色を制御（未チェック時とチェック時で色を変える）
      side: WidgetStateBorderSide.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return BorderSide(
            color: _colors.primary,
            width: 2.0,
          ); // チェック時はプライマリ色の枠線
        }
        return BorderSide(color: _colors.outline, width: 2.0); // 未チェック時の枠線
      }),
      checkColor: WidgetStateProperty.all(_colors.primary), // チェックマーク自体をプライマリ色に
    );
  }

  /// ③ Tertiary: チェックのみ（枠線なし）
  /// 外枠（Border）が一切なく、チェックを入れた瞬間にチェックマークだけが浮かび上がるスタイル
  CheckboxThemeData get checkboxTertiary {
    return CheckboxThemeData(
      //fillColor: WidgetStateProperty.all(Colors.transparent), // 背景は常に透明
      fillColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.transparent; // チェック時は透明
        }
        return _colors.primaryFixed;
      }),
      // 枠線を完全に消し去る（色を透明にする）
      side: const BorderSide(color: Colors.transparent, width: 0),
      checkColor: WidgetStateProperty.all(_colors.primary), // チェックマークの色
    );
  }
}

///[Checkbox]自体に対する Extension を追加
extension CheckboxPatternX on Checkbox {
  Widget toPrimary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(checkboxTheme: context.checkboxPrimary),
    child: this,
  );
  Widget toSecondary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(checkboxTheme: context.checkboxSecondary),
    child: this,
  );
  Widget toTertiary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(checkboxTheme: context.checkboxTertiary),
    child: this,
  );
}

///[CheckboxListTile]自体に対する Extension を追加
extension CheckboxListTilePatternX on CheckboxListTile {
  /// タイルの中のチェックボックスを Primary (ソリッド) にしてラップ
  Widget toPrimary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(checkboxTheme: context.checkboxPrimary),
    child: this,
  );

  /// タイルの中のチェックボックスを Secondary (アウトライン) にしてラップ
  Widget toSecondary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(checkboxTheme: context.checkboxSecondary),
    child: this,
  );

  /// タイルの中のチェックボックスを Tertiary (チェックのみ) にしてラップ
  Widget toTertiary(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(checkboxTheme: context.checkboxTertiary),
    child: this,
  );
}
