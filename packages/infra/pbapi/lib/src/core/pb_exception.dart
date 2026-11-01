import 'package:pocketbase/pocketbase.dart';

/// 失敗の種類。画面は [PbException.kind] で表示を分ける。
enum PbFailureKind {
  /// 入力が受け付けられなかった(400。招待コードの誤り、パスワードの不備など)。
  validation,

  /// ユーザーIDまたはパスワードが違う(ログインの400)。
  invalidCredentials,

  /// ログインが必要、またはセッションが無効(401)。
  unauthorized,

  /// 権限が無い(403)。
  forbidden,

  /// 対象が無い(404)。
  notFound,

  /// 試行が多すぎる(429)。
  rateLimited,

  /// サーバーの内部エラー(5xx)。
  server,

  /// 通信できない(接続断・タイムアウト)。
  network,

  /// 設定されていない機能を呼んだ。
  notConfigured,

  unknown,
}

/// このライブラリが投げる例外。SDK の [ClientException](URLにトークンが入りうる)は外へ出さない。
class PbException implements Exception {
  const PbException(
    this.kind, {
    this.statusCode = 0,
    this.message = '',
    this.fieldErrors = const {},
  });

  final PbFailureKind kind;
  final int statusCode;

  /// サーバーが返したメッセージ(あれば)。
  final String message;

  /// 項目ごとのエラー(例: `{'password': 'Must be at least 8 character(s).'}`)。
  final Map<String, String> fieldErrors;

  /// 通信・サーバーの問題で、少し待てばやり直せる可能性がある。
  bool get isTransient =>
      kind == PbFailureKind.network || kind == PbFailureKind.server;

  /// SDK の例外を変換する。[badRequestAs] は 400 の読み替え(ログインでは invalidCredentials)。
  factory PbException.fromClient(
    ClientException e, {
    PbFailureKind badRequestAs = PbFailureKind.validation,
  }) {
    final status = e.statusCode;
    final kind = switch (status) {
      0 => PbFailureKind.network,
      400 => badRequestAs,
      401 => PbFailureKind.unauthorized,
      403 => PbFailureKind.forbidden,
      404 => PbFailureKind.notFound,
      429 => PbFailureKind.rateLimited,
      >= 500 => PbFailureKind.server,
      _ => PbFailureKind.unknown,
    };
    final data = e.response['data'];
    return PbException(
      kind,
      statusCode: status,
      message: '${e.response['message'] ?? ''}',
      fieldErrors: {
        if (data is Map)
          for (final entry in data.entries)
            if (entry.value is Map)
              '${entry.key}': '${(entry.value as Map)['message'] ?? ''}',
      },
    );
  }

  Map<String, Object?> toJson() => {
    'kind': kind.name,
    'statusCode': statusCode,
    'message': message,
    'fieldErrors': fieldErrors,
  };

  @override
  String toString() =>
      'PbException(${kind.name}, status: $statusCode, $message)';
}
