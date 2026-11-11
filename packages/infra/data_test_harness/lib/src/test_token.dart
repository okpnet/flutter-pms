import 'dart:convert';
import 'dart:io';

/// 検証用サーバーを使うテストの、GraphQL 用の JWT(PocketBase が発行する短期のトークン)を用意する。
///
/// アプリと同じ手順: PocketBase のテスト用ユーザーでログイン →
/// `GET /api/app/graphql-token` → `Authorization: Bearer <JWT>`。
/// 資格情報は実行時に渡す(コード・Git には書かない)。
///   `--dart-define=PMS_TEST_USER=...` `--dart-define=PMS_TEST_PASSWORD=...`
///   または、同名の環境変数。接続先は `PMS_TEST_POCKETBASE_URL`(既定 `http://192.168.1.103:8090`)。
/// 読み取りのテストは一般ユーザー(`role=user` → DB のロール `pms_user`)で行う(管理者だけで確認しない)。
///
/// PocketBase のログインは同一 IP で 1 分 10 回までの制限があるため、取得した JWT は
/// 一時フォルダに、期限の手前まで共有する(テストのファイルごとのプロセスで、ログインを繰り返さない)。
/// JWT は 15 分で切れる短期のもの。テストの後に残っても、期限が過ぎれば使えない。
///
/// GoF パターン: Proxy(トークンの取得と使い回しを、呼び出し側から隠す)。
class TestToken {
  const TestToken._(this.value, this.expiresAt);

  /// `Authorization` ヘッダーの値(`Bearer …`)。
  final String value;

  /// JWT の期限。
  final DateTime expiresAt;

  static const _definedUser = String.fromEnvironment('PMS_TEST_USER');
  static const _definedPassword = String.fromEnvironment('PMS_TEST_PASSWORD');
  static const _definedUrl = String.fromEnvironment('PMS_TEST_POCKETBASE_URL');
  static const defaultPocketBaseUrl = 'http://192.168.1.103:8090';

  /// 期限のこの手前までを、使える JWT とみなす。
  static const margin = Duration(seconds: 60);

  static String _setting(String defined, String envName) {
    if (defined.isNotEmpty) return defined;
    return Platform.environment[envName] ?? '';
  }

  /// テスト用ユーザーの資格情報が渡されているか。
  static bool get isConfigured =>
      _setting(_definedUser, 'PMS_TEST_USER').isNotEmpty &&
      _setting(_definedPassword, 'PMS_TEST_PASSWORD').isNotEmpty;

  /// PocketBase の接続先(末尾の `/` と `/api` を除く)。
  static String get pocketBaseUrl {
    var url = _setting(_definedUrl, 'PMS_TEST_POCKETBASE_URL').trim();
    if (url.isEmpty) url = defaultPocketBaseUrl;
    while (url.endsWith('/')) {
      url = url.substring(0, url.length - 1);
    }
    if (url.endsWith('/api')) url = url.substring(0, url.length - 4);
    return url;
  }

  static Future<TestToken?>? _cached;

  /// 資格情報が渡されていれば JWT を返す(プロセス内で使い回す)。渡されていなければ null(匿名で実行する)。
  /// 取得に失敗したときは [TestTokenException]。
  static Future<TestToken?> obtain() {
    if (!isConfigured) return Future.value(null);
    final cached = _cached;
    if (cached != null) {
      return cached.then((token) async {
        if (token != null && token.isUsable) return token;
        return _cached = _load();
      });
    }
    return _cached = _load();
  }

  bool get isUsable => DateTime.now().add(margin).isBefore(expiresAt);

  static Future<TestToken?> _load() async {
    final user = _setting(_definedUser, 'PMS_TEST_USER');
    final password = _setting(_definedPassword, 'PMS_TEST_PASSWORD');
    final base = pocketBaseUrl;
    final file = File(
      '${Directory.systemTemp.path}${Platform.pathSeparator}'
      'pms_test_jwt_${_fingerprint('$base|$user|$password')}.json',
    );
    final shared = _read(file);
    if (shared != null && shared.isUsable) return shared;

    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 10);
    try {
      final login = await _send(
        client,
        'POST',
        '$base/api/collections/users/auth-with-password',
        body: {'identity': user, 'password': password},
      );
      final sessionToken = login['token'];
      if (sessionToken is! String) {
        throw const TestTokenException('PocketBase のログインの応答に token がありません');
      }
      final graphql = await _send(
        client,
        'GET',
        '$base/api/app/graphql-token',
        authorization: sessionToken,
      );
      final jwt = graphql['token'];
      if (jwt is! String) {
        throw const TestTokenException('graphql-token の応答に token がありません');
      }
      final token = TestToken._('Bearer $jwt', _expiry(jwt));
      _write(file, token);
      return token;
    } finally {
      client.close(force: true);
    }
  }

  static Future<Map<String, dynamic>> _send(
    HttpClient client,
    String method,
    String url, {
    Map<String, Object?>? body,
    String? authorization,
  }) async {
    try {
      final request = await client.openUrl(method, Uri.parse(url));
      request.headers.contentType = ContentType.json;
      if (authorization != null) {
        request.headers.set(HttpHeaders.authorizationHeader, authorization);
      }
      if (body != null) request.write(jsonEncode(body));
      final response = await request.close().timeout(
        const Duration(seconds: 20),
      );
      final text = await response.transform(utf8.decoder).join();
      if (response.statusCode != 200) {
        // パスワード・トークンは含めない。サーバーのメッセージだけを出す。
        throw TestTokenException(
          'PocketBase($method ${Uri.parse(url).path})が ${response.statusCode} を返しました',
        );
      }
      return Map<String, dynamic>.from(jsonDecode(text) as Map);
    } on TestTokenException {
      rethrow;
    } catch (e) {
      throw TestTokenException('PocketBase($url)に接続できません: ${e.runtimeType}');
    }
  }

  static DateTime _expiry(String jwt) {
    try {
      var part = jwt.split('.')[1].replaceAll('-', '+').replaceAll('_', '/');
      while (part.length % 4 != 0) {
        part += '=';
      }
      final claims = jsonDecode(utf8.decode(base64.decode(part))) as Map;
      final exp = claims['exp'];
      if (exp is int) {
        return DateTime.fromMillisecondsSinceEpoch(exp * 1000);
      }
    } catch (_) {}
    return DateTime.now().add(const Duration(minutes: 10));
  }

  static TestToken? _read(File file) {
    try {
      if (!file.existsSync()) return null;
      final json = jsonDecode(file.readAsStringSync()) as Map;
      return TestToken._(
        json['value'] as String,
        DateTime.fromMillisecondsSinceEpoch(json['expiresAt'] as int),
      );
    } catch (_) {
      return null;
    }
  }

  static void _write(File file, TestToken token) {
    try {
      file.writeAsStringSync(
        jsonEncode({
          'value': token.value,
          'expiresAt': token.expiresAt.millisecondsSinceEpoch,
        }),
      );
    } catch (_) {
      // 共有できなくてもテストは続ける(次のプロセスがログインし直す)。
    }
  }

  /// 資格情報から作る、ファイル名用の短い識別子(資格情報そのものは名前に出さない)。
  static String _fingerprint(String text) {
    var hash = 0x811c9dc5;
    for (final unit in utf8.encode(text)) {
      hash = ((hash ^ unit) * 0x01000193) & 0xffffffff;
    }
    return hash.toRadixString(16).padLeft(8, '0');
  }

  Map<String, Object?> toJson() => {'expiresAt': expiresAt.toIso8601String()};
}

/// JWT を取得できなかった(資格情報の誤り・PocketBase に接続できない、など)。
class TestTokenException implements Exception {
  const TestTokenException(this.message);

  final String message;

  @override
  String toString() => 'TestTokenException: $message';
}
