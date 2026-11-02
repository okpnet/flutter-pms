// PocketBase 連携サービス (サンプル)  ― 申請・承認制 / コード方式 / 共有ファイル / 上書き不可
//
// pubspec.yaml:
//   dependencies:
//     pocketbase: ^0.25.2
//     shared_preferences: ^2.3.0
//     http: ^1.2.0
//
// 方針:
//   - セッション(トークン)は PocketBase が発行・検証。App は保持と問い合わせのみ。
//   - 画面切替 / 保存 / 呼び出しの都度 ensureSession() で確認する。
//   - App DB には pbUserId / pbFileRecordId (と App 側ID) だけを保存し、バイナリは持たない。
//   - 新規登録: requestSignup → 管理者が App DB 登録 + activate → acceptCode (有効化コード)
//   - パスワード忘れ: requestPasswordReset → (メール or 管理者の resetCode) → acceptCode
//   - ファイルは全員共有。上書きせず、同じ appFileId に revision を積み上げる。

import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PbService {
  PbService._(this.pb);

  final PocketBase pb;
  DateTime? _lastVerified;
  ({String token, DateTime expiresAt})? _graphqlToken;

  static const _authKey = 'pb_auth';

  /// アプリ起動時に1回呼ぶ。保存済みトークンを復元する。
  static Future<PbService> init(String baseUrl) async {
    final prefs = await SharedPreferences.getInstance();
    final store = AsyncAuthStore(
      save: (String data) async => prefs.setString(_authKey, data),
      initial: prefs.getString(_authKey),
    );
    return PbService._(PocketBase(baseUrl, authStore: store));
  }

  // ------------------------------------------------------------------
  // 登録申請・コード・ログイン（認証不要の API）
  // ------------------------------------------------------------------

  /// 新規登録の申請。応答はいつも同じ（202）で、結果は管理者の承認後に
  /// 「ユーザーID + 有効化コード」がメールまたは手渡しで届く。
  /// [profile] は App DB の担当者モデルに渡す本人情報（自由形式の JSON, 16KB まで）。
  /// 失敗時は ClientException (400: 入力不備, 429: 試行過多, 503: 受付停止中)
  Future<void> requestSignup({
    required String fullName,
    String? requestedUsername,
    String? contactEmail,
    Map<String, dynamic> profile = const {},
    String? note,
  }) async {
    await pb.send(
      '/api/app/signup',
      method: 'POST',
      body: {
        'full_name': fullName,
        if (requestedUsername != null) 'requested_username': requestedUsername,
        if (contactEmail != null) 'contact_email': contactEmail,
        'profile': profile,
        if (note != null) 'note': note,
      },
    );
  }

  /// パスワード再設定の依頼。[identity] はユーザーIDまたはEメール。
  /// 応答はいつも同じ（202）。メール登録ありならコードがメールで届き、
  /// なければ管理者に依頼が届く（管理者がコードを手渡し）。
  Future<void> requestPasswordReset(String identity) async {
    await pb.send(
      '/api/app/password-reset/request',
      method: 'POST',
      body: {'identity': identity.trim()},
    );
  }

  /// 有効化コード / 再設定コードで新しいパスワードを設定し、そのままログインする。
  /// コードはハイフン・空白・大文字小文字を区別しない。
  /// 失敗時は ClientException (400: ID/コード無効・期限切れ・パスワード不備, 429: 試行過多)
  Future<RecordAuth> acceptCode({
    required String username,
    required String code,
    required String password,
  }) async {
    await pb.send(
      '/api/app/codes/accept',
      method: 'POST',
      body: {
        'username': username.trim(),
        'code': code,
        'password': password,
        'passwordConfirm': password,
      },
    );
    return loginWithPassword(username, password);
  }

  /// 「ユーザーIDまたはEメール」+ パスワードでログイン
  /// [identity] はユーザーID・Eメールのどちらでもよい (判定はサーバー側)。
  /// 承認前・有効化前・無効化されたユーザーもここで 400 になる。
  /// 失敗時は ClientException (400: ID/パスワード不一致, 429: 試行過多)
  Future<RecordAuth> loginWithPassword(String identity, String password) async {
    final auth = await pb
        .collection('users')
        .authWithPassword(identity.trim(), password);
    _lastVerified = DateTime.now();
    _graphqlToken = null;
    return auth;
  }

  Future<void> logout() async {
    pb.authStore.clear();
    _lastVerified = null;
    _graphqlToken = null;
  }

  String? get pbUserId => pb.authStore.record?.id;
  String get username => pb.authStore.record?.getStringValue('username') ?? '';
  String get appUserId => pb.authStore.record?.getStringValue('app_user_id') ?? '';
  bool get isAdmin => pb.authStore.record?.getStringValue('role') == 'admin';

  /// セッション確認。画面切替・保存・呼び出しの直前に呼ぶ。
  /// [minInterval] 内はサーバー問い合わせを省略 (既定: 毎回検証)。
  /// false → ログイン画面へ。
  Future<bool> ensureSession({Duration minInterval = Duration.zero}) async {
    if (!pb.authStore.isValid) {
      pb.authStore.clear();
      return false;
    }
    final last = _lastVerified;
    if (last != null && DateTime.now().difference(last) < minInterval) return true;
    try {
      await pb.collection('users').authRefresh(); // サーバー検証 + トークン延長
      _lastVerified = DateTime.now();
      return true;
    } on ClientException catch (e) {
      if (e.statusCode == 401 || e.statusCode == 403 || e.statusCode == 404) {
        pb.authStore.clear();
        return false;
      }
      rethrow; // ネットワーク断などは呼び出し側で判断
    }
  }

  // ------------------------------------------------------------------
  // GraphQL (PostGraphile) 用トークン
  // ------------------------------------------------------------------

  /// GraphQL リクエストの Authorization: Bearer に使う短期 JWT。
  /// 期限の 60 秒前までは使い回し、それ以降はセッション確認のうえ取り直す。
  /// null → ログイン画面へ。
  Future<String?> graphqlToken() async {
    final cached = _graphqlToken;
    if (cached != null &&
        DateTime.now().isBefore(cached.expiresAt.subtract(const Duration(seconds: 60)))) {
      return cached.token;
    }
    if (!await ensureSession()) return null;
    final res = await pb.send('/api/app/graphql-token');
    final token = res['token'] as String;
    final expiresIn = (res['expires_in'] as num).toInt();
    _graphqlToken = (token: token, expiresAt: DateTime.now().add(Duration(seconds: expiresIn)));
    return token;
  }

  // ------------------------------------------------------------------
  // 管理者 (role=admin) 向け
  // ------------------------------------------------------------------

  /// 未処理の登録申請 (古い順)。record.getStringValue('user') = pbUserId、
  /// 'full_name' / 'requested_username' / 'contact_email' / 'profile'(JSON) / 'note'
  Future<List<RecordModel>> adminListSignupRequests() =>
      pb.collection('signup_profiles').getFullList(sort: 'created', expand: 'user');

  /// 未処理のパスワード再設定依頼 (メールなしユーザー)
  Future<List<RecordModel>> adminListResetRequests() =>
      pb.collection('reset_requests').getFullList(
            filter: "status = 'open'",
            sort: 'created',
            expand: 'user',
          );

  /// 申請を承認する。**App DB への担当者登録 (pb_user_id 付き) が済んでから呼ぶこと。**
  /// 同じ [appUserId] なら何度呼んでもよい (呼ぶたびにコード再発行)。
  /// [username] 省略時は申請の希望ID、[email] 省略時は申請の連絡先 ("" でメールなし)。
  /// 戻り値: {user, kind, code, expires_at, mailed}。mailed=false ならコードを手渡し。
  Future<Map<String, dynamic>> adminActivate(
    String pbUserId, {
    required String appUserId,
    String? username,
    String? email,
    String? name,
  }) async {
    final res = await pb.send(
      '/api/app/admin/users/$pbUserId/activate',
      method: 'POST',
      body: {
        'app_user_id': appUserId,
        if (username != null) 'username': username,
        if (email != null) 'email': email,
        if (name != null) 'name': name,
      },
    );
    return Map<String, dynamic>.from(res as Map);
  }

  /// 申請を却下 (申請中ユーザーと本人情報を削除)
  Future<void> adminReject(String pbUserId) =>
      pb.send('/api/app/admin/users/$pbUserId/reject', method: 'POST');

  /// 再設定コードを発行 (メールなしユーザーの依頼対応など)。戻り値は adminActivate と同じ形。
  Future<Map<String, dynamic>> adminResetCode(String pbUserId, {bool mail = true}) async {
    final res = await pb.send(
      '/api/app/admin/users/$pbUserId/reset-code',
      method: 'POST',
      body: {'mail': mail},
    );
    return Map<String, dynamic>.from(res as Map);
  }

  /// 無効化 (全端末のトークンが即失効) / 再有効化
  Future<void> adminSetDisabled(String pbUserId, bool disabled) =>
      pb.send('/api/app/admin/users/$pbUserId/disable', method: 'POST', body: {'disabled': disabled});

  // ------------------------------------------------------------------
  // 共有ファイル (上書き不可・revision 管理)
  // ------------------------------------------------------------------

  /// アップロード。同じ [appFileId] なら新しい revision として追加される (既存は残る)。
  /// 戻り値の record.id / revision を App DB に保存する。
  /// 同時アップロードで revision が衝突した場合 (400) は1回だけ再試行。
  Future<RecordModel> upload({
    required String appFileId,
    required Uint8List bytes,
    required String filename,
    String? mimeType,
    String? comment,
  }) async {
    Future<RecordModel> once() => pb.collection('app_files').create(
          body: {
            'app_file_id': appFileId,
            if (mimeType != null) 'mime_type': mimeType,
            if (comment != null) 'comment': comment,
          },
          files: [http.MultipartFile.fromBytes('file', bytes, filename: filename)],
        );
    try {
      return await once();
    } on ClientException catch (e) {
      final dup = e.statusCode == 400 &&
          (e.response['data'] as Map?)?.containsKey('revision') == true;
      if (dup) return once();
      rethrow;
    }
  }

  /// 最新 revision
  Future<RecordModel?> latest(String appFileId) async {
    final res = await pb.collection('app_files').getList(
          page: 1,
          perPage: 1,
          filter: pb.filter('app_file_id = {:id}', {'id': appFileId}),
          sort: '-revision',
          expand: 'uploaded_by',
        );
    return res.items.isEmpty ? null : res.items.first;
  }

  /// 全 revision (新しい順)
  Future<List<RecordModel>> history(String appFileId) =>
      pb.collection('app_files').getFullList(
            filter: pb.filter('app_file_id = {:id}', {'id': appFileId}),
            sort: '-revision',
            expand: 'uploaded_by',
          );

  /// 指定 revision
  Future<RecordModel?> revision(String appFileId, int rev) async {
    try {
      return await pb.collection('app_files').getFirstListItem(
            pb.filter('app_file_id = {:id} && revision = {:rev}', {'id': appFileId, 'rev': rev}),
          );
    } on ClientException catch (e) {
      if (e.statusCode == 404) return null;
      rethrow;
    }
  }

  /// ダウンロードURL (短命 file token 付き。数分で失効するので都度生成)
  Future<Uri> downloadUrl(RecordModel record, {bool asAttachment = true}) async {
    final token = await pb.files.getToken();
    return pb.files.getURL(
      record,
      record.getStringValue('file'),
      token: token,
      query: asAttachment ? {'download': '1'} : const {},
    );
  }

  Future<Uint8List> downloadBytes(RecordModel record) async {
    final url = await downloadUrl(record, asAttachment: false);
    final res = await http.get(url);
    if (res.statusCode != 200) {
      throw ClientException(url: url, statusCode: res.statusCode);
    }
    return res.bodyBytes;
  }
}
