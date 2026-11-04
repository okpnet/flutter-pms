import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:pocketbase/pocketbase.dart';

import '../core/pb_connection.dart';
import '../files/shared_file_service.dart';
import 'user_avatar.dart';

/// ユーザーのアバター画像(サーバーの `user_avatars`)。サーバーの仕様は README「9. ユーザーアバター」。
///
/// | 操作 | できる人 |
/// |---|---|
/// | 取得 | 有効なユーザー全員(未ログインは取得できない) |
/// | 登録・差し替え・削除 | 本人、または管理者(`role=admin` の有効なユーザー、または superuser) |
///
/// 権限の判定はサーバー。権限が無いと、登録は400([PbFailureKind.validation])、
/// 差し替え・削除は404([PbFailureKind.notFound])で返る。
/// 1人1枚で、差し替えは上書き(履歴は残らない)。形式は JPEG/PNG/WebP、最大2MB(サーバー設定)。
/// 原寸の画像には位置情報(EXIF)が残るため、**アプリ側で縮小してからアップロードする**こと。
///
/// 旧 `users.avatar` は使わない(サーバーが書き込みを拒否する)。
class AvatarService {
  AvatarService(this._connection);

  final PbConnection _connection;

  static const _collection = 'user_avatars';
  static final _idPattern = RegExp(r'^[A-Za-z0-9_-]{1,64}$');

  /// サーバーが作るサムネイルの大きさ。
  static const thumbs = ['128x128', '256x256'];

  /// [userId](PocketBase 上のユーザーのレコードID)のアバター。未登録なら null。
  ///
  /// [ArgumentError]: [userId] が不正。[PbException]: 未ログインは [PbFailureKind.unauthorized]。
  Future<UserAvatar?> find(String userId) async {
    _checkId(userId);
    _connection.requireLogin();
    final record = await _findRecord(userId);
    return record == null ? null : UserAvatar.fromRecord(record);
  }

  /// 複数ユーザー分をまとめて取得する(担当者の一覧用)。戻り値は userId → アバター(未登録のユーザーは含まれない)。
  Future<Map<String, UserAvatar>> findMany(Iterable<String> userIds) async {
    final ids = userIds.toSet().toList();
    for (final id in ids) {
      _checkId(id);
    }
    _connection.requireLogin();
    final result = <String, UserAvatar>{};
    // 絞り込みの式が長くなりすぎないよう、50件ずつ取る
    for (var i = 0; i < ids.length; i += 50) {
      final chunk = ids.sublist(i, i + 50 > ids.length ? ids.length : i + 50);
      final params = <String, dynamic>{
        for (var j = 0; j < chunk.length; j++) 'u$j': chunk[j],
      };
      final expr = [
        for (var j = 0; j < chunk.length; j++) 'user = {:u$j}',
      ].join(' || ');
      final records = await _connection.guard(
        'findManyAvatars',
        () => _connection.pb
            .collection(_collection)
            .getFullList(filter: _connection.pb.filter(expr, params)),
      );
      for (final r in records) {
        final avatar = UserAvatar.fromRecord(r);
        result[avatar.userId] = avatar;
      }
    }
    return result;
  }

  /// [userId] のアバターを登録する。あれば差し替える(上書き)。本人または管理者。
  ///
  /// [bytes] は縮小済みの画像(JPEG/PNG/WebP)。形式・サイズの検証はサーバー。
  Future<UserAvatar> set(
    String userId,
    Uint8List bytes, {
    String filename = 'avatar.png',
  }) async {
    _checkId(userId);
    _connection.requireLogin();
    final current = await _findRecord(userId);
    final file = http.MultipartFile.fromBytes(
      'image',
      bytes,
      filename: filename,
    );
    final record = await _connection.guard(
      'setAvatar',
      () => current == null
          ? _connection.pb
                .collection(_collection)
                .create(body: {'user': userId}, files: [file])
          : _connection.pb
                .collection(_collection)
                .update(current.id, files: [file]),
    );
    return UserAvatar.fromRecord(record);
  }

  /// [userId] のアバターを削除する。未登録なら何もしない。本人または管理者。
  Future<void> delete(String userId) async {
    _checkId(userId);
    _connection.requireLogin();
    final current = await _findRecord(userId);
    if (current == null) return;
    await _connection.guard(
      'deleteAvatar',
      () => _connection.pb.collection(_collection).delete(current.id),
    );
  }

  /// 画像のバイト列を取得する。短時間だけ有効なトークンを都度取り、URL は外へ出さない。
  /// [thumb] は [thumbs] のどれか(省略すると原寸)。
  ///
  /// [ArgumentError]: [thumb] が不正。
  Future<Uint8List> download(UserAvatar avatar, {String? thumb}) async {
    if (thumb != null && !thumbs.contains(thumb)) {
      throw ArgumentError.value(thumb, 'thumb', 'must be one of $thumbs');
    }
    _connection.requireLogin();
    final record = RecordModel({
      'id': avatar.recordId,
      'collectionId': _collection,
      'collectionName': _collection,
      'image': avatar.imageName,
    });
    return fetchRecordFile(
      _connection,
      record,
      'downloadAvatar',
      field: 'image',
      thumb: thumb,
    );
  }

  Future<RecordModel?> _findRecord(String userId) async {
    final result = await _connection.guard(
      'findAvatar',
      () => _connection.pb
          .collection(_collection)
          .getList(
            page: 1,
            perPage: 1,
            filter: _connection.pb.filter('user = {:u}', {'u': userId}),
          ),
    );
    return result.items.isEmpty ? null : result.items.first;
  }

  void _checkId(String userId) {
    if (!_idPattern.hasMatch(userId)) {
      throw ArgumentError.value(
        userId,
        'userId',
        'must match [A-Za-z0-9_-]{1,64}',
      );
    }
  }
}
