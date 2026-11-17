import 'dart:convert';

/// ファイルの項目([FieldKind.file])の値。ファイルの実体は別の保存先(PocketBase)にあり、
/// この値は、その ID・ファイル名・種類だけを持つ(JSON の文字列で、実体の項目の値として持ち回る)。
///
/// パターン: Value Object
class EntityFile {
  const EntityFile({required this.id, required this.name, this.mediaType = ''});

  /// ファイルの ID(DB の `trans_file_id`。保存先(PocketBase)の `app_file_id` と同じ)。
  /// まだ保存先へ上げていない(選んだだけの)ファイルは、仮の ID([pendingPrefix] で始まる)で、[isPending] が true。
  /// 保存のとき、取得元が DB に行を作って ID を得てから、その ID で上げる([IEntityFileTransfer.upload])。
  final String id;

  /// 選んだだけ(保存先へ未アップロード)のファイルの仮の ID の先頭。
  static const pendingPrefix = 'pending:';

  /// 選んだだけで、保存先へ未アップロードのファイルか。
  bool get isPending => id.startsWith(pendingPrefix);

  /// 表示するファイル名。
  final String name;

  /// 種類(メディアタイプ)。
  final String mediaType;

  /// 実体の項目の値にする文字列(JSON)。
  String toValue() =>
      jsonEncode({'id': id, 'name': name, 'mediaType': mediaType});

  /// 実体の項目の値([toValue] の文字列)から作る。空・不正は null。
  static EntityFile? tryParse(String value) {
    if (value.isEmpty) return null;
    try {
      final m = jsonDecode(value);
      if (m is! Map || m['id'] is! String || (m['id'] as String).isEmpty) {
        return null;
      }
      return EntityFile(
        id: m['id'] as String,
        name: '${m['name'] ?? ''}',
        mediaType: '${m['mediaType'] ?? ''}',
      );
    } catch (_) {
      return null;
    }
  }

  /// 表の表示(ファイル名。無いときは ID)。
  String get label => name.isEmpty ? id : name;

  Map<String, Object?> toJson() => {
    'id': id,
    'name': name,
    'mediaType': mediaType,
  };
}

/// ファイルの出し入れの窓口(Strategy)。実体はアプリが差し込む(PocketBase のファイル保存・OS のダイアログ)。
///
/// 画面は、ファイルの実体も保存先も知らない。選ぶ([pick])・上げる([upload]。取得元が保存の途中で呼ぶ)・下ろす([download])を頼む。
///
/// DB の主キー(`trans_file_id`)は DB が採番するため、保存先へ上げるのは、取得元が DB に行を作って ID を得たあと。
/// 選んだ時点では保存先へ上げず、窓口がバイナリを預かる(仮の ID)。
abstract interface class IEntityFileTransfer {
  /// ファイルを選び、実体の項目の値にする [EntityFile](仮の ID。[EntityFile.isPending])を返す。取り消しは null。
  /// 保存先へは上げない。失敗は例外で返す(画面が失敗の文言を出す)。
  Future<EntityFile?> pick();

  /// 選んだだけのファイル [picked] のバイナリを、保存先へ [appFileId](DB が採番した `trans_file_id`)で上げる。
  /// 取得元が、DB に `trans_file` の行を作った直後に呼ぶ。失敗は例外(取得元が、作った行を取り消して、保存の失敗にする)。
  Future<void> upload(EntityFile picked, String appFileId);

  /// [file] を保存先から下ろして、端末に保存する。取り消し(保存先を選ばなかった)は false。
  Future<bool> download(EntityFile file);
}

/// 窓口が差し込まれていないとき。使うと [UnsupportedError] を投げ、画面が失敗の文言にする。
class UnsupportedEntityFileTransfer implements IEntityFileTransfer {
  const UnsupportedEntityFileTransfer();

  @override
  Future<EntityFile?> pick() =>
      Future.error(UnsupportedError('IEntityFileTransfer is not provided'));

  @override
  Future<void> upload(EntityFile picked, String appFileId) =>
      Future.error(UnsupportedError('IEntityFileTransfer is not provided'));

  @override
  Future<bool> download(EntityFile file) =>
      Future.error(UnsupportedError('IEntityFileTransfer is not provided'));
}
