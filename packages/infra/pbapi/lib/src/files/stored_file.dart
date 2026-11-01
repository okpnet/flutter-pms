import 'dart:typed_data';

/// 保存したファイルの識別情報。アプリのDBには [recordId]([appFileId]・[revision])だけを保存する。
class StoredFile {
  const StoredFile({
    required this.recordId,
    required this.appFileId,
    required this.revision,
    required this.originalName,
    required this.sizeBytes,
    required this.mimeType,
    this.uploadedBy = '',
  });

  /// PocketBase のレコードID(版ごとに異なる)。
  final String recordId;

  /// アプリが決めるファイルのID。同じIDで再アップロードすると [revision] が増える。
  final String appFileId;

  /// 版(1から)。古い版は残る。
  final int revision;

  final String originalName;
  final int sizeBytes;
  final String mimeType;

  /// アップロードしたユーザーのレコードID。
  final String uploadedBy;

  Map<String, Object?> toJson() => {
    'recordId': recordId,
    'appFileId': appFileId,
    'revision': revision,
    'originalName': originalName,
    'sizeBytes': sizeBytes,
    'mimeType': mimeType,
    'uploadedBy': uploadedBy,
  };

  @override
  String toString() => 'StoredFile(${toJson()})';
}

/// ダウンロードしたファイル。アプリ側で保存する。
class DownloadedFile {
  const DownloadedFile({required this.file, required this.bytes});

  final StoredFile file;
  final Uint8List bytes;

  Map<String, Object?> toJson() => {
    'file': file.toJson(),
    'length': bytes.length,
  };
}
