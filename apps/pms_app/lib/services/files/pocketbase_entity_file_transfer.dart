import 'dart:typed_data';

import 'package:auth_files/auth_files.dart'
    show filePickerGatewayProvider, fileSaverGatewayProvider;
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';
import 'package:uuid/uuid.dart';

/// 実体の画面のファイルの項目(`FieldKind.file`)の出し入れを、PocketBase の共有ファイルで行う。
///
/// ファイルの実体(バイナリ)は PocketBase(`app_files`)にだけ置く。DB(`trans_file`)は、名前・種類だけを持つ。
/// DB の主キー(`trans_file_id`)は DB が採番するため、流れは次のとおり:
/// 1. 選ぶ([pick]): バイナリをここで預かり、仮の ID([EntityFile.pendingPrefix])の [EntityFile] を返す。保存先へは上げない。
/// 2. 保存(取得元): DB に `trans_file` の行を作って ID を得る。
/// 3. 上げる([upload]): その ID を PocketBase の `app_file_id` にして、預かったバイナリを上げる。
/// 4. ダウンロード([download]): `app_file_id`(= `trans_file_id`)から最新の版を取り、保存のダイアログ(`auth_files` の窓口)で保存する。
///    まだ上げていない(仮の ID)ファイルは、預かったバイナリを保存する。
///
/// 失敗は例外で返す(画面が通知にする)。ログは、通信の失敗だけをこの層で残さず、`pbapi` が残す。
///
/// パターン: Adapter(`SharedFileService` と OS のダイアログを、画面の窓口に適合させる)
class PocketBaseEntityFileTransfer implements IEntityFileTransfer {
  PocketBaseEntityFileTransfer(this._ref, {String Function()? newId})
    : _newId = newId ?? (() => const Uuid().v4());

  final Ref _ref;
  final String Function() _newId;

  /// 選んだだけのファイルのバイナリ(仮の ID → 内容)。上げたら捨てる。
  final Map<String, _Picked> _pending = {};

  @override
  Future<EntityFile?> pick() async {
    final picked = await _ref.read(filePickerGatewayProvider).pick();
    if (picked == null) return null;
    final id = '${EntityFile.pendingPrefix}${_newId()}';
    _pending[id] = _Picked(picked.bytes, picked.name, picked.mimeType);
    return EntityFile(
      id: id,
      name: picked.name,
      mediaType: picked.mimeType ?? '',
    );
  }

  @override
  Future<void> upload(EntityFile picked, String appFileId) async {
    final data = _pending[picked.id];
    if (data == null) {
      throw StateError('選んだファイルが見つかりません: ${picked.id}');
    }
    final stored = await _ref
        .read(sharedFileServiceProvider)
        .upload(
          appFileId: appFileId,
          bytes: data.bytes,
          filename: data.name,
          mimeType: data.mimeType,
        );
    _pending.remove(picked.id);
    _ref
        .read(loggerProvider)
        .debug('[pms_app] ファイルをアップロードしました: $appFileId (版 ${stored.revision})');
  }

  @override
  Future<bool> download(EntityFile file) async {
    final name = file.name;
    if (file.isPending) {
      final data = _pending[file.id];
      if (data == null) throw StateError('ファイルが見つかりません: ${file.id}');
      return _ref.read(fileSaverGatewayProvider).save(data.name, data.bytes);
    }
    final downloaded = await _ref
        .read(sharedFileServiceProvider)
        .download(file.id);
    if (downloaded == null) {
      throw StateError('ファイルが見つかりません: ${file.id}');
    }
    return _ref
        .read(fileSaverGatewayProvider)
        .save(
          name.isNotEmpty ? name : downloaded.file.originalName,
          downloaded.bytes,
        );
  }
}

class _Picked {
  const _Picked(this.bytes, this.name, this.mimeType);

  final Uint8List bytes;
  final String name;
  final String? mimeType;
}
