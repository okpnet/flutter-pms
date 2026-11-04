import 'package:baton_lib/baton_lib.dart';

/// 裏設定のページへ。入口の判定(`IBackstageEntryGate`)に一致したときだけ、ログインページが使う。
/// 入口を通っていないときは、ページは何も出さずに戻す。
final class BackstageDestination extends PageDestination<void> {
  const BackstageDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> backstageDestinationSamples = [
  BackstageDestination(),
];
