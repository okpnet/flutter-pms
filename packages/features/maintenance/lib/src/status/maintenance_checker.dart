import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger_provider/logger_provider.dart';

import 'maintenance_status.dart';

/// サーバーのメンテナンスの状態を確認する窓口。実体(HTTP・GraphQL の応答)はアプリが差し込む。
abstract interface class IMaintenanceChecker {
  Future<MaintenanceStatus> check();
}

/// 常に利用できると答える。既定の実装で、テストで使う。
///
/// パターン: Null Object
class AlwaysAvailableMaintenanceChecker implements IMaintenanceChecker {
  const AlwaysAvailableMaintenanceChecker();

  @override
  Future<MaintenanceStatus> check() async => MaintenanceStatus.available;
}

/// HTTP の応答で確認する。HTTP 503 をメンテナンス中として扱う(サーバーの推奨は
/// 「HTTP 503 + `Retry-After`」)。本文が JSON のときは `message`・`startAt`・`endAt` を読む。
///
/// 通信できないとき(接続の失敗・時間切れ)は、メンテナンスとは言えないため利用可能として扱い、
/// このライブラリ側のログに残す。
class HttpMaintenanceChecker implements IMaintenanceChecker {
  HttpMaintenanceChecker({
    required this.uri,
    http.Client? client,
    this.timeout = const Duration(seconds: 10),
    ILoggerProvider? logger,
  }) : _client = client ?? http.Client(),
       _log = logger;

  /// 確認先(サーバーの状態を返す URL)。
  final Uri uri;
  final Duration timeout;
  final http.Client _client;
  final ILoggerProvider? _log;

  @override
  Future<MaintenanceStatus> check() async {
    try {
      final response = await _client.get(uri).timeout(timeout);
      if (response.statusCode != 503) return MaintenanceStatus.available;
      return _fromResponse(response);
    } catch (e, s) {
      _log?.error('[maintenance] メンテナンスの確認に失敗しました uri=$uri', ex: e, trace: s);
      return MaintenanceStatus.available;
    }
  }

  MaintenanceStatus _fromResponse(http.Response response) {
    String? message;
    DateTime? startAt;
    DateTime? endAt;
    try {
      final body = jsonDecode(utf8.decode(response.bodyBytes));
      if (body is Map) {
        message = body['message'] is String ? body['message'] as String : null;
        startAt = DateTime.tryParse('${body['startAt']}');
        endAt = DateTime.tryParse('${body['endAt']}');
      }
    } on FormatException {
      // 本文が JSON でないときは、既定の文面にする
    }
    final seconds = int.tryParse(response.headers['retry-after'] ?? '');
    return MaintenanceStatus(
      isUnderMaintenance: true,
      message: message,
      startAt: startAt,
      endAt: endAt,
      retryAfter: seconds == null ? null : Duration(seconds: seconds),
    );
  }
}
