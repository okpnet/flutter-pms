import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'platform_file_gateway.dart';

/// 利用者が選んだファイル。
class PickedFile {
  const PickedFile({required this.name, required this.bytes, this.mimeType});

  final String name;
  final Uint8List bytes;
  final String? mimeType;
}

/// ファイルの選択(アップロード元)。実体はアプリが差し込む(Strategy)。
/// 利用者が取り消したときは null を返す。
abstract interface class IFilePickerGateway {
  Future<PickedFile?> pick();
}

/// ファイルの保存(ダウンロード先)。実体はアプリが差し込む(Strategy)。
/// 利用者が取り消したときは false を返す。
abstract interface class IFileSaverGateway {
  Future<bool> save(String filename, Uint8List bytes);
}

/// 使えないことを表す実体。使うと [UnsupportedError] を投げ、画面が文言にする。
/// 既定は OS のダイアログ([PlatformFilePicker]・[PlatformFileSaver])。ファイル選択を持たない環境・テストで差し込む。
class UnsupportedFileGateway implements IFilePickerGateway, IFileSaverGateway {
  const UnsupportedFileGateway();

  @override
  Future<PickedFile?> pick() =>
      Future.error(UnsupportedError('IFilePickerGateway is not provided'));

  @override
  Future<bool> save(String filename, Uint8List bytes) =>
      Future.error(UnsupportedError('IFileSaverGateway is not provided'));
}

/// ファイルの選択。既定は OS のダイアログ。アプリ・テストは上書きできる。
final filePickerGatewayProvider = Provider<IFilePickerGateway>(
  (ref) => PlatformFilePicker(),
);

/// ファイルの保存。既定は OS の「名前を付けて保存」ダイアログ。アプリ・テストは上書きできる。
final fileSaverGatewayProvider = Provider<IFileSaverGateway>(
  (ref) => PlatformFileSaver(),
);
