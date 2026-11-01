import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';

/// エラーログを記録するロガー。
class RecordingLogger implements ILoggerProvider {
  final errors = <String>[];

  @override
  int get level => 0;
  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}
  @override
  void error(String message, {Object? ex, StackTrace? trace}) =>
      errors.add(message);
  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) {}
}

/// 有効期限つきの JWT(署名は検証されない)。
String fakeJwt({Duration validFor = const Duration(days: 7)}) {
  String enc(Map<String, Object?> m) =>
      base64Url.encode(utf8.encode(jsonEncode(m))).replaceAll('=', '');
  final exp = DateTime.now().add(validFor).millisecondsSinceEpoch ~/ 1000;
  return '${enc({'alg': 'HS256', 'typ': 'JWT'})}.${enc({'exp': exp, 'id': 'u1'})}.sig';
}

Map<String, Object?> authBody({String token = ''}) => {
  'token': token.isEmpty ? fakeJwt() : token,
  'record': {
    'id': 'u1',
    'collectionId': 'c_users',
    'collectionName': 'users',
    'username': 'tanaka.t',
    'app_user_id': 'U0001',
  },
};

typedef FakeHandler = http.Response Function(http.Request request);

/// 通信を差し替える PocketBase の代役。呼び出された要求を記録する。
class FakePocketBase {
  final handlers = <String, FakeHandler>{};
  final requests = <http.Request>[];

  /// `METHOD /path`(クエリを除く)に対する応答を登録する。
  /// true の間は、すべての通信が失敗する(接続断)。
  bool offline = false;

  void on(String method, String path, FakeHandler handler) =>
      handlers['$method $path'] = handler;

  http.Response json(Object? body, {int status = 200}) => http.Response(
    jsonEncode(body),
    status,
    headers: {'content-type': 'application/json; charset=utf-8'},
  );

  MockClient get client => MockClient((request) async {
    requests.add(request);
    if (offline) throw http.ClientException('offline');
    final handler = handlers['${request.method} ${request.url.path}'];
    if (handler == null) {
      return json({'message': 'not found', 'status': 404}, status: 404);
    }
    return handler(request);
  });

  Future<PbConnection> open({
    ITokenStore? tokenStore,
    RecordingLogger? logger,
  }) => PbConnection.open(
    url: 'http://192.168.1.103:8090/api',
    logger: logger ?? RecordingLogger(),
    tokenStore: tokenStore,
    httpClientFactory: () => client,
  );

  List<http.Request> where(String method, String path) =>
      requests.where((r) => r.method == method && r.url.path == path).toList();
}
