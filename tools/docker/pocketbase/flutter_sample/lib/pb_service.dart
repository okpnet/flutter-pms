// PocketBase 連携サービス (サンプル)  ― 招待制 / 共有ファイル / 上書き不可
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
//   - ファイルは全員共有。上書きせず、同じ appFileId に revision を積み上げる。

import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PbService {
  PbService._(this.pb);

  final PocketBase pb;
  DateTime? _lastVerified;

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
  // 招待・ログイン
  // ------------------------------------------------------------------

  /// 招待コードで登録し、そのままログインする。
  /// [username] は管理者が招待時に決めたユーザーID (大文字小文字は区別しない)。
  /// 失敗時は ClientException (400: ID/コード無効・期限切れ・パスワード不備, 429: 試行過多)
  Future<RecordAuth> acceptInvite({
    required String username,
    required String code,
    required String password,
    String? name,
  }) async {
    await pb.send(
      '/api/app/invites/accept',
      method: 'POST',
      body: {
        'username': username,
        'code': code,
        'password': password,
        'passwordConfirm': password,
        if (name != null) 'name': name,
      },
    );
    return loginWithPassword(username, password);
  }

  /// 「ユーザーIDまたはEメール」+ パスワードでログイン
  /// [identity] はユーザーID・Eメールのどちらでもよい (判定はサーバー側)。
  /// 失敗時は ClientException (400: ID/パスワード不一致, 429: 試行過多)
  Future<RecordAuth> loginWithPassword(String identity, String password) async {
    final auth = await pb
        .collection('users')
        .authWithPassword(identity.trim(), password);
    _lastVerified = DateTime.now();
    return auth;
  }

  /// パスワード再設定メール (SMTP 設定時かつ email 登録済みユーザーのみ。
  /// email なしのユーザーは管理者が管理画面でパスワードを再設定する)
  Future<void> requestPasswordReset(String email) =>
      pb.collection('users').requestPasswordReset(email);

  Future<void> logout() async {
    pb.authStore.clear();
    _lastVerified = null;
  }

  String? get pbUserId => pb.authStore.record?.id;
  String get username => pb.authStore.record?.getStringValue('username') ?? '';
  String get appUserId => pb.authStore.record?.getStringValue('app_user_id') ?? '';

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
