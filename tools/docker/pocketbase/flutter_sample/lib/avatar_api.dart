// ユーザーアバター API (サンプル)  ― README「9. ユーザーアバター」
//
//   final avatars = AvatarApi(pbService.pb);   // pb_service.dart の PbService.pb
//   await avatars.set(pbUserId, bytes, 'me.jpg');      // 本人 or 管理者
//   final img = await avatars.find(pbUserId);          // ログインユーザーなら誰でも
//   final url = await avatars.url(img!, thumb: '128x128');
//
// 権限: 閲覧は有効なユーザー全員 / 登録・差し替え・削除は本人と管理者のみ
// 制限: JPEG/PNG/WebP、2MB (サーバー設定 PB_AVATAR_MAX_MB)。1人1枚・差し替えは上書き
//
// 推奨: 端末側で縮小してからアップロードする (原寸画像の EXIF 位置情報なども消える)
//   例) image_picker: pickImage(source: ..., maxWidth: 512, maxHeight: 512, imageQuality: 85)

import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:pocketbase/pocketbase.dart';

class AvatarApi {
  AvatarApi(this.pb);

  final PocketBase pb;

  static const collection = 'user_avatars';
  static const thumbs = ['128x128', '256x256'];

  /// 指定ユーザーのアバターレコード (未登録なら null)
  Future<RecordModel?> find(String pbUserId) async {
    final res = await pb.collection(collection).getList(
          page: 1,
          perPage: 1,
          filter: pb.filter('user = {:u}', {'u': pbUserId}),
        );
    return res.items.isEmpty ? null : res.items.first;
  }

  /// 複数ユーザー分をまとめて取得 (担当者一覧用)。戻り値: pbUserId → レコード
  Future<Map<String, RecordModel>> findMany(List<String> pbUserIds) async {
    if (pbUserIds.isEmpty) return {};
    final result = <String, RecordModel>{};
    // フィルター文字列が長くなりすぎないよう 50 件ずつ
    for (var i = 0; i < pbUserIds.length; i += 50) {
      final chunk = pbUserIds.sublist(i, (i + 50).clamp(0, pbUserIds.length));
      final params = <String, dynamic>{};
      final expr = [
        for (var j = 0; j < chunk.length; j++) 'user = {:u$j}',
      ].join(' || ');
      for (var j = 0; j < chunk.length; j++) {
        params['u$j'] = chunk[j];
      }
      final items = await pb.collection(collection).getFullList(filter: pb.filter(expr, params));
      for (final r in items) {
        result[r.getStringValue('user')] = r;
      }
    }
    return result;
  }

  /// 登録または差し替え (本人 or 管理者)
  Future<RecordModel> set(String pbUserId, Uint8List bytes, String filename) async {
    final file = http.MultipartFile.fromBytes('image', bytes, filename: filename);
    final current = await find(pbUserId);
    if (current == null) {
      return pb.collection(collection).create(body: {'user': pbUserId}, files: [file]);
    }
    return pb.collection(collection).update(current.id, files: [file]);
  }

  /// 削除 (本人 or 管理者)。未登録なら何もしない
  Future<void> delete(String pbUserId) async {
    final current = await find(pbUserId);
    if (current != null) await pb.collection(collection).delete(current.id);
  }

  /// 表示用 URL (短命の file token 付き。数分で失効するので表示の直前に生成する)
  Future<Uri> url(RecordModel avatar, {String? thumb}) async {
    assert(thumb == null || thumbs.contains(thumb));
    final token = await pb.files.getToken();
    return pb.files.getURL(
      avatar,
      avatar.getStringValue('image'),
      token: token,
      thumb: thumb,
    );
  }

  /// キャッシュ用のキー。差し替えるとファイル名が変わるので、そのまま使える
  /// (URL は token が毎回変わるのでキーにしない)
  /// 例) CachedNetworkImage(imageUrl: url.toString(), cacheKey: AvatarApi.cacheKey(rec, '128x128'))
  static String cacheKey(RecordModel avatar, [String? thumb]) =>
      'avatar:${avatar.getStringValue('image')}:${thumb ?? 'orig'}';

  /// 画像のバイト列
  Future<Uint8List> bytes(RecordModel avatar, {String? thumb}) async {
    final u = await url(avatar, thumb: thumb);
    final res = await http.get(u);
    if (res.statusCode != 200) {
      throw ClientException(url: u, statusCode: res.statusCode);
    }
    return res.bodyBytes;
  }

  /// 1回で取得する入口 (Authorization ヘッダーだけで取れる。リダイレクトに追従)
  /// Image.network(AvatarApi.directUrl(...).toString(), headers: AvatarApi.authHeader(pb))
  static Uri directUrl(PocketBase pb, String pbUserId, {String? thumb}) =>
      pb.buildURL('/api/app/users/$pbUserId/avatar', {if (thumb != null) 'thumb': thumb});

  static Map<String, String> authHeader(PocketBase pb) => {'Authorization': pb.authStore.token};
}
