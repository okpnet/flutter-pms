/// コードの種類。
enum CodeKind {
  /// 有効化コード(承認後、本人が初めてパスワードを決める)。
  activate,

  /// 再設定コード(パスワードを忘れたとき)。
  reset;

  static CodeKind parse(Object? value) =>
      value == 'reset' ? CodeKind.reset : CodeKind.activate;
}

/// 管理者が発行したコード。本人へ手渡しする(メールで送れたときは [mailed] が true)。
///
/// [code] は秘密情報。[toJson]・[toString] には含めない(ログ・エラー追跡に残さないため)。
class IssuedCode {
  const IssuedCode({
    required this.userId,
    required this.username,
    required this.appUserId,
    required this.kind,
    required this.code,
    required this.expiresAt,
    required this.mailed,
  });

  /// PocketBase 上のユーザーのレコードID。
  final String userId;
  final String username;

  /// アプリのDB側のユーザーID(まだ無ければ空)。
  final String appUserId;
  final CodeKind kind;

  /// 本人に渡すコード(`ABCD-EFGH-JKLM`)。
  final String code;
  final DateTime? expiresAt;

  /// サーバーがメールで送った。false なら手渡しが必要。
  final bool mailed;

  factory IssuedCode.fromJson(Map<String, dynamic> json) {
    final user = json['user'];
    final u = user is Map ? user : const {};
    return IssuedCode(
      userId: '${u['id'] ?? ''}',
      username: '${u['username'] ?? ''}',
      appUserId: '${u['app_user_id'] ?? ''}',
      kind: CodeKind.parse(json['kind']),
      code: '${json['code'] ?? ''}',
      expiresAt: DateTime.tryParse('${json['expires_at'] ?? ''}'),
      mailed: json['mailed'] == true,
    );
  }

  Map<String, Object?> toJson() => {
    'userId': userId,
    'username': username,
    'appUserId': appUserId,
    'kind': kind.name,
    'expiresAt': expiresAt?.toIso8601String(),
    'mailed': mailed,
  };

  @override
  String toString() => 'IssuedCode(${toJson()})';
}
