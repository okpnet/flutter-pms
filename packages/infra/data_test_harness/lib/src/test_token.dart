import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';

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

  // 自己署名(CI 用)。PocketBase を使わず、テストが JWT を自分で作る。
  static const _definedSecret = String.fromEnvironment('PMS_TEST_JWT_SECRET');
  static const _definedStaffId = String.fromEnvironment('PMS_TEST_STAFF_ID');
  static const _definedDbRole = String.fromEnvironment('PMS_TEST_DB_ROLE');
  static const _definedAudience = String.fromEnvironment(
    'PMS_TEST_JWT_AUDIENCE',
  );

  static String _setting(String defined, String envName) {
    if (defined.isNotEmpty) return defined;
    return Platform.environment[envName] ?? '';
  }

  /// 自己署名で JWT を作る設定(署名の鍵と担当者の ID)が渡されているか。
  /// GitHub Actions のように PocketBase が無い環境で使う。鍵は PostGraphile の `--jwt-secret` と同じ値。
  /// PocketBase の資格情報より優先する。鍵はコード・Git に書かない(CI が実行のたびに乱数で作る)。
  static bool get isSelfSigned =>
      _setting(_definedSecret, 'PMS_TEST_JWT_SECRET').isNotEmpty &&
      _setting(_definedStaffId, 'PMS_TEST_STAFF_ID').isNotEmpty;

  /// テスト用ユーザーの資格情報(または自己署名の設定)が渡されているか。
  static bool get isConfigured =>
      isSelfSigned ||
      (_setting(_definedUser, 'PMS_TEST_USER').isNotEmpty &&
          _setting(_definedPassword, 'PMS_TEST_PASSWORD').isNotEmpty);

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

  /// JWT の `staff_id`(アプリの DB の担当者の ID。ログイン中のユーザー)。読めなければ null。
  String? get staffId {
    try {
      var part = value.split('.')[1].replaceAll('-', '+').replaceAll('_', '/');
      while (part.length % 4 != 0) {
        part += '=';
      }
      final claims = jsonDecode(utf8.decode(base64.decode(part))) as Map;
      final id = claims['staff_id'];
      return id is String && id.isNotEmpty ? id : null;
    } catch (_) {
      return null;
    }
  }

  /// 自己署名の JWT を作る(HS256)。クレームは PocketBase の `/api/app/graphql-token` と同じ形:
  /// `role`(DB のロール。既定 `pms_user` = 一般ユーザー)・`aud`・`staff_id`・`app_user_id`・`app_role`・`exp`。
  /// 有効期間は 15 分(本物と同じ)。
  static TestToken _mint() {
    final secret = _setting(_definedSecret, 'PMS_TEST_JWT_SECRET');
    final staffId = _setting(_definedStaffId, 'PMS_TEST_STAFF_ID');
    final role = _setting(_definedDbRole, 'PMS_TEST_DB_ROLE');
    final audience = _setting(_definedAudience, 'PMS_TEST_JWT_AUDIENCE');
    final now = DateTime.now().toUtc();
    final expiresAt = now.add(const Duration(minutes: 15));

    String part(Object json) =>
        base64Url.encode(utf8.encode(jsonEncode(json))).replaceAll('=', '');

    final header = part({'alg': 'HS256', 'typ': 'JWT'});
    final payload = part({
      'role': role.isEmpty ? 'pms_user' : role,
      'aud': audience.isEmpty ? 'postgraphile' : audience,
      'staff_id': staffId,
      'app_user_id': staffId,
      'app_role': 'user',
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp': expiresAt.millisecondsSinceEpoch ~/ 1000,
    });
    final signature = base64Url
        .encode(
          Hmac(
            sha256,
            utf8.encode(secret),
          ).convert(utf8.encode('$header.$payload')).bytes,
        )
        .replaceAll('=', '');
    return TestToken._('Bearer $header.$payload.$signature', expiresAt);
  }

  static Future<TestToken?> _load() async {
    if (isSelfSigned) return _mint();
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
