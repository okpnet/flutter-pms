import 'package:baton_lib/baton_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ログアウトの実体。ログアウト画面を開いたときに1回呼ぶ。既定は何もしない。
///
/// 認証を持つアプリ・機能が上書きする(例: `auth_files` の `authFilesSignOut` が、PocketBase の
/// セッションと保管庫のログイン情報を破棄する)。失敗しても、ログアウト画面は表示する
/// (失敗は呼び出された関数がログに残す)。
final signOutProvider = Provider<Future<void> Function()>((ref) => () async {});

/// ログアウト後の「ログインする」ボタンの遷移先。null のときは、認証の導入前の仮の動き
/// (標準のユーザーに戻して先頭へ)になる。
///
/// 認証を持つアプリが、ログイン画面の遷移先(`LoginDestination`)を指定する。
final signInDestinationProvider = Provider<PageDestination<Object?>?>(
  (ref) => null,
);
