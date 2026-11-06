import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 認証の方式。
enum AuthMode {
  /// 認証サーバー(PocketBase)でログインする。標準。
  server,

  /// 認証サーバーの接続先が未設定(アプリが `POCKETBASE_URL` も裏設定も持たない)。
  /// ログイン画面は通常のまま資格情報を求めるが、裏設定の入口に一致しないログインは、
  /// 「接続先が設定されていない」エラーにする(標準のユーザーでのログインはない)。
  unconfigured,
}

/// 認証の方式。アプリが、認証サーバーに接続しているかに応じて上書きする。
final authModeProvider = Provider<AuthMode>((ref) => AuthMode.server);
