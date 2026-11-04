import 'package:baton_lib/baton_lib.dart';

/// 自分のイメージ(ログインユーザーの顔写真の確認・変更)へ。
final class MyImageDestination extends PageDestination<void> {
  const MyImageDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> userProfileDestinationSamples = [
  MyImageDestination(),
];
