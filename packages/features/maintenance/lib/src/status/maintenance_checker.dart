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

/// メンテナンス情報サーバー(`tools/docker/maintenance`)が、メンテナンスの表示用に置く情報ファイルのパス。
/// 確認先(`/health`)と同じサーバーの `/info/maintenance.json`。キーは `message`・`startAt`・`endAt`(ISO 8601)。
const maintenanceInfoPath = '/info/maintenance.json';

/// HTTP の応答で確認する。HTTP 503 をメンテナンス中として扱う(サーバーの推奨は
/// 「HTTP 503 + `Retry-After`」)。
///
/// メンテナンス中のときは、表示の情報を [infoUri](既定は同じサーバーの [maintenanceInfoPath])から読む。
/// JSON のキーは `message`・`startAt`・`endAt`。読めない(無い・通信の失敗)ときは、503 の本文が JSON なら
/// 同じキーをそこから読み、それも無ければ既定の文面にする。
///
/// 通信できないとき(接続の失敗・時間切れ)は、メンテナンスとは言えないため利用可能として扱い、
/// このライブラリ側のログに残す。
class HttpMaintenanceChecker implements IMaintenanceChecker {
  HttpMaintenanceChecker({
    required this.uri,
    http.Client? client,
    Uri? infoUri,
    this.timeout = const Duration(seconds: 10),
    ILoggerProvider? logger,
  }) : infoUri =
           infoUri ??
           Uri(
             scheme: uri.scheme,
             host: uri.host,
             port: uri.hasPort ? uri.port : null,
             path: maintenanceInfoPath,
           ),
       _client = client ?? http.Client(),
       _log = logger;

  /// 確認先(サーバーの状態を返す URL)。
  final Uri uri;

  /// メンテナンス中の表示の情報(JSON)の URL。
  final Uri infoUri;
  final Duration timeout;
  final http.Client _client;
  final ILoggerProvider? _log;

  @override
  Future<MaintenanceStatus> check() async {
    try {
      final response = await _client.get(uri).timeout(timeout);
      if (response.statusCode != 503) return MaintenanceStatus.available;
      return await _fromResponse(response);
    } catch (e, s) {
      _log?.error('[maintenance] メンテナンスの確認に失敗しました uri=$uri', ex: e, trace: s);
      return MaintenanceStatus.available;
    }
  }

  Future<MaintenanceStatus> _fromResponse(http.Response response) async {
    final info = await _readInfo();
    final body = _decode(response.bodyBytes);
    final message = _messageOf(info) ?? _messageOf(body);
    final startAt = _timeOf(info, 'startAt') ?? _timeOf(body, 'startAt');
    final endAt = _timeOf(info, 'endAt') ?? _timeOf(body, 'endAt');
    final seconds = int.tryParse(response.headers['retry-after'] ?? '');
    return MaintenanceStatus(
      isUnderMaintenance: true,
      message: message,
      startAt: startAt,
      endAt: endAt,
      retryAfter: seconds == null ? null : Duration(seconds: seconds),
    );
  }

  /// 表示の情報ファイルを読む。無い・読めないときは null(メンテナンスの判定には影響しない)。
  Future<Map<dynamic, dynamic>?> _readInfo() async {
    try {
      final response = await _client.get(infoUri).timeout(timeout);
      if (response.statusCode != 200) return null;
      return _decode(response.bodyBytes);
    } catch (e, s) {
      _log?.error(
        '[maintenance] メンテナンスの表示情報を読めませんでした uri=$infoUri',
        ex: e,
        trace: s,
      );
      return null;
    }
  }

  static Map<dynamic, dynamic>? _decode(List<int> bytes) {
    try {
      final body = jsonDecode(utf8.decode(bytes));
      return body is Map ? body : null;
    } on FormatException {
      return null; // JSON でないときは、既定の文面にする
    }
  }

  static String? _messageOf(Map<dynamic, dynamic>? json) =>
      json?['message'] is String ? json!['message'] as String : null;

  static DateTime? _timeOf(Map<dynamic, dynamic>? json, String key) =>
      json?[key] == null ? null : DateTime.tryParse('${json![key]}');
}
