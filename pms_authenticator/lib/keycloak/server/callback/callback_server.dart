import 'dart:async';
import 'dart:io';

class CallbackServer {
  HttpServer? _callbackServer;
  final String url;

  CallbackServer({required this.url});

  Future<void> init(
    Function(String code) completeDelegate, {
    Function()? failerDelegate,
  }) async {
    // URL文字列をパースし、ホストとポートを取得する
    final uri = Uri.parse(url);

    final bindHost = uri.host.isNotEmpty
        ? uri.host
        : InternetAddress.loopbackIPv4.address;
    final bindPort = uri.hasPort && uri.port > 0 ? uri.port : 0;

    _callbackServer = await HttpServer.bind(bindHost, bindPort);
    if (_callbackServer == null) {
      throw Exception('HttpServer bind result null.');
    }
    //コールバックイベントハンドラ
    _callbackServer!.listen((HttpRequest request) {
      final uri = request.uri;

      // ユーザー向けに軽いHTMLを返答（真っ白回避）
      request.response.headers.contentType = ContentType.html;
      request.response.write(
        '<html><body>サインイン処理に戻っています。ウィンドウを閉じても構いません。</body></html>',
      );

      final code = uri.queryParameters['code'];
      if (code == null) {
        failerDelegate?.call();
        return;
      }
      completeDelegate(code);
    });
  }

  void dispose() {
    if (_callbackServer == null) {
      return;
    }
    Future.microtask(
      () => _callbackServer!.close(),
    ).whenComplete(() => _callbackServer = null);
  }

  /// ポート番号 (テスト用)
  int? get port => _callbackServer?.port;
}
