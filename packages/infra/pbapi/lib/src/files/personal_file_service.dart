import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:pocketbase/pocketbase.dart';

import '../core/pb_connection.dart';
import 'shared_file_service.dart';

/// 個人ファイル(設定のアップロード)。本人だけが参照・更新できるファイル。
///
/// サーバーの `user_files` コレクション(`owner`・`key`・`file`)を使う。サーバー側の準備は
/// `doc/contents/server_user_files.md` を参照。共有ファイル(`app_files`)は全員に見えるため、
/// 設定のような個人のファイルには使わない。
/// 同じ [key] で再アップロードすると上書きする(設定は最新の1つだけを持つ)。
class PersonalFileService {
  PersonalFileService(this._connection, {String collection = 'user_files'})
    : _collection = collection;

  final PbConnection _connection;
  final String _collection;

  static final _keyPattern = RegExp(r'^[a-z0-9][a-z0-9_.-]{0,63}$');

  /// [key](例: `settings`、`theme`)の内容をアップロードする。あれば上書き、無ければ作成。
  /// 戻り値は保存されたレコードのID。
  ///
  /// [ArgumentError]: [key] が不正(英小文字・数字・`_`・`-`・`.`、64文字まで)。
  Future<String> upload({
    required String key,
    required Uint8List bytes,
    String filename = 'settings.json',
  }) async {
    _checkKey(key);
    _connection.requireLogin();
    final ownerId = _connection.pb.authStore.record!.id;
    final existing = await _find(key);
    final file = http.MultipartFile.fromBytes(
      'file',
      bytes,
      filename: filename,
    );
    final record = await _connection.guard(
      'uploadPersonal',
      () => existing == null
          ? _connection.pb
                .collection(_collection)
                .create(body: {'key': key, 'owner': ownerId}, files: [file])
          : _connection.pb
                .collection(_collection)
                .update(existing.id, files: [file]),
    );
    return record.id;
  }

  /// [key] の内容をダウンロードする。保存されていなければ null。
  Future<Uint8List?> download(String key) async {
    _checkKey(key);
    _connection.requireLogin();
    final record = await _find(key);
    if (record == null) return null;
    return fetchRecordFile(_connection, record, 'downloadPersonal');
  }

  /// [key] のファイルを削除する。無ければ何もしない。
  Future<void> delete(String key) async {
    _checkKey(key);
    _connection.requireLogin();
    final record = await _find(key);
    if (record == null) return;
    await _connection.guard(
      'deletePersonal',
      () => _connection.pb.collection(_collection).delete(record.id),
    );
  }

  Future<RecordModel?> _find(String key) async {
    final result = await _connection.guard(
      'findPersonal',
      () => _connection.pb
          .collection(_collection)
          .getList(
            page: 1,
            perPage: 1,
            filter: _connection.pb.filter('key = {:k}', {'k': key}),
          ),
    );
    return result.items.isEmpty ? null : result.items.first;
  }

  void _checkKey(String key) {
    if (!_keyPattern.hasMatch(key)) {
      throw ArgumentError.value(key, 'key', '英小文字・数字・_ - . の64文字までにしてください');
    }
  }
}
