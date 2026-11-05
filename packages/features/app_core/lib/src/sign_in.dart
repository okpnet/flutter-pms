import 'package:baton_lib/baton_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ログイン画面の遷移先。他の機能が「ログイン画面へ戻る」ときに使う(例: 裏設定を終えるとき)。
///
/// ログイン・ログアウトの画面は `auth_files` が持つ。`auth_files` に依存しない機能が
/// ログインへ向かえるよう、アプリが `auth_files` の `LoginDestination` を指定する。未指定は null。
final signInDestinationProvider = Provider<PageDestination<Object?>?>(
  (ref) => null,
);
