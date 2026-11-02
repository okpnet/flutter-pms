import 'package:http/http.dart' as http;
import 'package:logger_provider/logger_provider.dart';
import 'package:pocketbase/pocketbase.dart';

import 'pb_endpoint.dart';
import 'pb_exception.dart';
import 'token_store.dart';

/// PocketBase への接続(SDK のクライアント・トークンの保存先・ロガー)。各サービスが共有する。
class PbConnection {
  PbConnection._(this.endpoint, this.pb, this.logger, this._httpClientFactory);

  final PbEndpoint endpoint;
  final PocketBase pb;
  final ILoggerProvider logger;
  final http.Client Function() _httpClientFactory;

  /// 接続を開く。[tokenStore] に保存済みのログイン情報があれば復元する(期限切れなら捨てる)。
  ///
  /// [httpClientFactory] はテストで通信を差し替えるためのもの。
  /// [ArgumentError]: [url] が不正、またはローカル以外の `http`。
  static Future<PbConnection> open({
    required String url,
    required ILoggerProvider logger,
    ITokenStore? tokenStore,
    http.Client Function()? httpClientFactory,
  }) async {
    final endpoint = PbEndpoint.parse(url);
    final store = tokenStore ?? InMemoryTokenStore();
    final factory = httpClientFactory ?? http.Client.new;
    final authStore = AsyncAuthStore(
      save: store.write,
      clear: store.delete,
      initial: await store.read(),
    );
    if (authStore.token.isNotEmpty && !authStore.isValid) authStore.clear();
    final pb = PocketBase(
      endpoint.baseUrl,
      authStore: authStore,
      httpClientFactory: factory,
    );
    return PbConnection._(endpoint, pb, logger, factory);
  }

  /// ログイン中でなければ [PbException]([PbFailureKind.unauthorized])を投げる。
  ///
  /// PocketBase は、一覧の権限が無いときに権限エラーではなく空の一覧を返す。未ログインを
  /// 「見つからない」と取り違えないよう、通信の前に確認する。
  void requireLogin() {
    if (!pb.authStore.isValid) {
      throw const PbException(
        PbFailureKind.unauthorized,
        message: 'not logged in (checked before sending)',
      );
    }
  }

  /// ファイルのダウンロードなど、SDK を通さない通信に使う HTTP クライアント。使い終わったら close する。
  http.Client newHttpClient() => _httpClientFactory();

  /// SDK の例外を [PbException] にして投げ直す。通信・サーバーの失敗だけをエラーログに残し、
  /// 入力の誤りや認証の失敗(想定内)は debug にとどめる。ログはどちらも [PbException.logMessage]
  /// (パスワード・コード・トークン・URLは含まない)。
  Future<T> guard<T>(
    String operation,
    Future<T> Function() body, {
    PbFailureKind badRequestAs = PbFailureKind.validation,
  }) async {
    try {
      return await body();
    } on ClientException catch (e) {
      final ex = PbException.fromClient(
        e,
        operation: operation,
        badRequestAs: badRequestAs,
      );
      if (ex.kind == PbFailureKind.network ||
          ex.kind == PbFailureKind.server ||
          ex.kind == PbFailureKind.unknown) {
        logger.error(ex.logMessage);
      } else {
        logger.debug(ex.logMessage);
      }
      throw ex;
    }
  }

  Map<String, Object?> toJson() => {
    'endpoint': endpoint.baseUrl,
    'isLoggedIn': pb.authStore.isValid,
  };
}
