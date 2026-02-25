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
    final uri = Uri(path: url);
    _callbackServer = await HttpServer.bind(uri, uri.port);
    if (_callbackServer == null) {
      throw Exception('HttpServer bind result null.');
    }

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
}
