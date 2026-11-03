import 'dart:convert';

import 'package:graphql/client.dart';
import 'package:http/http.dart' as http;
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';
import 'package:pocketbase/pocketbase.dart';

import 'environment.dart';

/// エラーログを記録するロガー。
class RecordingLogger implements ILoggerProvider {
  final errors = <String>[];
  final debugs = <String>[];

  @override
  int get level => 0;
  @override
  void debug(String message, {Object? ex, StackTrace? trace}) =>
      debugs.add(message);
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

/// 要求の数を、パスごとに数える HTTP クライアント。
class CountingClient extends http.BaseClient {
  CountingClient([http.Client? inner]) : _inner = inner ?? http.Client();

  final http.Client _inner;
  final requests = <http.BaseRequest>[];

  int count(String pathEndsWith) =>
      requests.where((r) => r.url.path.endsWith(pathEndsWith)).length;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    requests.add(request);
    return _inner.send(request);
  }

  // SDK は要求ごとに close() を呼ぶ。共有の内部クライアントは閉じない。
  @override
  void close() {}
}

/// テスト用の PocketBase の利用者。名前は `jwt.test.…` で、テストの最後に管理者が削除する。
class TestUser {
  TestUser({
    required this.id,
    required this.username,
    required this.password,
    required this.appUserId,
    required this.role,
  });

  final String id;
  final String username;
  final String password;
  final String appUserId;
  final String role;
}

/// 管理者の PocketBase。テスト用の利用者を作り、後始末をする。
class PocketBaseAdmin {
  PocketBaseAdmin._(this.pb, this._suffix);

  final PocketBase pb;
  final String _suffix;
  final _users = <TestUser>[];
  var _sequence = 0;

  static Future<PocketBaseAdmin> signIn() async {
    final pb = PocketBase(PbEndpoint.parse(pocketBaseUrl).baseUrl);
    await pb
        .collection('_superusers')
        .authWithPassword(adminEmail, adminPassword);
    return PocketBaseAdmin._(
      pb,
      DateTime.now().millisecondsSinceEpoch.toRadixString(36),
    );
  }

  /// 利用者を作る。[role] は `user` または `admin`。[appUserId] は JWT の `staff_id` になる。
  Future<TestUser> createUser({String role = 'user', String? appUserId}) async {
    _sequence++;
    final username = 'jwt.test.$_suffix.$_sequence';
    final password = 'Passw0rd-Jwt-$_suffix-$_sequence';
    final staff = appUserId ?? 'jwt-test-$_suffix-$_sequence';
    final record = await pb
        .collection('users')
        .create(
          body: {
            'username': username,
            'password': password,
            'passwordConfirm': password,
            'app_user_id': staff,
            'role': role,
          },
        );
    final user = TestUser(
      id: record.id,
      username: username,
      password: password,
      appUserId: staff,
      role: role,
    );
    _users.add(user);
    return user;
  }

  Future<void> setDisabled(TestUser user, bool disabled) =>
      pb.collection('users').update(user.id, body: {'disabled': disabled});

  Future<void> delete(TestUser user) => pb.collection('users').delete(user.id);

  /// 作った利用者をすべて削除する(すでに削除済みでもよい)。
  Future<void> cleanUp() async {
    for (final u in _users) {
      try {
        await pb.collection('users').delete(u.id);
      } catch (_) {}
    }
    _users.clear();
  }
}

/// PocketBase に接続した、アプリと同じ構成のセッション。
class SessionFixture {
  SessionFixture._(this.connection, this.session, this.client, this.logger);

  final PbConnection connection;
  final SessionService session;
  final CountingClient client;
  final RecordingLogger logger;

  static Future<SessionFixture> open() async {
    final client = CountingClient();
    final logger = RecordingLogger();
    final connection = await PbConnection.open(
      url: pocketBaseUrl,
      logger: logger,
      httpClientFactory: () => client,
    );
    return SessionFixture._(
      connection,
      SessionService(connection),
      client,
      logger,
    );
  }
}

/// GraphQL の `Authorization` を通信のたびに決める [GraphQLClient] を作る。
///
/// [authorization] が null を返すと、ヘッダーを付けずに送る(匿名)。例外を投げると、通信せずに失敗する。
GraphQLClient graphqlClientFor(
  String url, {
  Future<String?> Function()? authorization,
  http.Client? httpClient,
}) {
  final http = HttpLink(url, httpClient: httpClient);
  final link = authorization == null
      ? http
      : AuthLink(getToken: authorization).concat(http);
  return GraphQLClient(
    link: link,
    cache: GraphQLCache(),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.networkOnly, error: ErrorPolicy.all),
    ),
  );
}

/// GraphQL への素の要求(ステータスと最初のエラーメッセージを見る)。
class RawResponse {
  RawResponse(this.status, this.body);

  final int status;
  final String body;

  List<String> get messages {
    try {
      final json = jsonDecode(body);
      final errors = json is Map ? json['errors'] : null;
      return [
        if (errors is List)
          for (final e in errors)
            if (e is Map) '${e['message']}',
      ];
    } catch (_) {
      return const [];
    }
  }

  /// データが返ったか(`data` の中身が null でなく、エラーが無い)。
  bool get hasData {
    try {
      final json = jsonDecode(body);
      return json is Map && json['data'] != null && messages.isEmpty;
    } catch (_) {
      return false;
    }
  }
}

/// [authorization](`Bearer …`)を付けて、PostGraphile に素の GraphQL を送る。
Future<RawResponse> rawGraphql(
  String url,
  String query, {
  String? authorization,
}) async {
  final response = await http.post(
    Uri.parse(url),
    headers: {
      'Content-Type': 'application/json',
      'Authorization': ?authorization,
    },
    body: jsonEncode({'query': query}),
  );
  return RawResponse(response.statusCode, response.body);
}
