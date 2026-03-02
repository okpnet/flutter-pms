import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:pms_authenticator/auth_controller.dart';

class CallbackServer {
  HttpServer? _callbackServer;
  final String url;
  final ILogger? logger;

  CallbackServer({required this.url, this.logger});

  Future<void> init(
    Function(String code) completeDelegate, {
    Function()? failerDelegate,
  }) async {
    logger?.debug('CallbackServer Initialization start.');
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
      logger?.debug('The callback server listened for the request.');
      logger?.info('CALLBACK STATE:${request.response.statusCode}');

      // ユーザー向けに軽いHTMLを返答（真っ白回避）
      // request.response.headers.contentType = ContentType.html;
      // request.response.write(
      //   '<html><body>サインイン処理に戻っています。ウィンドウを閉じても構いません。</body></html>',
      // );

      final code = uri.queryParameters['code'];
      if (code == null) {
        failerDelegate?.call();
        logger?.error('CALLBACK QUERYPARAMETER CODE NULL');
        return;
      }
      //debug
      // log('code:$code');
      completeDelegate(code);
      logger?.info('CALLBACK LISTEN COMPLETE');
    });
    logger?.debug('CallbackServer Initialization complete.');
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
