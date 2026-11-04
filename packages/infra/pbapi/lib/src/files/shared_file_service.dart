import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:pocketbase/pocketbase.dart';

import '../core/pb_connection.dart';
import '../core/pb_exception.dart';
import 'stored_file.dart';

/// 共有ファイル(`app_files`)のアップロードとダウンロード。
///
/// ログイン済みの全ユーザーが参照・アップロードできる。更新・削除はできない(上書きしない)。
/// 同じ `appFileId` で再アップロードすると、版(revision)が増えた新しいレコードになる。
class SharedFileService {
  SharedFileService(this._connection);

  final PbConnection _connection;

  static const _collection = 'app_files';
  static final _idPattern = RegExp(r'^[A-Za-z0-9_-]{1,64}$');

  /// アップロードし、保存されたファイルの識別情報(ID・版)を返す。
  ///
  /// [appFileId]: 英数字と `_` `-`、64文字まで。
  /// 同時アップロードで版が衝突したときは、1回だけやり直す。
  /// [ArgumentError]: [appFileId] が不正。[PbException]: 未ログイン([PbFailureKind.unauthorized])、
  /// サイズ超過・種類不可([PbFailureKind.validation])など。
  Future<StoredFile> upload({
    required String appFileId,
    required Uint8List bytes,
    required String filename,
    String? mimeType,
    String? comment,
  }) async {
    _checkId(appFileId);
    _connection.requireLogin();
    Future<RecordModel> once() => _connection.pb
        .collection(_collection)
        .create(
          body: {
            'app_file_id': appFileId,
            'mime_type': ?mimeType,
            'comment': ?comment,
          },
          files: [
            http.MultipartFile.fromBytes('file', bytes, filename: filename),
          ],
        );
    try {
      return _toFile(await _connection.guard('upload', once));
    } on PbException catch (e) {
      if (e.kind == PbFailureKind.validation &&
          e.fieldErrors.containsKey('revision')) {
        return _toFile(await _connection.guard('upload', once));
      }
      rethrow;
    }
  }

  /// 最新の版の識別情報。無ければ null。
  Future<StoredFile?> latest(String appFileId) async {
    _checkId(appFileId);
    _connection.requireLogin();
    final result = await _connection.guard(
      'latest',
      () => _connection.pb
          .collection(_collection)
          .getList(
            page: 1,
            perPage: 1,
            filter: _connection.pb.filter('app_file_id = {:id}', {
              'id': appFileId,
            }),
            sort: '-revision',
          ),
    );
    return result.items.isEmpty ? null : _toFile(result.items.first);
  }

  /// すべての版(新しい順)。
  Future<List<StoredFile>> history(String appFileId) async {
    _checkId(appFileId);
    _connection.requireLogin();
    final items = await _connection.guard(
      'history',
      () => _connection.pb
          .collection(_collection)
          .getFullList(
            filter: _connection.pb.filter('app_file_id = {:id}', {
              'id': appFileId,
            }),
            sort: '-revision',
          ),
    );
    return items.map(_toFile).toList();
  }

  /// ファイルID([appFileId])からダウンロードする。[revision]を省くと最新の版。
  /// 見つからなければ null。保存はアプリ側で行う。
  ///
  /// ダウンロード用の短時間だけ有効なトークンを都度取得する(URLは外へ出さない)。
  Future<DownloadedFile?> download(String appFileId, {int? revision}) async {
    _checkId(appFileId);
    _connection.requireLogin();
    final RecordModel? record;
    if (revision == null) {
      final result = await _connection.guard(
        'download',
        () => _connection.pb
            .collection(_collection)
            .getList(
              page: 1,
              perPage: 1,
              filter: _connection.pb.filter('app_file_id = {:id}', {
                'id': appFileId,
              }),
              sort: '-revision',
            ),
      );
      record = result.items.isEmpty ? null : result.items.first;
    } else {
      final result = await _connection.guard(
        'download',
        () => _connection.pb
            .collection(_collection)
            .getList(
              page: 1,
              perPage: 1,
              filter: _connection.pb.filter(
                'app_file_id = {:id} && revision = {:rev}',
                {'id': appFileId, 'rev': revision},
              ),
            ),
      );
      record = result.items.isEmpty ? null : result.items.first;
    }
    if (record == null) return null;
    final bytes = await fetchRecordFile(_connection, record, 'download');
    return DownloadedFile(file: _toFile(record), bytes: bytes);
  }

  void _checkId(String appFileId) {
    if (!_idPattern.hasMatch(appFileId)) {
      throw ArgumentError.value(
        appFileId,
        'appFileId',
        'must match [A-Za-z0-9_-]{1,64}',
      );
    }
  }

  StoredFile _toFile(RecordModel r) => StoredFile(
    recordId: r.id,
    appFileId: r.getStringValue('app_file_id'),
    revision: r.getIntValue('revision'),
    originalName: r.getStringValue('original_name'),
    sizeBytes: r.getIntValue('size_bytes'),
    mimeType: r.getStringValue('mime_type'),
    uploadedBy: r.getStringValue('uploaded_by'),
  );
}

/// レコードのファイル項目([field]。既定は `file`)を、短時間だけ有効なトークンでダウンロードする。
/// [thumb] はサムネイルの大きさ(画像のみ)。
/// URL(トークン入り)は例外・ログに出さない。共有ファイル・個人ファイル・アバターで共用する。
Future<Uint8List> fetchRecordFile(
  PbConnection connection,
  RecordModel record,
  String operation, {
  String field = 'file',
  String? thumb,
}) async {
  final token = await connection.guard(
    operation,
    () => connection.pb.files.getToken(),
  );
  final url = connection.pb.files.getURL(
    record,
    record.getStringValue(field),
    token: token,
    thumb: thumb,
  );
  final client = connection.newHttpClient();
  try {
    final response = await client.get(url);
    if (response.statusCode != 200) {
      final ex = PbException.fromClient(
        ClientException(statusCode: response.statusCode),
        operation: operation,
      );
      if (!(ex.kind == PbFailureKind.unauthorized ||
          ex.kind == PbFailureKind.notFound ||
          ex.kind == PbFailureKind.forbidden)) {
        connection.logger.error(ex.logMessage);
      }
      throw ex;
    }
    return response.bodyBytes;
  } on http.ClientException {
    final ex = PbException(
      PbFailureKind.network,
      operation: operation,
      message: 'file transfer failed (no response)',
    );
    connection.logger.error(ex.logMessage);
    throw ex;
  } finally {
    client.close();
  }
}
