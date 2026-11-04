import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ユーザーが自分のイメージを変更できるか(起動時のプロパティ `isChangeUserImage`)。
///
/// 標準は `false`(変更できるのはユーザーを追加できる管理者)。
/// 起動時に `--dart-define=IS_CHANGE_USER_IMAGE=true` で `true` にできる。
/// 実行中の設定(アプリケーションの裏設定)は、この Provider を上書きして差し込む。
/// 優先順位は、起動時の値を最優先とし、次に裏設定の値、最後に標準(`false`)。
final isChangeUserImageProvider = Provider<bool>(
  (ref) => const bool.fromEnvironment('IS_CHANGE_USER_IMAGE'),
);
