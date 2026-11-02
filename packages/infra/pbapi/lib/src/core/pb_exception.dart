import 'package:pocketbase/pocketbase.dart';

/// 失敗の種類。呼び出し側は [PbException.kind] で処理を分ける。
///
/// このライブラリはユーザーに見せる文言を持たない。メッセージはログ・エラー追跡のためのもので、
/// 利用者向けの文言への置き換えはページ(画面)側の責務。
enum PbFailureKind {
  /// 入力が受け付けられなかった(400。コードの誤り・期限切れ、パスワードの不備など)。
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

  /// 受け付けていない(503。登録申請の受付停止、またはサーバーの一時的な停止)。
  unavailable,

  /// サーバーの内部エラー(5xx。503を除く)。
  server,

  /// 通信できない(接続断・タイムアウト)。
  network,

  unknown,
}

/// このライブラリが投げる例外。SDK の [ClientException](URLにトークンが入りうる)は外へ出さない。
class PbException implements Exception {
  const PbException(
    this.kind, {
    this.statusCode = 0,
    this.operation = '',
    this.message = '',
    this.fieldErrors = const {},
  });

  final PbFailureKind kind;
  final int statusCode;

  /// 失敗した操作の名前(例: `login`、`acceptCode`)。どの機能の失敗かを切り分けるため。
  final String operation;

  /// サーバーが返したメッセージ(あれば)。ログ用で、利用者に見せる前提ではない。
  final String message;

  /// 項目ごとのエラーコード(例: `{'password': 'validation_length_out_of_range'}`)。
  /// 文言ではなくコードを持つ。入力値は含まない。
  final Map<String, String> fieldErrors;

  /// 通信・サーバーの問題で、少し待てばやり直せる可能性がある。
  bool get isTransient =>
      kind == PbFailureKind.network ||
      kind == PbFailureKind.server ||
      kind == PbFailureKind.unavailable;

  /// ログに残す1行。操作・種類・ステータス・項目のコード・サーバーのメッセージだけで、
  /// パスワード・コード・トークン・URLは含まない。
  String get logMessage {
    final b = StringBuffer('[pbapi] ');
    if (operation.isNotEmpty) b.write('$operation: ');
    b.write('${kind.name} (status=$statusCode)');
    if (fieldErrors.isNotEmpty) {
      b.write(
        ' fields={${fieldErrors.entries.map((e) => '${e.key}:${e.value}').join(', ')}}',
      );
    }
    if (message.isNotEmpty) b.write(' server="$message"');
    return b.toString();
  }

  /// SDK の例外を変換する。[badRequestAs] は 400 の読み替え(ログインでは invalidCredentials)。
  factory PbException.fromClient(
    ClientException e, {
    String operation = '',
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
      503 => PbFailureKind.unavailable,
      >= 500 => PbFailureKind.server,
      _ => PbFailureKind.unknown,
    };
    final data = e.response['data'];
    return PbException(
      kind,
      statusCode: status,
      operation: operation,
      message: '${e.response['message'] ?? ''}',
      fieldErrors: {
        if (data is Map)
          for (final entry in data.entries)
            if (entry.value is Map)
              '${entry.key}': '${(entry.value as Map)['code'] ?? ''}',
      },
    );
  }

  Map<String, Object?> toJson() => {
    'kind': kind.name,
    'statusCode': statusCode,
    'operation': operation,
    'message': message,
    'fieldErrors': fieldErrors,
  };

  @override
  String toString() => logMessage;
}
