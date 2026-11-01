import 'dart:convert';

import 'package:pocketbase/pocketbase.dart';

/// ログイン中のセッションの情報。
///
/// [token] は秘密情報。[toJson] には含めない(ログ・エラー追跡に残さないため)。
class AuthSession {
  const AuthSession({
    required this.token,
    required this.userId,
    required this.username,
    required this.appUserId,
    this.expiresAt,
  });

  /// PocketBase が発行した JWT。API 呼び出しの `Authorization` に使う。
  final String token;

  /// PocketBase 上のユーザーのレコードID。
  final String userId;

  /// ログインに使うユーザーID。
  final String username;

  /// アプリのDB側のユーザーID(管理者が設定)。
  final String appUserId;

  /// トークンの有効期限(JWT の `exp`)。読めなければ null。
  final DateTime? expiresAt;

  /// 保存済みの認証情報から作る。ログインしていなければ null。
  static AuthSession? fromAuthStore(AuthStore store) {
    final record = store.record;
    if (!store.isValid || record == null) return null;
    return AuthSession(
      token: store.token,
      userId: record.id,
      username: record.getStringValue('username'),
      appUserId: record.getStringValue('app_user_id'),
      expiresAt: _expiry(store.token),
    );
  }

  static DateTime? _expiry(String jwt) {
    final parts = jwt.split('.');
    if (parts.length != 3) return null;
    try {
      final payload = jsonDecode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
      );
      final exp = payload is Map ? payload['exp'] : null;
      return exp is num
          ? DateTime.fromMillisecondsSinceEpoch(exp.toInt() * 1000, isUtc: true)
          : null;
    } catch (_) {
      return null;
    }
  }

  Map<String, Object?> toJson() => {
    'userId': userId,
    'username': username,
    'appUserId': appUserId,
    'expiresAt': expiresAt?.toIso8601String(),
  };

  @override
  String toString() => 'AuthSession(${toJson()})';
}
