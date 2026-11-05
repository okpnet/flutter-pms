import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 認証の方式。
enum AuthMode {
  /// 認証サーバー(PocketBase)でログインする。標準。
  server,

  /// 認証サーバーに接続していない開発用。ログイン画面は資格情報を求めず、標準のユーザーでログインする。
  /// 資格情報を確認しないため、本番のビルドでは使わないこと(アプリが `POCKETBASE_URL` を指定しない場合の動き)。
  provisional,
}

/// 認証の方式。アプリが、認証サーバーに接続しているかに応じて上書きする。
final authModeProvider = Provider<AuthMode>((ref) => AuthMode.server);
