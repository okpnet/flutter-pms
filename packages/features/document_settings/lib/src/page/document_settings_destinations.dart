import 'package:baton_lib/baton_lib.dart';

/// 承認スタンプ・PDF の設定(`info_app.settings`)の画面へ。変えられるのは管理者だけ(それ以外は閲覧のみ)。
final class DocumentSettingsDestination extends PageDestination<void> {
  const DocumentSettingsDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも 1 件足す。
const List<PageDestination<Object?>> documentSettingsDestinationSamples = [
  DocumentSettingsDestination(),
];
