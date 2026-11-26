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
    this.disabled = false,
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

  /// true は無効化されたユーザー(ログインできない)。
  final bool disabled;

  bool get isAdmin => role == 'admin';

  VirtualUser copyWith({String? password, String? name, String? role, bool? disabled}) => VirtualUser(
    id: id,
    username: username,
    password: password ?? this.password,
    appUserId: appUserId,
    name: name ?? this.name,
    role: role ?? this.role,
    allowedPaths: allowedPaths,
    disabled: disabled ?? this.disabled,
  );
}

/// 発行したコード(有効化・再設定)。1 回限り・72 時間(実サーバーと同じ)。
class VirtualCode {
  VirtualCode(this.username, this.code, this.reset, this.expiresAt);

  final String username;
  final String code;

  /// true は再設定のコード、false は有効化のコード。
  final bool reset;
  final DateTime expiresAt;
}

/// 新規登録の申請(管理者が「アカウント管理」で承認・却下する)。
class VirtualSignup {
  VirtualSignup(this.id, this.fullName, this.requestedUsername, this.contactEmail, this.note);

  final String id;
  final String fullName;
  final String requestedUsername;
  final String contactEmail;
  final String note;
}

/// パスワードを忘れた依頼(管理者が再設定コードを発行する)。
class VirtualResetRequest {
  VirtualResetRequest(this.id, this.userId);

  final String id;
  final String userId;
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

  /// ユーザー(最初は [virtualUsers]。管理者の作成・コードの受け入れで変わる)。
  final List<VirtualUser> users = [...virtualUsers];

  /// 発行したコード(1 回限り)。ユーザーごとに最新の 1 件だけ(発行し直すと前のコードは無効)。
  final List<VirtualCode> codes = [];

  /// 新規登録の申請。
  final List<VirtualSignup> signups = [];

  /// パスワードを忘れた依頼(未対応)。
  final List<VirtualResetRequest> resetRequests = [];

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
    for (final u in users) {
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
    for (final u in users) {
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
      if (user == null || user.disabled || user.password.isEmpty || user.password != body['password']) {
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
    final admin = _accountRoute(request, path);
    if (admin != null) return admin;
    return _error(404, 'not found');
  });

  // ---- アカウント(新規登録・コード・管理者の操作)。実サーバー(pb_hooks)と同じ形で応答する ----

  String _newCode() {
    // 12 文字・英大文字と数字(評価用。連番から作る)
    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
    final n = ++_seq;
    final b = StringBuffer();
    var v = n * 7919 + 104729;
    for (var i = 0; i < 12; i++) {
      b.write(chars[(v + i * 13) % chars.length]);
      v = v ~/ 3 + n + i;
    }
    return b.toString();
  }

  Map<String, Object?> _issue(VirtualUser u, {required bool reset}) {
    codes.removeWhere((c) => c.username == u.username);
    final c = VirtualCode(u.username, _newCode(), reset, DateTime.now().add(const Duration(hours: 72)));
    codes.add(c);
    notifyListeners();
    return {
      'user': {'id': u.id, 'username': u.username, 'app_user_id': u.appUserId},
      'kind': reset ? 'reset' : 'activate',
      'code': c.code,
      'expires_at': c.expiresAt.toUtc().toIso8601String(),
      'mailed': false,
    };
  }

  Map<String, Object?> _bodyOf(http.Request r) {
    if (r.body.isEmpty) return {};
    final b = jsonDecode(r.body);
    return b is Map ? Map<String, Object?>.from(b) : {};
  }

  void _replaceUser(VirtualUser next) {
    final i = users.indexWhere((x) => x.id == next.id);
    if (i >= 0) users[i] = next;
    notifyListeners();
  }

  http.Response? _accountRoute(http.Request request, String path) {
    final method = request.method;
    // ログイン前: 新規登録の申請・パスワードを忘れた依頼・コードの受け入れ
    if (method == 'POST' && path == '/api/app/signup') {
      final b = _bodyOf(request);
      final name = '${b['full_name'] ?? ''}'.trim();
      if (name.isEmpty) return _error(400, 'full_name is required');
      signups.add(VirtualSignup('s${++_seq}', name, '${b['requested_username'] ?? ''}', '${b['contact_email'] ?? ''}', '${b['note'] ?? ''}'));
      notifyListeners();
      return _json({});
    }
    if (method == 'POST' && path == '/api/app/password-reset/request') {
      // 存在の有無は応答で分からせない(実サーバーと同じ)
      final u = _userOf('${_bodyOf(request)['identity'] ?? ''}');
      if (u != null && !resetRequests.any((r) => r.userId == u.id)) {
        resetRequests.add(VirtualResetRequest('r${++_seq}', u.id));
        notifyListeners();
      }
      return _json({});
    }
    if (method == 'POST' && path == '/api/app/codes/accept') {
      final b = _bodyOf(request);
      final u = _userOf('${b['username'] ?? ''}');
      final code = codes.where((c) => u != null && c.username == u.username).firstOrNull;
      final password = '${b['password'] ?? ''}';
      if (u == null || code == null || code.code != '${b['code'] ?? ''}'.trim().toUpperCase() || code.expiresAt.isBefore(DateTime.now())) {
        return _error(400, 'invalid code');
      }
      if (password.length < 8 || password != '${b['passwordConfirm'] ?? ''}') return _error(400, 'invalid password');
      codes.remove(code); // 1 回限り
      _replaceUser(u.copyWith(password: password));
      return _json({});
    }
    // ここから管理者だけ
    final adminPath = path.startsWith('/api/app/admin/') ||
        path == '/api/collections/signup_profiles/records' ||
        path == '/api/collections/reset_requests/records';
    if (!adminPath) return null;
    final me = _authorized(request);
    if (me == null) return _error(401, 'unauthorized');
    if (!me.isAdmin) return _error(403, 'forbidden');
    if (method == 'GET' && path == '/api/collections/signup_profiles/records') {
      return _list([
        for (final s in signups)
          {
            'id': 'p_${s.id}',
            'collectionId': 'c_signup_profiles',
            'collectionName': 'signup_profiles',
            'user': s.id,
            'full_name': s.fullName,
            'requested_username': s.requestedUsername,
            'contact_email': s.contactEmail,
            'note': s.note,
            'profile': {},
            'created': DateTime.now().toUtc().toIso8601String(),
          },
      ]);
    }
    if (method == 'GET' && path == '/api/collections/reset_requests/records') {
      return _list([
        for (final r in resetRequests)
          {
            'id': r.id,
            'collectionId': 'c_reset_requests',
            'collectionName': 'reset_requests',
            'user': r.userId,
            'status': 'open',
            'created': DateTime.now().toUtc().toIso8601String(),
            'expand': {
              'user': {
                'id': r.userId,
                'collectionId': 'c_users',
                'collectionName': 'users',
                'username': users.firstWhere((u) => u.id == r.userId).username,
                'name': users.firstWhere((u) => u.id == r.userId).name,
              },
            },
          },
      ]);
    }
    if (method == 'POST' && path == '/api/app/admin/users') {
      final b = _bodyOf(request);
      final username = '${b['username'] ?? ''}'.trim().toLowerCase();
      final appUserId = '${b['app_user_id'] ?? ''}'.trim();
      if (username.isEmpty || appUserId.isEmpty) return _error(400, 'username and app_user_id are required');
      if (_userOf(username) != null) return _error(400, 'username already exists');
      if (users.any((u) => u.appUserId == appUserId)) return _error(400, 'app_user_id already exists');
      final role = '${b['role'] ?? 'user'}';
      final u = VirtualUser(
        id: 'u_${++_seq}',
        username: username,
        password: '',
        appUserId: appUserId,
        name: '${b['name'] ?? username}',
        role: role == 'admin' ? 'admin' : 'user',
      );
      users.add(u);
      return _json(_issue(u, reset: false), status: 201);
    }
    final m = RegExp(r'^/api/app/admin/users/([^/]+)/(activate|reject|reset-code|disable)$').firstMatch(path);
    if (method == 'POST' && m != null) {
      final id = Uri.decodeComponent(m.group(1)!);
      final op = m.group(2)!;
      final b = _bodyOf(request);
      if (op == 'activate' || op == 'reject') {
        final s = signups.where((x) => x.id == id).firstOrNull;
        if (s == null) return _error(404, 'not found');
        signups.remove(s);
        if (op == 'reject') {
          notifyListeners();
          return _json({});
        }
        final username = '${b['username'] ?? (s.requestedUsername.isEmpty ? s.fullName : s.requestedUsername)}'.trim().toLowerCase();
        final appUserId = '${b['app_user_id'] ?? ''}'.trim();
        if (appUserId.isEmpty) return _error(400, 'app_user_id is required');
        if (_userOf(username) != null) return _error(400, 'username already exists');
        final u = VirtualUser(id: 'u_${++_seq}', username: username, password: '', appUserId: appUserId, name: '${b['name'] ?? s.fullName}');
        users.add(u);
        return _json(_issue(u, reset: false));
      }
      final u = users.where((x) => x.id == id).firstOrNull;
      if (u == null) return _error(404, 'not found');
      if (op == 'reset-code') {
        resetRequests.removeWhere((r) => r.userId == u.id); // 未対応の依頼はクローズ
        return _json(_issue(u, reset: true));
      }
      _replaceUser(u.copyWith(disabled: b['disabled'] != false));
      return _json({});
    }
    return null;
  }

  http.Response _list(List<Map<String, Object?>> items) => _json({
    'page': 1,
    'perPage': 500,
    'totalItems': items.length,
    'totalPages': 1,
    'items': items,
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
