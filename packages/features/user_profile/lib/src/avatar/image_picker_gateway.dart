import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 利用者が選んだ画像ファイル。
class PickedImage {
  const PickedImage({required this.name, required this.bytes});

  final String name;
  final Uint8List bytes;
}

/// 選んだファイルが、扱える大きさを超えているとき(画面案の「2MBまで」)。
class ImageTooLargeException implements Exception {
  const ImageTooLargeException(this.sizeBytes, this.maxBytes);

  final int sizeBytes;
  final int maxBytes;

  Map<String, Object?> toJson() => {
    'sizeBytes': sizeBytes,
    'maxBytes': maxBytes,
  };

  @override
  String toString() => 'ImageTooLargeException($sizeBytes > $maxBytes)';
}

/// 画像ファイルの選択。実体はアプリ・テストが差し込める(Strategy)。
/// 利用者が取り消したときは null を返す。
abstract interface class IImagePickerGateway {
  Future<PickedImage?> pick();
}

/// 選ばれたファイル(`file_picker` の `PlatformFile` を、テストで差し替えられる形にしたもの)。
/// [size] は分かるときだけ(読む前の大きさの確認に使う)。
typedef PickedImageSource = ({
  String name,
  int? size,
  Future<Uint8List> Function() read,
});

/// OS のファイル選択ダイアログ(`file_picker`)で、PNG・JPEG・GIF・WebP を1つ選ぶ。
///
/// [maxBytes] を超えるファイルは、メモリへ読む前に [ImageTooLargeException]。
/// [pickFile] はテストで差し替える(既定は `FilePicker.pickFile`)。
class PlatformImagePicker implements IImagePickerGateway {
  PlatformImagePicker({
    this.maxBytes = defaultMaxBytes,
    Future<PickedImageSource?> Function()? pickFile,
  }) : _pickFile = pickFile ?? _pickWithFilePicker;

  /// 画面案の上限(2MB)。サーバー(`PB_AVATAR_MAX_MB`)の既定と同じ。
  static const defaultMaxBytes = 2 * 1024 * 1024;

  static const extensions = ['png', 'jpg', 'jpeg', 'gif', 'webp'];

  static Future<PickedImageSource?> _pickWithFilePicker() async {
    final file = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: extensions,
    );
    if (file == null) return null;
    return (
      name: file.name,
      size: file.lengthSync() ?? await file.length(),
      read: file.readAsBytes,
    );
  }

  final int maxBytes;
  final Future<PickedImageSource?> Function() _pickFile;

  @override
  Future<PickedImage?> pick() async {
    final file = await _pickFile();
    if (file == null) return null;
    final size = file.size;
    if (size != null && size > maxBytes) {
      throw ImageTooLargeException(size, maxBytes);
    }
    final bytes = await file.read();
    if (bytes.length > maxBytes) {
      throw ImageTooLargeException(bytes.length, maxBytes);
    }
    return PickedImage(name: file.name, bytes: bytes);
  }
}

/// 画像ファイルの選択。既定は OS のダイアログ。アプリ・テストは上書きできる。
final imagePickerGatewayProvider = Provider<IImagePickerGateway>(
  (ref) => PlatformImagePicker(),
);
