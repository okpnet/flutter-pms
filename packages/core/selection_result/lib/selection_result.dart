/// 選択画面が呼び出し元へ返す選択の結果。
///
/// 選択を返すページ間移動(例: `EntityPickerDestination`)は、結果として [Selection] を戻す。
/// 機能同士はコンパイル時に依存せず、対象の種類(キー)と一意な id と、任意の値だけで受け渡す。
library;

export 'src/selection.dart';
