import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

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

/// 実体が差し込まれていないとき。使うと [UnsupportedError] を投げ、画面が文言にする。
class UnsupportedFileGateway implements IFilePickerGateway, IFileSaverGateway {
  const UnsupportedFileGateway();

  @override
  Future<PickedFile?> pick() =>
      Future.error(UnsupportedError('IFilePickerGateway is not provided'));

  @override
  Future<bool> save(String filename, Uint8List bytes) =>
      Future.error(UnsupportedError('IFileSaverGateway is not provided'));
}

final filePickerGatewayProvider = Provider<IFilePickerGateway>(
  (ref) => const UnsupportedFileGateway(),
);

final fileSaverGatewayProvider = Provider<IFileSaverGateway>(
  (ref) => const UnsupportedFileGateway(),
);
