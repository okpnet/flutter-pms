import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';

import 'file_gateway.dart';

/// 選んだファイルが、扱える大きさを超えているとき。サーバーの上限(100MB)に合わせている。
class FileTooLargeException implements Exception {
  const FileTooLargeException(this.sizeBytes, this.maxBytes);

  final int sizeBytes;
  final int maxBytes;

  Map<String, Object?> toJson() => {
    'sizeBytes': sizeBytes,
    'maxBytes': maxBytes,
  };

  @override
  String toString() => 'FileTooLargeException($sizeBytes > $maxBytes)';
}

/// 選ばれたファイル(`file_picker` の `PlatformFile` を、テストで差し替えられる形にしたもの)。
/// [size] は分かるときだけ(読む前の大きさの確認に使う)。
typedef PickedSource = ({
  String name,
  int? size,
  Future<Uint8List> Function() read,
});

/// OS のファイル選択ダイアログ(`file_picker`)で、アップロードするファイルを1つ選ぶ。
///
/// 取り消しは null。[maxBytes] を超えるファイルは、メモリへ読む前に [FileTooLargeException]。
/// [pickFile] はテストで差し替える(既定は `FilePicker.pickFile`)。
class PlatformFilePicker implements IFilePickerGateway {
  PlatformFilePicker({
    this.maxBytes = defaultMaxBytes,
    Future<PickedSource?> Function()? pickFile,
  }) : _pickFile = pickFile ?? _pickWithFilePicker;

  static Future<PickedSource?> _pickWithFilePicker() async {
    final file = await FilePicker.pickFile();
    if (file == null) return null;
    return (
      name: file.name,
      size: file.lengthSync() ?? await file.length(),
      read: file.readAsBytes,
    );
  }

  /// サーバー(PocketBase の `app_files`)のファイルの上限。
  static const defaultMaxBytes = 100 * 1024 * 1024;

  final int maxBytes;
  final Future<PickedSource?> Function() _pickFile;

  @override
  Future<PickedFile?> pick() async {
    final file = await _pickFile();
    if (file == null) return null;
    final size = file.size;
    if (size != null && size > maxBytes) {
      throw FileTooLargeException(size, maxBytes);
    }
    final bytes = await file.read();
    if (bytes.length > maxBytes) {
      throw FileTooLargeException(bytes.length, maxBytes);
    }
    return PickedFile(name: file.name, bytes: bytes);
  }
}

/// OS の「名前を付けて保存」ダイアログ(`file_picker`)で、ダウンロードしたファイルを保存する。
///
/// 取り消しは false。[saveFile] はテストで差し替える(既定は `FilePicker.saveFile`)。
class PlatformFileSaver implements IFileSaverGateway {
  PlatformFileSaver({
    Future<Uri?> Function(String fileName, Uint8List bytes)? saveFile,
  }) : _saveFile =
           saveFile ??
           ((name, bytes) => FilePicker.saveFile(fileName: name, bytes: bytes));

  final Future<Uri?> Function(String fileName, Uint8List bytes) _saveFile;

  @override
  Future<bool> save(String filename, Uint8List bytes) async =>
      await _saveFile(filename, bytes) != null;
}
