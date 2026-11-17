/// 読み込み中の表示の部品。
///
/// - [LoadingIndicator]: 円(大きさ・線の太さ・色は [LoadingTheme] から取る)。`.centered` は中央に置く
/// - [LoadingBar]: 横に長いバー(ボタンの下・画面の上端など)
/// - [LoadingTheme]: 見た目の差し替え(`ThemeData.extensions` に入れる。入れなければ既定)
library;

export 'src/loading_indicator.dart';
export 'src/loading_theme.dart';
