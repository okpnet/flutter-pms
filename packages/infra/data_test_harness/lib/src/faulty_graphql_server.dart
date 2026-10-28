import 'dart:async';
import 'dart:convert';
import 'dart:io';

/// 受け取った要求の記録。
class RecordedRequest {
  RecordedRequest(this.headers, this.body);

  /// ヘッダー(名前は小文字)。
  final Map<String, String> headers;

  /// 要求の本文(GraphQLのJSON)。
  final String body;

  String? get authorization => headers['authorization'];
}

/// 応答の振る舞い。
enum FaultKind {
  /// 通常の応答(`data`を返す)。
  none,

  /// [FaultyGraphqlServer.delay]だけ待ってから通常の応答を返す。
  delay,

  /// 応答の途中(本文の一部を送った時点)で接続を切る。
  dropMidResponse,

  /// 応答を返さず、要求を受けたところで接続を切る。
  dropBeforeResponse,

  /// [FaultyGraphqlServer.status]のHTTPエラーを返す(認証エラーなど)。
  status,
}

/// 通信の異常を再現する、ローカルのGraphQLサーバーの代役(テスト専用)。
///
/// 実サーバーでは起こしにくい遅延・途中の切断・認証エラーを、決まった形で再現する。
/// 実サーバーのデータには触れない。ポートは空きを自動で選ぶ。
///
/// GoFパターン: Test Double(Fake)。
class FaultyGraphqlServer {
  FaultyGraphqlServer._(this._server);

  final HttpServer _server;

  /// 次の要求からの振る舞い。
  FaultKind kind = FaultKind.none;

  /// [FaultKind.delay]で待つ時間。
  Duration delay = const Duration(seconds: 2);

  /// [FaultKind.status]で返すHTTPステータス。
  int status = 401;

  /// [FaultKind.status]で返す本文。nullのときはGraphQLのエラー形式(`{"errors":[...]}`)。
  /// 認証基盤(リバースプロキシなど)が返す、GraphQLのエラーを含まないJSONの本文を再現するときに指定する。
  String? statusBody;

  /// 通常の応答の`data`。
  Map<String, Object?> data = const {'__typename': 'Query'};

  /// 受け取った要求(古い順)。
  final requests = <RecordedRequest>[];

  /// 受け取った要求の数。
  int get requestCount => requests.length;

  /// 接続先のURL。
  String get url => 'http://${_server.address.host}:${_server.port}/graphql';

  static Future<FaultyGraphqlServer> start() async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    final fake = FaultyGraphqlServer._(server);
    unawaited(fake._listen());
    return fake;
  }

  Future<void> _listen() async {
    await for (final request in _server) {
      unawaited(_handle(request));
    }
  }

  Future<void> _handle(HttpRequest request) async {
    final headers = <String, String>{};
    request.headers.forEach((name, values) => headers[name] = values.join(','));
    final body = await utf8.decoder.bind(request).join();
    requests.add(RecordedRequest(headers, body));
    final response = request.response;
    try {
      switch (kind) {
        case FaultKind.none:
          await _ok(response);
        case FaultKind.delay:
          await Future<void>.delayed(delay);
          await _ok(response);
        case FaultKind.status:
          response.statusCode = status;
          response.headers.contentType = statusBody == null
              ? ContentType.json
              : ContentType.json;
          response.write(
            statusBody ??
                jsonEncode({
                  'errors': [
                    {'message': 'HTTP $status'},
                  ],
                }),
          );
          await response.close();
        case FaultKind.dropBeforeResponse:
          (await response.detachSocket(writeHeaders: false)).destroy();
        case FaultKind.dropMidResponse:
          final socket = await response.detachSocket(writeHeaders: false);
          // 本文の長さを実際より長く宣言し、一部だけ送って切る。
          socket.write(
            'HTTP/1.1 200 OK\r\n'
            'content-type: application/json\r\n'
            'content-length: 1000\r\n\r\n'
            '{"data":{"__typena',
          );
          await socket.flush();
          socket.destroy();
      }
    } catch (_) {
      // 相手が先に切断した場合など。再現の邪魔にならないよう握りつぶす。
    }
  }

  Future<void> _ok(HttpResponse response) async {
    response.headers.contentType = ContentType.json;
    response.write(jsonEncode({'data': data}));
    await response.close();
  }

  Future<void> close() => _server.close(force: true);
}
