import 'package:auth_files/auth_files.dart'
    show filePickerGatewayProvider, fileSaverGatewayProvider;
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';
import 'package:uuid/uuid.dart';

/// 実体の画面のファイルの項目(`FieldKind.file`)の出し入れを、PocketBase の共有ファイルで行う。
///
/// ファイルの実体は PocketBase(`app_files`)にだけ置く。DB は、ファイルの ID(`trans_file_id`)だけを持つ。
/// アップロードは、新しい ID(UUID)を作り、その ID を PocketBase のファイル ID(`appFileId`)にして上げる。
/// 同じ ID で上げ直すと PocketBase では新しい版になるが、画面は ID を作り直す(差し替えは新しいファイル)。
/// ダウンロードは、ID から最新の版を取り、保存のダイアログ(`auth_files` の窓口)で保存する。
///
/// 失敗は例外で返す(画面が通知にする)。ログは、通信の失敗だけをこの層で残さず、`pbapi` が残す。
///
/// パターン: Adapter(`SharedFileService` と OS のダイアログを、画面の窓口に適合させる)
class PocketBaseEntityFileTransfer implements IEntityFileTransfer {
  PocketBaseEntityFileTransfer(this._ref, {String Function()? newId})
    : _newId = newId ?? (() => const Uuid().v4());

  final Ref _ref;
  final String Function() _newId;

  @override
  Future<EntityFile?> pickAndUpload() async {
    final picked = await _ref.read(filePickerGatewayProvider).pick();
    if (picked == null) return null;
    final id = _newId();
    final stored = await _ref
        .read(sharedFileServiceProvider)
        .upload(
          appFileId: id,
          bytes: picked.bytes,
          filename: picked.name,
          mimeType: picked.mimeType,
        );
    _ref
        .read(loggerProvider)
        .debug('[pms_app] ファイルをアップロードしました: $id (版 ${stored.revision})');
    return EntityFile(
      id: id,
      name: picked.name,
      mediaType: picked.mimeType ?? '',
    );
  }

  @override
  Future<bool> download(EntityFile file) async {
    final downloaded = await _ref
        .read(sharedFileServiceProvider)
        .download(file.id);
    if (downloaded == null) {
      throw StateError('ファイルが見つかりません: ${file.id}');
    }
    final name = file.name.isNotEmpty ? file.name : downloaded.file.originalName;
    return _ref.read(fileSaverGatewayProvider).save(name, downloaded.bytes);
  }
}
