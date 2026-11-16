import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

/// 仮想のユーザー(PocketBase の `users`)。
class VirtualUser {
  const VirtualUser({
    required this.id,
    required this.username,
    required this.password,
    required this.appUserId,
    required this.name,
    this.role = 'user',
    this.allowedPaths,
  });

  final String id;
  final String username;
  final String password;

  /// アプリの DB の担当者の ID(`app_user_id`)。
  final String appUserId;
  final String name;

  /// `admin` は管理者。
  final String role;

  /// メニューに出してよいページのパス。null は制限なし(管理者)。
  final Set<String>? allowedPaths;

  bool get isAdmin => role == 'admin';
}

/// 仮想のユーザーの一覧(評価用)。
const virtualUsers = <VirtualUser>[
  VirtualUser(
    id: 'u_admin',
    username: 'admin',
    password: 'admin-pass',
    appUserId: 'ADMIN',
    name: '管理者',
    role: 'admin',
  ),
  VirtualUser(
    id: 'u_sato',
    username: 'sato',
    password: 'sato-pass',
    appUserId: 'SATO',
    name: '佐藤',
    // 営業の受注だけ。ほかのページはメニューに出さない
    allowedPaths: {'/e/order', '/e/orderdetail'},
  ),
];

/// 仮想の共有ファイル(`app_files`)の 1 件。
class VirtualFile {
  VirtualFile(this.id, this.appFileId, this.revision, this.name, this.bytes, this.mime);

  final String id;
  final String appFileId;
  final int revision;
  final String name;
  final Uint8List bytes;
  final String mime;
}

/// 評価用の仮想サーバー(PocketBase・メンテナンス情報サーバー)。実際の通信は行わず、`http` の差し替え
/// ([client])で、`pbapi` の実物のコード(ログイン・セッション確認・共有ファイル)を動かす。
///
/// 状態を切り替えて、異常な場合(セッション切れ・接続断・メンテナンス中)を再現する。
///
/// パターン: Fake(テストダブル)。状態の変更は [ChangeNotifier] で通知する(検証パネルの表示用)。
class VirtualServer extends ChangeNotifier {
  /// true の間は、すべての通信が失敗する(接続断)。
  bool offline = false;

  /// true の間は、メンテナンス中(`/health` が 503)。
  bool maintenance = false;

  /// 発行したトークンのうち、サーバー側で無効にしたもの(セッション切れの再現)。
  final Set<String> revokedTokens = {};

  /// 直近に発行したトークン。
  String? lastToken;

  /// 受け取った要求の記録(`METHOD /path`)。
  final List<String> requests = [];

  /// アップロードされた共有ファイル。
  final List<VirtualFile> files = [];

  int _seq = 0;

  void setOffline(bool value) {
    offline = value;
    notifyListeners();
  }

  void setMaintenance(bool value) {
    maintenance = value;
    notifyListeners();
  }

  /// いまのセッションを、サーバー側で無効にする(次の確認で、期限切れ・失効として扱われる)。
  void expireSession() {
    final t = lastToken;
    if (t != null) revokedTokens.add(t);
    notifyListeners();
  }

  VirtualUser? _userOf(String identity) {
    final id = identity.trim().toLowerCase();
    for (final u in virtualUsers) {
      if (u.username == id) return u;
    }
    return null;
  }

  String _jwt(String userId) {
    String enc(Object m) =>
        base64Url.encode(utf8.encode(jsonEncode(m))).replaceAll('=', '');
    final exp = DateTime.now().add(const Duration(hours: 1)).millisecondsSinceEpoch ~/ 1000;
    // 同じユーザーでも毎回別のトークンにする(失効を区別するため)
    return '${enc({'alg': 'HS256', 'typ': 'JWT'})}.${enc({'exp': exp, 'id': userId, 'n': ++_seq})}.sig';
  }

  Map<String, Object?> _authBody(VirtualUser u, String token) => {
    'token': token,
    'record': {
      'id': u.id,
      'collectionId': 'c_users',
      'collectionName': 'users',
      'username': u.username,
      'name': u.name,
      'app_user_id': u.appUserId,
      'role': u.role,
    },
  };

  http.Response _json(Object? body, {int status = 200}) => http.Response(
    jsonEncode(body),
    status,
    headers: {'content-type': 'application/json; charset=utf-8'},
  );

  http.Response _error(int status, String message) =>
      _json({'status': status, 'message': message, 'data': <String, Object?>{}}, status: status);

  VirtualUser? _authorized(http.Request request) {
    final token = request.headers['Authorization'] ?? request.headers['authorization'];
    if (token == null || token.isEmpty || revokedTokens.contains(token)) return null;
    if (token != lastToken) return null;
    final payload = jsonDecode(utf8.decode(base64Url.decode(base64Url.normalize(token.split('.')[1])))) as Map;
    for (final u in virtualUsers) {
      if (u.id == payload['id']) return u;
    }
    return null;
  }

  /// `PbConnection.open` の `httpClientFactory` に渡す。
  http.Client get client => MockClient((request) async {
    requests.add('${request.method} ${request.url.path}');
    if (offline) throw http.ClientException('offline');
    final path = request.url.path;

    if (request.method == 'POST' && path == '/api/collections/users/auth-with-password') {
      final body = jsonDecode(request.body) as Map;
      final user = _userOf('${body['identity']}');
      if (user == null || user.password != body['password']) {
        return _error(400, 'Failed to authenticate.');
      }
      final token = _jwt(user.id);
      lastToken = token;
      return _json(_authBody(user, token));
    }
    if (request.method == 'POST' && path == '/api/collections/users/auth-refresh') {
      final user = _authorized(request);
      if (user == null) return _error(401, 'The request requires valid record authorization token.');
      final token = _jwt(user.id);
      lastToken = token;
      return _json(_authBody(user, token));
    }
    if (request.method == 'GET' && path == '/api/app/graphql-token') {
      if (_authorized(request) == null) return _error(401, 'unauthorized');
      return _json({'token': 'virtual-graphql-jwt', 'expires_in': 900});
    }
    if (request.method == 'POST' && path == '/api/collections/app_files/records') {
      final user = _authorized(request);
      if (user == null) return _error(401, 'unauthorized');
      return _upload(request, user);
    }
    if (request.method == 'GET' && path == '/api/collections/app_files/records') {
      if (_authorized(request) == null) return _error(401, 'unauthorized');
      final filter = request.url.queryParameters['filter'] ?? '';
      final idMatch = RegExp(r'app_file_id\s*=\s*"?([A-Za-z0-9_-]+)"?').firstMatch(filter);
      final revMatch = RegExp(r'revision\s*=\s*(\d+)').firstMatch(filter);
      final all = [
        for (final f in files)
          if ((idMatch == null || f.appFileId == idMatch.group(1)) &&
              (revMatch == null || f.revision == int.parse(revMatch.group(1)!)))
            f,
      ]..sort((a, b) => b.revision.compareTo(a.revision));
      return _json({
        'page': 1,
        'perPage': 30,
        'totalItems': all.length,
        'totalPages': 1,
        'items': [for (final f in all) _record(f)],
      });
    }
    if (request.method == 'POST' && path == '/api/files/token') {
      if (_authorized(request) == null) return _error(401, 'unauthorized');
      return _json({'token': 'virtual-file-token'});
    }
    final fileMatch = RegExp(r'^/api/files/c_app_files/([^/]+)/').firstMatch(path);
    if (request.method == 'GET' && fileMatch != null) {
      for (final f in files) {
        if (f.id == fileMatch.group(1)) return http.Response.bytes(f.bytes, 200);
      }
      return _error(404, 'not found');
    }
    return _error(404, 'not found');
  });

  http.Response _upload(http.Request request, VirtualUser user) {
    // multipart の本文から、ファイル名とフィールドを読む(評価用の簡易な解析)
    final text = latin1.decode(request.bodyBytes);
    // PocketBase の SDK は、ファイルと一緒に送る項目を `@jsonPayload`(JSON)の 1 項目で送る
    final payloadText = RegExp(
      r'name="@jsonPayload"\r\n\r\n([^\r]*)',
    ).firstMatch(text)?.group(1);
    final payload = payloadText == null ? <String, Object?>{} : Map<String, Object?>.from(jsonDecode(payloadText) as Map);
    final appFileId = '${payload['app_file_id'] ?? 'unknown'}';
    final name = RegExp(r'filename="([^"]*)"').firstMatch(text)?.group(1) ?? 'file';
    final mime = '${payload['mime_type'] ?? 'application/octet-stream'}';
    final revision = files.where((f) => f.appFileId == appFileId).length + 1;
    final file = VirtualFile('f${files.length + 1}', appFileId, revision, name, _filePart(request.bodyBytes), mime);
    files.add(file);
    notifyListeners();
    return _json(_record(file, uploadedBy: user.id));
  }

  /// multipart の `file` の部分の内容(評価用の簡易な解析)。
  Uint8List _filePart(Uint8List body) {
    final text = latin1.decode(body);
    final start = text.indexOf('name="file"');
    if (start < 0) return body;
    final head = text.indexOf('\r\n\r\n', start);
    final end = text.indexOf('\r\n--', head + 4);
    if (head < 0 || end < 0) return body;
    return Uint8List.sublistView(body, head + 4, end);
  }

  Map<String, Object?> _record(VirtualFile f, {String uploadedBy = ''}) => {
    'id': f.id,
    'collectionId': 'c_app_files',
    'collectionName': 'app_files',
    'app_file_id': f.appFileId,
    'revision': f.revision,
    'original_name': f.name,
    'size_bytes': f.bytes.length,
    'mime_type': f.mime,
    'uploaded_by': uploadedBy,
    'file': f.name,
  };
}
